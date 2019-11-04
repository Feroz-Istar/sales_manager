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
<link rel="stylesheet" href="<%=baseURL%>assets/css/report.css">
<link href="<%=baseURL%>assets/css/bootstrap-datepicker3.min.css?xsww"
	rel="stylesheet">
<link rel="stylesheet" href="<%=baseURL%>assets/css/salesken_style_media_query.css">

</head>

<body data-base-url="<%=baseURL%>" onload="load()">
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
	
	<div class="row grey-white-bg align-items-center theme_solid_border_bottom m-0 pl-40 pr-40 pt-10 pb-10">
		<div class="col-md-6 col-12 d-flex align-items-center p-0"> 
		<div class="display-1 black f-20 border-right-separation pr-20 fw-500">Reports</div>
					<div class="f-12 brown-grey pl-20">Report</div>
					<i class="fas fa-chevron-circle-right f-12 brown-grey pl-2 pr-2"></i>
					<div class=" f-12 brown-grey  fw-500" id="breadcrumb">Task</div>
		
		</div>
	</div>
		<div class="row m-0">
			<div class="col-md-12 bg-white p-0">
				<ul class="nav nav-tabs nav-mytabs pl-40 pt-10 d-flex align-items-end" id="reportTab" role="tablist">
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
						<div class="row align-items-center  theme_solid_border_bottom m-0 pl-40 pr-40">
							<div class="col-md-3 text-result-found p-0">
								<strong class="number-of-results">04</strong> Results Found
							</div>
							<div class="col-md-9 d-md-flex justify-content-end p-0">
									
									<div class="istar-dropdown-task select_focus mr-10 mt-10 mb-10">
									<button class="istar-dropdown-arrow dropdown-toggle"
										id="task_activity" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										<span class="sr-only">Toggle Dropdown</span>All 
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
									
									<div class="istar-dropdown-task dropdown dropleft mt-10 mb-10" id="filterbutton">
										<button class="istar-dropdown-arrow "
										id="task_dropdown" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										<span class="sr-only">Toggle Dropdown</span> All Agents <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
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
						
						<div class="row cream_white m-0 theme_solid_border_bottom justify-content-between align-items-center pl-40 pr-40 pt-10 pb-10" id="insight_filter">
							<div class="col-md-10 d-flex p-0">
									<button class="theme_solid_border bg-white brown-grey rounded f-12 position-relative search-filter" >Filter 1
									<i class="fas fa-times-circle brown-grey f-14 cross-btn"></i>
									</button>
							</div>
							
							<div class="col-md-2 text-right p-0">
								<button type="submit" class="btn theme_color f-14 font-weight-bold p-0" id="insight_reset">Reset</button>
							</div>
						</div>
						
						<div class="row m-0 pl-40 pr-40">
						<%for(int i=0;i<12;i++){ %>
							<div class="col-md-4 d-flex align-items-center col_bordering minh-200 p-0 cursor-pointer" onclick="window.location.href = 'customerNoFollowUp.jsp'" >
								<div class="row w-100 m-0">
								<div class="col-md-8 p-0 pl-20 pr-20 align-self-center">
								<div><div class="font-weight-bold f-42" > 04</div>
								<div class="greyish-brown f-16 fw-500">No Follow - Ups</div>
								
								<div class="greyish-brown f-14">Next Steps/Follow up Action was not done in the calls</div>
								</div>
								</div>
								<div class="col-md-4 p-0 pr-20 text-center">
								<img src="<%=baseURL%>assets/image/report-no-followup.svg" width= "144.5" height= "126.9" class="mt-40 mb-40">
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

							
						<div class="row align-items-center  theme_solid_border_bottom m-0 pl-40 pr-40">
							<div class="col-md-3 text-result-found p-0">
								<strong class="number-of-results">04</strong> Results Found
							</div>
							<div class="col-md-9 d-md-flex justify-content-end  p-0 ">
									
									<div class="input-group date custom-calendar mr-10 mb-10 mt-10">
										<input type="text" id="user_datepicker" class="form-control  custom-dateselect"
											value="12-02-2012" placeholder="Calendar">
										<div class="input-group-addon" onclick="showCalendar()">
											<img src ="<%=baseURL%>/assets/image/calendar.svg"  alt="calendar" class="pr-1">
										</div>
									</div>	
									<div class="istar-dropdown-task select_focus mb-10 mt-10">
									<button class="istar-dropdown-arrow dropdown-toggle"
										id="pipeline_deal_value" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										<span class="sr-only">Toggle Dropdown</span>All Deal Value
										<img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
									</button>
									<div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="pipeline_deal_value">
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
					
					<div class="row cream_white m-0 theme_solid_border_bottom justify-content-between align-items-center pl-40 pr-40 pt-10 pb-10" id="user_filter">
							<div class="col-md-10 d-flex p-0">
									<button class="theme_solid_border bg-white brown-grey rounded f-12 position-relative search-filter">$1000
									<i class="fas fa-times-circle brown-grey f-14 cross-btn"></i>
									</button>
							</div>
							
							<div class="col-md-2 text-right p-0">
								<button type="submit" class="btn theme_color f-14 font-weight-bold p-0" id="user_reset">Reset</button>
							</div>
						</div>
					
					<div class="row shadow-bottom theme_dotted_border_bottom  pt-25 pb-25 m-0">
							<div class="pl-40 pr-115 ">
								<div class="f-24 blue-black font-weight-bold">$ <span class="theme_color">5625</span> </div>
								<div class="f-14 brown-grey ">Achieved Value</div>
							</div>
							<div class="pr-115">
								<div class="f-24 blue-black font-weight-bold">$ 85625 </div>
								<div class="f-14 brown-grey ">Pipeline Value </div>
							</div>
							<div class="pr-115">
								<div class="f-24 blue-black font-weight-bold">85%</div>
								<div class="f-14 brown-grey ">Confident</div>
							</div>
							<div class="pr-115 ">
								<div class="f-24 blue-black font-weight-bold">28%</div>
								<div class="f-14 brown-grey ">Utilisation</div>
							</div>
							<div class="pr-115">
								<div class="f-24 blue-black font-weight-bold">78%</div>
								<div class="f-14 brown-grey ">Talk Ratio</div>
							</div>
							<div class="pr-115">
								<div class="f-24 blue-black font-weight-bold">689</div>
								<div class="f-14 brown-grey ">Won Leads</div>
							</div>
							<div class="p-0">
								<div class="f-24 blue-black font-weight-bold">234</div>
								<div class="f-14 brown-grey ">Lost Leads</div>
							</div>
						</div>
					
					
					<div class="row cream_white m-0">
						<div class="col-md-12 p-0 pt-20">
							<%for(int i=0;i<4;i++){ %>
							<div class="card mb-20 mr-40 ml-40 cursor-pointer"  onclick="window.location.href = 'customerUser.jsp'">
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
												<div class="col-md-2 p-0">
													<div class="f-30 blue-black font-weight-bold">25%</div>
													<div class="f-12 brown-grey">Win Rate</div>
												</div>
												<div class="col-md-2 p-0">
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
											<!-- <div class="progress pipeline_progress report_pipeline mt-15">
													<div class="progress-bar bg_green" role="progressbar" style="width: 55%" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100"></div>
													<div class="progress-bar  bg_blue" role="progressbar" style="width: 40%" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100"></div>
													<div class="progress-bar   bg-info" role="progressbar" style="width: 15%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>
											</div> -->
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
														<button type="button" class="btn  rounded-0 f-12 mr-1 mb-1 font-weight-bold report-signal-bg">Introduction</button>
														<button type="button" class="btn  rounded-0 f-12 mr-1 mb-1 font-weight-bold report-signal-bg">Introduction</button>
														<button type="button" class="btn  rounded-0 f-12 mr-1 mb-1 font-weight-bold report-signal-bg">Introduction</button>
														<button type="button" class="btn  rounded-0 f-12 mr-1 mb-1 font-weight-bold report-signal-bg">Introduction</button>
														<button type="button" class="btn  rounded-0 f-12 mr-1 mb-1 font-weight-bold report-signal-bg">Introduction</button>
													</div>
												</div>
												<div class="col-md-6 p-0">
													<div class="font-weight-bold f-12 brownish-grey d-flex mb-10">Weak <i class="fal fa-info-circle f-16 soft-blue align-self-center ml-1"></i></div>
													<div class="strong-signal w-100 d-flex flex-wrap">
														<button type="button" class="btn  rounded-0 f-12 mr-1 mb-1 font-weight-bold report-signal-bg">Introduction</button>
														<button type="button" class="btn  rounded-0 f-12 mr-1 mb-1 font-weight-bold report-signal-bg">Introduction</button>
														<button type="button" class="btn  rounded-0 f-12 mr-1 mb-1 font-weight-bold report-signal-bg">Introduction</button>
														<button type="button" class="btn  rounded-0 f-12 mr-1 mb-1 font-weight-bold report-signal-bg">Introduction</button>
														<button type="button" class="btn  rounded-0 f-12 mr-1 mb-1 font-weight-bold report-signal-bg">Introduction</button>
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
					<div class="tab-pane fade minh-700" id="customer" role="tabpanel"
						aria-labelledby="customer-tab">

						<!-- start of customer tab content-->

						<div class="row align-items-center theme_solid_border_bottom m-0">
							<div class="col-md-3 text-result-found p-0 pt-15 pb-15 pl-40">
								<strong class="number-of-results">04</strong> Results Found
							</div>
							
						</div>
						

						<div class="row m-0 border-bottom-dashed-separation ml-40 mr-40">
						
							<div class="col-md-3 col_bordering4 p-0 m-0 d-md-flex align-items-center objections cursor-pointer minh-200" >
							<div class=" w-100 d-flex align-items-center">
								<div class="col-md-9 p-0 pl-15">
								<div class="font-weight-bold f-42 greyish-brown"> 05</div>
								<div class="greyish-brown f-14 fw-500">Objection</div>
								</div>
								<div class="col-md-3  p-0 m-0 pr-15 ">
								<img src="<%=baseURL%>assets/image/objection.svg" width=" 93.8" height=" 87.2" class="mt-30 mb-30">
								</div>
								</div>
							</div>
							<div class="col-md-3 col_bordering4 p-0 m-0 d-md-flex align-items-center cursor-pointer minh-200"  onclick="window.location.href = 'customerfeedback.jsp'" >
							<div class=" w-100 d-flex align-items-center">
								<div class="col-md-9 p-0 pl-15">
								<div class="font-weight-bold f-42 greyish-brown"> 05</div>
								<div class="greyish-brown f-14 fw-500">Feedback</div>
								</div>
								<div class="col-md-3  p-0 m-0 pr-15 ">
								<img src="<%=baseURL%>assets/image/objection.svg" width=" 93.8" height=" 87.2" class="mt-30 mb-30">
								</div>
								</div>
							</div>
							<div class="col-md-3 col_bordering4 p-0 m-0 d-md-flex align-items-center cursor-pointer minh-200"  onclick="window.location.href = 'customerNeedsConcern.jsp'" >
							<div class=" w-100 d-flex align-items-center">
								<div class="col-md-9 p-0 pl-15">
								<div class="font-weight-bold f-42 greyish-brown"> 05</div>
								<div class="greyish-brown f-14 fw-500">Need & Concern</div>
								</div>
								<div class="col-md-3  p-0 m-0 pr-15 ">
								<img src="<%=baseURL%>assets/image/objection.svg" width=" 93.8" height=" 87.2" class="mt-30 mb-30">
								</div>
								</div>
							</div>
							<div class="col-md-3 col_bordering4 p-0 m-0 d-md-flex align-items-center objections cursor-pointer minh-200" >
							<div class=" w-100 d-flex align-items-center">
								<div class="col-md-9 p-0 pl-15">
								<div class="font-weight-bold f-42 greyish-brown"> 05</div>
								<div class="greyish-brown f-14 fw-500">Attributes</div>
								</div>
								<div class="col-md-3  p-0 m-0 pr-15 ">
								<img src="<%=baseURL%>assets/image/objection.svg" width=" 93.8" height=" 87.2" class="mt-30 mb-30">
								</div>
								</div>
							</div>
							
							
						</div>
						<!-- end of customer tab content -->

					</div>
					<div class="tab-pane fade" id="time_analysis" role="tabpanel"
						aria-labelledby="time_analysis-tab">

						<!-- start of time analysis tab content -->

						<div class="card border-0 card-shadow-bottom">
							<div class="card-body p-0 pt-20 pb-20	">
								<div class="d-flex"	>
								<%for(int i=0;i<5;i++){ %>
									<div class="pl-40">
										<div class="f-14 fw-500 greyish-brown pb-10">Pipeline Stage 0<%=i+1 %></div>
										<div class="d-flex">
											<img src="<%=baseURL %>assets/image/calltask.svg" class="hw-40 mr-10">
											<img src="<%=baseURL %>assets/image/calltask.svg" class="hw-40 mr-10">
										</div>
									</div>
								<%} %>
								</div>

							</div>

						</div>
						
						<!-- start of overall analysis -->
						<div class="overall_analysis">
						<div class="row m-0 theme_dashed_border_bottom pl-40 pr-40 pt-20 pb-20">
						<div class="col-md-4 p-0 overall_title">
						<h5 class="f-20 fw-500 black">Overall Analysis</h5>
						
						</div>
						<div class="col-md-8 d-flex justify-content-end p-0">
							<div class="input-group date custom-calendar mr-10">
										<input type="text" id="timeline_datepicker" class="form-control  custom-dateselect"
											value="12-02-2012" placeholder="Calendar">
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
						
					
						<div class="row pt-4 m-0 pt-25 pb-25 pl-60 pr-60  position-relative" >
						
							<div class="line-style">
							</div>
							<div class="col-md-3 p-0">
								<div class="theme_bg rounded-circle hw-10"></div>
								<div class="very-light-pink f-20 font-weight-bold">25%</div>
							</div>
							<div class="col-md-3 p-0">
								<div class="theme_bg rounded-circle hw-10"></div>
								<div class="very-light-pink f-20 font-weight-bold">50%</div>
							</div>
							<div class="col-md-3 p-0">
								<div class="theme_bg rounded-circle hw-10"></div>
								<div class="very-light-pink f-20 font-weight-bold">75%</div>
							</div>
							<div class="col-md-3 p-0">
								<div class="theme_bg rounded-circle hw-10"></div>
								<div class="very-light-pink f-20 font-weight-bold">100%</div>
							</div>
						</div>					
						
						<div class="d-flex flex-wrap pl-60 pr-60 pb-20">
							<%for(int i=0;i<16;i++){ %>
							<div class="col-md-3 p-0 pb-20 pr-60">
							<div class=" dropdown dropright">
							
								<button class="btn p-0  w-100 signal_details"
									id="signal_details" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="true" data-display="static">
									<div class="progress rounded p-0 progress-box">
							
									<div class="progress-bar progress-bar-striped bg-purple pl-2" role="progressbar" style="width: 50%; text-align: left;" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100">
										<div class="font-weight-bold f-12 purple">Introduction</div>
										<div class="fw-900 f-22 purple">50%</div>
									</div>
								
									</div>
							</button>
							
						<div
							class="dropdown-menu dropdown-menu-right arrow-right p-0"
							aria-labelledby="signal_details">

							<div class="card  pt-20 pr-20 pl-20 " style="min-width: 260px;">
								<div class="card-body border-0 p-0">
										
											<div class="d-flex pb-25">
												<div class="col-md-11 p-0 f-16 black fw-500"> Introduction Break-up</div>
												<div class="col-md-1 p-0">
													<img alt="close" src="<%=baseURL %>assets/image/close.svg" class="cursor-pointer close-signal">
												</div>
											</div>
										
											<%for(int j=0;j<4;j++){ %>
											<div class="theme_dotted_border_bottom pb-15">
												<div class=" greyish-brown f-18 font-weight-bold">30%</div>
												<div class="brownish-grey f-12">Hello Sir, I am calling from United Tech, Is it good time to speak ?</div>
											</div>
											<%} %>
								</div>
								
							</div>
						</div>
					</div>
							
							</div>
							<%} %>
						</div>
						</div>
						<!-- end of overall analysis -->



						<!-- start of Comparative Analysis -->
						
						
						<div class="comparative_analysis">
						<div class="row m-0 theme_dashed_border_bottom pl-40 pr-40 pt-20 pb-20">
						<div class="col-md-4 p-0">
						<h5 class="f-20 fw-500 black">Comparative Analysis</h5>
						
						</div>
						<div class="col-md-8 d-flex justify-content-end p-0">
							<div class="input-group date custom-calendar mr-10">
										<input type="text" id="timeline_comparative_datepicker" class="form-control  custom-dateselect"
											value="12-02-2012" placeholder="Calendar">
										<div class="input-group-addon" onclick="showTimelineComparativeCalendar()">
											<img src ="<%=baseURL%>/assets/image/calendar.svg"  alt="calendar" class="pr-1">
										</div>
									</div>	
								<div class="istar-dropdown-task select_focus mr-10">
									<button class="istar-dropdown-arrow dropdown-toggle"
										id="timeline_comparative_persona" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										<span class="sr-only">Toggle Dropdown</span>All Persona
										<img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
												class=" float-right">
									</button>
									<div
										class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="timeline_comparative_persona">
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
										id="timeline_comparative_success" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										<span class="sr-only">Toggle Dropdown</span>Filter by Success
										<img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
												class=" float-right">
									</button>
									<div
										class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="timeline_comparative_success">
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
										id="timeline_comparative_dropdown" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										<span class="sr-only">Toggle Dropdown</span>All Agents <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
												class=" float-right">
										</button>
										 <div class="dropdown-menu filter-menu dropdown-menu-lg-right position-absolute px-4" aria-labelledby="timeline_comparative_dropdown" style="width:350px">
													
												<ul class="nav nav-tabs nav-mytabs filtertabs pt-2" id="timeline_comparativeTab" role="tablist">
												  <li class="nav-item">
												    <a class="nav-link active" id="timeline_comparative_individual-tab" data-toggle="tab" href="#timeline_comparative_individual" role="tab" aria-controls="timeline_comparative_individual" aria-selected="true">Individual</a>
												  </li>
												  <li class="nav-item">
												    <a class="nav-link" id="timeline_comparative_team-tab" data-toggle="tab" href="#timeline_comparative_team" role="tab" aria-controls="timeline_comparative_team" aria-selected="false">Team</a>
												  </li>
												 
												</ul>
												<div class="tab-content" id="myTabContent">
												  <div class="tab-pane fade show active px-4 py-3" id="timeline_comparative_individual" role="tabpanel" aria-labelledby="timeline_comparative_individual-tab">
												  		<div class="input-group py-2">
															<input id="timeline_comparative_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
															<div class="input-group-append">
																<button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
																	<i class="fa fa-search f-12 brown-grey"></i>
																</button>
															</div>
														</div>
														
														<div class=" mb-2"  style="height:370px; overflow-x: hidden; overflow-y:auto;">
														
														<%for(int i=0; i<20;i++){ %>
					                                    <div class="d-flex align-items-center pt-3">
					                                    
					                                    
									<input class="istar-checkbox timeline_comparativeagentcheckbox" data-id="<%=i %>" id="timeline_comparative_associate-checkbox<%=i %>" type="checkbox">
					                                        <label class="istar-checkbox-style" for="timeline_comparative_associate-checkbox<%=i %>"></label>
											<img alt="Lead Image" title="Lead Name" src ="<%=baseURL%>/assets/image/11.png" class="rounded-circle ml-3 mr-2 hw-40">
										  <div>
					                                        	<div class="f-14 font-weight-bold greyish-brown text-truncate" title="Robert Garcia">Robert Garcia</div>
					                                        	<div class="f-12  brownish-grey text-truncate" title="team">Team -02</div>
					                                        </div>
										</div>
										<%} %>
					                                    </div>
					                                    
					                                     		
					                                 </div>
					                                			                                 
												  <div class="tab-pane fade px-4 py-3" id="timeline_comparative_team" role="tabpanel" aria-labelledby="timeline_comparative_team-tab">
												  		
												  		<div class="input-group py-2">
															<input id="timeline_comparative_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
															<div class="input-group-append">
																<button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
																	<i class="fa fa-search f-12 brown-grey"></i>
																</button>
															</div>
														</div>
														
														<div class="mb-2" style="height:370px; overflow-x: hidden; overflow-y:auto;">
														<%for(int j=0; j<20;j++){ %>
														<div class="d-flex align-items-center pt-3">
					                                        <input class="istar-checkbox timeline_comparativeteamcheckbox" data-id="<%=j %>" id="timeline_comparative_team-checkbox<%=j %>" type="checkbox">
					                                        <label class="istar-checkbox-style" for="timeline_comparative_team-checkbox<%=j%>"></label>
					                                        <div class="f-12 ml-2 brownish-grey">Team -0<%=j%></div>
					                                    </div>
					                                    <%} %>
					                                    </div>
					                                    
					                                     	
												  		
												  </div>
												</div>
												 <div class="w-100 text-center">
												 <button class="btn  rounded-0 theme_bg text-white f-14 font-weight-bold mb-3 text-center px-3" style="min-width:200px;" id="timeline_comparative_team_submit">Submit</button>
												</div>
										  </div>
										
									</div> 
						</div>
						</div>
						
						<div class="row pt-4 m-0 pt-25 pb-25 pl-60 pr-40 ">
								<div class="col-md-3 d-flex p-0 align-items-center">
										<div class="d-flex align-items-center">
										<img class="rounded-circle hw-60 position-relative mr-20" src="<%=baseURL%>assets/image/37.jpg">
										<div class="rounded-circle hw-50 bg-purple f-16 text-white border-white d-flex align-items-center justify-content-center font-weight-bold"
											style="position:absolute;left:46px;">80%</div>
										<div class="d-flex flex-column pl-30">				
											<div class="brownish-grey f-16">Brittany Kim</div>
											<div class="brown-grey f-12">Team 01</div>
										</div>
										</div>
								</div>
								<div class="col-md-3 p-0">
									<div class="d-flex align-items-center">
										<img class="rounded-circle hw-60 position-relative mr-20" src="<%=baseURL%>assets/image/37.jpg">
										<div class="rounded-circle hw-50 theme_bg f-16 text-white border-white d-flex align-items-center justify-content-center font-weight-bold"
											style="position:absolute;left:46px;">20%</div>
										<div class="d-flex flex-column pl-30">				
											<div class="brownish-grey f-16">Brittany Kim</div>
											<div class="brown-grey f-12">Team 01</div>
										</div>
										</div>
								</div>
								<div class="col-md-6 d-flex p-0 justify-content-end align-items-center">
									<button class="btn theme_color f-12 font-weight-bold reset p-0 pt-15 pb-15 pl-15">Reset</button>
								</div>
						</div>
						
						
						
							<div class="row pt-4 m-0 pt-25 pb-25 pl-60 pr-60 position-relative" >
								<div class="line-style">
								</div>
								<div class="col-md-3 p-0">
									<div class="theme_bg rounded-circle hw-10"></div>
									<div class="very-light-pink f-20 font-weight-bold">25%</div>
								</div>
								<div class="col-md-3 p-0">
									<div class="theme_bg rounded-circle hw-10"></div>
									<div class="very-light-pink f-20 font-weight-bold">50%</div>
								</div>
								<div class="col-md-3 p-0">
									<div class="theme_bg rounded-circle hw-10"></div>
									<div class="very-light-pink f-20 font-weight-bold">75%</div>
								</div>
								<div class="col-md-3 p-0">
									<div class="theme_bg rounded-circle hw-10"></div>
									<div class="very-light-pink f-20 font-weight-bold">100%</div>
								</div>
							</div>	
						
						<%for(int l=0;l<4;l++){ %>
						<div class="theme_dashed_border_bottom pt-20 pb-20 ml-30 mr-30">
						<%for(int i=0; i<2; i++){ %>
						
						<div class="row pt-10 m-0">
							<div class="theme_bg h-100 w-10 mt-2 mb-2 mr-10" style="width:10px; border-radius:10%; height: 40px !important;"> </div>
							
							<%for(int j=0;j<3;j++){ %>
							<div class="col-md-3 p-0 pr-50">
							<div class=" dropdown dropright">
								<button class="btn p-0  w-100 signal_details" id="signal_details" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="true" data-display="static">
									<div class="progress rounded p-0 progress-box">
							
										<div class="progress-bar progress-bar-striped bg-purple pl-2" role="progressbar" 
											style="width: 50%; text-align: left;" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100">
											<div class="font-weight-bold f-12 purple">Introduction</div>
											<div class="fw-900 f-22 purple">50%</div>
										</div>
								
									</div>
								</button>
							
								<div class="dropdown-menu dropdown-menu-right arrow-right p-0"
									aria-labelledby="signal_details">
		
									<div class="card pt-20 pr-20 pl-20" style="min-width: 260px;">
										<div class="card-body border-0 p-0">
											<div class="d-flex pb-25">
												<div class="col-md-11 p-0 f-16 black fw-500"> Introduction Break-up</div>
												<div class="col-md-1 p-0">
													<img alt="close" src="<%=baseURL%>assets/image/close.svg" class="cursor-pointer close-signal">
												</div>
											</div>
											<%for(int k=0;k<4;k++){ %>
											<div class="theme_dotted_border_bottom pb-15">
												<div class=" greyish-brown f-18 font-weight-bold">30%</div>
												<div class="brownish-grey f-12">Hello Sir, I am calling from United Tech, Is it good time to speak ?</div>
											</div>
											<%} %>
										</div>
										
									</div>
								</div>
							</div>
							
							</div>
							<%} %>
						</div>
						<%} %>
						</div>
						<%} %>
						</div>
						<!-- end of Comparative analysis -->
						
						
						
						<!-- end of time analysis content -->

					</div>
					
					
					
					
					<div class="tab-pane fade minh-700" id="roi_calculator" role="tabpanel"
						aria-labelledby="roi_calculator-tab">

						<!-- start of roi_calculator tab content-->

					<div class="row align-items-center theme_solid_border_bottom m-0 pl-40 pr-40 pt-15 pb-15">
							<div class="col-md-3 text-result-found p-0">
								<strong class="number-of-results">04</strong> Results Found
							</div>
							
						</div>
						
						<div class="row cream_white m-0">
							<div class="col-md-12 p-0">
							<div class="card mt-25 mb-25 ml-40 mr-40 shadow">
								<div class="card-body p-0">
								<div class="row m-0 pl-30 pt-30 pb-30 pr-30 justify-content-between">
									<div class="col-md-3 theme_dashed_border_right_2 p-0">
										<div class="d-flex align-items-center">
												<div class="col-md-3 p-0">
													<img src="http://localhost:8080/assets/image/objection.svg" width=" 93.8" height=" 87.2" class="">
												</div>
												
												<div class="col-md-9 p-0 ml-15">
													<div class="fw-300 brownish-grey f-30"><span class="greyish-brown font-weight-bold f-30 pr-2">08</span>h  <span class="font-weight-bold greyish-brown f-30 pr-2 pl-15">34</span>m<span class="font-weight-bold greyish-brown f-30 pr-2 pl-15">12</span>s</div>
													<div class="f-12 brownish-grey">Time Spent</div>
												</div>
										</div>
									</div>
									<div class="col-md-5 theme_dashed_border_right_2 p-0">
										<div class="row align-items-center justify-content-between m-0 h-100 pr-40">
											<div class="">
												<div class="font-weight-bold f-30 greyish-brown">
													28%
												</div>
												<div class="f-14 brownish-grey">Cue Uptake</div>
											</div>
											<div class="">
												<div class="font-weight-bold f-30 greyish-brown">
												68
												</div>
											<div class="f-14 brownish-grey">Daily Active Users</div>
											</div>
											<div class="">
												<div class="font-weight-bold f-30 greyish-brown">
													25%
												</div>
												<div class="f-14 brownish-grey">Playbook Adherence</div>
											</div>
										</div>
									</div>
									<div class="col-md-3 p-0">
										<div class="f-12 brownish-grey"><span class="font-weight-bold f-30 greyish-brown">38%</span> Utilisation</div>
										
										<div class=" v-progress-bar-container_report mt-2	">
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
									</div>
								</div>
							</div>
							</div>
						</div>


						<div class="row m-0 border-bottom-dashed-separation ml-40 mr-40 ">
						
							<%for(int i=0;i<4;i++){ %>
							<div class="col-md-3 col_bordering4 p-0 m-0 d-md-flex align-items-center objections cursor-pointer minh-200" >
							<div class=" w-100 d-flex">
								<div class="col-md-8 pl-4">
								<div class="font-weight-bold f-42 greyish-brown"> 05</div>
								<div class="greyish-brown f-14 fw-500">Upsell Cues</div>
								
								</div>
								<div class="col-md-4 p-0">
								<img src="<%=baseURL%>assets/image/objection.svg" width=" 93.8" height=" 87.2" class="">
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
							
							<div class="row justify-content-center pt-20 pb-20 shadow-bottom theme_solid_border_bottom m-0">
								<div class="col-md-8 p-0">
									<div class="input-group">
										<input id="individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14	" type="search" placeholder="Search here" style="border-right: none !important; height: 35px;">
										<div class="input-group-append">
											<button class="btn theme_bg border_theme removefocus border_except_left px-4 d-flex justify-content-center align-items-center f-12 text-white font-weight-bold" type="button" style="height: 35px;">
												<i class="fa fa-search f-16 mr-2 text-white"></i> SEARCH
											</button>
										</div>
									</div>
								</div>
							</div>
							
							<div class="before-search">
								<div class="row cream-white m-0 theme_solid_border_bottom pt-10 pb-10 pr-40 pl-40">
									<button class="theme_solid_border bg-white brown-grey rounded f-12 mr-10 " id="2bhk">2 BHK Flats</button>
									<button class="theme_solid_border bg-white brown-grey rounded f-12 mr-10 search-filter" id="badWord">Bad Words</button>
									<button class="theme_solid_border bg-white brown-grey rounded f-12 mr-10 search-filter" id="expensiveFlat">Expensive Flats</button>	
								</div>
								
								<div class="d-flex flex-column justify-content-center align-items-center pt-115 minh-500">
									<img src="<%=baseURL %>assets/image/custom-report.svg" alt="custom report" class="pb-20" height="111.3" width="119.7">
									<div class="f-16 fw-500 ">Make a custom report</div>
									<div class="f-12 brownish-grey">Lorem Ipsum is simply
										dummy text of the printing and typesetting industry.</div>
								</div>
							</div>
							
							
							<div class="after-search  ">
								<div class="row cream-white m-0 theme_solid_border_bottom justify-content-between align-items-center pl-40 pr-40 pt-10 pb-10">
									<div class="col-md-6 d-flex p-0">
										<div class="text-result-found border-right-separation pr-15">
											<strong class="number-of-results">04</strong> Results Found
										</div>
										<div class=" pl-15">
											<button class="theme_solid_border bg-white brown-grey rounded f-12 position-relative search-filter">2 BHK Flats
											<i class="fas fa-times-circle brown-grey f-14 cross-btn"></i>
											</button>
										</div>
									</div>
									
									<div class="col-md-2 text-right p-0">
										<button type="submit" class="btn theme_color f-14 font-weight-bold ">Reset</button>
										<button type="button" class="btn small_outline_button font-weight-bold rounded-0 f-12" id="save" onclick="save()">SAVE</button>
									</div>
								</div>
								
								<div class="row minh-500 m-0">
									<div class="col-md-10 shadow-right pl-30 pr-30">
										<%for(int i=0;i<2;i++){ %>
										<div class="row m-0">
											<div class="col-md-10 p-0">
												<div class="d-flex pb-15 pt-30">
													<img src="<%=baseURL%>assets/image/calltask.svg" height="22px" width="22px" class="mr-10"> 
													<div class="align-self-center border-right-separation f-12 pr-20">Call Task</div>
													<div class="f-16 font-weight-bold pl-20">Accenture Consulting Inc.</div>
												</div>
												
												<div class="f-14 blue-black pb-15">Sed tempus odio eget lacus mattis scelerisque <span class="bg-light-pink font-weight-bold"> 2 Bhk</span> pellentesque pharetra elit non fringilla. Sed in libero diam. Pellentesque sem quam...</div>
												<p class=" brown-grey f-12 m-0 pb-30 border_bottom_1_dashed">June 22, 2019 &nbsp;&nbsp; 02:45 PM</p>
											</div>
										</div>
										
										
										<%} %>
									
									</div>
									<div class="col-md-2 pt-20 pb-20 p-0">
										<div class="fw-500 f-16 greyish-brown pl-40 pr-40">Filters</div>
										<div class="d-flex  pt-30 pl-40 pr-40">
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
										
										<div class="input-group date custom-calendar ml-40 mr-40 mt-20">
											<input type="text" id="lead_qualified_datepicker"
												class="form-control  custom-dateselect" value="12-02-2012" placeholder="Calendar">
											<div class="input-group-addon px-1"
												onclick="showqualifiedCalendar()">
												<img src="<%=baseURL%>/assets/image/calendar.svg" alt="calendar"/>
											</div>
										</div>
										
										
									
										<div class="d-inline-block istar-dropdown-task select_focus ml-40 mr-40 mt-20">
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
										
										<div class="d-inline-block istar-dropdown-task select_focus ml-40 mr-40 mt-20">
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
	
										<div class="d-inline-block istar-dropdown-task select_focus ml-40 mr-40 mt-20">
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

										<div class="d-inline-block istar-dropdown-task select_focus ml-40 mr-40 mt-20">
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

										<button type="button" class="btn small_outline_button font-weight-bold rounded-0 f-12 ml-40 mr-40 mt-30 width-100" id="custom_filter_apply" onclick="apply_filter()"
											>APPLY</button>

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
		
		$('.close-signal').click(function(){
			$('.signal_details').dropdown('hide');
		})
		
		$('.comparative_analysis').hide();
		
		
		
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
		 
		 
		 $('#timeline_comparative_team_submit').click(function(e) {
				var agent_array=[];
				var team_array=[];
				
				$('.timeline_comparativeagentcheckbox').each(function(){
					if($(this).prop('checked')===true){
						agent_array.push($(this).data('id'));
					}
				});
				$('.timeline_comparativeteamcheckbox').each(function(){
					if($(this).prop('checked')===true){
						team_array.push($(this).data('id'));
					}
				});
				
				if(agent_array.length==0 && team_array.length==0){
					alert("Please select atleast one");
				}else{
					$('#timeline_comparative_dropdown').dropdown('hide');
				}
				console.log(agent_array)
				console.log(team_array)

			});
		 
		 $(".after-search").hide();
		 $('#2bhk').click(function(e){
			 $(".before-search").hide();
			 $(".after-search").show();
		 });
		 
		 $('#insight_reset').click(function(){
			 $('#insight_filter').hide();
		 });
		 $('#user_reset').click(function(){
			 $('#user_filter').hide();
		 });
		
		 
		
		$('.overall_title').click(function(){
			$('.comparative_analysis').show();
			$('.overall_analysis').hide();
		});
		
		$('.reset').click(function(){
			$('.overall_analysis').show();
			$('.comparative_analysis').hide();
		});
			
		 
		 
		
	});
	function showCalendar(){
		$('#user_datepicker').datepicker('show')
	}
	function showTimelineCalendar(){
		$('#timeline_datepicker').datepicker('show')
	}
	function showTimelineComparativeCalendar(){
		$('#timeline_comparative_datepicker').datepicker('show')
	}
	
	function save(){
		$(".before-search").show();
		 $(".after-search").hide();
	}
	
	
	</script>
</body>
</html>