<%@page import="com.Pipeline"%>
<%@page import="org.apache.commons.io.IOUtils"%>
<%@page import="com.google.gson.GsonBuilder"%>
<%@page import="com.google.gson.Gson"%>
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
	
	String pipelinedetails = IOUtils.toString(request.getReader());	
	 Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm:ss").create();	
	 Pipeline pipelineDetails = gson.fromJson(pipelinedetails, Pipeline.class);
%>
	
					<div class="tab-pane fade show p-0 show active" id="stage-<%=pipelineDetails.getId() %>"
						role="tabpanel" aria-labelledby="stage-<%=pipelineDetails.getId() %>-tab">

						<div
							class="row align-items-center m-0 theme_dotted_border_bottom shadow-bottom pl-45 pt-20 pb-20 pr-45">

							<div class="col-md-6 p-0">
								<div class="row m-0">
									
									<div class="col-md-4 col-6 p-0">
										<div class="font-weight-bold f-30 greyish-brown">
											<i class="fas fa-dollar-sign black"></i>&nbsp;88765
										</div>
										<div class="f-12 brownish-grey">Pipeline Value</div>
									</div>
									<div class="col-md-4 col-6 p-0">
										<div class="font-weight-bold f-30 greyish-brown">25%</div>
										<div class="f-12 brownish-grey">Tentative</div>
									</div>
									<div class="col-md-4 col-6 p-0">
										<div class="font-weight-bold f-30 greyish-brown">75%</div>
										<div class="f-12 brownish-grey">Win Rate</div>
									</div>
								</div>

							</div>
							<div class="col-md-6 p-0">
								<div class="row m-0">
									<div class="col-md-6 p-0">
										<div class="font-weight-bold brownish-grey f-12 pb-5 d-flex align-items-center">
											Strong <i class="fal fa-info-circle soft-blue f-18 pl-1"></i>
										</div>
										<div class="d-flex">
											<img src="<%=baseURL %>assets/image/introduction_signal.svg" class="pr-2 pb-2">
											<img src="<%=baseURL %>assets/image/softSkill_signal.svg" class="pr-2 pb-2">
										</div>
									</div>
									<div class="col-md-6 p-0">
										<div class="font-weight-bold brownish-grey f-12 pb-5 d-flex align-items-center">
											Weak <i class="fal fa-info-circle soft-blue f-18 pl-1"></i>
										</div>
										<div class="d-flex">
											<img src="<%=baseURL %>assets/image/introduction_signal.svg" class="pr-2 pb-2">
											<img src="<%=baseURL %>assets/image/softSkill_signal.svg" class="pr-2 pb-2">
										</div>
									</div>
								</div>
							</div>


						</div>

						<div
							class="row align-items-center theme_solid_border_bottom m-0 pl-45 pt-20 pb-20 pr-40">
							<div class="col-md-2 col p-0">
								<button class="btn p-0 black f-14 font-weight-bold">
									Lead Name <i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
							<div class="col-md-2 col p-0">
								<button class="btn p-0 black f-14 font-weight-bold">
									Contact Person <i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
							<div class="col-md-3 col p-0">
								<button class="btn p-0 black f-14 font-weight-bold">
									Agent <i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
							<div class="col-md-5 col justify-content-lg-start  p-0">
								<button class="btn p-0 black f-14 font-weight-bold">
									Deal Journey <i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
						</div>

						<%
							for (int j = 0; j < 5; j++) {
									String bgcolor = "bg-white";
									if (j % 2 != 0) {
										bgcolor = "very-light-pink-grey-bg";
									}
						%>
						<div
							class="row m-0 theme_solid_border_bottom align-items-center pl-45 pr-40 pt-30 pb-30 <%=bgcolor%>">
							<div class="col-md-2 p-0">
								<div class="f-14 black fw-500 text-truncate"
									title="Accenture Consulting Inc.">Accenture Consulting
									Inc.</div>
								<div class="f-14 brownish-grey fw-500">$ 290</div>
							</div>

							<div class="col-md-2 p-0">
								<div class="f-14 black fw-500 text-truncate"
									title="Robert Wolken">Robert Wolken</div>
								<div class="f-14 brownish-grey text-truncate"
									title="Manager">Manager</div>
							</div>

							<div class="col-md-3 p-0">
								<div class="d-flex align-items-center">
									<img src="<%=baseURL%>assets/image/37.jpg" class="rounded-circle hw-40">
									<div class="pl-10">
										<div class="f-14 greyish-brown text-truncate" title="Stanley Howard">Stanley Howard</div>
										<div class="f-12 brown-grey">Pipeline - New Sales Pipeline</div>
									</div>
								</div>
							</div>

							<div class="col-md-5 p-0">
								<div class="row  m-0">
									<div class="col-md-11 p-0">
										<div class="row position-relative justify-content-between m-0">
											<div class="line"></div>
											<div class="col-md-1 p-0">
												<i class="fas fa-check-circle pl-2 tea-color"></i>
												<div class="brownish-grey f-14">Need</div>
											</div>
											<div class="col-md-1 text-center p-0">
												<i class="fas fa-check-circle  tea-color"></i>
												<div class="brownish-grey f-14">Budget</div>
											</div>
											<div class="col-md-1 text-center p-0">
												<i class="fas fa-check-circle  tea-color"></i>
												<div class="brownish-grey f-14">Authorized</div>
											</div>
											<div class="col-md-1 text-center p-0">
												<i class="fas fa-times-circle pastel-red"></i>
												<div class="brownish-grey f-14">Urgency</div>
											</div>



										</div>
									</div>
									<div class="col-md-1 p-0 text-right h-100 ">
										<div class="dropdown dropleft pt-20 d-inline">
											<button class="dropdown-icon-btn p-0 text-right"  data-display="static"
												type="button" id="dropdownMenuButton" data-display="static"
												data-toggle="dropdown" aria-haspopup="true"
												aria-expanded="false">
												<i class="fas fa-ellipsis-v f-12 brown-grey mt-3"></i>
											</button>
											<div
												class="dropdown-menu dropdown-menu-right istar-dropdown-menu arrow-left" style="margin-right: -0.425rem; margin-top: 3px !important;"
												aria-labelledby="dropdownMenuButton">
												<button class="dropdown-item" href="#">
													<div class="mr-2 dropdown-icon won"></div>Won
												</button>
												<button class="dropdown-item" href="#">
													<div class="mr-2 dropdown-icon lost"></div>Lose
												</button>
												<button class="dropdown-item" href="#" data-toggle="modal" data-target="#changeStageModal">
													<div class="mr-2 dropdown-icon change_stage"></div>Change Stage
												</button>

												<button class="dropdown-item"  data-toggle="modal" data-target="#assignOwnerModal">
													<div class="mr-2 dropdown-icon change_owner"></div>Change Owner 
												</button>
											</div>
										</div>
									</div>

								</div>
							</div>
						</div>
						<%
							}
						%>

						<div class="row  m-0 ">
							<div class="col-md-12  d-flex justify-content-end p-0">
								<div class="page">
									<ul class="salesken pagination  m-0 pt-30 pb-40 pr-40"></ul>
								</div>
							</div>
						</div>

					</div>
				