<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>	
	
	<div class="row m-0 pb-30">
			<div class="col p-0 d-flex flex-row justify-content-center">

				<div class="d-flex flex-row align-items-center">
					<img src="<%=baseURL%>assets/image/man.jpg" alt="person"
						data-toggle="tooltip" data-placement="bottom" title="Lead Name"
						class="rounded-circle hw-60 task-image-right"> 
					<div class="rounded-circle hw-40 task-icon soft_blue_bg text-white font-weight-bold f-12 p-2">50%</div>
					

				</div>
				<button class="btn p-0 ml-40">
					<i class="fas fa-backward dark_gray"></i>
				</button>
				<button class="btn hw-64 border rounded-circle p-0	ml-25 mr-25 ">
					<i class="fas fa-play dark_gray"></i>
				</button>

				<button class="btn p-0 mr-40">
					<i class="fas fa-forward dark_gray"></i>
				</button>
				<div class="d-flex flex-row align-items-center">
					<img src="<%=baseURL%>assets/image/layer.png" alt="layer"
						data-toggle="tooltip" data-placement="bottom" title="Agent Name"
						class="rounded-circle hw-60 task-image-right"> <div class="rounded-circle hw-40 task-icon theme_bg text-white font-weight-bold f-12 p-2">50%</div>

				</div>

			</div>
		</div>
		<div class="row m-0  pl-45 pr-45  ">
			<div class="col p-0">
				<div class="theme_solid_border_top_2px"></div>
			</div>
		</div>
		<div class="row  m-0">
			<div class="col p-0">
				<div class="row p-0 m-0 ">
					<div class="col-md-4 p-0  theme_solid_border_right_2px">
						<%
							for (int j = 0; j < 10; j++) {
								String isactive = "";
								if (j == 0) {
									isactive = "active";
								}
						%>

						<div class="row  m-0 audioitem <%=isactive%>">
							<div class="col-md-12 p-0 ">
								<div class="row  m-0 audioitemrow ml-45 mr-10 "
									style="border-bottom: 1px dashed #cccccc;">
									<div class="col-md-6 p-0 pl-20 pt-15 pb-15">
										<div class="d-flex flex-column">
											<p class="mb-0 light_gray fw-300 f-12">06 Mint</p>
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
						<%
							}
						%>

					</div>
					<div class="col-md-8 p-0">
 <div class="row  m-0 pl-10 pt-10 pb-20 pr-45">
                                 <div class="col p-0 ">
                                    <video class="w-100" controls="">
                                       <source src="https://www.radiantmediaplayer.com/media/bbb-360p.mp4" type="video/mp4">
                                    </video>
                                 </div>
                              </div>
						<div class="row m-0 p-20 very-light-pink-grey-bg mr-40 theme_solid_border_right_2px">
							<div class="col p-0">
								<div id="carouselExampleIndicators"
									class="carousel slide theme_solid_border_bottom "
									data-ride="carousel">
									<ol class="carousel-indicators m-0 pb-20">
										<li data-target="#carouselExampleIndicators" data-slide-to="0"
											class="active"></li>
										<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
										<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
									</ol>
									<div class="carousel-inner ">

										<%
											for (int h = 0; h < 3; h++) {
												String isActive = "";
												if (h == 0) {
													isActive = "active";
												}
										%>

										<div class="carousel-item  <%=isActive%>">

											<div class="row align-items-center m-0 bg-white"
												style="min-height: 170px;">
												<div class="col p-0">
													<div class="d-flex flex-row pr-30 pt-10 pb-30 pl-30 align-items-center">
														<div class="col-md-9 pr-50">
															<div class="f-16 fw-500 greyish-brown">Unsatisfactory Resolution </div>
															<div class="f-12 brownish-grey">Customer sounded tentative after an objection was handled</div>
														</div>
														<img class="minh-100 "
															src="<%=baseURL%>assets/image/unsatisfactory_resolution.svg"
															alt="carousal-img">
														
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
						<div class="row m-0   theme_solid_border_top_2px mr-40">
							<div class="col p-0 pt-25  ">
								<h3 class="black fw-500 f-16 mb-0 pl-40 pb-25">Transcript</h3>
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
											style="border-radius: 0px 20px 20px 20px;  box-shadow: 0 .5rem 1rem #eee !important;">
											<div class="card-body">
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
										<div class="card  align-self-end very-light-pink-bg"
											style="border-radius: 20px 0px 20px 20px">
											<div class="card-body">
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


					</div>
				</div>
			</div>
		</div>