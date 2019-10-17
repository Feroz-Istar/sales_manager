<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
	%>
<div class="card shadow mb-2 rounded-0" style="min-height: 245px;">
	<div class="card-body">
		<div class="salesken_caurosel position-relative"  data-index="0" data-child="team-container">
			<button type="button" class="istar-btn-icon istar-square previous" id="team-left" style="right: 50px; position: absolute;">
                 <i class="fas fa-chevron-left"></i>
             </button>
             <button type="button" class="istar-btn-icon istar-square active ml-2 next" id="team-right" style="right: 10px; position: absolute;">
                 <i class="fas fa-chevron-right"></i>
             </button>
	<%for(int j=0;j<10; j++){
		String isshow="";
		if(j==0){
			isshow="active";
		}%>
		<div class="team-container <%=isshow%>">
		<div class="row mb-3 px-3">
			<div class="col-md-6 font-weight-bold f-18">
				Team 0<%=j+1 %>&nbsp; - &nbsp;<span class="brown-grey f-16">10 user</span>
			</div>
			
		</div>
		<div class="row px-3">
			<div class="col-md-8">
				<div class="row mb-4">
					<div class="col-md-3 col-6">
						<div class="font-weight-bold f-30">
							<i class="fas fa-dollar-sign light_gray"></i> <span
								class="theme_color"> 345</span>
						</div>
						<div class="f-14 brownish-grey">Deal Value</div>
					</div>
					<div class="col-md-3 col-6">
						<div class="font-weight-bold f-30 black">65%</div>
						<div class="f-14 brownish-grey">Confident</div>
					</div>
					<div class="col-md-3 col-6">
						<div class="font-weight-bold f-30 black">25%</div>
						<div class="f-14 brownish-grey">Won Leads</div>
					</div>
					<div class="col-md-3 col-6">
						<div class="font-weight-bold f-30 black">75%</div>
						<div class="f-14 brownish-grey">Lost Leads</div>
					</div>
				</div>
				<div class="row mb-3">
					<div class="col-md-6">
						<div class="f-14 font-weight-bold mb-2">Strong Playbook</div>
						<div class="f-14 brownish-grey">Objection, Price,
							Qualification, Introduction, Product Features, Value
							Proposition,</div>
					</div>
					<div class="col-md-6">
						<div class="f-14 font-weight-bold mb-2">Weak Playbook</div>
						<div class="f-14 brownish-grey">Need Investigation,
							Competitor Mapping, Feature Mapping.</div>
					</div>
				</div>

			</div>
			<div class="col-md-4">

				<div id="container<%=j %>" style="height: 170px;"></div>
			</div>
		</div>
		
		</div>
	<%} %>
		</div>
	</div>
</div>
<script>
var teamCount= $('.team-container').length ;
var teamShowing = 0;
$('.team-container').hide();
$('.team-container').eq(teamShowing).show();
if(teamCount == 0){
	$('.team-card').hide();
}
if(teamCount>1){
	$('#team-right').click(function(){
		$('.team-container').hide();
		if(teamShowing < teamCount-1){
			teamShowing++;
			$('.team-container').eq(teamShowing).show();
			$('#team-left').addClass('active');
		}
		if(teamShowing == teamCount-1){
			$('.team-container').eq(teamCount -1).show();
			$('#team-right').removeClass('active');
		}
	})
		
	$('#team-left').click(function(){
		$('.team-container').hide();
		if(teamShowing > 0 ){
			teamShowing--;
			$('.team-container').eq(teamShowing).show();
			$('#team-right').addClass('active');
		}
		if(teamShowing == 0){
			$('.team-container').eq(0).show();
			$('#team-left').removeClass('active');
		}
	})
}else{
	$('#team-left').removeClass('active');
	$('#team-right').removeClass('active');

}


/*setting pie chart default color which is visible in team card of dashboard*/
Highcharts.setOptions({
	colors: ['#57b280', '#6297f6', '#f5a82e', '#24CBE5', '#64E572', '#FF9655', '#FFF263', '#6AF9C4']
});

/*rending of Pie chart shown in team card
 * In title shown below we need to set the text shown in middle of pie chart 
 * */
for (i = 0; i < teamCount; i++){
new Highcharts.Chart({
	chart: {
		renderTo: 'container'+i,
		type: 'pie'
	},
	title: {
		useHTML: true,
		text: '<div class="text-center f-14">  <strong class="f-16"> 75%</strong> <div class="brownish-grey">Utilisation</div></div>',
		verticalAlign: 'middle',
		floating: true,
		style: {
			color: '#666666'
		}
	},
	yAxis: {
		title: {
			text: 'Total percent market share',
			style: {
				display: 'none'
			}
		}
	},
	legend: {
		enable: false
	},
	exporting: {
		enabled: false
	},
	credits: {
		enabled: false
	},
	plotOptions: {
		pie: {
			allowPointSelect: false,
			shadow: false,
			borderWidth: 5
		},
		series: {
			states: {
				inactive: {
					opacity: 1
				}
			}
		}
	},
	tooltip: {
		enabled: false
	},
	series: [{
		name: 'Browsers',
		showInLegend: false,
		states: {
			hover: {
				enabled: false
			}
		}, // Here is where it goes
		data: [
			["Firefox", 6],
			["MSIE", 4],
			["Chrome", 7]
		],
		size: '100%',
		innerSize: '66%',
		showInLegend: false,
		dataLabels: {
			enabled: false
		}
	}]
});
}
	
</script>
	