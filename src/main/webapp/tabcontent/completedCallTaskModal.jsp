<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
	%>
	<div class="row h-100 m-0">
											<div class="col-md-11 p-0">
												<div class="row justify-content-between m-0 pl-45 pr-45 pt-15 pb-10">
													<div class="col-9 p-0 ">
														<p class="greyish-brown f-18 mb-0 font-weight-bold text-truncate" data-toggle="tooltip" data-placement="bottom" title="Globex Corporation">Globex Corporation Inc.</p>
													</div>
													<div class="col-3 p-0">
														<div class="d-flex justify-content-end">
															<img src="<%=baseURL%>assets/image/heart.svg" class="cursor-pointer mr-15" alt="heart">
														<img src="<%=baseURL%>assets/image/message.svg" class="cursor-pointer taskcomment mr-15" alt="message">
														<img src="<%=baseURL%>assets/image/reply.svg" class="cursor-pointer taskshare mr-15" alt="reply">
														<div class="f-14 font-weight-bold theme_color cursor-pointer align-self-center" onclick="window.location.href = 'task_lead_detail.jsp'">
												    		 View More <i class="fas fa-chevron-circle-right ml-1 pr-2"></i>
												    </div>
														</div>
													</div>
												</div>
												
												<div class="row  m-0 ml-45 mr-45  pb-20  theme_dotted_border_bottom shadow-bottom  ">
													
													<div class="col-md-3 p-0">
														<p class="brownish-grey f-14 mb-0">Contact Person</p>
														<p class="black f-16 fw-500 mb-0 text-truncate" data-toggle="tooltip" data-placement="bottom" title="Globex Corporation">Robert Wolken</p>
													</div>
													<div class="col-md-3 p-0">
														<p class="brownish-grey f-14 mb-0">Agent</p>
														<p class="black f-16 fw-500 mb-0 text-truncate" data-toggle="tooltip" data-placement="bottom" title="Globex Corporation">Marilyn Fowler</p>
													</div>

												</div>
												 
												<div class="row m-0 pl-45 pr-45 pt-20 ">
													<div class="col p-0">
														<nav>
															<div class="nav nav-tabs nav-mytabs " id="nav-tabs"
																role="tablist">
																<a class="nav-item nav-link show active minw-150"
																	id="whatswrong-tab" data-toggle="tab"
																	href="#whatswrong" role="tab"
																	aria-controls="whatswrong" aria-selected="true">Whats
																	Wrong?</a> <a class="nav-item nav-link minw-150 "
																	id="whatsright-tab" data-toggle="tab"
																	href="#whatsright" role="tab"
																	aria-controls="whatsright" aria-selected="false">Whats
																	Right?</a> <a class="nav-item nav-link minw-150"
																	id="all-tab" data-toggle="tab" href="#all" role="tab"
																	aria-controls="all" aria-selected="false">All</a>
															</div>
														</nav>
														<div class="tab-content mytab-content pt-40"
															id="nav-tasktabsContent">
															<div class="tab-pane fade show active" id="whatswrong"
																role="tabpanel" aria-labelledby="whatswrong-tab"></div>
															<div class="tab-pane fade show " id="whatsright"
																role="tabpanel" aria-labelledby="whatsright-tab"></div>
															<div class="tab-pane fade show " id="all" role="tabpanel"
																aria-labelledby="all-tab"></div>
														</div>
													</div>


												</div>
												<div class="row shadow-bottom m-0 pl-45 pr-45 "> 
												<div class="col p-0">
												<div class="theme_dotted_border_bottom "></div>	
												</div></div> 

												<div class="row m-0 pb-30">
													<div class="col p-0 d-flex flex-row justify-content-center">

														<div class="d-flex flex-row align-items-center">
															<img src="<%=baseURL%>assets/image/man.jpg" alt="person"  data-toggle="tooltip" data-placement="bottom"  title="Lead Name"
																class="rounded-circle hw-60 task-image-right"> <img
																src="<%=baseURL%>assets/image/calltask.svg" alt="call"
																class="rounded-circle hw-40 task-icon">

														</div>
														<button class="btn p-0 ml-40">
															<i class="fas fa-backward"></i>
														</button>
														<button class="btn hw-64 shadow rounded-circle p-0	ml-25 mr-25 ">
															<i class="fas fa-play"></i>
														</button>

														<button class="btn p-0 mr-40">
															<i class="fas fa-forward"></i>
														</button>
														<div class="d-flex flex-row align-items-center">
															<img src="<%=baseURL%>assets/image/layer.png" alt="layer" data-toggle="tooltip" data-placement="bottom" title="Agent Name"
																class="rounded-circle hw-60 task-image-right"> <img alt="call"  
																src="<%=baseURL%>assets/image/calltask.svg"
																class="rounded-circle hw-40 task-icon">

														</div>

													</div>
												</div>
												<div class="row m-0  pl-45 pr-45  "> 
												<div class="col p-0">
												<div class="theme_solid_border_top_2px"></div>	
												</div></div>
												<div class="row  m-0">
												<div class="col p-0">
													<div class="row p-0 m-0  theme_solid_border_2px">
													<div class="col-md-4 p-0  theme_solid_border_right_2px" >
													<%for(int j=0;j<10;j++){ 
														String isactive="";
														if(j==0){
															isactive = "active";
														}
													
													%>
													
													<div class="row  m-0 audioitem <%=isactive %>">
													<div class="col-md-12 p-0 ">
													<div class="row  m-0 audioitemrow  "  style="border-bottom: 1px dashed #cccccc;">
														<div class="col-md-6 p-0 pl-65 pt-15 pb-15">
														<div class="d-flex flex-column">
															<p class="mb-0 light_gray f-12">06 Mint</p>
														<p class="mb-0 bblack f-16 text-break">Introduction</p>
														</div>
														</div>
														<div class="col-md-6 p-0 pr-15 pt-15 pb-15">
															<div class="d-flex justify-content-end ">
															<button class="btn  p-0	 hw-45 playaudio rounded-circle">
															<i class="fas fa-play"></i>
														</button>
															</div>
														</div>
														
													</div>
													</div>
													</div>
													<%} %>
													
													</div>
													<div class="col-md-8 p-0">

														<div class="row m-0 pl-60 pr-45"><div class="col p-0">
														<div id="carouselExampleIndicators"
															class="carousel slide theme_solid_border_bottom " data-ride="carousel">
															<ol class="carousel-indicators m-0 pb-20">
																<li data-target="#carouselExampleIndicators"
																	data-slide-to="0" class="active"></li>
																<li data-target="#carouselExampleIndicators"
																	data-slide-to="1"></li>
																<li data-target="#carouselExampleIndicators"
																	data-slide-to="2"></li>
															</ol>
															<div class="carousel-inner ">

																<%
																	for (int h = 0; h < 4; h++) {
																			String isActive = "";
																			if (h == 0) {
																				isActive = "active";
																			}
																%>
															
																<div class="carousel-item  <%=isActive%>">
																	
																		<div class="row align-items-center m-0"
																		style="min-height: 170px;">
																		<div class="col p-0">
																		<div class="d-flex flex-row">
																		
																		<img class="hw-94 " src="<%=baseURL%>assets/image/Group 3614.svg" alt="carousal-img">
																		<div class="border-right-blue  pl-30"></div>
																		<p class="greyish-brown ml-20 f-16  fw-500 mb-0 align-self-center">Customers who responded positively in the end of a call</p>
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
														</div>
														<div class="row m-0" >
															<div class="col p-0 pt-25  ">
																<h3 class="black fw-500 f-16 mb-0 pl-40 pb-25">Transcript</h3>
																<div class="transcript_container  " style="max-height:520px; overflow-x:hidden;overflow-y:auto;">
																<%for(int j=0;j<20;j++){ %>
																<div class="d-flex flex-column pl-40 pr-45 pb-25">
																	<p class="f-14 bblack pb-10 m-0">
																		<small class="f-12 brown-grey pr-20 ">00:20.</small> Jamie
																		Vargas
																	</p>
																	<div class="card shadow " style="border-radius: 1.25rem !important;" >
																		<div class="card-body">
																			<p class="card-text f-14 m-0">Some quick example text to
																				build on the card title and make up the bulk of the
																				card's content.</p>
																		</div>
																	</div>
																</div>
																
																
																<div class="d-flex flex-column pl-40 pr-45 pb-25">
																	<p class="f-14 bblack align-self-end pb-10 mb-0">
																		<small class="f-12 brown-grey  pr-20  ">00:20.</small> Jamie
																		Vargas
																	</p>
																	<div class="card shadow align-self-end very-light-pink-bg" style="border-radius: 1.25rem !important;" >
																		<div class="card-body">
																			<p class="card-text f-14 mb-0">Some quick example text to
																				build on the card title and make up the bulk of the
																				card's content.</p>
																		</div>
																	</div>
																</div>
																<%} %>
																</div>
															</div>

														</div>


													</div>
												</div>
												</div>
												</div>


											</div>



												<div class="col-md-1 p-0">
												<ul
													class="list-group shadow d-flex flex-column h-100  taskpopup">
													<li class="  dropleft  list-group-item p-0 py-3">
														<div
															class="notesdropdown d-flex flex-column justify-content-center align-items-center minh-50 "
															data-toggle="dropdown" aria-haspopup="true"
															aria-expanded="false">
															<img src="<%=baseURL%>assets/image/notes.svg"  alt="notes"/>
															<div class="f-12 pt-1 greyish-brown">Notes</div>
															<div class="dropdown-menu notespopupdropdown pt-0"
																aria-labelledby="dropdownMenuButton"></div>
														</div>
													</li>
													<li class=" dropleft list-group-item p-0 py-3">
														<div
															class="cuesdropdown d-flex flex-column justify-content-center align-items-center minh-50"
															data-toggle="dropdown" aria-haspopup="true"
															aria-expanded="false">
															<img src="<%=baseURL%>assets/image/cues.svg" alt="cues" />
															<div class="f-12 pt-1 greyish-brown">Cues</div>
															<div class="dropdown-menu cuespopoverdropdown"
																aria-labelledby="dropdownMenuButton"></div>
														</div>
													</li>
													<li class="dropleft list-group-item p-0 py-3">
														<div
															class="crmdropdown d-flex flex-column justify-content-center align-items-center minh-50"
															data-toggle="dropdown" aria-haspopup="true"
															aria-expanded="false">
															<img src="<%=baseURL%>assets/image/crm.svg" alt="crm" />
															<div class="f-12 pt-1 greyish-brown">CRM</div>
															<div class="dropdown-menu crmpopoverdropdown"
																aria-labelledby="dropdownMenuButton"></div>
														</div>
													</li>
													<li class="dropleft list-group-item  p-0 py-3 ">
														<div
															class=" chatdropdown d-flex flex-column justify-content-center align-items-center minh-50"
															data-toggle="dropdown" aria-haspopup="true"
															aria-expanded="false">
															<img src="<%=baseURL%>assets/image/presentation.svg"  alt="chat"/>
															<div class="f-12 pt-1 greyish-brown">Chat</div>
															<div class="dropdown-menu chatpopoverdropdown"
																aria-labelledby="dropdownMenuButton"></div>
														</div>
													</li>


													<li
														class=" flex-grow list-group-item d-flex flex-column justify-content-center align-items-center minh-100"
														style="height: calc(100% - 80px);"></li>


												</ul>
											</div>
										</div>
										
	<script src="<%=baseURL%>assets/js/salesken.js"></script>
	
	
	
	