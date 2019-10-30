<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Salesken - Task Detail</title>
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>
<link rel="icon" href="<%=baseURL%>favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="<%=baseURL%>favicon.ico"
	type="image/x-icon" />
<link rel="stylesheet" href="<%=baseURL%>assets/css/bootstrap.min.css">
<link href="<%=baseURL%>assets/css/bootstrap-datepicker3.min.css?xsww"
	rel="stylesheet">
<link rel="stylesheet" href="<%=baseURL%>assets/css/salesken_style.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/all.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/taskDetail.css">
<link href="<%=baseURL%>assets/css/bootstrap-datepicker3.min.css?xsww"
	rel="stylesheet">
	<link rel="stylesheet" href="<%=baseURL%>assets/css/salesken_style_media_query.css">
	<link rel="stylesheet" href="https://daneden.github.io/animate.css/animate.min.css">
	<link rel="stylesheet"
	href="<%=baseURL%>assets/css/wickedpicker.min.css">
</head>
<body data-base-url="<%=baseURL%>">
<!-- start of circular progress bar for page loading -->
	<div class="salesken_progress h-100 w-100 " style="display:none">
		<div
			class="d-flex align-items-center justify-content-center  h-100 w-100">
			<div class="spinner-border text-danger" role="status">
				<span class="sr-only">Loading...</span>
			</div>
		</div>
	</div>
	<!-- end of circular progress bar for page loading -->
	<jsp:include page="../navbar/nav.jsp"></jsp:include>
	<main role="main">
	<div class="container-fluid salesken_container">
		<div
			class="row grey-white-bg align-items-center  theme_solid_border_bottom  m-0 pl-40 pr-40 pt-10 pb-10">
			<div class="col-md-6 col-12 d-flex align-items-center  p-0">
				<div
					class="display-1 black f-20 border-right-separation pr-20 fw-500">Task
					Details</div>
				<div class=" f-12 brown-grey pl-20 ">Task Detail</div>
				<i class="fas fa-chevron-circle-right pl-2 pr-2 f-12 brown-grey "></i>
				<div class=" f-12 brown-grey fw-500 " id="breadcrumb">Ongoing</div>

			</div>
			<div class="col-md-6 col-12 d-flex justify-content-md-end p-0">


					<div class="input-group position-relative pl-2 pr-2 search_width">
				<img src="<%=baseURL%>assets/image/search.svg" alt="edit" class=" searchBox">
					<input id=""
						class="form-control  custom-taskborder brown-grey  f-14 search_height custom-result-selects"
						type="search" placeholder="Search"
						style="padding-right:30px">
				</div>
				
				<div class="dropdown  ">
									<button class="btn small_button rounded-0 f-12 dropdown-toggle font-weight-bold " id="ongoing_activity" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
										<span class="sr-only">Toggle Dropdown</span>NEW TASK
										 <img src="<%=baseURL %>assets/image/toggle_white.svg" alt="call" class="h-17 text-white "> 
									</button>
									<div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="ongoing_activity">
										<button class="dropdown-item" type="button" onclick="window.location.href = 'dashboardCreateTask.jsp'">
											<img src="<%=baseURL %>assets/image/calltask.svg" alt="call" class="task-dropdown"> Call Task
										</button>
										<button class="dropdown-item" type="button">
											<img src="<%=baseURL %>assets/image/emailtask.svg" alt="email" class="task-dropdown"> Email Task
										</button>
										<button class="dropdown-item" type="button">
											<img src="<%=baseURL %>assets/image/webinartask.svg" alt="webinar" class="task-dropdown"> Webinar Task
										</button>
										<button class="dropdown-item" type="button">
											<img src="<%=baseURL %>assets/image/presentation.svg" alt="presentation" class="task-dropdown"> Presentation
										</button>
									</div>

								</div>

		

			</div>

		</div>
		<div class="row m-0">
			<div class="col-md-12 bg-white p-0 ">

				<ul class="nav nav-tabs nav-mytabs pl-40 pt-20 d-flex align-items-end" id="nav-tabs"
					role="tablist">
					<li class="nav-item rounded-0"><a
						class="nav-item nav-link show active" id="nav-ongoing-tab"
						data-toggle="tab" href="#nav-ongoing" role="tab"
						aria-controls="nav-ongoing" aria-selected="true">Ongoing</a></li>
					<li class="nav-item rounded-0"><a class="nav-item nav-link"
						id="nav-upcoming-tab" data-toggle="tab" href="#nav-upcoming"
						role="tab" aria-controls="nav-upcoming" aria-selected="false">Upcoming</a></li>
					<li class="nav-item rounded-0"><a class="nav-item nav-link"
						id="nav-completed-tab" data-toggle="tab" href="#nav-completed"
						role="tab" aria-controls="nav-completed" aria-selected="false">Completed</a>
					</li>
				</ul>
				<div class="tab-content mytab-content p-0" id="nav-tasktabsContent">
					<div class="tab-pane fade show active" id="nav-ongoing"
						role="tabpanel" aria-labelledby="nav-ongoing-tab">
						<!-- start of ongoing tab content -->

						<div
							class="row align-items-center  theme_solid_border_bottom pl-40 pr-40 pt-15 pb-15  m-0">
							<div class="col-md-3 text-result-found p-0	">
								<strong class="number-of-results">03</strong> Results Found
							</div>
							<div class="col-md-9 d-md-flex justify-content-end p-0  ">

								<!-- <select class=" custom-modal-input custom-result-selects mr-10"
									id="deal_value">
									<option>Filter by Deal Value</option>
									<option>Default select</option>
								</select>  -->
								
									<div class="istar-dropdown-task select_focus mr-10 ">
									<button class="istar-dropdown-arrow dropdown-toggle"
										id="ongoing_deal" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										<span class="sr-only">Toggle Dropdown</span>Filter by Deal Value
										<img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
												class=" float-right">
									</button>
									<div
										class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu 	" aria-labelledby="ongoing_deal">
										<button class="dropdown-item" type="button"
											>
											 1000
										</button>
										<button class="dropdown-item" type="button">
											 2000
										</button>
										
									</div>

								</div>
								
								<div class="istar-dropdown-task select_focus mr-10">
									<button class="istar-dropdown-arrow dropdown-toggle"
										id="ongoing_stage" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										<span class="sr-only">Toggle Dropdown</span>Filter by Stages
										<img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
												class=" float-right">
									</button>
									<div
										class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="ongoing_stage">
										<button class="dropdown-item" type="button"
											>
											 Stage 1
										</button>
										<button class="dropdown-item" type="button">
											stage 2
										</button>
										
									</div>

								</div>
									
								
								<div class="istar-dropdown-task select_focus mr-10">
									<button class="istar-dropdown-arrow dropdown-toggle"
										id="ongoing_activity" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										<span class="sr-only">Toggle Dropdown</span> Filter by
										activities 
										<img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
												class=" float-right">
									</button>
									<div
										class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="ongoing_activity">
										<button class="dropdown-item" type="button"
											onclick="window.location.href = 'dashboardCreateTask.jsp'">
											<img src="<%=baseURL%>assets/image/calltask.svg" alt="call"
												class="task-dropdown"> Call Task
										</button>
										<button class="dropdown-item" type="button">
											<img src="<%=baseURL%>assets/image/emailtask.svg" alt="email"
												class="task-dropdown"> Email Task
										</button>
										<button class="dropdown-item" type="button">
											<img src="<%=baseURL%>assets/image/webinartask.svg" alt="webinar"
												class="task-dropdown"> Webinar Task
										</button>
										<button class="dropdown-item" type="button">
											<img src="<%=baseURL%>assets/image/presentation.svg" alt="presentation"
												class="task-dropdown"> Presentation
										</button>
									</div>

								</div>
								<div class="istar-dropdown-task select_focus mr-10">
									<button class="istar-dropdown-arrow dropdown-toggle"
										id="ongoing_status" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										<span class="sr-only">Toggle Dropdown</span>Filter by Status <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
												class=" float-right">
									</button>
									<div
										class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="ongoing_status">
										<button class="dropdown-item" type="button"
											>
											 Ongoing
										</button>
										<button class="dropdown-item" type="button">
										Completed
										</button>
										
									</div>

								</div>

								 <div class="istar-dropdown-task select_focus dropdown" id="ongoing_filter">
									
									<button class="istar-dropdown-arrow dropdown-toggle"
										id="ongoing_filter" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										<span class="sr-only">Toggle Dropdown</span> Filter by User <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
												class=" float-right">
									</button>
									<div
										class="dropdown-menu filter-menu dropdown-menu-right dropdown-menu-lg-left position-absolute px-4"
										aria-labelledby="ongoing_filter" style="width: 350px">

										<ul class="nav nav-tabs nav-mytabs filtertabs pt-2 d-flex align-items-end" id="myTab"
											role="tablist">
											<li class="nav-item"><a class="nav-link active"
												id="individual-tab" data-toggle="tab" href="#individual"
												role="tab" aria-controls="individual" aria-selected="true">Individual</a>
											</li>
											<li class="nav-item"><a class="nav-link" id="team-tab"
												data-toggle="tab" href="#team" role="tab"
												aria-controls="team" aria-selected="false">Team</a></li>

										</ul>
										<div class="tab-content" id="myTabContent">
											<div class="tab-pane fade show active px-4 py-3"
												id="individual" role="tabpanel"
												aria-labelledby="individual-tab">
												<div class="input-group position-relative pl-2 pr-2 search_width">
				<img src="<%=baseURL%>assets/image/search.svg" alt="edit" class=" searchBox" >
					<input id=""
						class="form-control  custom-taskborder brown-grey  f-14 search_height custom-result-selects"
						type="search" placeholder="Search"
						style="padding-right:30px">
				</div>
												<div class=" mb-2"
													style="height: 370px; overflow-x: hidden; overflow-y: auto;">

													<%
														for (int i = 0; i < 20; i++) {
													%>
													<div class="d-flex align-items-center pt-3">


														<input class="istar-checkbox agentcheckbox"
															data-id="<%=i%>" id="associate-checkbox<%=i%>"
															type="checkbox"> <label
															class="istar-checkbox-style"
															for="associate-checkbox<%=i%>"></label> <img alt="user-img"
															src="<%=baseURL%>/assets/image/11.png"
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


											</div>

											<div class="tab-pane fade px-4 py-3" id="team"
												role="tabpanel" aria-labelledby="team-tab">

												<div class="input-group py-2">
													<input id="individual_search"
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

												<div class="mb-2"
													style="height: 370px; overflow-x: hidden; overflow-y: auto;">
													<%
														for (int j = 0; j < 20; j++) {
													%>
													<div class="d-flex align-items-center pt-3">
														<input class="istar-checkbox teamcheckbox"
															data-id="<%=j%>" id="team-checkbox<%=j%>"
															type="checkbox"> <label
															class="istar-checkbox-style" for="team-checkbox<%=j%>"></label>
														<div class="f-12 ml-2 brownish-grey">
															Team -0<%=j%></div>
													</div>
													<%
														}
													%>
												</div>



											</div>
										</div>
										<div class="w-100 text-center">
											<button
												class="btn  rounded-0 theme_bg text-white f-14 font-weight-bold agentteamsubmit mb-3 text-center px-3"
												style="min-width: 200px;">Submit</button>
										</div>
									</div>

								</div>
								

							</div>
						</div>

						<div class="row very-light-pink-grey-bg m-0 ">
							<div class="col-md-3 p-0 border-right pl-20">
								<div class="nav flex-column nav-pills"
									id="taskdetail-tab-list" role="tablist"
									aria-orientation="vertical">
									<%
										for (int i = 0; i < 3; i++) {
											String isactive = "";
											if (i == 0) {
												isactive = "active";
											}
									%>
									<div
										class="nav-link rounded-0 p-0 <%=isactive%> theme_solid_border_bottom"
										id="v-pills-<%=i%>-tabs" data-toggle="pill"
										href="#v-pills-<%=i%>" role="tab"
										aria-controls="v-pills-<%=i%>" aria-selected="true">


										<div class="row align-items-center m-0 p-20">
											<div class="col-md-9 p-0">
												<div class="d-flex flex-row ">
													<div
														class="f-16 font-weight-bold pr-10 theme_color">$
														500</div>
														<div class=" border-right-separation  my-1"></div>
													<div
														class="pl-10 f-12 align-self-center signal-analytical font-weight-bold">Analytical</div>
												</div>
												<div class="f-16 fw-500  black text-truncate" data-toggle="tooltip" data-placement="bottom" title="Globex Corporation. Inc.">Globex Corporation
													Inc.</div>
												<div class="f-12 brown-grey">Initiated at 11:00 PM</div>
											</div>
											<div class="col-md-3 p-0">
												<div class="d-flex flex-row align-items-center">
													<img src="<%=baseURL%>assets/image/calltask.svg" alt="taskicon"
														class="rounded-circle hw-30 task-icon" /> <img
														src="<%=baseURL%>assets/image/37.jpg" data-toggle="tooltip" data-placement="bottom" title="Agent name"
														class="rounded-circle hw-40 task-image" alt="task-image" />
												</div>
											</div>
										</div>

									</div>

									<%
										}
									%>
								</div>
							</div>


							<div class="col-md-9 bg-white p-0 position-relative">
								<div class="tab-content" id="taskdetail-tab-listContent">
									<%
										for (int i = 0; i < 3; i++) {
											String isactive = "";
											if (i == 0) {
												isactive = "active";
											}
									%>
									<div class="tab-pane fade show <%=isactive%>"
										id="v-pills-<%=i%>" role="tabpanel"
										aria-labelledby="v-pills-<%=i%>-tabs">
										<div class="row minh-650 m-0 ">
											<div class="col-md-11 p-0 pl-45 pr-45">

												<div
													class="theme_dotted_border_bottom pt-15 pb-20 shadow-bottom  ">
													<div class="row  m-0 pb-10 align-items-center">
														<div class="col-md-6 p-0 ">

															<div
																class="f-18 font-weight-bold greyish-brown text-truncate d-inline"
																data-toggle="tooltip" data-placement="bottom"
																title="Globex Corporation. Inc.">Globex
																Corporation. Inc.</div>
														</div>
														<div
															class="col-md-6 p-0 text-right"
															onclick="window.location.href = 'task_lead_detail.jsp'">
															<div class="f-14 font-weight-bold  theme_color cursor-pointer" >View More <i
																class="fas fa-chevron-circle-right"></i></div>
																
														</div>
														
													</div>
													<div class="row align-items-center m-0">
														<div class="col-md-3 p-0">
															<div class="f-14 brownish-grey">Contact Person</div>
															<div class="f-16 fw-500 black  text-truncate" data-toggle="tooltip" data-placement="bottom" title="Rosemary Garcia">Rosemary Garcia</div>
														</div>
														<div class="col-md-3 p-0 pl-20">
															<div class="f-14 brownish-grey">Agent</div>
															<div class="f-16 fw-500 black  text-truncate" data-toggle="tooltip" data-placement="bottom" title="Marry Vasquez">Marry Vasquez</div>
														</div>
												
														<div class="col-md-6 p-0 d-flex justify-content-end">
														
																<button type="button" class="btn small_button rounded-0 font-weight-bold mr-10 f-12" id="outgoing_join">JOIN
																NOW</button>
																<button type="button" class="btn small_outline_button font-weight-bold rounded-0 f-12" id="outgoing_listen">LISTEN</button>
															
														</div>
													</div>
												</div>

												<div class="theme_dashed_border_bottom pb-30 pt-30">
													<div class="row m-0">
														<div class="col-md-3 p-0 border-right-dashed-separation">
															<div class="brownish-grey f-14">Task Type</div>
															<div class="f-16  fw-500 black ">Call</div>
														</div>
														<div class="col-md-3 p-0 border-right-dashed-separation pl-15">
															<div class="brownish-grey f-14">Initiated At</div>
															<div class="f-16  fw-500 black ">11:00 AM</div>
														</div>
														<div class="col-md-3 p-0 border-right-dashed-separation pl-15 ">
															<div class="brownish-grey f-14">Deal Value</div>
															<div class="f-16  fw-500 black ">$500</div>
														</div>
														<div class="col-md-3 p-0 pl-15">
															<div class="brownish-grey f-14">Pipeline Detail</div>
															<div class="f-16  fw-500 black text-truncate" data-toggle="tooltip" data-placement="bottom" title="Stage 02">Stage 02</div>
														</div>
													</div>
												</div>


											</div>



											<div class="col-md-1 p-0">
											
												<div class="dropleft  " >
													<button type="button"
														class="btn btn-secondary dropdown-toggle"
														 style="display:none;"  id="ongoing_task_content"  data-toggle="dropdown" data-display="static" aria-haspopup="true" aria-expanded="false">Dropleft</button>
													<div class="dropdown-menu dropdown-menu-right dropdown-menu-lg-left ongoing_task_content animated fadeInRightBig" aria-labelledby="ongoing_task_content">
														<!-- Dropdown menu links -->
													</div>
												</div>
												<ul
													class="list-group shadow d-flex flex-column h-100  taskpopup">
													
													
													<li class="notesdropdown list-group-item p-0 py-3" >
														<div
															class=" d-flex flex-column justify-content-center align-items-center minh-50 " data-dropdown_id="ongoing_task_content"
															>
															<img src="<%=baseURL%>assets/image/notes.svg" alt="notes" />
															<div class="f-12 pt-1 greyish-brown">Notes</div>
															
														</div>
													</li>
													<li class=" cuesdropdown list-group-item p-0 py-3" >
														<div class=" d-flex flex-column justify-content-center align-items-center minh-50" data-dropdown_id="ongoing_task_content"
															>
															<img src="<%=baseURL%>assets/image/cues.svg"  alt="cues"/>
															<div class="f-12 pt-1 greyish-brown">Cues</div>
															
														</div>
													</li>
													<li class="crmdropdown list-group-item p-0 py-3" >
														<div
															class=" d-flex flex-column justify-content-center align-items-center minh-50" data-dropdown_id="ongoing_task_content"
															>
															<img src="<%=baseURL%>assets/image/crm.svg" alt="crm" />
															<div class="f-12 pt-1 greyish-brown">CRM</div>
															
														</div>
													</li>
													<li class="chatdropdown list-group-item  p-0 py-3 " >
														<div
															class="  d-flex flex-column justify-content-center align-items-center minh-50" data-dropdown_id="ongoing_task_content"
															>
															<img src="<%=baseURL%>assets/image/presentation.svg" alt="presentation"/>
															<div class="f-12 pt-1 greyish-brown">Chat</div>
															
														</div>
													</li>


													<li
														class=" flex-grow list-group-item d-flex flex-column justify-content-center align-items-center minh-100" style="height: calc(100% - 80px);"
														></li>


												</ul>
											</div>
										</div>

									</div>
									<%
										}
									%>
								</div>
							</div>
						</div>


						<!-- end of ongoing tab content -->
					</div>




					<div class="tab-pane fade" id="nav-upcoming" role="tabpanel"
						aria-labelledby="nav-upcoming-tab">

						<!-- start of upcoming tab-content-->


						<div
							class="row align-items-center  theme_solid_border_bottom  pl-40 pr-40 pt-15 pb-15  m-0">
							<div class="col-md-3 p-0 text-result-found	">
								<strong class="number-of-results">04</strong> Results Found
							</div>
							<div class="col-md-9 p-0 d-md-flex justify-content-end  ">
								<div class="input-group date custom-calendar">
									<input type="text" id="upcoming_datepicker"
										class="form-control  custom-dateselect" value="12-02-2012">
									<div class="input-group-addon" onclick="showCalendar()">
										<img src="<%=baseURL%>/assets/image/calendar.svg"  alt="calendar" class="pr-1">
									</div>
								</div>
									<div class="istar-dropdown-task select_focus mr-10">
									<button class="istar-dropdown-arrow dropdown-toggle"
										id="upcoming_stage" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										<span class="sr-only">Toggle Dropdown</span>Filter by Stages
										<img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
												class=" float-right">
									</button>
									<div
										class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="upcoming_stage">
										<button class="dropdown-item" type="button"
											>
											 Stage 1
										</button>
										<button class="dropdown-item" type="button">
											stage 2
										</button>
										
									</div>

								</div>
								<div class="istar-dropdown-task select_focus mr-10">
									<button class="istar-dropdown-arrow dropdown-toggle"
										id="upcoming_activity" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										<span class="sr-only">Toggle Dropdown</span> Filter by
										Activities 
										<img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
												class=" float-right">
									</button>
									<div
										class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="upcoming_activity">
										<button class="dropdown-item" type="button"
											onclick="window.location.href = 'dashboardCreateTask.jsp'">
											<img src="<%=baseURL%>assets/image/calltask.svg" alt="call"
												class="task-dropdown"> Call Task
										</button>
										<button class="dropdown-item" type="button">
											<img src="<%=baseURL%>assets/image/emailtask.svg" alt="email"
												class="task-dropdown"> Email Task
										</button>
										<button class="dropdown-item" type="button">
											<img src="<%=baseURL%>assets/image/webinartask.svg" alt="webinar"
												class="task-dropdown"> Webinar Task
										</button>
										<button class="dropdown-item" type="button">
											<img src="<%=baseURL%>assets/image/presentation.svg" alt="presentation"
												class="task-dropdown"> Presentation
										</button>
									</div>

								</div>
								<div class="istar-dropdown-task select_focus mr-10">
									<button class="istar-dropdown-arrow dropdown-toggle"
										id="upcoming_status" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										<span class="sr-only">Toggle Dropdown</span>Filter by Deal Status <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
												class=" float-right">
									</button>
									<div
										class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="upcoming_status">
										<button class="dropdown-item" type="button"
											>
											 Ongoing
										</button>
										<button class="dropdown-item" type="button">
										Completed
										</button>
										
									</div>

								</div>

								<div class="istar-dropdown-task select_focus  dropdown" id="upcoming_filter">
									
									<button class="istar-dropdown-arrow dropdown-toggle"
										id="upcoming_filter" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										<span class="sr-only">Toggle Dropdown</span> Filter by User <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
												class=" float-right">
									</button>
									<div
										class="dropdown-menu filter-menu dropdown-menu-right dropdown-menu-lg-left position-absolute px-4"
										aria-labelledby="upcoming_filter" style="width: 350px">

										<ul class="nav nav-tabs nav-mytabs filtertabs pt-2 d-flex align-items-end" id="upcomingTab"
											role="tablist">
											<li class="nav-item"><a class="nav-link active"
												id="upcoming_individual-tab" data-toggle="tab" href="#upcoming_individual"
												role="tab" aria-controls="upcoming_individual" aria-selected="true">Individual</a>
											</li>
											<li class="nav-item"><a class="nav-link" id="upcoming_team-tab"
												data-toggle="tab" href="#upcoming_team" role="tab"
												aria-controls="upcoming_team" aria-selected="false">Team</a></li>

										</ul>
										<div class="tab-content" id="upcomingTab-TabContent">
											<div class="tab-pane fade show active px-4 py-3"
												id="upcoming_individual" role="tabpanel"
												aria-labelledby="upcoming_individual-tab">
												<div class="input-group py-2">
													<input id="upcoming_individual_search"
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

												<div class=" mb-2"
													style="height: 370px; overflow-x: hidden; overflow-y: auto;">

													<%
														for (int i = 0; i < 20; i++) {
													%>
													<div class="d-flex align-items-center pt-3">


														<input class="istar-checkbox agentcheckbox"
															data-id="<%=i%>" id="upcoming_associate-checkbox<%=i%>"
															type="checkbox"> <label
															class="istar-checkbox-style"
															for="upcoming_associate-checkbox<%=i%>"></label> <img alt="user-img"
															src="<%=baseURL%>/assets/image/11.png"
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


											</div>

											<div class="tab-pane fade px-4 py-3" id="upcoming_team"
												role="tabpanel" aria-labelledby="upcoming_team-tab">

												<div class="input-group py-2">
													<input id="upcoming_individual_search"
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

												<div class="mb-2"
													style="height: 370px; overflow-x: hidden; overflow-y: auto;">
													<%
														for (int j = 0; j < 20; j++) {
													%>
													<div class="d-flex align-items-center pt-3">
														<input class="istar-checkbox teamcheckbox"
															data-id="<%=j%>" id="upcoming_team-checkbox<%=j%>"
															type="checkbox"> <label
															class="istar-checkbox-style" for="upcoming_team-checkbox<%=j%>"></label>
														<div class="f-12 ml-2 brownish-grey">
															Team -0<%=j%></div>
													</div>
													<%
														}
													%>
												</div>



											</div>
										</div>
										<div class="w-100 text-center">
											<button
												class="btn  rounded-0 theme_bg text-white f-14 font-weight-bold upcomingteamsubmit mb-3 text-center px-3"
												style="min-width: 200px;">Submit</button>
										</div>
									</div>

								</div>

							</div>
						</div>

						<div class="row very-light-pink-grey-bg m-0">
							<div class="col-md-3 p-0 border-right pl-20">
								<div
									class="nav flex-column nav-pills theme_light_gray_border_bottom"
									id="taskdetail-tab-list" role="tablist"
									aria-orientation="vertical">
									<%
										for (int i = 4; i < 7; i++) {
											String isactive = "";
											if (i == 4) {
												isactive = "active";
											}
									%>
									<div class="nav-link <%=isactive%> p-0 rounded-0 theme_solid_border_bottom"
										id="v-pills-<%=i%>-tabs" data-toggle="pill"
										href="#v-pills-<%=i%>" role="tab"
										aria-controls="v-pills-<%=i%>" aria-selected="true">


										<div class="row align-items-center 	p-20 p-0 m-0">
											<div class="col-md-9 p-0">
												<div class="f-16 greyish-brown ">11:00 AM</div>
												<div class="f-16 fw-500 black text-truncate" data-toggle="tooltip" data-placement="bottom" title="Opentech Pvt. Ltd.">Opentech Pvt. Ltd.</div>
												<div class="f-12 brown-grey">$ 500 Deal Value</div>
											</div>
											<div class="col-md-3 p-0">
												<div class="d-flex flex-row align-items-center">
													<img src="<%=baseURL%>assets/image/calltask.svg"  alt="task-icon"
														class="rounded-circle hw-30 task-icon" /> <img
														src="<%=baseURL%>assets/image/37.jpg" alt="task-image" data-toggle="tooltip" data-placement="bottom" title="Agent Name"
														class="rounded-circle hw-40 task-image" />
												</div>
											</div>
										</div>

									</div>

									<%
										}
									%>
								</div>
							</div>


							<div class="col-md-9 bg-white p-0">
								<div class="tab-content" id="taskdetail-tab-listContent">
									<%
										for (int i = 4; i < 7; i++) {
											String isactive = "";
											if (i == 4) {
												isactive = "active";
											}
									%>
									<div class="tab-pane fade show <%=isactive%>"
										id="v-pills-<%=i%>" role="tabpanel"
										aria-labelledby="v-pills-<%=i%>-tabs">
										<div class="row m-0 ">
											<div class="col-md-11 p-0  pl-45 pr-45">

												<div
													class="shadow-bottom  theme_dotted_border_bottom pt-15  pb-20">
													<div class="row justify-content-between m-0 pb-10">
													<div class="col-md-6 p-0">
													<div class=" f-18 font-weight-bold greyish-brown text-truncate d-inline" data-toggle="tooltip" data-placement="bottom" title="Opentech Pvt. Ltd.">
															Opentech Pvt. Ltd.</div>
													</div>
																											<div class="col-md-6 p-0">
														<div
															class=" f-14 font-weight-bold d-flex justify-content-end align-items-center theme_color cursor-pointer"
															onclick="window.location.href = 'task_lead_detail.jsp'">
															View More <i
																class="fas fa-chevron-circle-right ml-1 "></i>
														</div>
														</div>
													</div>
													<div class="row align-items-center  m-0">
														<div class="col-md-3 p-0">
															<div class="f-14 brownish-grey">Contact Person</div>
															<div class="f-16 fw-500 black text-truncate" data-toggle="tooltip" data-placement="bottom" title="Deann Harper">Deann Harper</div>
														</div>
														<div class="col-md-3 p-0 pl-40">
															<div class="f-14 brownish-grey">Agent</div>
															<div class="f-16  fw-500 black text-truncate" data-toggle="tooltip" data-placement="bottom" title="Bradley Obrien">Bradley Obrien</div>
														</div>
														<div class="col-md-6 p-0 d-flex justify-content-end">
															
																<button type="button" class="btn small_outline_button rounded-0 f-12 font-weight-bold"  id="upcomimg_reschedule" href="/modals/reschedule.jsp">RESCHEDULE</button>
														</div>
													</div>
												</div>




												<div class="theme_dashed_border_bottom pb-30 pt-30">
													<div class="row m-0">
														<div class="col-md-3 p-0 border-right-dashed-separation ">
															<div class="brownish-grey f-14">Task Type</div>
															<div class="f-16  fw-500 black">Call</div>
														</div>
														<div class="col-md-3 p-0 border-right-dashed-separation pl-15">
															<div class="brownish-grey f-14">Timing</div>
															<div class="f-16  fw-500 black">11:00 AM</div>
														</div>
														<div class="col-md-3 p-0 border-right-dashed-separation pl-15">
															<div class="brownish-grey f-14">Deal Value</div>
															<div class="f-16  fw-500 black">$500</div>
														</div>
														<div class="col-md-3 p-0 pl-15">
															<div class="brownish-grey f-14">Pipeline Detail</div>
															<div class="f-16  fw-500 black text-truncate" data-toggle="tooltip" data-placement="bottom" title="Stage 02">Stage 02</div>
														</div>
													</div>
												</div>

												<div
													class="d-flex flex-column justify-content-center align-items-center pt-45 ">
													<img src="<%=baseURL%>assets/image/timer.svg"  alt="clock"
														class="mb-20 time-img-size">
													<div class="f-16 fw-500 black ">Few minutes
														left !</div>
													<div class="f-12 brownish-grey">Lorem Ipsum is simply
														dummy text of the printing and typesetting industry.</div>
												</div>

											</div>



												<div class="col-md-1 p-0">
												<div class=" dropleft" >
													<button type="button"
														class="btn btn-secondary dropdown-toggle"
														data-toggle="dropdown" aria-haspopup="true"
														aria-expanded="false" style="display:none" id="upcoming_task_content">Dropleft</button>
													<div class="dropdown-menu upcoming_task_content" aria-labelledby="upcoming_task_content">
														<!-- Dropdown menu links -->
													</div>
												</div>
												<ul
													class="list-group shadow d-flex flex-column h-100  taskpopup">
													
													
													<li class="notesdropdown list-group-item p-0 py-3">
														<div
															class=" d-flex flex-column justify-content-center align-items-center minh-50 " data-dropdown_id="upcoming_task_content"
															>
															<img src="<%=baseURL%>assets/image/notes.svg" alt="notes" />
															<div class="f-12 pt-1 greyish-brown">Notes</div>
															
														</div>
													</li>
													<li class=" cuesdropdown list-group-item p-0 py-3">
														<div
															class=" d-flex flex-column justify-content-center align-items-center minh-50" data-dropdown_id="upcoming_task_content"
															>
															<img src="<%=baseURL%>assets/image/cues.svg"  alt="cues"/>
															<div class="f-12 pt-1 greyish-brown">Cues</div>
															
														</div>
													</li>
													<li class="crmdropdown list-group-item p-0 py-3">
														<div
															class=" d-flex flex-column justify-content-center align-items-center minh-50" data-dropdown_id="upcoming_task_content"
															>
															<img src="<%=baseURL%>assets/image/crm.svg" alt="crm" />
															<div class="f-12 pt-1 greyish-brown">CRM</div>
															
														</div>
													</li>
													<li class="chatdropdown list-group-item  p-0 py-3 ">
														<div
															class="  d-flex flex-column justify-content-center align-items-center minh-50" data-dropdown_id="upcoming_task_content"
															>
															<img src="<%=baseURL%>assets/image/presentation.svg" alt="presentation"/>
															<div class="f-12 pt-1 greyish-brown">Chat</div>
															
														</div>
													</li>


													<li
														class=" flex-grow list-group-item d-flex flex-column justify-content-center align-items-center minh-100" style="height: calc(100% - 80px);"
														></li>


												</ul>
											</div>
										</div>

									</div>
									<%
										}
									%>
								</div>
							</div>
						</div>

						<!-- end of upcoming tab-content -->
					</div>




					<div class="tab-pane fade" id="nav-completed" role="tabpanel"
						aria-labelledby="nav-completed-tab">
						<!-- start of completed tab -->
						<div
							class="row align-items-center  theme_solid_border_bottom  pl-40 pr-40 pt-15 pb-15  m-0">
							<div class="col-md-2 p-0 text-result-found	font_text_result fw-500">
								<strong class="number-of-results">04</strong> Results Found
							</div>
							<div class="col-md-10 p-0 d-md-flex justify-content-end  ">
								<div class="input-group date custom-calendar">
									<input type="text" id="completed_datepicker"
										class="form-control  custom-dateselect" value="12-02-2012">
									<div class="input-group-addon"
										onclick="showcompletedCalendar()">
										<img src="<%=baseURL%>/assets/image/calendar.svg" class="pr-1" alt="calendar">
									</div>
								</div>
								
								<div class="istar-dropdown-task select_focus mr-10">
									<button class="istar-dropdown-arrow dropdown-toggle"
										id="completed_stage" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										<span class="sr-only">Toggle Dropdown</span>Filter by Stages
										<img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
												class=" float-right">
									</button>
									<div
										class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="completed_stage">
										<button class="dropdown-item" type="button"
											>
											 Stage 1
										</button>
										<button class="dropdown-item" type="button">
											stage 2
										</button>
										
									</div>

								</div>
								
								<div class="istar-dropdown mr-2 custom-taskborder select_focus">
									<button class="istar-dropdown-arrow dropdown-toggle"
										id="activity" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										<span class="sr-only">Toggle Dropdown</span> Filter by
										Activities &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
									</button>
									<div
										class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu">
										<button class="dropdown-item" type="button"
											onclick="window.location.href = 'dashboardCreateTask.jsp'">
											<img src="<%=baseURL%>assets/image/calltask.svg"  alt="call"
												class="task-dropdown"> Call Task
										</button>
										<button class="dropdown-item" type="button">
											<img src="<%=baseURL%>assets/image/emailtask.svg" alt="email"
												class="task-dropdown"> Email Task
										</button>
										<button class="dropdown-item" type="button">
											<img src="<%=baseURL%>assets/image/webinartask.svg" alt="webinar"
												class="task-dropdown"> Webinar Task
										</button>
										<button class="dropdown-item" type="button">
											<img src="<%=baseURL%>assets/image/presentation.svg" alt="presentation"
												class="task-dropdown"> Presentation
										</button>
									</div>

								</div>
								<div class="istar-dropdown-task select_focus mr-10">
									<button class="istar-dropdown-arrow dropdown-toggle"
										id="completed_status" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										<span class="sr-only">Toggle Dropdown</span>Filter by Deal Status <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
												class=" float-right">
									</button>
									<div
										class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="completed_status">
										<button class="dropdown-item" type="button"
											>
											 Ongoing
										</button>
										<button class="dropdown-item" type="button">
										Completed
										</button>
										
									</div>

								</div>
 <div class="istar-dropdown-task select_focus  dropdown" id="completed_filter">
									
									<button class="istar-dropdown-arrow dropdown-toggle"
										id="completed_filter" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										<span class="sr-only">Toggle Dropdown</span> Filter by User <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
												class=" float-right">
									</button>
									<div
										class="dropdown-menu filter-menu dropdown-menu-right dropdown-menu-lg-left position-absolute px-4"
										aria-labelledby="completed_filter" style="width: 350px">

										<ul class="nav nav-tabs nav-mytabs filtertabs pt-2 d-flex align-items-end" id="completedTab"
											role="tablist">
											<li class="nav-item"><a class="nav-link active"
												id="completed_individual-tab" data-toggle="tab" href="#completed_individual"
												role="tab" aria-controls="completed_individual" aria-selected="true">Individual</a>
											</li>
											<li class="nav-item"><a class="nav-link" id="completed_team-tab"
												data-toggle="tab" href="#completed_team" role="tab"
												aria-controls="upcoming_team" aria-selected="false">Team</a></li>

										</ul>
										<div class="tab-content" id="completedTab-TabContent">
											<div class="tab-pane fade show active px-4 py-3"
												id="completed_individual" role="tabpanel"
												aria-labelledby="upcoming_individual-tab">
												<div class="input-group py-2">
													<input id="completed_individual_search"
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

												<div class=" mb-2"
													style="height: 370px; overflow-x: hidden; overflow-y: auto;">

													<%
														for (int i = 0; i < 20; i++) {
													%>
													<div class="d-flex align-items-center pt-3">


														<input class="istar-checkbox agentcheckbox"
															data-id="<%=i%>" id="completed_associate-checkbox<%=i%>"
															type="checkbox"> <label
															class="istar-checkbox-style"
															for="completed_associate-checkbox<%=i%>"></label> <img alt="user-img"
															src="<%=baseURL%>/assets/image/11.png"
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


											</div>

											<div class="tab-pane fade px-4 py-3" id="completed_team"
												role="tabpanel" aria-labelledby="completed_team-tab">

												<div class="input-group py-2">
													<input id="completed_individual_search"
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

												<div class="mb-2"
													style="height: 370px; overflow-x: hidden; overflow-y: auto;">
													<%
														for (int j = 0; j < 20; j++) {
													%>
													<div class="d-flex align-items-center pt-3">
														<input class="istar-checkbox teamcheckbox"
															data-id="<%=j%>" id="completed_team-checkbox<%=j%>"
															type="checkbox"> <label
															class="istar-checkbox-style" for="completed_team-checkbox<%=j%>"></label>
														<div class="f-12 ml-2 brownish-grey">
															Team -0<%=j%></div>
													</div>
													<%
														}
													%>
												</div>



											</div>
										</div>
										<div class="w-100 text-center">
											<button
												class="btn  rounded-0 theme_bg text-white f-14 font-weight-bold completedteamsubmit mb-3 text-center px-3"
												style="min-width: 200px;">Submit</button>
										</div>
									</div>

								</div>
							</div>
						</div>

						<div class="row very-light-pink-grey-bg m-0">
							<div class="col-md-3 p-0 border-right taskmodal ">
								<div class="nav flex-column nav-pills "
									id="taskdetail-tab-list" role="tablist"
									aria-orientation="vertical">
									<%
										for (int i = 8; i < 12; i++) {
											String isactive = "";
											String tasktype = "call";
											if (i == 8) {
												isactive = "active";
											}
											if (i == 9) {
												tasktype = "email";
											}
											if (i == 10) {
												tasktype = "webinar";
											}
									%>
									<div class="nav-link <%=isactive%> p-0 theme_solid_border_bottom"
										id="v-pills-<%=i%>-tabs" data-toggle="pill"
										href="#v-pills-<%=i%>" role="tab"
										aria-controls="v-pills-<%=i%>" aria-selected="true"
										data-task_type="<%=tasktype%>">


									<div class="row align-items-center m-0 p-20">
											<div class="col-md-9 p-0">
												<div class="d-flex flex-row ">
													<div class="f-16 font-weight-bold  pr-10 theme_color">$
														500</div>
														
														<div class=" border-right-separation  my-1"></div>
													<div class="pl-10 f-12 align-self-center signal-analytical font-weight-bold">Analytical</div>
												</div>
												<div class="f-16 fw-500  black text-truncate" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Globex Corporation. Inc.">Globex Corporation
													Inc.</div>
												<div class="f-12 brown-grey">Initiated at 11:00 PM</div>
											</div>
											<div class="col-md-3 p-0">
												<div class="d-flex flex-row align-items-center">
													<img src="<%=baseURL%>assets/image/calltask.svg" alt="taskicon" class="rounded-circle hw-30 task-icon"> <img src="<%=baseURL%>assets/image/37.jpg" data-toggle="tooltip" data-placement="bottom" title="" class="rounded-circle hw-40 task-image" alt="task-image" data-original-title="Agent name">
												</div>
											</div>
										</div>

									</div>

									<%
										}
									%>
								</div>
							</div>


							<div class="col-md-9 bg-white p-0">
								<div class="tab-content " id="taskdetail-tab-listContent">
									<%
										for (int i = 8; i < 12; i++) {
											String isactive = "";
											if (i == 8) {
												isactive = "active";
											}
									%>
									<div class="tab-pane fade show <%=isactive%>"
										id="v-pills-<%=i%>" role="tabpanel"
										aria-labelledby="v-pills-<%=i%>-tabs"></div>
									<%
										}
									%>
								</div>
							</div>
						</div>


						<!-- end of completed tab -->

					</div>
				</div>
			</div>
		</div>

		<!--start of Task Reschedule modal -->
		<div class="modal fade" id="rescheduleCenter" tabindex="-1"
			role="dialog" aria-labelledby="rescheduleCenterTitle"
			aria-hidden="true">
			<div class="modal-dialog modal-lg modal-dialog-centered"
				role="document">
				<div class="modal-content rounded-0">
					<div class="modal-header shadow-bottom pt-20 pb-20  ml-30 mr-30 p-0">
						<h5 class="modal-title greyish-brown f-18 font-weight-bold mb-0">Reschedule Task</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<img src="<%=baseURL %>assets/image/close.svg" alt="taskicon" class="rounded-circle hw-24 task-icon">
						</button>
					</div>
					<div class="modal-body p-0">
						
					</div>

					<div class="modal-footer p-0 pt-30 pb-30 ml-30	mr-30 border-top-task_list ">
						<button type="submit" class="btn theme_color f-14 font-weight-bold " id="reset_schedule_task">Reset </button>
						<button type="button" class="btn big_button rounded-0 f-14 font-weight-bold" id="create_schedule_task" >SUBMIT</button>
					</div>
				</div>
			</div>
		</div>
		<!--end of Task Reschedule modal -->



		<script src="<%=baseURL%>assets/js/jquery-3.4.1.min.js"></script>
		<script src="<%=baseURL%>assets/js/popper.min.js"></script>
		<script src="<%=baseURL%>assets/js/bootstrap.min.js"></script>
		<script src="<%=baseURL%>assets/js/bootstrap-datepicker.min.js"></script>
					<script src="<%=baseURL%>assets/js/wickedpicker.min.js"></script>
		
		<script src="<%=baseURL%>assets/js/salesken.js"></script>
		
		<script>
			$('.salesken.navbar-nav>li').removeClass('active');
			$($('.salesken.navbar-nav>li')[1]).addClass('active')
			$('.taskdetailtab  a').on('shown.bs.tab', function(e) {
				var target = $(e.target).html(); // activated tab
				$('#breadcrumb').html(target);

			});
		</script>
		<script>
			$(document)
					.ready(
							function() {
								$('.filtertabs>li>.nav-link').click(function(e) {
									
									$($(this).attr('href')+'-tab').tab('show')

								});
								$('#upcoming_datepicker').datepicker({
									autoclose : true
								})
								$('#completed_datepicker').datepicker({
									autoclose : true
								})

								$
										.get(
												location.origin
														+ '/tabcontent/completedCallTaskModal.jsp',
												function(data) {

													var tabid = $(
															'.taskmodal>#taskdetail-tab-list>.nav-link')
															.attr('href')
															.replace('#', '')
													$('#' + tabid).html(data);
												});

								$('.taskmodal>#taskdetail-tab-list>.nav-link')
										.on(
												'show.bs.tab',
												function(e) {
													var tabid = $(e.target)
															.attr('href')
															.replace('#', '');
													// newly activated tab
													var url = location.origin;

													switch ($(e.target).data(
															'task_type')) {
													case 'call':
														url = url
																+ '/tabcontent/completedCallTaskModal.jsp';
														break;
													case 'email':
														url = url
																+ '/tabcontent/completedEmailTaskModal.jsp';
														break;
													case 'webinar':
														url = url
																+ '/tabcontent/completedWebinarTaskModal.jsp';
														break;
													default:
														url = url
																+ '/tabcontent/completedCallTaskModal.jsp';
														break;
													}

													$.get(url, function(data) {
														//console.log(data);
														//console.log(selectedTab);

														$('#' + tabid).html(
																data);
														//  alert( "Load was performed." );
													});
													console.log($(e.target)
															.data('task_type')) // newly activated tab

													//close share n comment popover on tab change
													if ('.taskshare:visible') {
														$('.taskshare')
																.popover('hide');
													}
													if ('.taskcomment:visible') {
														$('.taskcomment')
																.popover('hide');
													}
													$('.popover').popover(
															'hide');
												})

								$('#taskdetail-tab-list>.nav-link').on(
										'show.bs.tab', function(e) {
											$('.popover').popover('hide');

										})
								$('#nav-tabs>.nav-link').on('show.bs.tab',
										function(e) {
											$('.popover').popover('hide');

										})

							});

			function showCalendar() {
				$('#upcoming_datepicker').datepicker('show')
			}
			function showcompletedCalendar() {
				$('#completed_datepicker').datepicker('show')
			}
			
			$('.dropdown-menu').click(function(e) {
			    e.stopPropagation();
			});
			
			$('#upcomimg_reschedule').click(function (e){
			
			 e.preventDefault();
			  $('#rescheduleCenter').modal('show').find('.modal-body').load($(this).attr('href'));
			});
		</script>



	</div>
	</main>



</body>



</html>