<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>
<div class="col-md-12 p-0">
							<div class="card mt-25 mb-25 ml-40 mr-40 shadow">
								<div class="card-body p-0">
								<div class="row m-0 pl-30 pt-30 pb-30 pr-30 justify-content-between">
									<div class="col-md-4 theme_dashed_border_right_2 p-0">
										<div class="d-flex align-items-center">
												<div class="col-md-3 p-0">
													<img src="<%=baseURL%>assets/image/clock.svg" width=" 93.8" height=" 87.2" class="">
												</div>
												
												<div class="col-md-9 p-0 ml-15">
													<div class="fw-300 brownish-grey f-30"><span class="greyish-brown font-weight-bold f-30 pr-2">08</span>h  <span class="font-weight-bold greyish-brown f-30 pr-2 pl-15">34</span>m<span class="font-weight-bold greyish-brown f-30 pr-2 pl-15">12</span>s</div>
													<div class="f-12 brownish-grey">Time Spent</div>
												</div>
										</div>
									</div>
									<div class="col-md-4 theme_dashed_border_right_2 p-0">
										<div class="row align-items-center justify-content-between m-0 h-100 pr-40">
											<div class="">
												<div class="font-weight-bold f-30 greyish-brown">
													28%
												</div>
												<div class="f-12 brownish-grey">Cue Uptake</div>
											</div>
											<div class="">
												<div class="font-weight-bold f-30 greyish-brown">
												68
												</div>
											<div class="f-12 brownish-grey">Daily Active Users</div>
											</div>
											<div class="">
												<div class="font-weight-bold f-30 greyish-brown">
													25%
												</div>
												<div class="f-12 brownish-grey">Playbook Adherence</div>
											</div>
										</div>
									</div>
									<div class="col-md-3 p-0">
										<div class="f-12 brownish-grey"><span class="font-weight-bold f-30 greyish-brown">38%</span> Utilisation</div>
										
										<div class=" v-progress-bar-container_report mt-2	">
												<div class="progress-bar bg_green v-progress-bar_report" role="progressbar"
													style="width: 55%;z-index:3;" aria-valuenow="40" aria-valuemin="0"
													aria-valuemax="100"></div>
												<div class="progress-bar  bg_blue v-progress-bar_report" role="progressbar"
													style="width:  40%;z-index:2;" aria-valuenow="40" aria-valuemin="0"
													aria-valuemax="100"></div>
												<div class="progress-bar   bg-info v-progress-bar_report" role="progressbar"
													style="width: 15%;z-index:1;" aria-valuenow="20" aria-valuemin="0"
													aria-valuemax="100"></div>
											</div> 
									</div>
									</div>
								</div>
							</div>
							</div>