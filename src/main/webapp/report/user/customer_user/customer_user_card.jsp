<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
	%>
	<div class="card mb-10 mr-40 ml-40 cursor-pointer" onclick="window.location.href = '../../../report/user/customer_user/user_detail/userDetail.jsp'" style="box-shadow: 0 10px 40px 0 rgba(0, 0, 0, 0.1);">
                  
               
<div class="card-body p-0">
									<div class="row m-0  pt-30 pb-30">
										<div class="col-md-3 border-right-dashed-separation-2px p-0 pl-30 pr-30">
											<div class="d-flex align-items-center pb-25">
												<img src="<%=baseURL%>assets/image/37.jpg" class="rounded-circle hw-40 ">
												<div class="ml-10">
													<div class="greyish-brown f-14">Stanley Howard</div>
													<div class="brown-grey f-12">ID - 00089</div>	
												</div>
											</div>
											
											<div class="row m-0 justify-content-between">
												<div class="col-md-3 p-0">
													<div class="f-30 black font-weight-bold">$ <span class="pastel-red">50K</span> </div>
													<div class="f-12 brown-grey">Acheived Value </div>
												</div>
												<div class="col-md-3 p-0">
													<div class="f-30 blue-black font-weight-bold">$ 50K</div>
													<div class="f-12 brown-grey">Estimated Value</div>
												</div>
												<div class="col-md-3 p-0">
													<div class="f-30 black font-weight-bold">52% </div>
													<div class="f-12 brown-grey">Win Rate</div>
												</div>
											</div>
											
										</div>
										<div class="col-md-3 border-right-dashed-separation-2px p-0 pl-30 pr-30	">
											<div class="fw-500 f-16 black mb-10">Activity Stats</div>
											<div class="row m-0">
												<div class="col-md-3 p-0">
													<div class="f-30 black font-weight-bold">25%</div>
													<div class="f-12 brown-grey">Utilisation</div>
												</div>
												<div class="col-md-3 p-0">
													<div class="f-30 black font-weight-bold">52% </div>
													<div class="f-12 brown-grey">Talk Ratio </div>
												</div>
											</div>
											
											<div class=" v-progress-bar-container_report mt-15	">
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
										<div class="col-md-6 p-0 pl-30 pr-30">
											<div class="fw-500 f-16 black mb-15">Playbook Stats</div>
											<div class="row m-0">
												<div class="col-md-6 p-0">
													<div class="font-weight-bold f-12 brownish-grey d-flex mb-10">Strong <i class="fal fa-info-circle f-16 soft-blue align-self-center ml-1"></i></div>
													<div class="strong-signal w-100 d-flex flex-wrap">
														<img src="<%=baseURL %>assets/image/introduction_signal.svg" class="pr-2 pb-2">
														<img src="<%=baseURL %>assets/image/softSkill_signal.svg" class="pr-2 pb-2">
														<img src="<%=baseURL %>assets/image/nxt_step_signal.svg" class="pr-2 pb-2">
														<img src="<%=baseURL %>assets/image/solution_signal.svg" class="pr-2 pb-2">
														<img src="<%=baseURL %>assets/image/objection_signal.svg" class="pr-2 pb-2">
														<img src="<%=baseURL %>assets/image/lead_qualification.svg" class="pr-2 pb-2">
													</div>
												</div>
												<div class="col-md-6 p-0">
													<div class="font-weight-bold f-12 brownish-grey d-flex mb-10">Weak <i class="fal fa-info-circle f-16 soft-blue align-self-center ml-1"></i></div>
													<div class="strong-signal w-100 d-flex flex-wrap">
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
									</div>
								</div>
								   </div>