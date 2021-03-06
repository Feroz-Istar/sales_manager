<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>

		<div
			class="row grey-white-bg align-items-center theme_solid_border_bottom justify-content-between m-0 pl-40 pt-20 pb-20">
			<div class="col-md-6 col-12 d-flex align-items-center p-0">
				<i class="fas fa-arrow-left black f-20 cursor-pointer pr-20"
					onclick="NavigateTo('dashboard')"></i>
				<div
					class="display-1 black f-20 border-right-separation fw-500 pr-20">Call
					Task</div>
				<div class=" f-12 brown-grey pl-20 pr-10">Dashboard</div>
				<i class="fas fa-chevron-circle-right pr-10 f-12 brown-grey"></i>
				<div class=" f-12 brown-grey fw-500  " id="breadcrumb">Call
					Task</div>
			</div>
		</div>


		<div class="row bg-white m-0">
			<div class="col-md-3 p-0 cream_white dashboardcalltabsize  ">
				<!--  start of call dialer -->
				<div id="calldialer" class="">
					<ul class="saleken nav nav-tabs f-14 pt-20 " id="pills-tab"
						role="tablist">
						<li class="nav-item pl-40"><a
							class="nav-link active border-istar-left-0" id="dialer-tab"
							data-toggle="pill" href="#dialer" role="tab"
							aria-controls="dialer" aria-selected="true">Dialer</a></li>
						<li class="nav-item"><a class="nav-link border-istar-left-0"
							id="recent-tab" data-toggle="pill" href="#recent" role="tab"
							aria-controls="recent" aria-selected="false">Recent</a></li>
						<li class="nav-item"><a class="nav-link border-istar-left-0"
							id="leads-tab" data-toggle="pill" href="#leads" role="tab"
							aria-controls="leads" aria-selected="false">Leads</a></li>
					</ul>

					<div class="tab-content " id="pills-tabContent">
						<div class="tab-pane fade show active" id="dialer" role="tabpanel"
							aria-labelledby="dialer-tab">
							<!-- start of dialer content -->

							<div class="row m-0 pt-20">
								<div class="col-md-10 p-0">
									<input disabled type="text"
										class=" form-control p-0 f-16 font-weight-bold border-0 cream_white text-center removefocus"
										id="exampleFormControlInput1" />
								</div>
								<div class="col-md-2 p-0 ">
									<button class="ml-2  btn p-0">
										<i class="fas fa-backspace very-light-pink f-14"></i>
									</button>
								</div>
							</div>

							<hr class="mx-5 m-0 mb-20">

							<div
								class="row justify-content-centerrow m-0 justify-content-center ">
								<button class="col-md-2 col-2 btn">
									<div class="f-24  bblack fw-500">1</div>
									<div class="f-12 brown-grey">&nbsp;</div>
								</button>
								<button class="col-md-3  col-3 btn">
									<div class="f-24 bblack fw-500">2</div>
									<div class="f-12 brown-grey fw-300">ABC</div>
								</button>
								<button class="col-md-2  col-2 btn">
									<div class="f-24 bblack fw-500">3</div>
									<div class="f-12 brown-grey fw-300">DEF</div>
								</button>
							</div>
							<div class="row justify-content-center mx-0">
								<button class="col-md-2 col-2 btn">
									<div class="f-24 bblack fw-500">4</div>
									<div class="f-12 brown-grey fw-300">GHI</div>
								</button>
								<button class="col-md-3 col-3 btn">
									<div class="f-24  bblack fw-500">5</div>
									<div class="f-12 brown-grey fw-300">JKL</div>
								</button>
								<button class="col-md-2 col-2 btn">
									<div class="f-24 bblack fw-500">6</div>
									<div class="f-12 brown-grey fw-300">MNO</div>
								</button>
							</div>
							<div class="row justify-content-center mx-0">
								<button class="col-md-2 col-2 btn">
									<div class="f-24  bblack fw-500">7</div>
									<div class="f-12 brown-grey fw-300">PQRS</div>
								</button>
								<button class="col-md-3 col-3 btn">
									<div class="f-24  bblack fw-500">8</div>
									<div class="f-12 brown-grey fw-300">TUV</div>
								</button>
								<button class="col-md-2 col-2 btn">
									<div class="f-24 bblack fw-500">9</div>
									<div class="f-12 brown-grey fw-300">WXYZ</div>
								</button>
							</div>
							<div class="row justify-content-center mx-0">
								<button class="col-md-2 col-2  btn">
									<div class="f-24  bblack fw-500">*</div>
									<div class="f-12 brown-grey"></div>
								</button>
								<button class="col-md-3 col-3 btn">
									<div class="f-24 fw-500 bblack">0</div>
									<div class="f-12 brown-grey"></div>
								</button>
								<button class="col-md-2 col-2 btn">
									<div class="f-24 fw-500 bblack">#</div>
									<div class="f-12 brown-grey"></div>
								</button>
							</div>
							<div class="row justify-content-center pt-4 mx-0">
								<button
									class="btn d-flex justify-content-center align-items-center call-icon green-gradient"
									onclick="makeCall()" id="calldialer">
									<i class="fas fa-phone-alt f-22 text-white"></i>
								</button>
							</div>

							<%-- 	<div class="row align-items-center py-2 px-0 mx-0">
				  			<div class="col-md-10 col-10 p-0">
				  				<div class="f-18 font-weight-bold bblack">Today’s Call History</div>
				  			</div>
				  			<button class="btn col-md-2 col-2 p-0 text-right">
				  				<img src="<%=baseURL%>assets/image/calendar.svg" class="brown-grey hw-24">
				  			</button>
				  		</div>
					  	
					  	<div class="h-500">
					  	<%for(int i=0; i<5; i++){ %>
					  	<div class="row align-items-center py-3 px-0 mx-0 bottom-dashed-separation">
				  			<div class="col-md-10 col-10 p-0">
				  				<div class="f-14 bblack">+91 989 898 8789</div>
				  				<div class="f-12 brown-grey">05:10 Min</div>
				  			</div>
				  			<button class="btn col-md-2 col-2 p-0 text-right">
				  				<img src="<%=baseURL%>assets/image/callOutgoing.svg" class="brown-grey hw-24"/>
				  			</button>
				  		</div>
				  		<%} %>
				  		</div> --%>
							<!-- end of dialer content -->

						</div>


						<div class="tab-pane fade " id="recent" role="tabpanel"
							aria-labelledby="recent-tab">
							<!-- start of recent content -->
							<div class="row m-0  justify-content-center ">
								<div class="col-md-12 p-0 text-center pr-40 pl-40 pt-20 pb-5">
									<div class="input-group date custom-call-calendar">
										<input type="text" id="calendar"
											class="form-control custom-call-dateselect"
											value="" placeholder="Calendar"/>
										<div class="input-group-addon" onclick="showCalendar()">
											<img src="<%=baseURL%>assets/image/calendar.svg" class="pr-1 hw-24" />
										</div>
									</div>
								</div>
							</div>

							<div class="h-800">
								<%
									for (int i = 0; i < 10; i++) {
								%>
								<div
									class="row align-items-center m-0 bottom-dashed-separation pb-15 ml-40 mr-40 pt-20 ">
									<div class="col-md-10 col-10 p-0">
										<div class="f-14 greyish-brown">+91 989 898 8789</div>
										<div class="f-12 brown-grey">05:10 Min</div>
									</div>
									<button class="btn col-md-2 col-2 p-0 text-right">
										<img src="<%=baseURL%>assets/image/callOutgoing.svg"
											class="brown-grey hw-24" />
									</button>
								</div>
								<%
									}
								%>
							</div>
							<!-- end of recent content -->
						</div>

						<div class="tab-pane fade " id="leads" role="tabpanel"
							aria-labelledby="leads-tab">
							<!-- start of leads content -->
							<div class="row m-0  justify-content-center pl-40 pr-40 pt-20 pb-5">
								<div class="col-md-12 p-0 text-center">
								<div class="input-group position-relative w-100 search_width">
				<img src="<%=baseURL%>assets/image/search.svg" alt="edit" class=" searchBox">
					<input id="call_task_search" class="form-control  custom-taskborder brown-grey  f-14 search_height custom-result-selects" type="search" placeholder="Search" style="padding-right:30px">
				</div>
								</div>
							</div>



							<div class="h-800">
								<%
									for (int i = 0; i < 5; i++) {
								%>
								<div
									class="row align-items-center m-0 bottom-dashed-separation ml-40 mr-40 pb-15 pt-20">
									<div class="col-md-10 col-10 p-0">
										<div class="f-14 greyish-brown">Globex Corporation Inc.</div>
										<div class="f-12 brown-grey">+91 989 898 8789</div>
									</div>
									<button class="btn col-md-2 col-2 p-0 text-right">
										<img src="<%=baseURL%>assets/image/call.svg"
											class="brown-grey hw-24">
									</button>
								</div>
								<%
									}
								%>
							</div>
							<!-- end of leads content -->
						</div>
					</div>
				</div>
				<!--  end of call dialer -->

				<!-- start of call connected -->

				<div id="call_connected" class="d-none">
					<div class="row m-0 justify-content-around pl-40 pt-20 pb-20 pr-40">
						<div class="col-md-10 p-0">
							<div class="f-14 brown-grey ">Dialing ...</div>
							<div class="f-20 fw-500 black-87">+91 445 546 9890</div>
						</div>
						<div class="col-md-2 p-0 d-flex justify-content-end">
							<button
								class="btn p-0 d-flex justify-content-center align-items-center call-icon red-gradient m-0"
								onclick="endCall()">
								<i class="fas fa-phone-alt f-22 text-white"></i>
							</button>
						</div>
					</div>

					<hr class="m-0 mr-40 ml-40">


					<div class="row pt-20 m-0	pl-40 pr-40">
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

					<div class="f-12 font-weight-bold theme_color pl-40 pr-40 pt-30">Privacy Setting</div>
				</div>

				<!-- end of call connected -->

			</div>



			<div class="col-md-9 shadow-left p-0">
				<div class="float-right col-md-1 p-0  h-100 d-none" id="calldropleft">
						<div class=" dropleft" >
													<button type="button"
														class="btn btn-secondary dropdown-toggle"
														data-toggle="dropdown" aria-haspopup="true"
														aria-expanded="false" style="display:none" id="connected_call_task_content">Dropleft</button>
													<div class="dropdown-menu upcoming_task_content m-0 connected_call_task_content" aria-labelledby="connected_call_task_content">
														<!-- Dropdown menu links -->
													</div>
												</div>
												<ul
													class="list-group shadow d-flex flex-column h-100  taskpopup">
													
													
													<li class="notesdropdown list-group-item p-0 pt-10 pb-10">
														<div
															class=" d-flex flex-column justify-content-center align-items-center minh-80 " data-dropdown_id="connected_call_task_content"
															>
															<img src="<%=baseURL%>assets/image/notes.svg" alt="notes" />
															<div class="f-12 pt-1 greyish-brown">Notes</div>
															
														</div>
													</li>
													<li class=" cuesdropdown list-group-item p-0  pt-10 pb-10">
														<div
															class=" d-flex flex-column justify-content-center align-items-center minh-80" data-dropdown_id="connected_call_task_content"
															>
															<img src="<%=baseURL%>assets/image/cues.svg"  alt="cues"/>
															<div class="f-12 pt-1 greyish-brown">Cues</div>
															
														</div>
													</li>
													<li class="crmdropdown list-group-item p-0  pt-10 pb-10">
														<div
															class=" d-flex flex-column justify-content-center align-items-center minh-80" data-dropdown_id="connected_call_task_content"
															>
															<img src="<%=baseURL%>assets/image/crm.svg" alt="crm" />
															<div class="f-12 pt-1 greyish-brown">CRM</div>
															
														</div>
													</li>
													<li class="chatdropdown list-group-item  p-0  pt-10 pb-10 ">
														<div
															class="  d-flex flex-column justify-content-center align-items-center minh-80" data-dropdown_id="connected_call_task_content"
															>
															<img src="<%=baseURL%>assets/image/chat.svg" alt="presentation"/>
															<div class="f-12 pt-1 greyish-brown">Chat</div>
															
														</div>
													</li>


													<li
														class=" flex-grow list-group-item d-flex flex-column justify-content-center align-items-center minh-100" style="height: calc(100% - 80px);"
														></li>


												</ul>
				</div>
				<div class="row align-items-center h-100" id="page_empty">
					<div class="col-md-12 text-center">
						<img src="<%=baseURL%>assets/image/21.svg" class="pb-2" />
						<div class="f-16 fw-500 black" class="pb-2">Start
							the process</div>
						<div class="f-12 brownish-grey">Lorem Ipsum is simply dummy
							text of the printing and typesetting industry.</div>
					</div>
				</div>
			</div>

		</div>

		<!-- start of contact modal -->
		<div class="modal fade" id="contactModalCenter" tabindex="-1"
			role="dialog" aria-labelledby="contactModalCenterTitle"
			aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered modal-lg"
				role="document">
				<div class="modal-content rounded-0">
					<div class="modal-header  mx-3 px-0">
						<div class="modal-title greyish-brown f-18 font-weight-bold"
							id="contactModalCenterTitle">Lead List</div>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="row align-items-center  border-bottom-separation pb-3">
							<div class="col-md-6 col-6 text-result-found	">
								<strong class="number-of-results">03</strong> Results Found
							</div>
							<div class="col-md-6 col-6 d-md-flex justify-content-end  pr-0">
								<div class="input-group  pl-2 pr-2 search_width">
									<input id=""
										class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height"
										type="search" placeholder="Search"
										style="border-right: none !important;">
									<div class="input-group-append">
										<button
											class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center"
											type="button" style="">
											<i class="fa fa-search f-12 brown-grey"></i>
										</button>
									</div>
								</div>
							</div>
						</div>

						<div class=" h-400">

							<table class="table table-striped">
								<tbody>
									<%
										for (int i = 0; i < 10; i++) {
									%>
									<tr class="py-2">
										<td class=" align-middle	 f-14 greyish-brown">Globex
											Corporation Inc.</td>
										<td class=" align-middle	 f-14 greyish-brown">Stanley
											Howard</td>
										<td class=" align-middle	f-14 greyish-brown">+91 445 546
											6456</td>
										<td class="text-right">
											<button class="btn">
												<img src="<%=baseURL%>assets/image/call.svg"
													class="brown-grey hw-24">
											</button>
										</td>
									</tr>
									<%
										}
									%>
								</tbody>
							</table>

						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- end of contact modal -->

		<script src="<%=baseURL%>assets/js/createTask.js"></script>
		<script>
			$(document).ready(function() {
				
				$('.salesken.navbar-nav>li').removeClass('active');
				$('#calendar').datepicker({
					autoclose : true
				});
			});
			function showCalendar() {
				$('#calendar').datepicker('show');
			}
			function makeCall() {
				$('#calldialer').addClass("d-none");
				$('#call_connected').removeClass('d-none');
				$("#calldropleft").removeClass('d-none');
				$("#page_empty").addClass('d-none');

			}
			function endCall() {
				$('#calldialer').removeClass("d-none");
				$('#call_connected').addClass('d-none');
				$("#calldropleft").addClass("d-none");
				$("#page_empty").removeClass('d-none');
			}
		</script>

