<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
	%>
	<div class="row h-100">
											<div class="col-md-11">
												<div class="row p-2 justify-content-between">
													<div class="col-9">
														<p class="greyish-brown f-18 mb-2 font-weight-bold">Globex Corporation Inc.</p>
													</div>
													<div class="col-3">
														<div class="d-flex justify-content-end">
															<img src="<%=baseURL%>assets/image/heart.svg" class="cursor-pointer mr-2">
														<img src="<%=baseURL%>assets/image/message.svg" class="cursor-pointer taskcomment mr-2">
														<img src="<%=baseURL%>assets/image/reply.svg" class="cursor-pointer taskshare mr-2">
														<div class="f-14 font-weight-bold theme_color cursor-pointer align-self-center" onclick="window.location.href = 'task_lead_detail.jsp'">
												    		 View More <i class="fas fa-chevron-circle-right ml-1 pr-2"></i>
												    </div>
														</div>
													</div>
												</div>
												<div class="row pl-2">
													
													<div class="col-md-3 ">
														<p class="brownish-grey f-14 mb-0">Contact Person</p>
														<p class="black f-16 fw-500 mb-0">Robert Wolken</p>
													</div>
													<div class="col-md-3 ">
														<p class="brownish-grey f-14 mb-0">Agent</p>
														<p class="black f-16 fw-500 mb-0">Marilyn Fowler</p>
													</div>

												</div>
												<div class="row pt-2 pl-3">
													<div class="col">
														<nav>
															<div class="nav nav-tabs nav-mytabs pt-2" id="nav-tabs"
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
														<div class="tab-content mytab-content"
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

												<div class="row pt-2 pl-3 mb-5">
													<div class="col d-flex flex-row justify-content-center">

														<div class="d-flex flex-row align-items-center mr-5">
															<img src="<%=baseURL%>assets/image/man.jpg"
																class="rounded-circle hw-60 task-image-right"> <img
																src="<%=baseURL%>assets/image/calltask.svg"
																class="rounded-circle hw-40 task-icon">

														</div>
														<button class="btn  mr-1">
															<i class="fas fa-backward"></i>
														</button>
														<button class="btn hw-64 shadow rounded-circle  mr-1">
															<i class="fas fa-play"></i>
														</button>

														<button class="btn  mr-5">
															<i class="fas fa-forward"></i>
														</button>
														<div class="d-flex flex-row align-items-center">
															<img src="<%=baseURL%>assets/image/layer.png"
																class="rounded-circle hw-60 task-image-right"> <img
																src="<%=baseURL%>assets/image/calltask.svg"
																class="rounded-circle hw-40 task-icon">

														</div>

													</div>
												</div>
												<div class="row mt-2 ml-3 border-top-task_list">
													<div class="col-md-4 p-0 m-0" style="	border-right: 1px solid #cccccc;">
													<%for(int j=0;j<10;j++){ %>
													<div class="d-flex flex-row  p-3 audioitem" style="border-bottom: 1px dashed #cccccc;">
														<div class="mr-auto">
														<p class="mb-0 light_gray f-12">06 Mint</p>
														<p class="mb-0 bblack f-16">Introduction</p>
														
														
														</div>
														<div>	<button class="btn  mr-1 hw-45 playaudio">
															<i class="fas fa-play"></i>
														</button></div>
													</div>
													<%} %>
													
													</div>
													<div class="col-md-8 p-0">


														<div id="carouselExampleIndicators"
															class="carousel slide mb-2" data-ride="carousel">
															<ol class="carousel-indicators">
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

																	<div class="row align-items-center ml-3 mr-3"
																		style="min-height: 170px;">
																		<div class="col">
																		<div class="d-flex flex-row">
																		
																		<img class="hw-94 mr-5" src="<%=baseURL%>assets/image/Group 3614.svg">
																		<div class="border-right-blue mr-3"></div>
																		<p class="greyish-brown f-16  fw-500  align-self-center">Customers who responded positively in the end of a call</p>
																		</div>
																		</div>
																	</div>
																		
																</div>
																<%
																	}
																%>

															</div>
															<a class="carousel-control-prev"
																href="#carouselExampleIndicators" role="button"
																data-slide="prev"> <span
																class="carousel-control-prev-icon" aria-hidden="true"></span>
																<span class="sr-only">Previous</span>
															</a> <a class="carousel-control-next"
																href="#carouselExampleIndicators" role="button"
																data-slide="next"> <span
																class="carousel-control-next-icon" aria-hidden="true"></span>
																<span class="sr-only">Next</span>
															</a>
														</div>
														
														<div class="row mt-2   ml-3 pr-2" >
															<div class="col">
																<h3 class="black fw-500 f-16 mb-4">Transcript</h3>
																<div class="transcript_container p-3 " style="max-height:520px; overflow-x:hidden;overflow-y:auto;">
																<%for(int j=0;j<20;j++){ %>
																<div class="d-flex flex-column pr-5 mr-5 mb-4 ">
																	<p class="f-14 bblack">
																		<small class="f-12 brown-grey mr-2">00:20.</small> Jamie
																		Vargas
																	</p>
																	<div class="card shadow" style="border-radius: 1.25rem !important;" >
																		<div class="card-body">
																			<p class="card-text">Some quick example text to
																				build on the card title and make up the bulk of the
																				card's content.</p>
																		</div>
																	</div>
																</div>
																
																
																<div class="d-flex flex-column pl-5 ml-5 mb-4">
																	<p class="f-14 bblack align-self-end">
																		<small class="f-12 brown-grey mr-2 ">00:20.</small> Jamie
																		Vargas
																	</p>
																	<div class="card shadow align-self-end very-light-pink-bg" style="border-radius: 1.25rem !important;" >
																		<div class="card-body">
																			<p class="card-text">Some quick example text to
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



											<div class="col-md-1 p-0">
												<ul class="list-group shadow d-flex flex-column h-100 taskpopup">
													<li
														class="notespopup  list-group-item d-flex flex-column justify-content-center align-items-center minh-100" >
														<img src="<%=baseURL%>assets/image/calltask.svg" />
														<div class="f-12 pt-1 greyish-brown">Notes</div>
													</li>
													<li
														class="cuespopover list-group-item d-flex flex-column justify-content-center align-items-center minh-100">
														<img src="<%=baseURL%>assets/image/calltask.svg" />
														<div class="f-12 pt-1 greyish-brown">Cues</div>
													</li>
													<li
														class="crmpopover list-group-item d-flex flex-column justify-content-center align-items-center minh-100">
														<img src="<%=baseURL%>assets/image/calltask.svg" />
														<div class="f-12 pt-1 greyish-brown">CRM</div>
													</li>
													<li
														class="chatpopover list-group-item d-flex flex-column justify-content-center align-items-center minh-100">
														<img src="<%=baseURL%>assets/image/calltask.svg" />
														<div class="f-12 pt-1 greyish-brown">Chat</div>
													</li>
													<li
														class=" flex-grow list-group-item d-flex flex-column justify-content-center align-items-center minh-100"
														style="height: calc(100% - 80px);"></li>
												</ul>
											</div>
										</div>
										
	<script src="<%=baseURL%>assets/js/salesken.js"></script>
	
	
	
	