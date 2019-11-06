
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>

<div class="card shadow mb-2 rounded-0" style="min-height: 322px;">
	<div class="card-body p-0">
		<div class="salesken_caurosel position-relative" data-index="0"
			data-child="pipeline-container">

			<button type="button" class="istar-btn-icon  previous p-0" id="pipeline-left" >
                 <i class="fal fa-chevron-left"></i>
             </button>
             <button type="button" class="istar-btn-icon  active next p-0" id="pipeline-right" >
                 <i class="fal fa-chevron-right"></i>
             </button>
			<%
				for (int j = 0; j < 10; j++) {
					String isshow = "";
					if (j == 0) {
						isshow = "active";
					}
			%>
			<div class="pipeline-container <%=isshow%> " style="padding: 30px;padding-bottom: 60px !important;">
			<!-- <div class="row">
				<div class="col-md-12">
				<div class="v-progress-bar-container">

            <div class="v-progress-bar" style="background-color: #BBE3CB;width: 25%;z-index: 5;"></div>
            <div class="v-progress-bar" style="background-color: #C4CFFD;width: 25%;z-index: 4;"></div>
            <div class="v-progress-bar" style="background-color: #F8E1A5;width: 25%;z-index: 3;"></div>

        </div>
				
				</div>
			</div> -->
				<div class="row m-0 pb-20">
					
						<div class="p-0 m-0 font-weight-bold f-18 text-truncate" title="pipeline">
				Pipeline <%=j+1 %>&nbsp; - &nbsp;<span class="brown-grey f-16 font-weight-normal">Stage 01</span>
				</div>
						
						
						
						

				</div>
				<div id="pipeline_carousel" class="carousel slide"
					data-ride="carousel">
					<ol class="carousel-indicators mb-0" style="bottom: -31px;">
						<li data-target="#pipeline_carousel" data-slide-to="0"
							class="active"></li>
						<li data-target="#pipeline_carousel" data-slide-to="1"></li>
						<li data-target="#pipeline_carousel" data-slide-to="2"></li>
						<li data-target="#pipeline_carousel" data-slide-to="3"></li>
					</ol>

					<div class="carousel-inner ">

						<%
							for (int i = 0; i < 4; i++) {
									String isActive = "";
									if (i == 0)
										isActive = "active";
						%>
						<div class="carousel-item <%=isActive%>">



							<div class="row m-0">
								<div class="col-md-6 p-0 theme_dashed_border_right_2 ">
									<div class="fw-500 f-16 black pb-10">Pipeline Stats</div>
									<div class="row m-0">
										<div class="col-md-4 p-0">
											<div class="font-weight-bold f-30">
												<i class="fas fa-dollar-sign light_gray"></i> <span
													class="theme_color"> 7245</span>
											</div>
										</div>
										<div class="col-md-4 p-0">
											<div class="font-weight-bold f-30 greyish-brown">75%</div>

										</div>
										<div class="col-md-4  p-0">
											<div class="font-weight-bold f-30 greyish-brown">25%</div>
										</div>
									</div>
									<div class="row m-0 pb-30 theme_dashed_border_bottom_2 ">
										<div class="col-md-4 p-0">
											<div class="f-12 brownish-grey">Estimated
												Value</div>
										</div>
										<div class="col-md-4 p-0">
											<div class=" f-12 brownish-grey">Tentative
											</div>

										</div>
										<div class="col-md-4 p-0">
											<div class=" f-12 brownish-grey">Win
												Rate</div>
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
												<div class=" f-12 brownish-grey pr-45">Utilisation
												</div>
												<div class=" f-12 brownish-grey">Talk
													Ratio</div>
											</div>

											<div class=" v-progress-bar-container ">
												<div class="progress-bar bg_green v-progress-bar" role="progressbar"
													style="width: 40%;z-index:3;" aria-valuenow="40" aria-valuemin="0"
													aria-valuemax="100"></div>
												<div class="progress-bar  bg_blue v-progress-bar" role="progressbar"
													style="width: 40%;z-index:2;" aria-valuenow="40" aria-valuemin="0"
													aria-valuemax="100"></div>
												<div class="progress-bar   bg-info v-progress-bar" role="progressbar"
													style="width: 20%;z-index:1;" aria-valuenow="20" aria-valuemin="0"
													aria-valuemax="100"></div>
											</div>
										</div>
									</div>


								</div>
								<div class="col-md-6 p-0 pl-15">
									<div class="fw-500 f-16 black pb-10">Playbook Stats</div>

									<div class="f-12 brownish-grey text-break font-weight-bold pb-10">
										Strong <i class="fal fa-info-circle soft-blue f-14"></i>
									</div>
									<div class="strong-signal w-100 d-flex flex-wrap">
										<img src="<%=baseURL %>assets/image/introduction_signal.svg" class="pr-2 pb-2">
										<img src="<%=baseURL %>assets/image/softSkill_signal.svg" class="pr-2 pb-2">
										<img src="<%=baseURL %>assets/image/nxt_step_signal.svg" class="pr-2 pb-2">
										<img src="<%=baseURL %>assets/image/solution_signal.svg" class="pr-2 pb-2">
										<img src="<%=baseURL %>assets/image/objection_signal.svg" class="pr-2 pb-2">
										<img src="<%=baseURL %>assets/image/lead_qualification.svg" class="pr-2 pb-2">
										
									</div>


									<div
										class="f-12 brownish-grey text-break font-weight-bold pt-20  pb-10">
										Weak <i class="fal fa-info-circle soft-blue  f-14"></i>
									</div>

									<div class="weak-signal w-100 d-flex flex-wrap">
										<img src="<%=baseURL %>assets/image/introduction_signal.svg" class="pr-2 pb-2">
										<img src="<%=baseURL %>assets/image/softSkill_signal.svg" class="pr-2 pb-2">
										<img src="<%=baseURL %>assets/image/nxt_step_signal.svg" class="pr-2 pb-2">
										<img src="<%=baseURL %>assets/image/solution_signal.svg" class="pr-2 pb-2">
										<img src="<%=baseURL %>assets/image/objection_signal.svg" class="pr-2 pb-2">
										<img src="<%=baseURL %>assets/image/lead_qualification.svg" class="pr-2 pb-2">
									</div>
								</div>
							</div>


						</div>

						<%
							}
						%>
					</div>
				</div>
			</div>
			<%
				}
			%>
		</div>

	</div>
</div>

<script type="text/javascript">
	$(document).ready(
			function() {

				var pipelineCount = $('.pipeline-container').length;
				var pipelineShowing = 0;
				$('.pipeline-container').hide();
				$('.pipeline-container').eq(pipelineShowing).show();
				
				if (pipelineCount == 0) {
					$('.pipeline-card').hide();
				}
				if (pipelineCount > 1) {
					$('#pipeline-right').click(
							function() {
								$('.pipeline-container').hide();
								if (pipelineShowing < pipelineCount - 1) {
									pipelineShowing++;
									$('.pipeline-container')
											.eq(pipelineShowing).show();
									$('#pipeline-left').addClass('active');
								}
								if (pipelineShowing == pipelineCount - 1) {
									$('.pipeline-container').eq(
											pipelineCount - 1).show();
									$('#pipeline-right').removeClass('active');
								}

							})

					$('#pipeline-left').click(
							function() {
								$('.pipeline-container').hide();
								if (pipelineShowing > 0) {
									pipelineShowing--;
									$('.pipeline-container')
											.eq(pipelineShowing).show();
									$('#pipeline-right').addClass('active');
								}
								if (pipelineShowing == 0) {
									$('.pipeline-container').eq(0).show();
									$('#pipeline-left').removeClass('active');
								}
								
							})
				} else {
					$('#pipeline-right').removeClass('active');
					$('#pipeline-left').removeClass('active');
				}
			});
</script>


