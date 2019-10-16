<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
	%>
				
<div class="card shadow mb-2" style="min-height: 322px;">
	<div class="card-body">
		<div class="salesken_caurosel position-relative" data-index="0" data-child="pipeline-container">
	
			<button type="button" class="istar-btn-icon istar-square previous" style="right: 50px; position: absolute;" id="pipeline-left">
                 <i class="fas fa-chevron-left"></i>
             </button>
             <button type="button" class="istar-btn-icon istar-square active ml-2 next"  style="right: 10px; position: absolute;" id="pipeline-right">
                 <i class="fas fa-chevron-right"></i>
             </button>
	<%for(int j=0;j<10;j++){ 
		String isshow="";
		if(j==0){
			isshow="active";
		}%>
		<div class="pipeline-container <%=isshow %> " >
		<div class="row px-3 mb-3">
			<div
				class="card-title col-md-6 font-weight-bold f-18 greyish-brown">Pipeline
				- 0<%=j+1%></div>
			
		</div>
		<div id="pipeline_carousel" class="carousel slide"
			data-ride="carousel">
			<ol class="carousel-indicators mb-0">
				<li data-target="#pipeline_carousel" data-slide-to="0"
					class="active"></li>
				<li data-target="#pipeline_carousel" data-slide-to="1"></li>
				<li data-target="#pipeline_carousel" data-slide-to="2"></li>
			</ol>

			<div class="carousel-inner ">

				<%
					for (int i = 0; i < 3; i++) {
						String isActive = "";
						if (i == 0)
							isActive = "active";
				%>
				<div class="carousel-item <%=isActive%>">



					<div class="row mb-2 px-3">
						<div class="col fw-500 f-16 brownish-grey">Stage
							01</div>
					</div>

					<div class="row mb-4 px-3">
						<div class="col-md-3 col-6">
							<div class="font-weight-bold f-30">
								<i class="fas fa-dollar-sign light_gray"></i> <span
									class="theme_color"> 7245</span>
							</div>
							<div class="f-14 brownish-grey">Deal Value</div>
						</div>
						<div class="col-md-3 col-6">
							<div class="font-weight-bold f-30 greyish-brown">
								<i class="far fa-flag"></i> 65%
							</div>
							<div class="f-14 brownish-grey">Confident</div>
						</div>
						<div class="col-md-3 col-6">
							<div class="font-weight-bold f-30 greyish-brown">
								<i class="fas fa-trophy"></i> 25%
							</div>
							<div class="f-14 brownish-grey">Won Leads</div>
						</div>
						<div class="col-md-3 col-6">
							<div class="font-weight-bold f-30 greyish-brown">
								<i class="far fa-thumbs-down"></i> 75%
							</div>
							<div class="f-14 brownish-grey">Lost Leads</div>
						</div>
					</div>

					<div class="row mb-3 px-3">
						<div class="col-md-6">
							<div class="f-14 font-weight-bold black mb-2">Strong
								Playbook</div>
							<div class="f-14 brownish-grey">Objection, Price,
								Qualification, Introduction, Product Features, Value
								Proposition,</div>
						</div>
						<div class="col-md-6">
							<div class="f-14 font-weight-bold black mb-2">Weak
								Playbook</div>
							<div class="f-14 brownish-grey">Need Investigation,
								Competitor Mapping, Feature Mapping.</div>
						</div>
					</div>

				</div>

				<%
					}
				%>
			</div>
		</div>
		</div>
		<%} %>
		</div>
		
	</div>
</div>

<script type="text/javascript">
$(document).ready(function() {
	
	var pipelineCount= $('.pipeline-container').length ;
	var pipelineShowing = 0;
	$('.pipeline-container').hide();
	$('.pipeline-container').eq(pipelineShowing).show();
	console.log('pipelineCount'+pipelineCount+ 'pipelineshowing '+ pipelineShowing);
	if(pipelineCount == 0){
		$('.pipeline-card').hide();
	}
	if(pipelineCount > 1){
	$('#pipeline-right').click(function(){
		$('.pipeline-container').hide();
		if(pipelineShowing < pipelineCount-1){
			pipelineShowing++;
			$('.pipeline-container').eq(pipelineShowing).show();
			$('#pipeline-left').addClass('active');
		}
		if(pipelineShowing == pipelineCount-1){
			$('.pipeline-container').eq(pipelineCount -1).show();
			$('#pipeline-right').removeClass('active');
		}
	
	

		
	console.log('right click showing '+pipelineShowing);
	})
		
	$('#pipeline-left').click(function(){
		$('.pipeline-container').hide();
		if(pipelineShowing > 0 ){
			pipelineShowing--;
			$('.pipeline-container').eq(pipelineShowing).show();
			$('#pipeline-right').addClass('active');
		}
		if(pipelineShowing == 0){
			$('.pipeline-container').eq(0).show();
			$('#pipeline-left').removeClass('active');
		}
		console.log('left click showing '+pipelineShowing);
	})
}else{
	$('#pipeline-right').removeClass('active');
	$('#pipeline-left').removeClass('active');
}
});
</script>
				
				
				