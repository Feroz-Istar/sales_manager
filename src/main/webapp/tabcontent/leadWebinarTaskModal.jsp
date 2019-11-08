<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
	%>

	<div class="row h-100 m-0">
		<div class="col-md-11 p-0">
		<div class="row justify-content-between m-0 pl-45 pr-45 pt-15 pb-10">
				<div class="col-md-9 p-0 ">

				<div
					class="f-18 font-weight-bold greyish-brown text-truncate d-inline"
					data-toggle="tooltip" data-placement="bottom" title=""
					data-original-title="Webinar Task">Webinar Task</div>
			</div>
			
		</div>

		<div
			class="row  m-0 ml-45 mr-45  pb-20  theme_dotted_border_bottom shadow-bottom  ">

			<div class="col-md-3 p-0">
				<p class="brownish-grey f-14 mb-0">Initiated At</p>
				<p class="black f-16 fw-500 mb-0 text-truncate"
					data-toggle="tooltip" data-placement="bottom"
					title="Globex Corporation">11:00 AM</p>
			</div>
			<div class="col-md-3 p-0">
				<p class="brownish-grey f-14 mb-0">Pipeline Detail</p>
				<p class="black f-16 fw-500 mb-0 text-truncate"
					data-toggle="tooltip" data-placement="bottom"
					title="Globex Corporation">Stage 02</p>
			</div>
			<div class="col-md-3 p-0">
				<p class="brownish-grey f-14 mb-0">Contact Person</p>
				<p class="black f-16 fw-500 mb-0 text-truncate"
					data-toggle="tooltip" data-placement="bottom"
					title="Globex Corporation">Robert Wolken</p>
			</div>
			<div class="col-md-3 d-flex justify-content-end p-0">
				<button type="button" class="btn small_outline_button rounded-0  f-12 font-weight-bold  " data-toggle="modal" data-target="#leaveTaskModal">LEAVE TASK</button>
			</div>
			
		</div>

		<div class="row m-0 pl-45 pr-45 pt-20 ">
			<div class="col p-0">
				<ul
					class="nav nav-tabs nav-mytabs p-0  d-flex align-items-end"
					id="task-details" role="tablist">
					<li class="nav-item"><a class="nav-item nav-link active"
						id="whatswrong-tab" data-toggle="tab" href="#whatswrong"
						role="tab" aria-controls="whatswrong" aria-selected="true">Whats
							Wrong?</a></li>
					<li class="nav-item"><a class="nav-item nav-link"
						id="whatsright-tab" data-toggle="tab" href="#whatsright"
						role="tab" aria-controls="whatsright" aria-selected="false">What's
							Right?</a></li>
					<li class="nav-item"><a class="nav-item nav-link" id="all-tab"
						data-toggle="tab" href="#all" role="tab" aria-controls="all"
						aria-selected="false">All</a></li>
				</ul>
				<div class="tab-content mytab-content pt-40"
					id="nav-tasktabsContent">
					<div class="tab-pane fade show active" id="whatswrong"
						role="tabpanel" aria-labelledby="whatswrong-tab"></div>
					<div class="tab-pane fade show " id="whatsright" role="tabpanel"
						aria-labelledby="whatsright-tab"></div>
					<div class="tab-pane fade show " id="all" role="tabpanel"
						aria-labelledby="all-tab"></div>
				</div>
			</div>


		</div>


		<div class="row m-0 pb-30 pl-45">
			<div class="col p-0 d-flex flex-row ">

				<div class="d-flex flex-row align-items-center">
					<img src="<%=baseURL%>assets/image/man.jpg" alt="person"
						data-toggle="tooltip" data-placement="bottom" title="Lead Name"
						class="rounded-circle hw-60 task-image-right"> <div class="rounded-circle hw-40 task-icon theme_bg text-white font-weight-bold f-12 p-2">50%</div>

				</div>
				
				<div class="d-flex flex-row align-items-center pl-90">
					<img src="<%=baseURL%>assets/image/layer.png" alt="layer"
						data-toggle="tooltip" data-placement="bottom" title="Agent Name"
						class="rounded-circle hw-60 task-image-right"> <div class="rounded-circle hw-40 task-icon soft_blue_bg text-white font-weight-bold f-12 p-2">50%</div>

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
											<p class="mb-0 light_gray f-12">06 Mint</p>
											<p class="mb-0 bblack f-16 text-break">Introduction</p>
										</div>
									</div>
									<div class="col-md-6 p-0 pr-15 pt-15 pb-15">
										<div class="d-flex justify-content-end ">
											<button class="btn  p-0	 hw-45 playaudio rounded-circle">
												<i class="fas fa-forward"></i>
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

						<div class="row m-0 pl-60 pr-45 pt-20 pb-20 very-light-pink-grey-bg mr-40 theme_solid_border_right_2px">
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
											for (int h = 0; h < 4; h++) {
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
											style="border-radius: 1.25rem !important;">
											<div class="card-body">
												<p class="card-text f-14 m-0">Some quick example text to
													build on the card title and make up the bulk of the card's
													content.</p>
											</div>
										</div>
									</div>


									<div class="d-flex flex-column pl-40 pb-25">
										<p class="f-14 bblack align-self-end pb-10 mb-0">
											<small class="f-12 brown-grey  pr-20  ">00:20.</small> Jamie
											Vargas
										</p>
										<div class="card shadow align-self-end very-light-pink-bg"
											style="border-radius: 1.25rem !important;">
											<div class="card-body">
												<p class="card-text f-14 mb-0">Some quick example text
													to build on the card title and make up the bulk of the
													card's content.</p>
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


	</div>



	<div class="col-md-1 p-0">
		<div class=" dropleft">
			<button type="button" class="btn btn-secondary dropdown-toggle"
				data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
				style="display: none" id="completed_call_task_content">Dropleft</button>
			<div class="dropdown-menu completed_call_task_content"
				aria-labelledby="completed_call_task_content">
				<!-- Dropdown menu links -->
			</div>
		</div>
		<ul class="list-group shadow d-flex flex-column h-100  taskpopup">


			<li class="notesdropdown list-group-item p-0 py-3">
				<div
					class=" d-flex flex-column justify-content-center align-items-center minh-50 "
					data-dropdown_id="completed_call_task_content">
					<img src="<%=baseURL%>assets/image/notes.svg" alt="notes" />
					<div class="f-12 pt-1 greyish-brown">Notes</div>

				</div>
			</li>
			<li class=" cuesdropdown list-group-item p-0 py-3">
				<div
					class=" d-flex flex-column justify-content-center align-items-center minh-50"
					data-dropdown_id="completed_call_task_content">
					<img src="<%=baseURL%>assets/image/cues.svg" alt="cues" />
					<div class="f-12 pt-1 greyish-brown">Cues</div>

				</div>
			</li>
			<li class="crmdropdown list-group-item p-0 py-3">
				<div
					class=" d-flex flex-column justify-content-center align-items-center minh-50"
					data-dropdown_id="completed_call_task_content">
					<img src="<%=baseURL%>assets/image/crm.svg" alt="crm" />
					<div class="f-12 pt-1 greyish-brown">CRM</div>

				</div>
			</li>
			<li class="chatdropdown list-group-item  p-0 py-3 ">
				<div
					class="  d-flex flex-column justify-content-center align-items-center minh-50"
					data-dropdown_id="completed_call_task_content">
					<img src="<%=baseURL%>assets/image/chat.svg"
						alt="presentation" />
					<div class="f-12 pt-1 greyish-brown">Chat</div>

				</div>
			</li>


			<li
				class=" flex-grow list-group-item d-flex flex-column justify-content-center align-items-center minh-100"
				style="height: calc(100% - 80px);"></li>


		</ul>
	</div>



		
</div>	<script src="<%=baseURL%>assets/js/salesken.js"></script>
