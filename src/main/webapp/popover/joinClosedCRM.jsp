<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>
<div class="row m-0">
				<div class="col-md-3 p-0 bg-white dashboardcalltabsize  theme_solid_border_right_1px">
				
				<div id="call_connected">
						<div class="row m-0 justify-content-around pl-40 pt-20 pb-20 pr-40">
							<div class="col-md-10 p-0">
								<div class="f-14 brown-grey ">Dialing ...</div>
								<div class="f-20 font-weight-bold black">+91 445 546 9890</div>
							</div>
							<div class="col-md-2 p-0 d-flex justify-content-end">
								<button
									class="btn p-0 d-flex justify-content-center align-items-center call-icon red-gradient m-0"
									onclick="endCall()">
									<i class="fas fa-phone-alt f-22 text-white"></i>
								</button>
							</div>
						</div>
	
						<div class="row pt-20 m-0 pl-40 pr-40 mb-20">
							<button class=" p-0 col btn">
								<i class="fal fa-record-vinyl"></i>
							</button>
							<button class=" p-0  col btn">
								<i class="fas fa-pause"></i>
							</button>
							<button class="p-0  col btn">
								<i class="fas fa-microphone"></i>
							</button>
							<button class="col p-0  btn">
								<i class="fas fa-volume-up"></i>
							</button>
							<button class="col p-0  btn">
								<i class="fas fa-user-friends"></i>
							</button>
							<button class="col p-0  btn">
								<i class="fal fa-sort-alt"></i>
							</button>
							<button class="col btn p-0 ">
								<i class="fas fa-th"></i>
							</button>
						</div>
						
						
						<hr class="m-0 mr-40 mb-20 ml-40">
						
						<div class="font-weight-bold f-12 theme_color pl-40 cursor-pointer">Privacy Setting</div>
						
						<div class="f-18 font-weight-bold greyish-brown pl-40 pt-25">Timeline Status</div>
						
						<div class="dimension_list pl-40 pr-40 pb-25 pt-25 position-relative">
							<div class="connector-line"></div>
							<div class="d-flex">
								<img class="hw-20 z-9 cream_white" src="<%=baseURL %>assets/image/checkicon.svg">
								
								<div class="fw-300 f-12 brownish-grey ml-10">Introduction	</div>
							</div>
							<div class="d-flex pt-20">
								<img class="hw-20 z-9 cream_white" src="<%=baseURL %>assets/image/checkicon.svg">
								
								<div class="fw-300 f-12 brownish-grey ml-10">Lead Qualification	</div>
							</div>
							<div class="d-flex pt-20 align-items-center">
								<div class="hw-20 theme_solid_border_2px rounded-circle cream_white z-9"></div>
								
								<div class="not_mentioned d-flex flex-column">
									<div class=" f-12 brownish-grey ml-10">Objections	</div>
									<div class="fw-300 f-12 brown-grey ml-10 font-italic">Not yet mentioned </div>
								</div>
							</div>
							<div class="d-flex pt-20 align-items-center">
								<div class="hw-20 theme_solid_border_2px rounded-circle cream_white z-9"></div>
								
								<div class="not_mentioned d-flex flex-column">
									<div class=" f-12 brownish-grey ml-10">Decision Making 	</div>
									<div class="fw-300 f-12 brown-grey ml-10 font-italic">Not yet mentioned </div>
								</div>
							</div>
							<div class="d-flex pt-20 align-items-center">
								<div class="hw-20 theme_solid_border_2px rounded-circle cream_white z-9"></div>
								
								<div class="not_mentioned d-flex flex-column">
									<div class=" f-12 brownish-grey ml-10">Needs Investigation 	</div>
									<div class="fw-300 f-12 brown-grey ml-10 font-italic">Not yet mentioned </div>
								</div>
							</div>	
							<div class="d-flex pt-20 align-items-center">
								<div class="hw-20 theme_solid_border_2px rounded-circle cream_white z-9"></div>
								
								<div class="not_mentioned d-flex flex-column">
									<div class=" f-12 brownish-grey ml-10">Features	</div>
									<div class="fw-300 f-12 brown-grey ml-10 font-italic">Not yet mentioned </div>
								</div>
							</div>
							<div class="d-flex pt-20 align-items-center">
								<div class="hw-20 theme_solid_border_2px rounded-circle cream_white z-9"></div>
								
								<div class="not_mentioned d-flex flex-column">
									<div class=" f-12 brownish-grey ml-10">Brand	</div>
									<div class="fw-300 f-12 brown-grey ml-10 font-italic">Not yet mentioned </div>
								</div>
							</div>
							<div class="d-flex pt-20 align-items-center">
								<div class="hw-20 theme_solid_border_2px rounded-circle cream_white  z-9"></div>
								
								<div class="not_mentioned d-flex flex-column">
									<div class=" f-12 brownish-grey ml-10">Value Proposition 	</div>
									<div class="fw-300 f-12 brown-grey ml-10 font-italic">Not yet mentioned </div>
								</div>
							</div>
						</div>
	
					</div>
				
				
				</div>
			
				<div class="col-md-9 p-0">
					<div class="row justify-content-between m-0 pb-10 pl-45 pr-45 pt-20">
						<div class="col-11 p-0">
							<div
								class="f-18 font-weight-bold greyish-brown d-inline"
								data-toggle="tooltip" data-placement="bottom">Call Task</div>
						</div>
						<div class="col-1 p-0">
							<div
								class="f-14 font-weight-bold theme_color cursor-pointer align-self-center" onclick="window.location.href='task_lead_detail.jsp'">
								View More <i class="fas fa-chevron-circle-right ml-1 "></i>
							</div>
							
						</div>
					</div>
					
					<div class="row m-0 theme_dotted_border_bottom shadow-bottom  pl-45 pr-45 pb-20">
						<div class="col-md-3 border-right-dashed-separation p-0">
							<p class="brownish-grey f-14 mb-0">Initiated At</p>
							<p class="black  fw-500 f-16 mb-0">11:00 AM</p>
						</div>
						<div class="col-md-3 border-right-dashed-separation p-0 pl-15">
							<p class="brownish-grey f-14 mb-0">Pipeline Detail</p>
							<p class="black fw-500 f-16 mb-0 text-truncate" title="Stage 02">Stage 02</p>
						</div>
						<div class="col-md-3 border-right-dashed-separation p-0 pl-15">
							<p class="brownish-grey f-14 mb-0">Contact Person</p>
							<p class="black fw-500 f-16 mb-0 text-truncate" title="Robert Wolken">Robert Wolken</p>
						</div>
						<div class="col-md-3 p-0 pl-15">
							<p class="brownish-grey f-14 mb-0">Status</p>
							<img src="<%=baseURL%>assets/image/angry.svg">
						</div>
					</div>
					
					<div class="row m-0 pt-20  ">
						<div class="col p-0">
							<ul
								class="nav nav-tabs nav-mytabs p-0 pt-20 ml-45 mr-45 d-flex align-items-end"
								id="agent-details" role="tablist">
								<li class="nav-item"><a class="nav-item nav-link active"
									id="cues-tab" data-toggle="tab" href="#cues"
									role="tab" aria-controls="cues" aria-selected="true">Cues</a></li>
								<li class="nav-item"><a class="nav-item nav-link"
									id="call-history-tab" data-toggle="tab" href="#call-history"
									role="tab" aria-controls="call-history" aria-selected="false">Call History</a></li>
								
							</ul>
							<div class="tab-content mytab-content p-0 pt-40"
								id="nav-tasktabsContent">
								
								<div class="tab-pane fade show active" id="cues" role="tabpanel"
									aria-labelledby="cues-tab">
									<!-- start of cues content -->
										<div class="ml-45 mr-45 bg-white pb-50">
											<div class="f-18 font-weight-bold greyish-brown pb-20">Manual Cues</div>
											<div class="d-flex flex-wrap">
												<%for(int i=0;i<3; i++){ %>
												<img src="<%=baseURL %>assets/image/introduction_signal.svg" class="pr-2 pb-2">
												<img src="<%=baseURL %>assets/image/softSkill_signal.svg" class="pr-2 pb-2">
												<img src="<%=baseURL %>assets/image/nxt_step_signal.svg" class="pr-2 pb-2">
												<img src="<%=baseURL %>assets/image/solution_signal.svg" class="pr-2 pb-2">
												<img src="<%=baseURL %>assets/image/objection_signal.svg" class="pr-2 pb-2">
												<img src="<%=baseURL %>assets/image/lead_qualification.svg" class="pr-2 pb-2">
												<%} %>
											</div>
										</div>
										<div class="row  m-0 very-light-pink-grey-bg p-50 ">
											<div class="col-md-12 p-0 ">
												<div class="row m-0 justify-content-between">
													<div class="col-md-2 p-0 f-18 font-weight-bold greyish-brown pb-35">System Cues</div>
													<div class="col-md-3 p-0 d-flex	 justify-content-end">
														<div class="input-group position-relative search_width">
															<img src="<%=baseURL %>assets/image/search.svg" alt="edit" class=" searchBox"> <input id="systemCues_search" class="form-control  custom-taskborder brown-grey  f-14 search_height custom-result-selects" type="search" placeholder="Search" style="padding-right: 30px">
														</div>
													</div>
												</div>
												<div class="card shadow cues-card mb-10" style="max-width:200px;">
													<div class="card-body p-0 pt-15 pb-15 pl-20 pr-20">
														<div class="f-12 brown-grey">Wait system is responding...</div>
													</div>
												</div>
											
												<div class="card shadow cues-card mb-10" style="max-width:617px;">
													<div class="card-body p-0 pt-30 pb-30 pl-20 pr-20">
														<div class="d-flex align-items-center">
															<div class="col-md-9 p-0">
																<div class="f-12 brown-grey pb-10">11:30 AM</div>
																<div class="f-16 font-weight-bold blue-black">Calm Down !</div>
																<div class="f-16 blue-black">Lorem ipsum dolor sit amet, consectetur adipiscing elit</div>
															</div>
															<div class="col-md-3 p-0">
																<img src="<%=baseURL %>assets/image/red_bg.svg" class="h-123">
															</div>
														</div>
													</div>
												</div>
												
												<div class="card shadow cues-card mb-10" style="max-width:617px;">
													<div class="card-body p-0  pt-30 pb-30 pl-20 pr-20">
														<div class="d-flex justify-content-between align-items-center pb-10">
															<div class="f-12 brown-grey pb-10">11:30 AM</div>
															<img src="<%=baseURL %>assets/image/introduction_signal.svg">
														</div>
														<div class="f-16 blue-black">Best of luck Sophia !</div>
														<div class="f-16  blue-black">Remember to highlight the great <span class="font-weight-bold">"Career Opportunities"</span> in Digital Marketing!</div>
													</div>
												</div>
												
												<div class="card shadow cues-card mb-10" style="max-width:553px;">
													<div class="card-body p-0  pt-30 pb-30  pl-20 pr-20">
														<div class="d-flex align-items-center">
															<div class="col-md-9 p-0">
																<div class="f-12 brown-grey pb-10">11:30 AM</div>
																<div class="f-16 font-weight-bold blue-black pb-10">Classes are conducted every weekends</div>
																<div class="f-16 blue-black">We have 2 batches...<br>Batch 1 - 10:00 AM to 01:00 PM<br>	   Batch 2 - 02:00 PM to 04:00 PM</div>
															</div>
															<div class="col-md-3 p-0">
																<img src="<%=baseURL %>assets/image/red_bg.svg" class="h-123">
															</div>
														</div>
													</div>
												</div>
												
												<div class="card shadow cues-card mb-10" style="max-width:527px;">
													<div class="card-body p-0 pt-30 pb-30 pl-20 pr-20">
														<div class="d-flex justify-content-between align-items-center pb-10">
															<div class="f-12 brown-grey pb-10">11:30 AM</div>
															<img src="<%=baseURL %>assets/image/nxt_step_signal.svg">
														</div>
														<div class="f-16 font-weight-bold blue-black">It is a 53 hour program!</div>
														<div class="f-16  blue-black">So, if you enroll for the weekend classes, it’ll be for 8 weeks</div>
													</div>
												</div>
											
											</div>
										</div>
										
										
										
									<!-- end of cues content -->
								</div>
								<div class="tab-pane fade show " id="call-history"
									role="tabpanel" aria-labelledby="call-history-tab">
									
									<!-- start of call history content -->
									
									<div class="row m-0 justify-content-between ml-45 mr-45 pb-20 theme_dashed_border_bottom">
										<div class="col-md-2 p-0 f-18 font-weight-bold greyish-brown">Transcript</div>
										<div class="col-md-3 p-0 d-flex	 justify-content-end">
											<div class="input-group position-relative search_width">
												<img src="<%=baseURL %>assets/image/search.svg" alt="edit" class=" searchBox"> <input id="systemCues_search" class="form-control  custom-taskborder brown-grey  f-14 search_height custom-result-selects" type="search" placeholder="Search" style="padding-right: 30px">
											</div>
										</div>
									</div>
									
									
									<div class="row m-0 ml-45 mr-45">
							<div class="col p-0 pt-25  ">
								<div class="transcript_container  "
									style="max-height: 520px; overflow-x: hidden; overflow-y: auto;">
									<%
										for (int j = 0; j < 20; j++) {
									%>
									<div class="d-flex flex-column pl-40 pb-25">
										<p class="f-14 bblack pb-10 m-0">
											<small class="f-12 brown-grey pr-20 ">00:20.</small> Jamie
											Vargas
										</p>
										<div class="card shadow "
											style="border-radius: 0px 20px 20px 20px">
											<div class="card-body p-0 p-20">
												<p class="card-text f-14 blue-black m-0">Some quick
													example text to build on the card title and make up the
													bulk of the card's content.</p>
											</div>
										</div>
									</div>


									<div class="d-flex flex-column pl-40 pb-25">
										<p class="f-14 bblack align-self-end pb-10 mb-0">
											<small class="f-12 brown-grey  pr-20  ">00:20.</small> Jamie
											Vargas
										</p>
										<div class="card shadow align-self-end very-light-pink-bg"
											style="border-radius: 20px 0px 20px 20px">
											<div class="card-body p-0 p-20">
												<p class="card-text blue-black f-14 mb-0">Some quick
													example text to build on the card title and make up the
													bulk of the card's content.</p>
											</div>
										</div>
									</div>
									<%
										}
									%>
								</div>
							</div>

						</div>
									
									<!-- end of call history content -->
									
								</div>
									
							</div>
						</div>
				</div>

				</div>
				
				
			
			</div>