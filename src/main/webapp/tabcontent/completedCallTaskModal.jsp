
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>
<style>
</style>
<div class="row h-100 m-0">
	<div class="col-md-11 p-0">
		<div class="row justify-content-between m-0 pl-45 pr-45 pt-15 pb-10">
			<div class="col-9 p-0 ">
				<div
					class="f-18 font-weight-bold greyish-brown text-truncate d-inline"
					data-toggle="tooltip" data-placement="bottom"
					title="Globex Corporation. Inc.">Globex Corporation. Inc.</div>
			</div>
			<div class="col-3 p-0">
				<div class="d-flex justify-content-end">
					<img src="<%=baseURL%>assets/image/heart.svg"
						class="cursor-pointer mr-15" alt="heart">
					<div class=" dropdown " id="completed_call_comment">
						<button class="btn p-0 dropdown-toggle"
							id="completed_call_comment" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="true" data-display="static">
							<img src="<%=baseURL%>assets/image/message.svg"
								class="cursor-pointer taskcomment mr-15" alt="message" id="message">
						</button>
						<div
							class="dropdown-menu dropdown-menu-right   istar-dropdown-task-menu p-0"
							aria-labelledby="completed_call_comment" style="right: -67px;">

							<div class="card p-20 " style="width: 500px;">
								<div class="card-header p-0 border-bottom-0 bg-white">
									<div class="row m-0">
										<div class="col-md-6 p-0 pb-20 fw-500 f-16 black">Comment</div>
										<div class="col-md-6 p-0">
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<img src="<%=baseURL%>assets/image/close.svg" alt="taskicon"
													class="rounded-circle hw-24 task-icon">
											</button>
										</div>
									</div>
								</div>
								<div class="card-body border-0 p-0 pb-20">
									<div class="form-group mb-0">
										<textarea class="form-control rounded-0 brown-grey f-14"
											id="exampleFormControlTextarea1" rows="3"
											placeholder="Type here"></textarea>
									</div>
								</div>
								<div class="card-footer p-0 border-top-0  bg-white">
									<div class="row d-flex justify-content-end m-0">
										<button type="button"
											class="btn join_btn  istar-btn-hover f-12 "
											id="completed_call_reply_submit">Submit</button>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class=" dropdown" id="completed_call_reply">
						<button class="btn  p-0 dropdown-toggle" id="completed_call_reply"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="true"
							data-display="static">
							<img src="<%=baseURL%>assets/image/reply.svg"
								class="cursor-pointer taskshare mr-15" alt="reply">
						</button>
						<div
							class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu p-20  p-0"
							aria-labelledby="completed_call_reply" style="right: -18px;">

							<div class="input-group position-relative pb-20">
								<img src="http://192.168.0.121:8080/assets/image/search.svg"
									alt="edit" class=" searchBox"> <input
									id="completed_call_reply_search"
									class="form-control  custom-taskborder brown-grey  f-14 search_height minw-237"
									type="search" placeholder="Search" style="padding-right: 30px">
							</div>
							<div style="height: 370px; overflow-x: hidden; overflow-y: auto;">
								<%
									for (int i = 0; i < 30; i++) {
								%>
								<div class="d-flex align-items-center pb-10 ">
									<input class="istar-checkbox agentcheckbox " data-id="0"
										id="completed_call_reply-checkbox<%=i%>" type="checkbox">
									<label class="istar-checkbox-style"
										for="completed_call_reply-checkbox<%=i%>"></label> <img
										alt="user-img"
										src="http://192.168.0.121:8080//assets/image/11.png"
										class="rounded-circle ml-3 mr-2 hw-40">
									<div>
										<div class="f-14 font-weight-bold greyish-brown">Robert
											Garcia</div>
										<div class="f-12  brownish-grey">Team -02</div>
									</div>
								</div>
								<%
									}
								%>
							</div>
							<button type="button"
								class="btn btn-block big_button rounded-0 font-weight-bold f-12 mt-30"
								id="completed_call_reply_submit">Submit</button>

						</div>
					</div>
					<div
						class="f-14 font-weight-bold theme_color cursor-pointer align-self-center"
						onclick="window.location.href = 'task_lead_detail.jsp'">
						View More <i class="fas fa-chevron-circle-right ml-1 "></i>
					</div>
				</div>
			</div>
		</div>

		<div
			class="row  m-0 ml-45 mr-45  pb-20  theme_dotted_border_bottom shadow-bottom  ">

			<div class="col-md-3 p-0">
				<p class="brownish-grey f-14 mb-0">Contact Person</p>
				<p class="black f-16 fw-500 mb-0 text-truncate"
					data-toggle="tooltip" data-placement="bottom"
					title="Globex Corporation">Robert Wolken</p>
			</div>
			<div class="col-md-3 p-0">
				<p class="brownish-grey f-14 mb-0">Agent</p>
				<p class="black f-16 fw-500 mb-0 text-truncate"
					data-toggle="tooltip" data-placement="bottom"
					title="Globex Corporation">Marilyn Fowler</p>
			</div>

		</div>

		<div class="row m-0 pl-45 pr-45 pt-20 ">
			<div class="col p-0">
				<ul
					class="nav nav-tabs nav-mytabs p-0 pl-40 pt-20 d-flex align-items-end"
					id="agent-details" role="tablist">
					<li class="nav-item"><a class="nav-item nav-link active"
						id="whatsright-tab" data-toggle="tab" href="#whatsright"
						role="tab" aria-controls="whatsright" aria-selected="true">Whats
							Right?</a></li>
					<li class="nav-item"><a class="nav-item nav-link"
						id="whatswrong-tab" data-toggle="tab" href="#whatswrong"
						role="tab" aria-controls="whatswrong" aria-selected="false">Whats
							Wrong?</a></li>
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


		<div class="row m-0 pb-30">
			<div class="col p-0 d-flex flex-row justify-content-center">

				<div class="d-flex flex-row align-items-center">
					<img src="<%=baseURL%>assets/image/man.jpg" alt="person"
						data-toggle="tooltip" data-placement="bottom" title="Lead Name"
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
					<img src="<%=baseURL%>assets/image/layer.png" alt="layer"
						data-toggle="tooltip" data-placement="bottom" title="Agent Name"
						class="rounded-circle hw-60 task-image-right"> <img
						alt="call" src="<%=baseURL%>assets/image/calltask.svg"
						class="rounded-circle hw-40 task-icon">

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
				<div class="row p-0 m-0  theme_solid_border_2px">
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

						<div class="row m-0 pl-60 pr-45">
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

											<div class="row align-items-center m-0"
												style="min-height: 170px;">
												<div class="col p-0">
													<div class="d-flex flex-row">

														<img class="hw-94 "
															src="<%=baseURL%>assets/image/Group 3614.svg"
															alt="carousal-img">
														<div class="border-right-blue  pl-30"></div>
														<p
															class="greyish-brown ml-20 f-16  fw-500 mb-0 align-self-center">Customers
															who responded positively in the end of a call</p>
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
						<div class="row m-0">
							<div class="col p-0 pt-25  ">
								<h3 class="black fw-500 f-16 mb-0 pl-40 pb-25">Transcript</h3>
								<div class="transcript_container  "
									style="max-height: 520px; overflow-x: hidden; overflow-y: auto;">
									<%
										for (int j = 0; j < 20; j++) {
									%>
									<div class="d-flex flex-column pl-40 pr-45 pb-25">
										<p class="f-14 bblack pb-10 m-0">
											<small class="f-12 brown-grey pr-20 ">00:20.</small> Jamie
											Vargas
										</p>
										<div class="card shadow "
											style="border-radius: 0px 20px 20px 20px">
											<div class="card-body">
												<p class="card-text f-14 blue-black m-0">Some quick
													example text to build on the card title and make up the
													bulk of the card's content.</p>
											</div>
										</div>
									</div>


									<div class="d-flex flex-column pl-40 pr-45 pb-25">
										<p class="f-14 bblack align-self-end pb-10 mb-0">
											<small class="f-12 brown-grey  pr-20  ">00:20.</small> Jamie
											Vargas
										</p>
										<div class="card shadow align-self-end very-light-pink-bg"
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


	</div>



	<div class="col-md-1 p-0">
		<div class=" dropleft">
			<button type="button" class="btn btn-secondary dropdown-toggle"
				data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
				style="display: none" id="completed_call_task_content">Dropleft</button>
			<div class="dropdown-menu completed_call_task_content m-0"
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
</div>

<script>
	attachTaskRelatedData();
	$(function () {
		  $('[data-toggle="tooltip"]').tooltip()
		})
	
</script>



