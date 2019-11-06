
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>

<div class="row justify-content-between m-0 pt-15 pl-45 pr-45 pb-15">
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
					<div class=" dropdown" id="completed_email_comment">
						<button class="btn p-0 dropdown-toggle" id="completed_email_comment"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
							<img src="<%=baseURL%>assets/image/message.svg"
								class="cursor-pointer taskcomment mr-15" alt="message">
						</button>
						<div
							class="dropdown-menu dropdown-menu-right dropdown-menu-md-left filter-menu position-absolute p-0"
							aria-labelledby="completed_email_comment">
							<div class="tab-content border-0" id="myTabContent">
								<div class="tab-pane fade pt-25 pl-20 pr-20   active show"
									id="completed_email_comment" role="tabpanel"
									aria-labelledby="completed_email_comment-tab"
									style="box-shadow: 0 10px 40px 0 rgba(0, 0, 0, 0.25);">
									<div class="card rounded-0 border-0" style="width: 500px">
										<div class="card-header p-0 border-bottom-0 bg-white">
											<div class="row m-0">
												<div class="col-md-6 p-0 pb-20 fw-500 f-16 black">Comment</div>
												<div class="col-md-6 p-0">
													<button type="button" class="close" data-dismiss="modal"
														aria-label="Close">
														<img src="<%=baseURL%>assets/image/close.svg"
															alt="taskicon" class="rounded-circle hw-24 task-icon">
													</button>
												</div>
											</div>
										</div>
										<div class="card-body p-0 pb-20">
											<div class="form-group mb-0">
												<textarea class="form-control rounded-0"
													id="completed_email_comment_textarea" rows="3"></textarea>
											</div>
										</div>
										<div class="card-footer p-0 border-top-0 pb-20 bg-white">
											<div class="row d-flex justify-content-end m-0">
												<button type="button"
													class="btn join_btn  istar-btn-hover f-12 " id="completed_email_comment_submit">Submit</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class=" dropdown" id="completed_email_reply">
						<button class="btn  p-0 dropdown-toggle" id="completed_email_reply"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
							<img src="<%=baseURL%>assets/image/reply.svg"
								class="cursor-pointer taskshare mr-15" alt="reply">
						</button>
						<div
							class="dropdown-menu dropdown-menu-right dropdown-menu-md-left filter-menu position-absolute p-0"
							aria-labelledby="completed_email_reply">
							<div class="tab-content" id="myTabContent">
								<div class="tab-pane fade pb-25 pl-20 pr-20 pt-20 active show"
									id="completed_email_reply" role="tabpanel"
									aria-labelledby="completed_call_reply-tab"
									style="width: 280px; height: 516px; box-shadow: 0 10px 40px 0 rgba(0, 0, 0, 0.25);">
									<div class="input-group position-relative pb-20">
										<img src="http://192.168.0.121:8080/assets/image/search.svg"
											alt="edit" class=" searchBox"> <input
											id="completed_email_reply_search"
											class="form-control  custom-taskborder brown-grey  f-14 search_height custom-result-selects"
											type="search" placeholder="Search"
											style="padding-right: 30px">
									</div>
									<div
										style="height: 370px; overflow-x: hidden; overflow-y: auto;">
										<%
											for (int i = 0; i < 30; i++) {
										%>
										<div class="d-flex align-items-center pb-10 ">
											<input class="istar-checkbox agentcheckbox " data-id="0"
												id="completed_email_reply-checkbox<%=i%>" type="checkbox">
											<label class="istar-checkbox-style"
												for="completed_email_reply-checkbox<%=i%>"></label> <img
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
										class="btn btn-block big_button rounded-0 font-weight-bold f-12 mt-25"
										id="completed_email_reply_submit">Submit</button>
								</div>
							</div>
						</div>
					</div>
					<div
						class="f-14 font-weight-bold theme_color cursor-pointer align-self-center"
						onclick="window.location.href = 'task_lead_detail.jsp'">
						View More <i class="fas fa-chevron-circle-right ml-1 pr-2"></i>
					</div>
				</div>
			</div>
</div>
<div
	class="row m-0 theme_dotted_border_bottom shadow-bottom   pt-15 ml-45 mr-45 pb-20">
	<div class="col-md-3 p-0 border-right-dashed-separation">
		<p class="brownish-grey f-14 mb-0">Initiated At</p>
		<p class="black f-16 fw-500 mb-0">11:00 AM</p>
	</div>
	<div class="col-md-3 p-0 border-right-dashed-separation pl-15">
		<p class="brownish-grey f-14 mb-0">Pipeline Detail</p>
		<p class="black f-16 fw-500 mb-0 text-truncate" data-toggle="tooltip"
			data-placement="bottom" title="Globex Corporation">Stage 02</p>
	</div>
	<div class="col-md-3 p-0 pl-15">
		<p class="brownish-grey f-14 mb-0">Contact Person</p>
		<p class="black f-16 fw-500 mb-0 text-truncate" data-toggle="tooltip"
			data-placement="bottom" title="Robert Wolken">Robert Wolken</p>
	</div>


</div>


<div class="row m-0 pt-25 pl-45 pr-45 pb-25 mr-45 ml-45 very-light-pink-grey-bg">

	<div class="col-md-6 p-0 pr-25" style="">
		<div class="fw-500 f-16 greyish-brown pb-10">What's Wrong?</div>
		<div id="email_whats_wrong" class="carousel slide shadow "
			data-ride="carousel">
			<ol class="carousel-indicators m-0 pb-20 pt-10">
				<%
					for (int h = 0; h < 3; h++) {
						String isActive = "";
						if (h == 0) {
							isActive = "active";
						}
				%>
				<li data-target="#email_whats_wrong" data-slide-to="<%=h %>"
					class="<%=isActive%>"></li>
				
				<%} %>
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
						style="height: 170px;">
						<div class="col p-0">
							<div class="d-flex flex-row pr-30 pt-10 pb-30 pl-30 align-items-center">
								<div class="col-md-9 pr-50">
									<div class="f-16 fw-500 greyish-brown">Angry Customers</div>
									<div class="f-12 brownish-grey">Customers who were angry at  the end of the call</div>
								</div>
								<img class="minh-100 "
									src="<%=baseURL%>assets/image/angry_customer.svg"
									alt="carousal-img">
								
							</div>
						</div>
					</div>
				</div>
				<%}%>

			</div>


		</div>

	</div>


	<div class="col-md-6 p-0">
	<div class="fw-500 f-16 greyish-brown pb-10">What's Right?</div>
		<div id="email_whats_right" class="carousel slide shadow"
			data-ride="carousel">
			<ol class="carousel-indicators m-0 pb-20 pt-10">
			<%
					for (int h = 0; h < 3; h++) {
						String isActive = "";
						if (h == 0) {
							isActive = "active";
						}
				%>
				<li data-target="#email_whats_right" data-slide-to="<%=h %>"
					class="<%=isActive%>"></li>
				
				<%} %>
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
						style="height: 170px;">
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




<div class="accordion" id="accordionExample"
	style="height: 400px; overflow-x: hidden; overflow-y: auto">
	<%
		for (int i = 0; i < 10; i++) {
	%>
	<div class="row m-0 pl-45 pr-45 pt-30" id="heading<%=i%>">
		<button class="btn w-100 p-0" type="button" data-toggle="collapse"
			data-target="#subheading<%=i%>" aria-expanded="false"
			aria-controls="subheading<%=i%>">
			<div class="row  m-0">
				<div class="col-md-3 p-0">
					<div class="d-flex">
						<img src="<%=baseURL%>assets/image/37.jpg" data-toggle="tooltip"
							data-placement="bottom" title="Agent Name" class="hw-40 "
							alt="user-img">
						<div class="text-left pl-10">
							<div class="f-14 greyish-brown text-truncate"
								data-toggle="tooltip" data-placement="bottom"
								title="Carmen Collinsder">Carmen Collinsder</div>
							<div class="f-12 brown-grey">11:30 AM</div>
						</div>
					</div>
				</div>
				<div class="col-md-9 p-0">
					<div class="partial_email_content">
						<div class="f-14 brownish-grey  text-truncate-1"
							data-toggle="tooltip" data-placement="bottom"
							title="Hello Sir...Lorem ipsum do">Hello Sir...Lorem ipsum
							dolor sit amet, consectetur adipiscing elit. In et massa
							pulvinar, cursus sapien in, vulputate neque. Nunc ultricies
							libero sed lacinia hendrerit</div>
						<div class="d-flex align-items-center ">
							<img src="<%=baseURL%>assets/image/21.svg" class="hw-40 "
								data-toggle="tooltip" data-placement="bottom"
								title="Product Name" alt="doc">
							<div class="f-14 brownish-grey fw-500  text-truncate pr-10"
								data-toggle="tooltip" data-placement="bottom"
								title="Product-Brochure.pd">Product-Brochure.pdf</div>
							<div class="f-14 brown-grey ">256kb</div>
						</div>
					</div>
				</div>
			</div>
		</button>
		<div id="subheading<%=i%>" class="collapse"
			aria-labelledby="heading<%=i%>" data-parent="#subheading<%=i%>">
			<div class="card-body p-0 f-14 bg-white ">
				<p class="pt-20 pb-20 brownish-grey f-14">Hello Sir, Welcome, we
					are reaching you..</p>

				<p class="pb-10 brownish-grey f-14">Lorem ipsum dolor sit amet,
					consectetur adipiscing elit. In et massa pulvinar, cursus sapien
					in, vulputate neque. Nunc ultricies libero sed lacinia hendrerit.
					Donec varius finibus leo, nec scelerisque lacus. Cras at finibus
					purus. Fusce dignissim lorem eu lorem sollicitudin dictum. Cras
					commodo vel metus a lacinia. Integer commodo efficitur facilisis.
					Phasellus elementum magna lorem, quis ullamcorper lacus feugiat
					sed. Phasellus dictum eget sapien ac vehicula.</p>



				<p class="pb-20 brownish-grey f-14">
					Best,<br> Salesken Pvt. Ltd.
				</p>
				<div class="d-flex align-items-center ">
					<img src="http://localhost:8080/assets/image/21.svg" class="hw-40 "
						data-toggle="tooltip" data-placement="bottom" title="" alt="doc"
						data-original-title="Product Name">
					<div class="f-14 brownish-grey fw-500  text-truncate pr-10"
						data-toggle="tooltip" data-placement="bottom" title=""
						data-original-title="Product-Brochure.pd">Product-Brochure.pdf</div>
					<div class="f-14 brown-grey ">256kb</div>
				</div>
			</div>
		</div>
	</div>
	<%
		}
	%>
</div>






<script>
	$('.collapse').on('hide.bs.collapse', function() {
		// do something...
		$(this).siblings().find('.partial_email_content').show()
	});
	$('.collapse').on('show.bs.collapse', function() {
		// do something...
		$(this).siblings().find('.partial_email_content').show().hide();

	});
	$(function () {
		  $('[data-toggle="tooltip"]').tooltip()
		})
</script>