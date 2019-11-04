<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html lang="en" class="h-100">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<title>Reports - No Follow up</title>
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
	%>
<link rel="icon" href="<%=baseURL%>favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="<%=baseURL%>favicon.ico"
	type="image/x-icon" />
<link rel="stylesheet" href="<%=baseURL%>assets/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/salesken_style.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/all.css">
<link href="<%=baseURL%>assets/css/bootstrap-datepicker3.min.css?xsww"
	rel="stylesheet">
	<link href="<%=baseURL%>assets/css/bootstrap-datepicker3.min.css?xsww"
	rel="stylesheet">
</head>
<body onload="load()">

	<div class="loader-div d-none">
		<div
			class="inner-circle-div d-flex align-items-center justify-content-center">
			<div class="spinner-border  text-danger">
				<span class="sr-only">Loading...</span>
			</div>
		</div>
	</div>
	<jsp:include page="../navbar/nav.jsp"></jsp:include>

	<main role="main">
	<div class="container-fluid salesken_container">	
	<div class="row grey-white-bg align-items-center m-0 theme_solid_border_bottom pl-40 pr-40 pt-10 pb-10">
			<div class="col-md-6 col-12 d-flex align-items-center p-0">
				<i class="fas fa-arrow-left black f-20 cursor-pointer" onclick="window.location.href = 'report.jsp'"></i>
				<div class="display-1 black f-20 border-right-separation pr-20  fw-500 pl-20">No Follow - Ups</div>
				<div class="f-12 brown-grey pl-20">Dashboard</div>
				<i class="fas fa-chevron-circle-right pl-2 pr-2 f-12 very-light-pink"></i>
				<div class=" f-12 brown-grey fw-500 " id="breadcrumb">Accenture
					Consulting Inc.</div>
			</div>
			
		</div>
		
		<div class="row m-0 justify-content-between bg-white pt-15 pb-15">
			<div class="col-md-6 d-flex align-items-center p-0 pl-40">
				<img src="<%=baseURL %>/assets/image/objection.svg" height="60" width="70" class="border-right-red mr-2">
				<div class="greyish-brown f-16 fw-500">No Follow - Ups</div>
			</div>
			
			<div class="col-md-2">
				<button type="button" class="istar-btn-icon  previous" style="right: 80px;   position: absolute;  top: 14px;  border-radius: 4px !important;"
				id="follow-up-left">
				<i class="fal fa-chevron-left"></i>
			</button>
			<button type="button"
				class="istar-btn-icon  active ml-2 next" style="right: 40px;  position: absolute;  top: 13px; border-radius: 4px !important;"
				id="follow-up-left">
				<i class="fal fa-chevron-right"></i>
			</button>
			</div>
		</div>
		
		<div class="row align-items-center bg-white theme_solid_border_bottom m-0  pl-40 pt-15 pb-15 pr-40">
							<div class="col-md-3 text-result-found p-0">
								<strong class="number-of-results">04</strong> Results Found
							</div>
							<div class="col-md-9 d-md-flex justify-content-end p-0 ">
									<div class="input-group date custom-calendar">
										<input type="text" id="nofollowup_datepicker" class="form-control  custom-dateselect"
											value="12-02-2012" placeholder="Calendar">
										<div class="input-group-addon" onclick="showCalendar()">
											<img src ="<%=baseURL%>/assets/image/calendar.svg"  alt="calendar" class="pr-1">
										</div>
									</div>	
									<div class="istar-dropdown-task select_focus mr-10">
									<button class="istar-dropdown-arrow dropdown-toggle"
										id="nofollowup_stage" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										<span class="sr-only">Toggle Dropdown</span>All Stages
										<img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
												class=" float-right">
									</button>
									<div
										class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="nofollowup_stage">
										<button class="dropdown-item" type="button">
											 $1000
										</button>
										<button class="dropdown-item" type="button">
											 $5000
										</button>
									</div>
								</div>
								
								<div class="istar-dropdown-task select_focus mr-10">
									<button class="istar-dropdown-arrow dropdown-toggle"
										id="nofollowup_activity" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										<span class="sr-only">Toggle Dropdown</span> All
										activities 
										<img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
												class=" float-right">
									</button>
									<div
										class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="nofollowup_activity">
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
								
								<div class="istar-dropdown-task select_focus ">
									<button class="istar-dropdown-arrow dropdown-toggle"
										id="nofollowup_status" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										<span class="sr-only">Toggle Dropdown</span>All Status
										<img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
												class=" float-right">
									</button>
									<div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="nofollowup_status">
										<button class="dropdown-item" type="button">
											 Won
										</button>
										<button class="dropdown-item" type="button">
											Lost
										</button>
									</div>
								</div>
	
									
									
								
							</div>
						</div>
						
						
						
						
						
						
						
						
						<div class="row m-0">
			<div class="col-md-12 bg-white p-0 ">
				
			

						<div class="row very-light-pink-grey-bg m-0">
							<div class="col-md-3 p-0 border-right pl-20">
								<div class="nav flex-column nav-pills" id="taskdetail-tab-list"
									role="tablist" aria-orientation="vertical">
									<%
										for (int i = 0; i < 4; i++) {
											String isactive = "";
											String tasktype = "call";
											if (i == 0) {
												isactive = "active";
											}
											if (i == 1) {
												tasktype = "email";
											}
											if (i == 2) {
												tasktype = "webinar";
											}
									%>
									<div
										class="nav-link rounded-0 p-0 <%=isactive%> theme_solid_border_bottom"
										id="v-pills-<%=i%>-tabs" data-toggle="pill"
										href="#v-pills-<%=i%>" role="tab"
										aria-controls="v-pills-<%=i%>" aria-selected="true"
										data-task_type="<%=tasktype%>">



										<div class="row align-items-center minh-100 m-0">
											<div class="col-md-10 p-0 pl-20">
												<div class="d-flex flex-row ">
													<div
														class="f-16 font-weight-bold border-right-separation pr-15 theme_color">$ 500</div>
													<div
														class="pl-15 f-12 align-self-center signal-analytical font-weight-bold">Analytical</div>
												</div>
												<div class="f-16 pt-5 fw-500 black text-truncate" title="Globex
													Corporation Inc.">Globex
													Corporation Inc.</div>
												<div class="f-12 brown-grey">June 28, 2019</div>
											</div>
											<div class="col-md-2">
												<div class="d-flex flex-row align-items-center">
													<img src="<%=baseURL%>assets/image/calltask.svg" alt="call"
														class="rounded-circle hw-30" /> 
												</div>
											</div>
										</div>

									</div>

									<%
										}
									%>
								</div>
							</div>


							<div class="col-md-9 p-0 bg-white">
								<div class="tab-content h-100" id="taskdetail-tab-listContent">
									<%
										for (int i = 0; i < 4; i++) {
											String isactive = "";
											if (i == 0) {
												isactive = "active";
											}
									%>
									<div class="tab-pane h-100 fade show <%=isactive%>"
										id="v-pills-<%=i%>" role="tabpanel"
										aria-labelledby="v-pills-<%=i%>-tabs"></div>
									<%
										}
									%>
								</div>
							</div>
						</div>



						<!-- end of task detail -->
						<!-- end of target content -->
					</div>

					

				</div>

			</div>
		
		
		
	</div>
	</main>
</body>

<script src="<%=baseURL%>assets/js/jquery-3.4.1.min.js"></script>
	<script src="<%=baseURL%>assets/js/popper.min.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap.min.js"></script>
		<script src="<%=baseURL%>assets/js/salesken.js"></script>
		<script src="<%=baseURL%>assets/js/bootstrap-datepicker.min.js"></script>
	<script>
		$(document)
				.ready(
						function() {
							
							$('.salesken.navbar-nav>li').removeClass('active');
							$($('.salesken.navbar-nav>li')[3]).addClass('active');
							$('#nofollowup_datepicker').datepicker({autoclose:true});
							
							$('.salesken.navbar-nav>li').removeClass('active');

							$
									.get(
											location.origin
													+ '/tabcontent/playbookCallTaskModal.jsp',
											function(data) {

												var tabid = $(
														'#taskdetail-tab-list>.nav-link')
														.attr('href').replace(
																'#', '')
												$('#' + tabid).html(data);
											});

							$('#taskdetail-tab-list>.nav-link')
									.on(
											'show.bs.tab',
											function(e) {
												var tabid = $(e.target).attr(
														'href')
														.replace('#', '');
												// newly activated tab
												var url = location.origin;

												switch ($(e.target).data(
														'task_type')) {
												case 'call':
													url = url
															+ '/tabcontent/playbookCallTaskModal.jsp';
													break;
												case 'email':
													url = url
															+ '/tabcontent/playbookEmailTaskModal.jsp';
													break;
												case 'webinar':
													url = url
															+ '/tabcontent/playbookWebinarTaskModal.jsp';
													break;
												default:
													url = url
															+ '/tabcontent/playbookCallTaskModal.jsp';
													break;
												}

												$.get(url, function(data) {
													//console.log(data);
													//console.log(selectedTab);

													$('#' + tabid).html(data);
													//  alert( "Load was performed." );
												});
												console.log($(e.target).data(
														'task_type')) // newly activated tab

												//close share n comment popover on tab change

											})

							$('.nav-tabs>.nav-item').on('show.bs.tab',
									function(e) {
									});

						});
		
		function showCalendar(){
			$('#nofollowup_datepicker').datepicker('show')
		}
		
	</script>
</html>