<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
	%>

				<div class="row justify-content-between m-0 pt-15 ml-45 mr-45">
					<div class="col-md-6 greyish-brown f-18 font-weight-bold text-truncated p-0" >Email Task</div>
					<div class="col-3 p-0">
					<div class="d-flex justify-content-end">
						<button class="btn p-0">
							<div style="background-image: url(<%=baseURL%>assets/image/heart.svg); height: 24px; width: 24px;" class="mr-15 fav"></div>
						</button>
					<div class=" dropdown " id="completed_user_email_comment">
													<button class="btn p-0 dropdown-toggle"
														id="completed_user_email_comment" data-toggle="dropdown"
														aria-haspopup="true" aria-expanded="true" data-display="static">
														<div style="background-image: url(<%=baseURL%>assets/image/message.svg); height: 24px; width: 24px;" class="mr-15 comment"></div>
													</button>
													<div
														class="dropdown-menu dropdown-menu-right   istar-dropdown-task-menu p-0"
														aria-labelledby="completed_user_email_comment" style="right: -67px;">
							
														<div class="card p-20 border-0" style="width: 500px;">
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
																		id="completed_user_email_comment_submit">Submit</button>
																</div>
															</div>
														</div>
													</div>
												</div>
					<div class=" dropdown">
													<button class="btn  p-0 dropdown-toggle" id="completed_user_email_reply"
														data-toggle="dropdown" aria-haspopup="true" aria-expanded="true"
														data-display="static">
														<div style="background-image: url(<%=baseURL%>assets/image/reply.svg); height: 24px; width: 24px;" class="mr-15 share"></div>
													</button>
													<div
														class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu p-20  p-0 share-menu"
														aria-labelledby="completed_user_email_reply" style="right: -18px;">
							
														<div class="input-group position-relative pb-20">
															<img src="<%=baseURL%>assets/image/search.svg"
																alt="edit" class=" searchBox"> <input
																id="completed_user_email_reply_search"
																class="form-control  custom-taskborder brown-grey  f-14 search_height minw-237"
																type="search" placeholder="Search" style="padding-right: 30px">
														</div>
														<div style="height: 370px; overflow-x: hidden; overflow-y: auto;">
															<%
																for (int i = 0; i < 30; i++) {
															%>
															<div class="d-flex align-items-center pb-10 ">
																<input class="istar-checkbox agentcheckbox " data-id="0"
																	id="completed_user_email_reply-checkbox<%=i%>" type="checkbox">
																<label class="istar-checkbox-style"
																	for="completed_user_email_reply-checkbox<%=i%>"></label> <img
																	alt="user-img"
																	src="<%=baseURL%>assets/image/11.png"
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
															id="completed_user_email_reply_submit"  data-toggle="modal" data-target="#shareTaskModal">Submit</button>
							
													</div>
												</div>
					
					</div>
				</div>
				</div>
			<div
	class="row m-0 theme_dotted_border_bottom shadow-bottom   pt-15 ml-45 mr-45 pb-20">
				<div class="col-md-3 border-right-dashed-separation p-0">
					<p class="brownish-grey f-14 mb-0">Initiated At</p>
					<p class="black f-16 fw-500 mb-0">11:00 AM</p>
				</div>
				<div class="col-md-3 border-right-dashed-separation p-0 pl-15">
					<p class="brownish-grey f-14 mb-0">Pipeline Detail</p>
					<p class="black f-16 fw-500 mb-0 text-truncate" title="Stage 02">Stage 02</p>
				</div>
				<div class="col-md-3 p-0 pl-15">
					<p class="brownish-grey f-14 mb-0">Contact Person</p>
					<p class="black f-16 fw-500 mb-0 text-truncate" title="Robert Wolken">Robert Wolken</p>
				</div>
				

			</div>
			
			
			<div class="row m-0 pt-25 pl-20 pr-20 pb-25 mr-45 ml-45 very-light-pink-grey-bg">

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
	<div class="minh-650" style="overflow-x: hidden; overflow-y:auto;">
		<div class="email-outer ml-45 mr-45 pt-20 pb-20">
			<div class="brown-grey f-12 fw-300">12:00 PM</div>
			<div class="brownish-grey f-14 pb-5">Hello Sir Lorem ipsum dolor sit amet, consectetur adipiscing elit. In et massa pulvinar, cursus sapien in, vulputate neque. Nunc ultricies libero sed lacinia hendrerit</div>  
			<div class="d-flex flex-row align-items-center">
				<img src="<%=baseURL%>assets/image/pdfdoc.svg" class="mr-15" width="35" height="35">
				<div class="fw-500 f-14 brownish-grey mr-15">Product-Brochure.pdf</div>
				<div class="f-14 brown-grey">256kB</div>
			</div>
		</div>
		<div class="email-inner ml-45 mr-45 pt-20 pb-20">
			<div class="brown-grey f-12 fw-300">12:00 PM</div>
			<div class="brownish-grey f-14 pb-30 pt-30">
				Hello Sir, Welcome, we are reaching you...<br><br>
				Lorem ipsum dolor sit amet, consectetur adipiscing elit. In et massa pulvinar, cursus sapien in, vulputate neque. Nunc ultricies libero sed lacinia hendrerit. Donec varius finibus leo, nec scelerisque lacus. Cras at finibus purus. Fusce dignissim lorem eu lorem sollicitudin dictum. Cras commodo vel metus a lacinia. Integer commodo efficitur facilisis. Phasellus elementum magna lorem, quis ullamcorper lacus feugiat sed. Phasellus dictum eget sapien ac vehicula.
				<br><br><br><br><br><br>
				Best,<br>Salesken Pvt. Ltd.
			</div>
			<div class="d-flex flex-row align-items-center">
				<img src="<%=baseURL%>assets/image/pdfdoc.svg" class="mr-15" width="35" height="35">
				<div class="fw-500 f-14 brownish-grey mr-15">Product-Brochure.pdf</div>
				<div class="f-14 brown-grey">256kB</div>
			</div>
		</div>
		<div class="email-read mr-45 ml-15 border rounded very-light-pink-bg">
			<div class="row m-0 pl-30 pr-30 align-items-center pt-20 pb-20">
				<div class="col-md-11 p-0">
					<div class="brown-grey f-12 fw-300">12:00 PM</div>
					<div class="brownish-grey f-14 pb-5">Hello Sir Lorem ipsum dolor sit amet, consectetur adipiscing elit. In et massa pulvinar, cursus sapien in, vulputate neque. Nunc ultricies libero sed lacinia hendrerit</div>
				</div>
				<div class="col-md-1 p-0 text-right">
					<i class="fal fa-reply-all f-18 brown-grey"></i>
				</div>
			</div>
			
		</div>
	</div>
<script src="<%=baseURL%>assets/js/salesken.js"></script>
			<script>
			$(document).ready(function(){
				$('.share-menu.dropdown-menu').click(function(e) {
					e.stopPropagation();
				});

				$('#completed_user_email_reply_submit').click(function(){
					$('#completed_user_email_reply').dropdown('hide');
					$('#shareTaskModal').modal('show');
					$(".share").removeClass('active');
				});

				  $(".fav").click(function(){
					  $( this ).toggleClass( "active" );
					});
				  $(".comment").click(function(){
					  $( this ).toggleClass( "active" );
					});
				  $(".share").click(function(){
					  $( this ).toggleClass( "active" );
					});
				  $('#completed_user_email_comment').on('show.bs.dropdown', function () {
					  $(".comment").addClass('active');
					});
				 $('#completed_user_email_comment').on('hidden.bs.dropdown', function () {
				  		$(".comment").removeClass('active');
					});
				 $('#completed_user_email_reply').on('show.bs.dropdown', function () {
					  $(".share").addClass('active');
					});
				 $('#completed_user_email_reply').on('hidden.bs.dropdown', function () {
				  		$(".share").removeClass('active');
					});
				 
				 $('.email-inner').hide();
				 $('.email-outer').click(function(){
					 	$(this).hide();
			            $('.email-inner').slideDown('slow');
			      });
				 $('.email-inner').click(function(){
					 	$(this).hide();
					 	$('.email-outer').show();
			           
			      });
			})
			
		
			</script>