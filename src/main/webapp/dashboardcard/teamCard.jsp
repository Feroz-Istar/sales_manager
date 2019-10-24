<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
	%>
<div class="card shadow p-0 rounded-0">
	<div class="card-body p-0">
		<div class="salesken_caurosel position-relative"  data-index="0" data-child="team-container">
			<button type="button" class="istar-btn-icon  previous p-0" id="team-left" >
                 <i class="fas fa-chevron-left"></i>
             </button>
             <button type="button" class="istar-btn-icon  active next p-0" id="team-right" >
                 <i class="fas fa-chevron-right"></i>
             </button>
	<%for(int j=0;j<10; j++){
		String isshow="";
		if(j==0){
			isshow="active";
		}%>
		<div class="team-container <%=isshow%> " style="padding: 30px;">
		<div class="row m-0 ">
			<div class="col-md-6 p-0 pb-20">
			<div class="p-0 m-0 font-weight-bold f-18 text-truncate" title="team">
				Team 0<%=j+1 %>&nbsp; - &nbsp;<span class="brown-grey f-16">10 user</span>
				</div>
			</div>
			
		</div>
		<div class="row m-0">
								<div class="col-md-6 p-0 theme_dashed_border_right_2 ">
									<div class="fw-500 f-16 black pb-10">Team Stats</div>
									<div class="row m-0">
										<div class="col-md-4 p-0">
											<div class="font-weight-bold f-30">
												<i class="fas fa-dollar-sign light_gray"></i> <span
													class="theme_color"> 50K</span>
											</div>
										</div>
										<div class="col-md-4 p-0">
											<div class="font-weight-bold f-30 greyish-brown">25%</div>

										</div>
										<div class="col-md-4  p-0">
											<div class="font-weight-bold f-30 greyish-brown">58%</div>
										</div>
									</div>
									<div class="row m-0 pb-30 theme_dashed_border_bottom_2 ">
										<div class="col-md-4 p-0">
											<div class="font-weight-bold f-12 brownish-grey">Achieved
												Value</div>
										</div>
										<div class="col-md-4 p-0">
											<div class="font-weight-bold f-12 brownish-grey">Win Rate
											</div>

										</div>
										<div class="col-md-4 p-0">
											<div class="font-weight-bold f-12 brownish-grey">Tentative</div>
										</div>
									</div>

									<div class="fw-500 f-16 black pb-10 pt-25">Activity Stats</div>

									<div class="row m-0">
										<div class="col p-0">
											<div class="d-flex ">
												<div class="font-weight-bold f-30 greyish-brown pr-45">75%
												</div>
												<div class="font-weight-bold f-30 greyish-brown">46%</div>
											</div>
										</div>
									</div>
									<div class="row m-0 ">
										<div class="col p-0 pr-25">
											<div class="d-flex pb-10">
												<div class="font-weight-bold f-12 brownish-grey pr-45">Utilisation
												</div>
												<div class="font-weight-bold f-12 brownish-grey">Talk
													Ratio</div>
											</div>

											<div class="progress pipeline_progress ">
												<div class="progress-bar bg_green" role="progressbar"
													style="width: 15%" aria-valuenow="15" aria-valuemin="0"
													aria-valuemax="100"></div>
												<div class="progress-bar  bg_blue" role="progressbar"
													style="width: 30%" aria-valuenow="30" aria-valuemin="0"
													aria-valuemax="100"></div>
												<div class="progress-bar   bg-info" role="progressbar"
													style="width: 20%" aria-valuenow="20" aria-valuemin="0"
													aria-valuemax="100"></div>
											</div>
										</div>
									</div>


								</div>
								<div class="col-md-6 p-0 pl-15">
									<div class="fw-500 f-16 black pb-10">Playbook Stats</div>

									<div class="f-12 brownish-grey text-break font-weight-bold">
										Strong <i class="fas fa-info-circle soft-blue"></i>
									</div>
									<div class="strong-signal w-100 d-flex flex-wrap">
										<%
											for (int l = 0; l < 5; l++) {
										%>
										<button type="button"
											class="btn  rounded-0 f-12 m-1 font-weight-bold signal_background"
											>Introduction</button>
										<%
											}
										%>
									</div>


									<div
										class="f-12 brownish-grey text-break font-weight-bold pt-20">
										Weak <i class="fas fa-info-circle soft-blue"></i>
									</div>

									<div class="weak-signal w-100 d-flex flex-wrap">
										<%
											for (int k = 0; k < 5;k++) {
										%>
										<button type="button"
											class="btn  rounded-0 f-12 m-1 font-weight-bold signal_background"
											>Introduction</button>
										<%
											}
										%>
									</div>
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
		type: 'pie',
	    margin: 0,
	    spacingTop: 0,
        spacingBottom: 0,
        spacingLeft: 0,
        spacingRight: 0

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
	