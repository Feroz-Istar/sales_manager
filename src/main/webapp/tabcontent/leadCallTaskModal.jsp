<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
	%>

	<div class="row h-100 m-0">
		<div class="col-md-11 p-0">
			<div class="row m-0">
				<div class="col p-0">
					<p class="greyish-brown f-18 font-weight-bold m-0">Call
						Task</p>
				</div>
			</div>
			
			<div class="row m-0">
				<div class="col-md-3 border-right-dashed-separation p-0">
					<p class="brownish-grey f-14 m-0">Initiated At</p>
					<p class="black f-16 fw-500 m-0">11:00 AM</p>
				</div>
				<div class="col-md-3 border-right-dashed-separation p-0">
					<p class="brownish-grey f-14 m-0">Pipeline Detail</p>
					<p class="black f-16 fw-500 m-0 text-truncate" title="Stage 02">Stage 02</p>
				</div>
				<div class="col-md-3 p-0">
					<p class="brownish-grey f-14 mb-0 ">Contact Person</p>
					<p class="black f-16 fw-500 mb-0 text-truncate" title="Robert Wolken">Robert Wolken</p>
				</div>
				<div class="col-md-3 text-right p-0">
					<button type="button" class="btn btn-outline-dark" data-toggle="modal" data-target="#leaveTaskModal">LEAVE
						TASK</button>

				</div>

			</div>
			<div class="row shadow-bottom m-0"> 
												<div class="col p-0">
												<div class="theme_dotted_border_bottom "></div>	
												</div>
			</div>
			<div class="row m-0 ">
				<div class="col p-0">
					<nav>
						<div class="nav nav-tabs nav-mytabs p-0" id="nav-tabs"
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
					<div class="tab-content mytab-content p-0"
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

			<div class="row m-0">
				<div class="col p-0 d-flex flex-row justify-content-center">

					<div class="d-flex flex-row align-items-center m-0">
						<img src="<%=baseURL%>assets/image/man.jpg" alt="person"
							class="rounded-circle hw-60 task-image-right"> <img
							src="<%=baseURL%>assets/image/calltask.svg" alt="call"
							class="rounded-circle hw-40 task-icon">

					</div>
					<button class="btn ">
						
						<i class="fas fa-backward"></i>
					</button>
					<button class="btn hw-64 shadow rounded-circle ">
						<i class="fas fa-play"></i>
					</button>

					<button class="btn ">
						<i class="fas fa-forward"></i>
					</button>
					<div class="d-flex flex-row align-items-center">
						<img src="<%=baseURL%>assets/image/layer.png"  alt="layer"
							class="rounded-circle hw-60 task-image-right"> <img alt="call"
							src="<%=baseURL%>assets/image/calltask.svg"
							class="rounded-circle hw-40 task-icon">

					</div>

				</div>
			</div>
			<div class="row m-0"> 
												<div class="col p-0">
												<div class="theme_solid_border_top_2px"></div>	
												</div></div>
		<div class="row  m-0">
												<div class="col p-0">
													<div class="row m-0 theme_solid_border_2px">
													<div class="col-md-4 p-0 m-0 theme_solid_border_right_2px" >
													<%for(int j=0;j<10;j++){ 
														String isactive="";
														if(j==0){
															isactive = "active";
														}
													
													%>
													
													<div class="row p-0 m-0 audioitem <%=isactive %>">
													<div class="col-md-11  p-0 ">
													<div class="row audioitemrow m-0  "  style="border-bottom: 1px dashed #cccccc;">
														<div class="col-md-6 p-0 text-center">
														<div class="d-flex flex-column">
															<p class="m-0 light_gray f-12">06 Mint</p>
														<p class="m-0 bblack f-16 text-break">Introduction</p>
														</div>
														</div>
														<div class="col-md-6 p-0">
															<div class="d-flex justify-content-end">
															<button class="btn  hw-45 playaudio rounded-circle">
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

														<div class="row m-0"><div class="col p-0">
														<div id="carouselExampleIndicators"
															class="carousel slide  theme_solid_border_bottom " data-ride="carousel">
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
																	
																		<div class="row align-items-center m-0"
																		style="min-height: 170px;">
																		<div class="col p-0">
																		<div class="d-flex flex-row">
																		
																		<img class="hw-94" src="<%=baseURL%>assets/image/Group 3614.svg" alt="carousal-img">
																		<div class="border-right-blue"></div>
																		<p class="greyish-brown f-16  fw-500 m-0 align-self-center">Customers who responded positively in the end of a call</p>
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
														</div>
														</div>
														<div class="row m-0" >
															<div class="col p-0">
																<h3 class="black fw-500 f-16">Transcript</h3>
																<div class="transcript_container " style="max-height:520px; overflow-x:hidden;overflow-y:auto;">
																<%for(int j=0;j<20;j++){ %>
																<div class="d-flex flex-column ">
																	<p class="f-14 bblack m-0">
																		<small class="f-12 brown-grey">00:20.</small> Jamie
																		Vargas
																	</p>
																	<div class="card shadow" style="border-radius: 1.25rem !important;" >
																		<div class="card-body p-0">
																			<p class="card-text f-14 m-0">Some quick example text to
																				build on the card title and make up the bulk of the
																				card's content.</p>
																		</div>
																	</div>
																</div>
																
																
																<div class="d-flex flex-column">
																	<p class="f-14 bblack align-self-end">
																		<small class="f-12 brown-grey ">00:20.</small> Jamie
																		Vargas
																	</p>
																	<div class="card shadow align-self-end very-light-pink-bg" style="border-radius: 1.25rem !important;" >
																		<div class="card-body p-0">
																			<p class="card-text f-14 m-0">Some quick example text to
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
													class="list-group shadow d-flex flex-column h-100 ml-2 taskpopup">
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
															<img src="<%=baseURL%>assets/image/cues.svg"  alt="cues"/>
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
															<img src="<%=baseURL%>assets/image/crm.svg" alt="crm"/>
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
<script>



$('.dropdown-menu').click(function(e) {
    e.stopPropagation();
});
</script>
	<script src="<%=baseURL%>assets/js/salesken.js"></script>
