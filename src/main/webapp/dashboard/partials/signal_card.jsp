<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>

<ol class="carousel-indicators">
							<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
							<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
							<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
							<li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
						</ol>
						<div class="carousel-inner shadow">

							<%
							for (int i = 0; i < 4; i++) {
								String isActive = "";
								if (i == 0) {
									isActive = "active";
								}
						%>
							<div class="carousel-item <%=isActive%>">

								<div class="card  rounded-0 saleskenCard">
									<div class="card-body p-0 pl-30 pr-30 pt-30 pb-60">
										<div class="row m-0">
											<div class="col-md-6 p-0 pr-15">
												<div class="row m-0  align-items-center">
													<div class="col-md-8 p-0 m-0">
														<div class="font-weight-bold f-30 black">04</div>
														<div class="f-16 fw-500 greyish-brown">No Follow - Ups</div>
													</div>
													<div class="col-md-4 p-0 m-0">
														<img class=" signalimgsize p-0" alt="next-step-img" src="<%=baseURL%>assets/image/report-no-followup.svg" />
													</div>
												</div>
											</div>
											<div class="col-md-6 p-0 pl-15 card-separation ">
												<div class="row m-0  align-items-center">
													<div class="col-md-8 p-0 ">
														<div class="font-weight-bold f-30 black">12</div>
														<div class="f-16 fw-500 greyish-brown">Positive Response</div>
													</div>
													<div class="col-md-4 p-0  ">
														<img class=" signalimgsize" alt="
														next-step-img" src="<%=baseURL%>assets/image/positive_response.svg" />
													</div>
												</div>
											</div>

										</div>
									</div>
								</div>


							</div>
							<%
							}
						%>

						</div>