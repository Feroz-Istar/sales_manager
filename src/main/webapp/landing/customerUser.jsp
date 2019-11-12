	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html lang="en" class="h-100">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<title>Reports - User</title>
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
	<link rel="stylesheet" href="<%=baseURL%>assets/css/report.css">
	
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
				<div class="display-1 black f-20 border-right-separation pr-20  fw-500 pl-20">Team South</div>
				<div class="f-12 brown-grey pl-20">Dashboard</div>
				<i class="fas fa-chevron-circle-right pl-2 pr-2 f-12 very-light-pink"></i>
				<div class="f-12 brown-grey ">User</div>
				<i class="fas fa-chevron-circle-right pl-2 pr-2 f-12 very-light-pink"></i>
				<div class=" f-12 brown-grey fw-500 " id="breadcrumb">Team South</div>
			</div>
			<div class="col-md-6 d-flex justify-content-end p-0">
			<div class="input-group position-relative pl-2 search_width">
					<img src="<%=baseURL%>assets/image/search.svg" alt="edit"
						class="searchBox"> <input id="pipeline_search"
						class="form-control  custom-taskborder brown-grey  f-14 search_height custom-result-selects"
						type="search" placeholder="Search" style="padding-right: 30px">
				</div>
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
									<button class="istar-dropdown-arrow dropdown-toggle" data-display="static"
										id="user_deal_value" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										<span class="sr-only">Toggle Dropdown</span>All Deal Value
										<img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
												class=" float-right">
									</button>
									<div
										class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu"  data-display="static" aria-labelledby="user_deal_value">
										<button class="dropdown-item" type="button">
											 $1000
										</button>
										<button class="dropdown-item" type="button">
											 $5000
										</button>
									</div>
								</div>
								
								<div class="istar-dropdown-task select_focus mr-10">
									<button class="istar-dropdown-arrow dropdown-toggle" data-display="static"
										id="users_stages" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										<span class="sr-only">Toggle Dropdown</span>All Stages
										<img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
												class=" float-right">
									</button>
									<div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="users_stages">
										<button class="dropdown-item" type="button">
											 Won
										</button>
										<button class="dropdown-item" type="button">
											Lost
										</button>
									</div>
								</div>
								
								
								<div class="istar-dropdown-task select_focus mr-10">
									<button class="istar-dropdown-arrow dropdown-toggle" data-display="static"
										id="users_activity" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										<span class="sr-only">Toggle Dropdown</span> All
										activities 
										<img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
												class=" float-right">
									</button>
									<div
										class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="users_activity">
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
								
								
	
									
									<div class="istar-dropdown-task dropdown dropleft" id="filterbutton">
					<button class="istar-dropdown-arrow " id="user_agent"  data-display="static"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						<span class="sr-only">Toggle Dropdown</span>All Agents <img
							src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
							class=" float-right">
					</button>
					<div
						class="dropdown-menu filter-menu dropdown-menu-lg-right position-absolute px-4"
						aria-labelledby="user_agent" style="width: 350px; margin-top: 0px !important;">

						<ul
							class="dropdown-nav nav nav-tabs nav-mytabs filtertabs pt-2 d-flex align-items-end"
							id="myTab" role="tablist">
							<li class="nav-item"><a class="nav-link active"
								id="individual-tab" data-toggle="tab" href="#individual"
								role="tab" aria-controls="individual" aria-selected="true">Individual</a>
							</li>
							<li class="nav-item"><a class="nav-link" id="team-tab"
								data-toggle="tab" href="#team" role="tab" aria-controls="team"
								aria-selected="false">Team</a></li>

						</ul>
						<div class="tab-content" id="myTabContent">
							<div class="tab-pane fade show active px-4 py-3" id="individual"
								role="tabpanel" aria-labelledby="individual-tab">
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

								<div class=" mb-2"
									style="height: 370px; overflow-x: hidden; overflow-y: auto;">

									<%
										for (int i = 0; i < 20; i++) {
									%>
									<div class="d-flex align-items-center pt-3">


										<input class="istar-checkbox agentcheckbox" data-id="<%=i%>"
											id="associate-checkbox<%=i%>" type="checkbox"> <label
											class="istar-checkbox-style" for="associate-checkbox<%=i%>"></label>
										<img alt="user-img" src="<%=baseURL%>/assets/image/11.png"
											class="rounded-circle ml-3 mr-2 hw-40">
										<div>
											<div
												class="f-14 font-weight-bold greyish-brown text-truncate"
												title="Robert Garcia">Robert Garcia</div>
											<div class="f-12  brownish-grey text-truncate" title="team">Team
												-02</div>
										</div>
									</div>
									<%
										}
									%>
								</div>


							</div>

							<div class="tab-pane fade px-4 py-3" id="team" role="tabpanel"
								aria-labelledby="team-tab">

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
										<input class="istar-checkbox teamcheckbox" data-id="<%=j%>"
											id="team-checkbox<%=j%>" type="checkbox"> <label
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
						
						
						<div class="row cream_white m-0 theme_solid_border_bottom justify-content-between align-items-center pl-40 pr-40 pt-10 pb-10" id="user_selections">
							<div class="col-md-10 d-flex p-0">
									<button class="theme_solid_border bg-white brown-grey rounded f-12 position-relative search-filter" >Filter 1
									<i class="fas fa-times-circle brown-grey f-14 cross-btn"></i>
									</button>
							</div>
							
							<div class="col-md-2 text-right p-0">
								<button type="submit" class="btn theme_color f-14 font-weight-bold p-0" id="user_reset">Reset</button>
							</div>
						</div>
						
						<div class="row cream_white m-0">
						<div class="col-md-12 p-0 pt-20">
							<%for(int i=0;i<4;i++){ %>
							<div class="card mb-20 mr-40 ml-40 cursor-pointer" onclick="window.location.href = 'userDetail.jsp'">
								<div class="card-body p-0">
									<div class="row m-0  pt-30 pb-30">
										<div class="col-md-3 border-right-dashed-separation p-0 pl-30 pr-30">
											<div class="font-weight-bold f-18 black">Team South</div>
											<div class="f-14 brown-grey mb-20">25 Users</div>
											
											<div class="row m-0 justify-content-between">
												<div class="col-md-3 p-0">
													<div class="f-30 blue-black font-weight-bold">$ <span class="pastel-red">50K</span> </div>
													<div class="f-12 brown-grey">Acheived Value </div>
												</div>
												<div class="col-md-3 p-0">
													<div class="f-30 blue-black font-weight-bold">25%</div>
													<div class="f-12 brown-grey">Win Rate</div>
												</div>
												<div class="col-md-3 p-0">
													<div class="f-30 blue-black font-weight-bold">52% </div>
													<div class="f-12 brown-grey">Tentative </div>
												</div>
											</div>
											
										</div>
										<div class="col-md-3 border-right-dashed-separation p-0 pl-30 pr-30	">
											<div class="font-weight-bold f-18 black mb-10">Activity Stats</div>
											<div class="row m-0">
												<div class="col-md-3 p-0">
													<div class="f-30 blue-black font-weight-bold">25%</div>
													<div class="f-12 brown-grey">Utilisation</div>
												</div>
												<div class="col-md-3 p-0">
													<div class="f-30 blue-black font-weight-bold">52% </div>
													<div class="f-12 brown-grey">Talk Ratio </div>
												</div>
											</div>
											
											<div class=" v-progress-bar-container_report mt-15	">
												<div class="progress-bar bg_green v-progress-bar_report" role="progressbar"
													style="width: 55%;z-index:3;" aria-valuenow="40" aria-valuemin="0"
													aria-valuemax="100"></div>
												<div class="progress-bar  bg_blue v-progress-bar_report" role="progressbar"
													style="width:  40%;z-index:2;" aria-valuenow="40" aria-valuemin="0"
													aria-valuemax="100"></div>
												<div class="progress-bar   bg-info v-progress-bar_report" role="progressbar"
													style="width: 15%;z-index:1;" aria-valuenow="20" aria-valuemin="0"
													aria-valuemax="100"></div>
											</div> 
											
										</div>
										<div class="col-md-6 p-0 pl-30 pr-30">
											<div class="font-weight-bold f-18 black mb-15">Playbook Stats</div>
											<div class="row m-0">
												<div class="col-md-6 p-0">
													<div class="font-weight-bold f-12 brownish-grey d-flex mb-10">Strong <i class="fal fa-info-circle f-16 soft-blue align-self-center ml-1"></i></div>
													<div class="strong-signal w-100 d-flex flex-wrap">
														<img src="<%=baseURL %>assets/image/introduction_signal.svg" class="pr-2 pb-2">
														<img src="<%=baseURL %>assets/image/softSkill_signal.svg" class="pr-2 pb-2">
														<img src="<%=baseURL %>assets/image/nxt_step_signal.svg" class="pr-2 pb-2">
														<img src="<%=baseURL %>assets/image/solution_signal.svg" class="pr-2 pb-2">
														<img src="<%=baseURL %>assets/image/objection_signal.svg" class="pr-2 pb-2">
														<img src="<%=baseURL %>assets/image/lead_qualification.svg" class="pr-2 pb-2">
													</div>
												</div>
												<div class="col-md-6 p-0">
													<div class="font-weight-bold f-12 brownish-grey d-flex mb-10">Weak <i class="fal fa-info-circle f-16 soft-blue align-self-center ml-1"></i></div>
													<div class="strong-signal w-100 d-flex flex-wrap">
														<img src="<%=baseURL %>assets/image/introduction_signal.svg" class="pr-2 pb-2">
														<img src="<%=baseURL %>assets/image/softSkill_signal.svg" class="pr-2 pb-2">
														<img src="<%=baseURL %>assets/image/nxt_step_signal.svg" class="pr-2 pb-2">
														<img src="<%=baseURL %>assets/image/solution_signal.svg" class="pr-2 pb-2">
														<img src="<%=baseURL %>assets/image/objection_signal.svg" class="pr-2 pb-2">
														<img src="<%=baseURL %>assets/image/lead_qualification.svg" class="pr-2 pb-2">
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<%} %>
						</div>
						
						<div class="col-md-12  d-flex justify-content-end p-0">
								<div class="page">
									<ul class="salesken pagination  m-0 pt-30 pb-40 pr-40"></ul>
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
			<script src="<%=baseURL%>assets/js/pagination.min.js"></script>
		
		<script src="<%=baseURL%>assets/js/bootstrap-datepicker.min.js"></script>
		<script>
		$(document).ready(function() {
			$('.dropdown-menu').click(function(e) {
				e.stopPropagation();
			
			});
			$('.salesken.navbar-nav>li').removeClass('active');
			$($('.salesken.navbar-nav>li')[3]).addClass('active');
			$('.page').Pagination({ // id to initial draw and use pagination
				size : 87, // size of list input
				pageShow : 5, // 5 page-item per page
				page : 1, // current page (default)
				limit : 10, // current limit show perpage (default)
			}, function(obj) { // callback function, you can use it to re-draw table or something
				console.log(obj)
			});
			
			
			$('#user_reset').click(function(){
				 $('#user_selections').hide();
			 });
			
				});
		</script>
		
		
		
		
		
		