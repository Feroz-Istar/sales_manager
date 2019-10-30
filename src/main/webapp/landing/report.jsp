<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%><%@ page language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<title>Salesken - Reports</title>
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
	String usertabs[]={"All Users","Sales Team","Product Team","Tech Team"};
	
	
%>
<link rel="icon" href="<%=baseURL%>favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="<%=baseURL%>favicon.ico"
	type="image/x-icon" />
<link rel="stylesheet" href="<%=baseURL%>assets/css/bootstrap.min.css">
<link href="<%=baseURL%>assets/css/bootstrap-datepicker3.min.css?xsww"
	rel="stylesheet">
<link rel="stylesheet" href="<%=baseURL%>assets/css/salesken_style.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/all.css">

<link href="<%=baseURL%>assets/css/bootstrap-datepicker3.min.css?xsww"
	rel="stylesheet">
<link rel="stylesheet" href="<%=baseURL%>assets/css/salesken_style_media_query.css">

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
	
	<div class="row grey-white-bg align-items-center py-3 theme_solid_border_bottom pl-4">
		<div class="col-md-6 col-12 d-flex align-items-center mb-4 mb-md-0"> 
		<div class="display-1 black f-20 border-right-separation pr-3  fw-500">Reports</div>
							<div class="pl-3 pr-2 f-12 brown-grey ">Report</div>
					<i class="fas fa-chevron-circle-right pr-2 f-12 brown-grey"></i>
					<div class=" f-12 brown-grey  fw-500" id="breadcrumb">Task</div>
		
		</div>
	</div>
		<div class="row mb-5">
			<div class="col-md-12 bg-white ">
				<ul class="nav nav-tabs nav-mytabs pl-40 pt-20 d-flex align-items-end" id="reportTab" role="tablist">
					<li class="nav-item"><a class="nav-item nav-link active" id="task-tab"
							data-toggle="tab" href="#task" role="tab"
							aria-controls="task" aria-selected="true">Playbook Insights</a></li>
					<li class="nav-item"><a
							class="nav-item nav-link" id="users-tab"
							data-toggle="tab" href="#users" role="tab"
							aria-controls="users" aria-selected="false">Users</a></li>
					<li class="nav-item"><a class="nav-item nav-link" id="customer-tab" data-toggle="tab"
							href="#customer" role="tab" aria-controls="customer"
							aria-selected="false">Customer</a></li>
						<li class="nav-item"><a class="nav-item nav-link"
							id="time_analysis-tab" data-toggle="tab" href="#time_analysis" role="tab"
							aria-controls="time_analysis" aria-selected="false">Timeline Analysis</a></li>
					<li class="nav-item"><a class="nav-item nav-link"
							id="roi_calculator-tab" data-toggle="tab" href="#roi_calculator" role="tab"
							aria-controls="roi_calculator" aria-selected="false">ROI Calculator</a></li>
					<li class="nav-item"><a class="nav-item nav-link"
					id="custom_report-tab" data-toggle="tab" href="#custom_report" role="tab"
					aria-controls="custom_report" aria-selected="false">Custom Report</a></li>
				</ul>
				<div class="tab-content p-0 mytab-content" id="nav-tabContent">
					<div class="tab-pane fade show active" id="task"
						role="tabpanel" aria-labelledby="task-tab">
						<!-- start of Task tab  content -->
						<div class="row align-items-center  theme_solid_border_bottom  py-3 pl-4">
							<div class="col-md-3 text-result-found	">
								<strong class="number-of-results">04</strong> Results Found
							</div>
							<div class="col-md-9 d-md-flex justify-content-end  ">
									
									<div class="istar-dropdown-task select_focus mr-10">
									<button class="istar-dropdown-arrow dropdown-toggle"
										id="task_activity" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										<span class="sr-only">Toggle Dropdown</span> Filter by
										Activities 
										<img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
												class=" float-right">
									</button>
									<div
										class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="task_activity">
										<button class="dropdown-item" type="button">
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
										<button class="istar-dropdown-arrow "
										id="task_dropdown" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										<span class="sr-only">Toggle Dropdown</span> Filter by User <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
												class=" float-right">
										</button>
										
										 <div class="dropdown-menu filter-menu dropdown-menu-lg-right position-absolute px-4 " aria-labelledby="task_dropdown" style="width:350px">
												
												<ul class="nav nav-tabs nav-mytabs filtertabs pt-2" id="taskTab" role="tablist">
												  <li class="nav-item">
												    <a class="nav-item nav-link active" id="task_individual-tab" data-toggle="tab" href="#task_individual" role="tab" aria-controls="task_individual" aria-selected="true">Individual</a>
												  </li>
												  <li class="nav-item">
												    <a class="nav-item nav-link" id="task_team-tab" data-toggle="tab" href="#task_team" role="tab" aria-controls="task_team" aria-selected="false">Team</a>
												  </li>
												 
												</ul>
												<div class="tab-content" id="taskTab-tabContent">
												  <div class="tab-pane fade show active px-4 py-3" id="task_individual" role="tabpanel" aria-labelledby="task_individual-tab">
												  		<div class="input-group py-2">
															<input id="task_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
															<div class="input-group-append">
																<button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
																	<i class="fa fa-search f-12 brown-grey"></i>
																</button>
															</div>
														</div>
														
														<div class=" mb-2"  style="height:370px; overflow-x: hidden; overflow-y:auto;">
														
														<%for(int i=0; i<20;i++){ %>
					                                    <div class="d-flex align-items-center pt-3">
					                                    
					                                    
									<input class="istar-checkbox taskagentcheckbox" data-id="<%=i %>" id="task_associate-checkbox<%=i %>" type="checkbox">
					                                        <label class="istar-checkbox-style" for="task_associate-checkbox<%=i %>"></label>
											<img alt="Agent Image" title="Agent Name" src ="<%=baseURL%>/assets/image/11.png" class="rounded-circle ml-3 mr-2 hw-40">
										  <div>
					                                        	<div class="f-14 font-weight-bold greyish-brown text-truncate" title="Robert Garcia">Robert Garcia</div>
					                                        	<div class="f-12  brownish-grey text-truncate" title="team">Team -02</div>
					                                        </div>
										</div>
										<%} %>
					                                    </div>
					                                    
					                                     		
					                                 </div>
					                                			                                 
												  <div class="tab-pane fade px-4 py-3" id="task_team" role="tabpanel" aria-labelledby="task_team-tab">
												  		
												  		<div class="input-group py-2">
															<input id="task_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
															<div class="input-group-append">
																<button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
																	<i class="fa fa-search f-12 brown-grey"></i>
																</button>
															</div>
														</div>
														
														<div class="mb-2" style="height:370px; overflow-x: hidden; overflow-y:auto;">
														<%for(int j=0; j<20;j++){ %>
														<div class="d-flex align-items-center pt-3">
					                                        <input class="istar-checkbox taskteamcheckbox" data-id="<%=j %>" id="task_team-checkbox<%=j %>" type="checkbox">
					                                        <label class="istar-checkbox-style" for="task_team-checkbox<%=j%>"></label>
					                                        <div class="f-12 ml-2 brownish-grey">Team -0<%=j%></div>
					                                    </div>
					                                    <%} %>
					                                    </div>
					                                    
					                                     	
												  		
												  </div>
												</div>
												 <div class="w-100 text-center">
												 <button class="btn  rounded-0 theme_bg text-white f-14 font-weight-bold mb-3 text-center px-3" style="min-width:200px;" id="task_team_submit">Submit</button>
												</div>
										  </div>
										
									</div> 
								
							</div>
						</div>
						<div class="row px-4">
						<%for(int i=0;i<12;i++){ %>
							<div class="col-md-4 d-flex align-items-center col_bordering minh-200" >
								<div class="row w-100">
								<div class="col-md-8 m-0">
								<div><div class="font-weight-bold f-42" > 04</div>
								<div class="greyish-brown f-16 fw-500">No Follow - Ups</div>
								
								<div class="greyish-brown f-14">Next Steps/Follow up Action was not done in the calls</div>
								</div>
								</div>
								<div class="col-md-4 p-0 m-0 text-center">
								<img src="<%=baseURL%>assets/image/report-no-followup.svg" width= "144.5" height= "126.9" >
								</div>
								</div>
								
								
							</div>
						<%} %>
						</div>
						<!-- end of Task tab  content -->
					</div>

					<div class="tab-pane fade" id="users" role="tabpanel"
						aria-labelledby="users-tab">

						<!-- start of user tab content-->

							
						<div class="row align-items-center  theme_solid_border_bottom  py-3 pl-4">
							<div class="col-md-3 text-result-found	">
								<strong class="number-of-results">04</strong> Results Found
							</div>
							<div class="col-md-9 d-md-flex justify-content-end  ">
									
									<div class="input-group date custom-calendar">
										<input type="text" id="user_datepicker" class="form-control  custom-dateselect"
											value="12-02-2012">
										<div class="input-group-addon" onclick="showCalendar()">
											<img src ="<%=baseURL%>/assets/image/calendar.svg"  alt="calendar" class="pr-1">
										</div>
									</div>	
									<div class="istar-dropdown-task select_focus mr-10">
									<button class="istar-dropdown-arrow dropdown-toggle"
										id="pipeline_deal_value" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										<span class="sr-only">Toggle Dropdown</span>All Deal Value
										<img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
												class=" float-right">
									</button>
									<div
										class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="pipeline_deal_value">
										<button class="dropdown-item" type="button">
											 $1000
										</button>
										<button class="dropdown-item" type="button">
											 $5000
										</button>
									</div>
								</div>
								
							</div>
						</div>
					
					
					
					<div class="row shadow-bottom theme_dotted_border_bottom  pt-25 pb-25 m-0">
							<div class="pl-40 pr-115 ">
								<div class="f-24 blue-black font-weight-bold">$ <span class="theme_color">5625</span> </div>
								<div class="f-14 brown-grey font-weight-bold">Achieved Value</div>
							</div>
							<div class="pr-115">
								<div class="f-24 blue-black font-weight-bold">$ 85625 </div>
								<div class="f-14 brown-grey font-weight-bold">Pipeline Value </div>
							</div>
							<div class="pr-115">
								<div class="f-24 blue-black font-weight-bold">85%</div>
								<div class="f-14 brown-grey font-weight-bold">Confident</div>
							</div>
							<div class="pr-115 ">
								<div class="f-24 blue-black font-weight-bold">28%</div>
								<div class="f-14 brown-grey font-weight-bold">Utilisation</div>
							</div>
							<div class="pr-115">
								<div class="f-24 blue-black font-weight-bold">78%</div>
								<div class="f-14 brown-grey font-weight-bold">Talk Ratio</div>
							</div>
							<div class="pr-115">
								<div class="f-24 blue-black font-weight-bold">689</div>
								<div class="f-14 brown-grey font-weight-bold">Won Leads</div>
							</div>
							<div class="p-0">
								<div class="f-24 blue-black font-weight-bold">234</div>
								<div class="f-14 brown-grey font-weight-bold">Lost Leads</div>
							</div>
						</div>
					
					
					<div class="row cream_white">
						<div class="col-md-12">
							<%for(int i=0;i<4;i++){ %>
							<div class="card mb-15 mt-15 mr-40 ml-40">
								<div class="card-body">
									<div class="row">
										<div class="col-md-3 border-right-dashed-separation ">
											<div class="font-weight-bold f-18 black">Team South</div>
											<div class="f-14 brown-grey">25 Users</div>
											
											<div class="row">
												<div class="col-md-4">
													<div class="f-30 blue-black font-weight-bold">$ <span class="theme_color">50K</span> </div>
													<div class="f-12 brown-grey">Acheived Value </div>
												</div>
												<div class="col-md-4">
													<div class="f-30 blue-black font-weight-bold">25%</div>
													<div class="f-12 brown-grey">Win Rate</div>
												</div>
												<div class="col-md-4">
													<div class="f-30 blue-black font-weight-bold">52% </div>
													<div class="f-12 brown-grey">Tentative </div>
												</div>
											</div>
											
										</div>
										<div class="col-md-3 border-right-dashed-separation">
											<div class="font-weight-bold f-18 black">Activity Stats</div>
											<div class="row">
												<div class="col-md-3">
													<div class="f-30 blue-black font-weight-bold">25%</div>
													<div class="f-12 brown-grey">Utilisation</div>
												</div>
												<div class="col-md-3">
													<div class="f-30 blue-black font-weight-bold">52% </div>
													<div class="f-12 brown-grey">Talk Ratio </div>
												</div>
											</div>
											<div class="progress pipeline_progress mt-2" style="height: 20px; background-color: white;">
													<div class="progress-bar bg_green" role="progressbar" style="width: 55%" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100"></div>
													<div class="progress-bar  bg_blue" role="progressbar" style="width: 40%" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100"></div>
													<div class="progress-bar   bg-info" role="progressbar" style="width: 15%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>
											</div>
										</div>
										<div class="col-md-6">
											<div class="font-weight-bold f-18 black">Playbook Stats</div>
											<div class="row">
												<div class="col-md-6">
													<div class="font-weight-bold f-12 brownish-grey">Strong <i class="fal fa-info-circle f-14 soft-blue"></i></div>
													<div class="strong-signal w-100 d-flex flex-wrap">
														<button type="button" class="btn  rounded-0 f-12 m-1 font-weight-bold signal_background">Introduction</button>
														<button type="button" class="btn  rounded-0 f-12 m-1 font-weight-bold signal_background">Introduction</button>
														<button type="button" class="btn  rounded-0 f-12 m-1 font-weight-bold signal_background">Introduction</button>
														<button type="button" class="btn  rounded-0 f-12 m-1 font-weight-bold signal_background">Introduction</button>
														<button type="button" class="btn  rounded-0 f-12 m-1 font-weight-bold signal_background">Introduction</button>
													</div>
												</div>
												<div class="col-md-6">
													<div class="font-weight-bold f-12 brownish-grey">Weak <i class="fal fa-info-circle f-14 soft-blue"></i></div>
													<div class="strong-signal w-100 d-flex flex-wrap">
														<button type="button" class="btn  rounded-0 f-12 m-1 font-weight-bold signal_background">Introduction</button>
														<button type="button" class="btn  rounded-0 f-12 m-1 font-weight-bold signal_background">Introduction</button>
														<button type="button" class="btn  rounded-0 f-12 m-1 font-weight-bold signal_background">Introduction</button>
														<button type="button" class="btn  rounded-0 f-12 m-1 font-weight-bold signal_background">Introduction</button>
														<button type="button" class="btn  rounded-0 f-12 m-1 font-weight-bold signal_background">Introduction</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<%} %>
						</div>
					</div>
						
		
						<!-- end of user tab content -->

					</div>
					<div class="tab-pane fade" id="customer" role="tabpanel"
						aria-labelledby="customer-tab">

						<!-- start of customer tab content-->

					<div class="row align-items-center theme_solid_border_bottom py-3 pl-4">
							<div class="col-md-3 text-result-found	">
								<strong class="number-of-results">04</strong> Results Found
							</div>
							
						</div>
						

						<div class="row  mr-md-2">
						
							<%for(int i=0;i<4;i++){ %>
							<div class="col-md-3 col_bordering4 p-0 m-0 d-md-flex align-items-center objections cursor-pointer minh-200" >
							<div class=" w-100 d-flex">
								<div class="col-md-9 pl-4">
								<div class="col"><div class="font-weight-bold f-42 greyish-brown"> 05</div>
								<div class="greyish-brown f-14 fw-500">Objection</div>
								</div>
								</div>
								<div class="col-md-3  p-0 m-0  ">
								<img src="<%=baseURL%>assets/image/objection.svg" width=" 93.8" height=" 87.2" >
								</div>
								</div>
							</div>
							<%} %>
							
						</div>
						<!-- end of customer tab content -->

					</div>
					<div class="tab-pane fade" id="time_analysis" role="tabpanel"
						aria-labelledby="time_analysis-tab">

						<!-- start of time analysis tab content -->

						<div class="card border-0" style="box-shadow: 0 11px 14px -9px #dddddd;">
							<div class="card-body">
								<div class="d-flex">
								<%for(int i=0;i<5;i++){ %>
									<div class="mr-4">
										<div class="f-14 fw-500 greyish-brown mb-1">Pipeline Stage 0<%=i+1 %></div>
										<div class="d-flex">
											<img src="<%=baseURL %>assets/image/calltask.svg" class="hw-40 mr-1">
											<img src="<%=baseURL %>assets/image/calltask.svg" class="hw-40 mr-1">
										</div>
									</div>
								<%} %>
								</div>

							</div>

						</div>
						
						<div class="row py-4 theme_dashed_border_bottom">
						<div class="col-md-4">
						<h5 class="f-20 fw-500 black">Overall Analysis</h5>
						
						</div>
						<div class="col-md-8 d-flex justify-content-end">
							<div class="input-group date custom-calendar">
										<input type="text" id="timeline_datepicker" class="form-control  custom-dateselect"
											value="12-02-2012">
										<div class="input-group-addon" onclick="showTimelineCalendar()">
											<img src ="<%=baseURL%>/assets/image/calendar.svg"  alt="calendar" class="pr-1">
										</div>
									</div>	
								<div class="istar-dropdown-task select_focus mr-10">
									<button class="istar-dropdown-arrow dropdown-toggle"
										id="timeline_persona" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										<span class="sr-only">Toggle Dropdown</span>All Persona
										<img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
												class=" float-right">
									</button>
									<div
										class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="timeline_persona">
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
										id="timeline_success" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										<span class="sr-only">Toggle Dropdown</span>Filter by Success
										<img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
												class=" float-right">
									</button>
									<div
										class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="timeline_success">
										<button class="dropdown-item" type="button">
											 Lead 1 
										</button>
										<button class="dropdown-item" type="button">
											 Lead 2 
										</button>
									</div>
									
								</div>
								
								<div class="istar-dropdown-task dropdown dropleft" id="filterbutton">
										<button class="istar-dropdown-arrow "
										id="timeline_dropdown" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										<span class="sr-only">Toggle Dropdown</span>All Agents <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
												class=" float-right">
										</button>
										 <div class="dropdown-menu filter-menu dropdown-menu-lg-right position-absolute px-4" aria-labelledby="timeline_dropdown" style="width:350px">
													
												<ul class="nav nav-tabs nav-mytabs filtertabs pt-2" id="timelineTab" role="tablist">
												  <li class="nav-item">
												    <a class="nav-link active" id="timeline_individual-tab" data-toggle="tab" href="#timeline_individual" role="tab" aria-controls="timeline_individual" aria-selected="true">Individual</a>
												  </li>
												  <li class="nav-item">
												    <a class="nav-link" id="timeline_team-tab" data-toggle="tab" href="#timeline_team" role="tab" aria-controls="timeline_team" aria-selected="false">Team</a>
												  </li>
												 
												</ul>
												<div class="tab-content" id="myTabContent">
												  <div class="tab-pane fade show active px-4 py-3" id="timeline_individual" role="tabpanel" aria-labelledby="timeline_individual-tab">
												  		<div class="input-group py-2">
															<input id="timeline_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
															<div class="input-group-append">
																<button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
																	<i class="fa fa-search f-12 brown-grey"></i>
																</button>
															</div>
														</div>
														
														<div class=" mb-2"  style="height:370px; overflow-x: hidden; overflow-y:auto;">
														
														<%for(int i=0; i<20;i++){ %>
					                                    <div class="d-flex align-items-center pt-3">
					                                    
					                                    
									<input class="istar-checkbox timelineagentcheckbox" data-id="<%=i %>" id="timeline_associate-checkbox<%=i %>" type="checkbox">
					                                        <label class="istar-checkbox-style" for="timeline_associate-checkbox<%=i %>"></label>
											<img alt="Lead Image" title="Lead Name" src ="<%=baseURL%>/assets/image/11.png" class="rounded-circle ml-3 mr-2 hw-40">
										  <div>
					                                        	<div class="f-14 font-weight-bold greyish-brown text-truncate" title="Robert Garcia">Robert Garcia</div>
					                                        	<div class="f-12  brownish-grey text-truncate" title="team">Team -02</div>
					                                        </div>
										</div>
										<%} %>
					                                    </div>
					                                    
					                                     		
					                                 </div>
					                                			                                 
												  <div class="tab-pane fade px-4 py-3" id="timeline_team" role="tabpanel" aria-labelledby="timeline_team-tab">
												  		
												  		<div class="input-group py-2">
															<input id="timeline_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
															<div class="input-group-append">
																<button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
																	<i class="fa fa-search f-12 brown-grey"></i>
																</button>
															</div>
														</div>
														
														<div class="mb-2" style="height:370px; overflow-x: hidden; overflow-y:auto;">
														<%for(int j=0; j<20;j++){ %>
														<div class="d-flex align-items-center pt-3">
					                                        <input class="istar-checkbox timelineteamcheckbox" data-id="<%=j %>" id="timeline_team-checkbox<%=j %>" type="checkbox">
					                                        <label class="istar-checkbox-style" for="timeline_team-checkbox<%=j%>"></label>
					                                        <div class="f-12 ml-2 brownish-grey">Team -0<%=j%></div>
					                                    </div>
					                                    <%} %>
					                                    </div>
					                                    
					                                     	
												  		
												  </div>
												</div>
												 <div class="w-100 text-center">
												 <button class="btn  rounded-0 theme_bg text-white f-14 font-weight-bold mb-3 text-center px-3" style="min-width:200px;" id="timeline_team_submit">Submit</button>
												</div>
										  </div>
										
									</div> 
						</div>
						</div>
						
						
						
						<div class="row pt-4" >
						
							<div class="line" style="   width: 76%;
													    height: 1px;
													    border: 1px dashed #eeeeee;
													    top: 214px;
													    left: 8px;">
							</div>
							<div class="col-md-3">
								<div class="theme_bg rounded-circle" style="height:10px; width: 10px"></div>
								<div class="very-light-pink f-20 font-weight-bold">25%</div>
							</div>
							<div class="col-md-3">
								<div class="theme_bg rounded-circle" style="height:10px; width: 10px"></div>
								<div class="very-light-pink f-20 font-weight-bold">50%</div>
							</div>
							<div class="col-md-3">
								<div class="theme_bg rounded-circle" style="height:10px; width: 10px"></div>
								<div class="very-light-pink f-20 font-weight-bold">75%</div>
							</div>
							<div class="col-md-3">
								<div class="theme_bg rounded-circle" style="height:10px; width: 10px"></div>
								<div class="very-light-pink f-20 font-weight-bold">100%</div>
							</div>
						</div>					
						
						<div class="d-flex flex-wrap">
							<%for(int i=0;i<16;i++){ %>
							<div class="col-md-3 p-2">
							<div class="progress rounded p-0" style="height: 60px;  border: solid 1px #9fa7ff;">
								<div class="progress-bar progress-bar-striped bg-purple pl-2" role="progressbar" style="width: 50%; text-align: left;" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100">
									<div class="font-weight-bold f-12" style="color: #454d9f">Introduction</div>
									<div class="fw-900 f-22"  style="color: #454d9f">50%</div>
								</div>
							</div>
							</div>
							<%} %>
						</div>


						<!-- end of time analysis content -->

					</div>
					
					
					
					
					<div class="tab-pane fade" id="roi_calculator" role="tabpanel"
						aria-labelledby="roi_calculator-tab" style="min-height:700px">

						<!-- start of roi_calculator tab content-->

					<div class="row align-items-center theme_solid_border_bottom py-3 pl-4">
							<div class="col-md-3 text-result-found	">
								<strong class="number-of-results">04</strong> Results Found
							</div>
							
						</div>
						
						<div class="row cream_white">
							<div class="col-md-12 my-3 ">
							<div class="card">
								<div class="card-body">
								<div class="row">
									<div class="col-md-3 theme_dashed_border_right_2">
										<div class="d-flex align-items-center">
												<div class="col-md-3">
													<img src="http://localhost:8080/assets/image/objection.svg" width=" 93.8" height=" 87.2">
												</div>
												
												<div class="col-md-9">
													<div class="fw-300 brownish-grey f-30"><span class="greyish-brown font-weight-bold f-30">08</span>h &nbsp; <span class="font-weight-bold greyish-brown f-30">34</span>m &nbsp;  <span class="font-weight-bold greyish-brown f-30">12</span>s &nbsp; </div>
													<div class="f-12 brownish-grey">Time Spent</div>
												</div>
										</div>
									</div>
									<div class="col-md-6 theme_dashed_border_right_2">
										<div class="row align-items-center justify-content-center">
												<div class="col-md-3 p-0">
													<div class="font-weight-bold f-30 greyish-brown">
														28%
													</div>
													<div class="f-14 brownish-grey">Cue Uptake</div>
												</div>
												<div class="col-md-3 p-0">
													<div class="font-weight-bold f-30 greyish-brown">
														68
													</div>
													<div class="f-14 brownish-grey">Daily Active Users</div>
												</div>
												<div class="col-md-3 p-0">
													<div class="font-weight-bold f-30 greyish-brown">
														25%
													</div>
													<div class="f-14 brownish-grey">Playbook Adherence</div>
												</div>
										</div>
									</div>
									<div class="col-md-3 pl-40">
										<div class="f-12 brownish-grey"><span class="font-weight-bold f-30 greyish-brown">38%</span> Utilisation</div>
										<div class="progress pipeline_progress mt-2" style="height: 20px; background-color: white;">
											<div class="progress-bar bg_green" role="progressbar" style="width: 55%" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100"></div>
											<div class="progress-bar  bg_blue" role="progressbar" style="width: 40%" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100"></div>
											<div class="progress-bar   bg-info" role="progressbar" style="width: 15%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>
										</div>
									</div>
									</div>
								</div>
							</div>
							</div>
						</div>


						<div class="row  mr-md-2 border-bottom-dashed-separation ">
						
							<%for(int i=0;i<4;i++){ %>
							<div class="col-md-3 col_bordering4 p-0 m-0 d-md-flex align-items-center objections cursor-pointer minh-200" >
							<div class=" w-100 d-flex">
								<div class="col-md-9 pl-4">
								<div class="col"><div class="font-weight-bold f-42 greyish-brown"> 05</div>
								<div class="greyish-brown f-14 fw-500">Upsell Cues</div>
								</div>
								</div>
								<div class="col-md-3  p-0 m-0  ">
								<img src="<%=baseURL%>assets/image/objection.svg" width=" 93.8" height=" 87.2" >
								</div>
								</div>
							</div>
							<%} %>
							
						</div>
						<!-- end of roi_calculator tab content -->

					</div>
					
					
					
					<div class="tab-pane fade" id="custom_report" role="tabpanel"
						aria-labelledby="custom_report">

						<!-- start of custom_report tab content-->
							
								<div class="row justify-content-center py-4 shadow-bottom theme_solid_border_bottom">
									<div class="col-md-8">
									
									<div class="input-group py-2">
										<input id="individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14	" type="search" placeholder="Search here" style="border-right: none !important; height: 35px;">
										<div class="input-group-append">
											<button class="btn theme_bg removefocus border_except_left px-4 d-flex justify-content-center align-items-center f-12 text-white font-weight-bold" type="button" style="height: 35px;">
												<i class="fa fa-search f-16 mr-2 text-white"></i> SEARCH
											</button>
										</div>
									</div>
										
									</div>
								</div>
							
							<div class="before-search">
								<div class="row cream-white py-2 px-5 theme_solid_border_bottom">
									<button class="theme_solid_border bg-white brown-grey rounded f-12 mr-2" id="2bhk" style="min-width: 90px; height: 25px;">2 BHK Flats</button>
									<button class="theme_solid_border bg-white brown-grey rounded f-12 mr-2" id="badWord" style="min-width: 90px; height: 25px;">Bad Words</button>
									<button class="theme_solid_border bg-white brown-grey rounded f-12 mr-2" id="expensiveFlat" style="min-width: 90px; height: 25px;">Expensive Flats</button>	
								</div>
								
								<div class="d-flex flex-column justify-content-center align-items-center pt-115 " style="min-height: 508px;">
									<img src="<%=baseURL %>assets/image/custom-report.svg" alt="custom report" class="pb-20" height="111.3" width="119.7">
									<div class="f-16 fw-500 ">Make a custom report</div>
									<div class="f-12 brownish-grey">Lorem Ipsum is simply
										dummy text of the printing and typesetting industry.</div>
								</div>
							</div>
							
							
							<div class="after-search  ">
								<div class="row cream-white py-2 px-5 theme_solid_border_bottom justify-content-between align-items-center">
								<div class="col-md-6 d-flex">
									<div class="text-result-found	border-right-separation pr-4">
										<strong class="number-of-results">04</strong> Results Found
									</div>
									<div class="ml-4">
										<button class="theme_solid_border bg-white brown-grey rounded f-12 position-relative" style="min-width: 90px; height: 25px;">2 BHK Flats
										<i class="fas fa-times-circle brown-grey f-14" style="position: absolute; right: -7px; top: 5px;"></i>
										</button>
										
									</div>
								</div>
								
								<div class="col-md-2 text-right">
									<button type="submit" class="btn theme_color f-14 font-weight-bold ">Reset</button>
									<button type="button" class="btn small_outline_button font-weight-bold rounded-0 f-12" id="save" onclick="save()">SAVE</button>
								</div>
								</div>
								
								<div class="row"  style="min-height: 508px;">
									<div class="col-md-10" style="box-shadow: 0 8px 30px 0 rgba(0, 0, 0, 0.05);">
										<%for(int i=0;i<2;i++){ %>
										<div class="row">
											<div class="col-md-10">
												<div class="d-flex py-1">
													<img src="<%=baseURL%>assets/image/calltask.svg" height="22px" width="22px" class="mr-2"> 
													<div class="align-self-center border-right-separation pr-4 f-12">Call Task</div>
													<div class="ml-4 f-16 font-weight-bold">Accenture Consulting Inc.</div>
												</div>
												
												<div class="f-14 blue-black">Sed tempus odio eget lacus mattis scelerisque <span class="bg-light-pink px-2 font-weight-bold"> 2 Bhk</span> pellentesque pharetra elit non fringilla. Sed in libero diam. Pellentesque sem quam...</div>
												<p class=" brown-grey f-12 m-0 py-1 border_bottom_1_dashed">June 22, 2019 &nbsp;&nbsp; 02:45 PM</p>
											</div>
										</div>
										
										
										<%} %>
									
									</div>
									<div class="col-md-2 ">
										<div class="fw-500 f-16 greyish-brown pl-40 pr-40 py-2">Filters</div>
										<div class="d-flex  py-2 pl-40 pr-40">
												<label for="agent-radio" class="istar-radio-btn">
	                                            	<input type="radio" name="radio-button" id="agent-radio">
	                                             	<span class="istar-radio-btn-style"></span>
	                                             	<span class="fw-500 f-14 greyish-brown">Agents</span>
	                                         	</label>	
												<label for="lead-radio" class="ml-3 istar-radio-btn">
	                                            	<input type="radio" name="radio-button" id="lead-radio">
	                                             	<span class="istar-radio-btn-style"></span>
	                                             	<span class="fw-500 f-14 greyish-brown">Leads</span>
	                                         	</label>	
										</div>
										
										<div class="input-group date custom-calendar ml-40 mr-40 my-2">
											<input type="text" id="lead_qualified_datepicker"
												class="form-control  custom-dateselect" value="12-02-2012">
											<div class="input-group-addon px-1"
												onclick="showqualifiedCalendar()">
												<img src="<%=baseURL%>/assets/image/calendar.svg" alt="calendar"/>
											</div>
										</div>
										
										
									
										<div class="d-inline-block istar-dropdown-task select_focus ml-40 mr-40 my-2">
											<button class="istar-dropdown-arrow dropdown-toggle"
												id="custom_report_activity" data-toggle="dropdown" aria-haspopup="true"
												aria-expanded="false">
												<span class="sr-only">Toggle Dropdown</span> Filter by
												Activities 
												<img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
														class=" float-right">
											</button>
											<div
												class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="custom_report_activity">
												<button class="dropdown-item" type="button">
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
										
										<div class="d-inline-block istar-dropdown-task select_focus ml-40 mr-40 my-2">
											<button class="istar-dropdown-arrow dropdown-toggle"
												id="custom_report_stage" data-toggle="dropdown" aria-haspopup="true"
												aria-expanded="false">
												<span class="sr-only">Toggle Dropdown</span>Filter by Stages
												<img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
														class=" float-right">
											</button>
											<div
												class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="custom_report_stage">
												<button class="dropdown-item" type="button">
													 Stage 1
												</button>
												<button class="dropdown-item" type="button">
													stage 2
												</button>
											</div>
										</div>
	
										<div class="d-inline-block istar-dropdown-task select_focus ml-40 mr-40 my-2">
											<button class="istar-dropdown-arrow dropdown-toggle"
												id="custom_report_persona" data-toggle="dropdown" aria-haspopup="true"
												aria-expanded="false">
												<span class="sr-only">Toggle Dropdown</span>Filter by Persona
												<img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
														class=" float-right">
											</button>
											<div
												class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="custom_report_persona">
												<button class="dropdown-item" type="button">
													 Persona 1
												</button>
												<button class="dropdown-item" type="button">
													Persona 2
												</button>
											</div>
										</div>

										<div class="d-inline-block istar-dropdown-task select_focus ml-40 mr-40 my-2">
											<button class="istar-dropdown-arrow dropdown-toggle"
												id="custom_report_product" data-toggle="dropdown" aria-haspopup="true"
												aria-expanded="false">
												<span class="sr-only">Toggle Dropdown</span>Filter by Product
												<img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
														class=" float-right">
											</button>
											<div
												class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="custom_report_product">
												<button class="dropdown-item" type="button">
													 Product 1
												</button>
												<button class="dropdown-item" type="button">
													Product 2
												</button>
											</div>
										</div>

										<button type="button" class="btn small_outline_button font-weight-bold rounded-0 f-12 ml-40 mr-40 my-2" id="custom_filter_apply" onclick="apply_filter()"
											style="width:100px;">APPLY</button>

									</div>
								</div>
								
								
								
							</div>
							
							
							
						<!-- end of custom_report tab content -->

					</div>
					
					
				</div>

			</div>
		</div>
	</main>


	<script src="<%=baseURL%>assets/js/jquery-3.4.1.min.js"></script>
	
	<script src="<%=baseURL%>assets/js/popper.min.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap.min.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap-datepicker.min.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap-datepicker.min.js"></script>
	<script src="<%=baseURL%>assets/js/highcharts.js"></script>
	<script src="<%=baseURL%>assets/js/exporting.js"></script>
	<script src="<%=baseURL%>assets/js/pagination.min.js"></script>
	<script src="<%=baseURL%>assets/js/salesken.js"></script>
	<script>
	$( document ).ready(function() {
		$( ".objections" ).click(function() {
			 location.href=location.protocol+'//'+location.host+'/landing/customerobjection.jsp';
			});
		$($('.reportcol>.border-right-dashed-separation').last()).addClass('border-0');
		$('.salesken.navbar-nav>li').removeClass('active');
		$($('.salesken.navbar-nav>li')[3]).addClass('active');
		$('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
			  var target = $(e.target).html(); // activated tab
			  $('#breadcrumb').html(target);
			});
		
		$('.page').Pagination({ // id to initial draw and use pagination
            size: 87, // size of list input
            pageShow: 5, // 5 page-item per page
            page: 1, // current page (default)
            limit: 10, // current limit show perpage (default)
    	}, function(obj){ // callback function, you can use it to re-draw table or something
            	console.log(obj)
    	});
		$('#user_datepicker').datepicker({autoclose:true});
		$('#timeline_datepicker').datepicker({autoclose:true});
		
		
		
		$('.dropdown-menu').click(function(e) {
		    e.stopPropagation();
		});
			
		$('.filtertabs>li>.nav-link').click(function(e) {
			
			$($(this).attr('href')+'-tab').tab('show')
		});
		
		
		$('#task_team_submit').click(function(e) {
			var agent_array=[];
			var team_array=[];
			
			$('.taskagentcheckbox').each(function(){
				if($(this).prop('checked')===true){
					agent_array.push($(this).data('id'));
				}
			});
			$('.taskteamcheckbox').each(function(){
				if($(this).prop('checked')===true){
					team_array.push($(this).data('id'));
				}
			});
			
			if(agent_array.length==0 && team_array.length==0){
				alert("Please select atleast one");
			}else{
				$('#task_dropdown').dropdown('hide');
			}
			console.log(agent_array)
			console.log(team_array)
				

		});
			
		
		 $('#timeline_team_submit').click(function(e) {
				var agent_array=[];
				var team_array=[];
				
				$('.timelineagentcheckbox').each(function(){
					if($(this).prop('checked')===true){
						agent_array.push($(this).data('id'));
					}
				});
				$('.timelineteamcheckbox').each(function(){
					if($(this).prop('checked')===true){
						team_array.push($(this).data('id'));
					}
				});
				
				if(agent_array.length==0 && team_array.length==0){
					alert("Please select atleast one");
				}else{
					$('#timeline_dropdown').dropdown('hide');
				}
				console.log(agent_array)
				console.log(team_array)

			});
		 
		 $(".after-search").hide();
		 $('#2bhk').click(function(e){
			 $(".before-search").hide();
			 $(".after-search").show();
		 });
		
	});
	function showCalendar(){
		$('#user_datepicker').datepicker('show')
	}
	function showTimelineCalendar(){
		$('#timeline_datepicker').datepicker('show')
	}
	
	function save(){
		$(".before-search").show();
		 $(".after-search").hide();
	}
	
	
	</script>
</body>
</html>