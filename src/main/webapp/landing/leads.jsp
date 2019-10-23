<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Salesken - Leads</title>
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
<link rel="stylesheet" href="<%=baseURL%>assets/css/leads.css">
<link rel="stylesheet"
	href="<%=baseURL%>assets/css/dropzone.min.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/alertify.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/salesken_style_media_query.css">
<link rel="stylesheet" href="https://daneden.github.io/animate.css/animate.min.css">

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
			class="row grey-white-bg theme_solid_border_bottom align-items-center py-3 px-4">
			<div class="col-md-6 col-12 d-flex align-items-center">
				<div class="display-1 black f-20 border-right-separation pr-3 fw-500 ">Leads</div>
				<div class="pl-3 pr-2 f-12 brown-grey ">Dashboard</div>
				<i class="fas fa-chevron-circle-right pr-2 f-12 brown-grey"></i>
				<div class=" f-12 brown-grey fw-500" id="breadcrumb">Leads</div>

			</div>
			<div class="col-md-6 col-12 d-lg-flex justify-content-md-end ">
				<div class="input-group position-relative pl-2 pr-2 search_width">
				<i class="fa fa-search f-12 brown-grey searchBox" ></i>
					<input id=""
						class="form-control  custom-taskborder brown-grey  f-14 search_height custom-result-selects"
						type="search" placeholder="Search"
						style="padding-right:30px">
				</div>
				<button class="btn btn-style f-12" data-toggle="modal"
					data-target="#addLeadModalCenter">UPLOAD NEW</button>
			</div>
		</div>


		<div class="row mb-5">
			<div class="col-md-12 bg-white ">
				<ul class="nav nav-tabs nav-mytabs  pt-2 mx-4" id="reportTab" role="tablist">
					<li class="nav-item"><a class="nav-item nav-link active" id="nav-target-tab"
							data-toggle="tab" href="#nav-target" role="tab"
							aria-controls="nav-target" aria-selected="true">Target</a></li>
					<li class="nav-item"><a
							class="nav-item nav-link" id="nav-qualified-tab"
							data-toggle="tab" href="#nav-qualified" role="tab"
							aria-controls="nav-qualified" aria-selected="false">Qualified</a></li>
					<li class="nav-item"><a class="nav-item nav-link" id="nav-lost-tab" data-toggle="tab"
							href="#nav-lost" role="tab" aria-controls="nav-lost"
							aria-selected="false">Lost Leads</a></li>
						<li class="nav-item"><a class="nav-item nav-link"
							id="nav-win-tab" data-toggle="tab" href="#nav-win" role="tab"
							aria-controls="nav-win" aria-selected="false">Won Leads</a></li>
				</ul>
				<div class="tab-content p-0 mytab-content" id="nav-tabContent">
					<div class="tab-pane fade show active" id="nav-target"
						role="tabpanel" aria-labelledby="nav-target-tab">
						<!-- start of target content -->

						<div
							class="row align-items-center bg-white   theme_solid_border_bottom pt-3 pb-3 px-4">
							<div class="col-md-3 text-result-found	">
								<strong class="number-of-results">504</strong> Results Found
							</div>
							<div class="col-md-9 d-md-flex justify-content-end  ">

									<div class="istar-dropdown-task border-0 mr-2">
										<button class="dropdown-icon-btn dropleft custom-result-selects text-left" type="button" id="targetSourceType" 
												data-display="static" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
											<span class="sr-only">Toggle Dropdown</span>Filter by Source Type <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
												class=" float-right">
										</button>
										<div class="dropdown-menu istar-dropdown-task-menu custom-dropdown-width "
											aria-labelledby="targetSourceType">
											<button class="dropdown-item" type="button">Manual</button>
											<button class="dropdown-item" type="button">Offline</button>
											<button class="dropdown-item" type="button">Outbound</button>
										</div>
									</div>
										
										
										
										
								<div class="istar-dropdown-task mr-2 custom-taskborder select_focus">
									<button class="istar-dropdown-arrow dropdown-toggle "
										id="activity" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										<span class="sr-only">Toggle Dropdown</span> Filter by
										Activities <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
												class=" float-right">
									</button>
									<div
										class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu">
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
											<div class="dropdown dropleft" id="filterbutton">
										<button
											class="dropdown-icon-btn custom-result-selects text-left"
											id="target_dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 
											<span class="sr-only">Toggle Dropdown</span> Filter by
										User <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
												class=" float-right">
										</button>
										
										 <div class="dropdown-menu filter-menu dropdown-menu-lg-right position-absolute px-4 " aria-labelledby="target_dropdown" style="width:350px">
												
												<ul class="nav nav-tabs nav-mytabs filtertabs pt-2" id="targetTab" role="tablist">
												  <li class="nav-item">
												    <a class="nav-item nav-link active" id="target_individual-tab" data-toggle="tab" href="#target_individual" role="tab" aria-controls="target_individual" aria-selected="true">Individual</a>
												  </li>
												  <li class="nav-item">
												    <a class="nav-item nav-link" id="target_team-tab" data-toggle="tab" href="#target_team" role="tab" aria-controls="target_team" aria-selected="false">Team</a>
												  </li>
												 
												</ul>
												<div class="tab-content" id="targetTab-tabContent">
												  <div class="tab-pane fade show active px-4 py-3" id="target_individual" role="tabpanel" aria-labelledby="target_individual-tab">
												  		<div class="input-group py-2">
															<input id="target_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
															<div class="input-group-append">
																<button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
																	<i class="fa fa-search f-12 brown-grey"></i>
																</button>
															</div>
														</div>
														
														<div class=" mb-2"  style="height:370px; overflow-x: hidden; overflow-y:auto;">
														
														<%for(int i=0; i<20;i++){ %>
					                                    <div class="d-flex align-items-center pt-3">
					                                    
					                                    
									<input class="istar-checkbox targetagentcheckbox" data-id="<%=i %>" id="target_associate-checkbox<%=i %>" type="checkbox">
					                                        <label class="istar-checkbox-style" for="target_associate-checkbox<%=i %>"></label>
											<img alt="Agent Image" title="Agent Name" src ="<%=baseURL%>/assets/image/11.png" class="rounded-circle ml-3 mr-2 hw-40">
										  <div>
					                                        	<div class="f-14 font-weight-bold greyish-brown text-truncate" title="Robert Garcia">Robert Garcia</div>
					                                        	<div class="f-12  brownish-grey text-truncate" title="team">Team -02</div>
					                                        </div>
										</div>
										<%} %>
					                                    </div>
					                                    
					                                     		
					                                 </div>
					                                			                                 
												  <div class="tab-pane fade px-4 py-3" id="target_team" role="tabpanel" aria-labelledby="target_team-tab">
												  		
												  		<div class="input-group py-2">
															<input id="target_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
															<div class="input-group-append">
																<button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
																	<i class="fa fa-search f-12 brown-grey"></i>
																</button>
															</div>
														</div>
														
														<div class="mb-2" style="height:370px; overflow-x: hidden; overflow-y:auto;">
														<%for(int j=0; j<20;j++){ %>
														<div class="d-flex align-items-center pt-3">
					                                        <input class="istar-checkbox targetteamcheckbox" data-id="<%=j %>" id="target_team-checkbox<%=j %>" type="checkbox">
					                                        <label class="istar-checkbox-style" for="target_team-checkbox<%=j%>"></label>
					                                        <div class="f-12 ml-2 brownish-grey">Team -0<%=j%></div>
					                                    </div>
					                                    <%} %>
					                                    </div>
					                                    
					                                     	
												  		
												  </div>
												</div>
												 <div class="w-100 text-center">
												 <button class="btn  rounded-0 theme_bg text-white f-14 font-weight-bold mb-3 text-center px-3" style="min-width:200px;" id="target_team_submit">Submit</button>
												</div>
										  </div>
										
									</div> 

							</div>
						</div>

						<div class="row pl-0 py-4 shadow-bottom theme_dotted_border_bottom px-4 ">
							<div class="col-md-2">
								<div class="f-24 blue-black font-weight-bold">280</div>
								<div class="f-14 brown-grey font-weight-bold">New Leads</div>
							</div>
							<div class="col-md-2">
								<div class="f-24 blue-black font-weight-bold">156</div>
								<div class="f-14 brown-grey font-weight-bold">Engaged lead</div>
							</div>
							<div class="col-md-2">
								<div class="f-24 blue-black font-weight-bold">30 Hrs</div>
								<div class="f-14 brown-grey font-weight-bold">Average time
									spent</div>
							</div>
						</div>

						<div class="row align-items-center theme_solid_border_bottom py-4 px-4">
							<div class="col-md-2 col">
								<button class="btn p-0 black f-14 font-weight-bold">
									Company Name <i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
							<div class="col-md-2 col">
								<button class="btn p-0 black f-14 font-weight-bold">
									Email ID <i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
							<div class="col-md-2 col">
								<button class="btn p-0 black f-14 font-weight-bold">
									Contact No. <i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
							<div class="col-md-2 col ">
								<button class="btn p-0 black f-14 font-weight-bold">
									Lead Source <i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
							<div class="col-md-4 col-12 ">
								<button class="btn p-0 black f-14 font-weight-bold">
									Agent<i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
						</div>

						<%for(int i=0;i<5;i++){ 
							String bgcolor="bg-white";
			      			if(i%2!=0){
			      				bgcolor="very-light-pink-grey-bg";
			      			}
						%>
						<div
							class="row align-items-center theme_solid_border_bottom py-4 px-4 <%=bgcolor%>">
							<div class="col-md-2 col">
								<div class="f-14 fw-500 black text-truncate d-inline" title="Vehement Capital" data-toggle="tooltip" data-placement="bottom">Vehement Capital
									Partners</div>
								<div class="f-14 brownish-grey text-truncate d-table" title="Miriam Franklin"  data-toggle="tooltip" data-placement="bottom">Miriam Franklin</div>
							</div>
							<div class="col-md-2 col">
								<div class="f-14 brownish-grey text-break">
									infotech@gmail.com <i class="fas fa-info-circle soft-blue"></i>
								</div>
							</div>
							<div class="col-md-2 col">
								<div class="f-14 brownish-grey text-break">
									+91 445 546 6456 <i class="fas fa-info-circle soft-blue"></i>
								</div>
							</div>
							<div class="col-md-2 col ">
								<div class="f-14 brownish-grey text-truncate d-inline" title="Web Form" data-toggle="tooltip" data-placement="bottom">Web Form</div>
							</div>
							<div class="col-md-4 col-12 ">
								<div class="row  align-items-center">
									<div class="col-md-11">
										<div class="row">
											<img class="rounded-circle imgsize-40" alt="Lead Image"
												src="<%=baseURL%>assets/image/11.png">
											<div class="col-md-10">
												<div class="f-14 greyish-brown text-truncate d-inline" title="Stanley Howard"  data-toggle="tooltip" data-placement="bottom">Stanley Howard</div>
												<div class="f-12 brown-grey text-truncate d-table" title="Team 01" data-toggle="tooltip" data-placement="bottom">Team 01</div>
											</div>
										</div>
									</div>
									<div class="col-md-1">
										<div class="istar-dropdown dropleft">
											<button class="dropdown-icon-btn " type="button"
												id="dropdownMenuButton" data-display="static"
												data-toggle="dropdown" aria-haspopup="true"
												aria-expanded="false">
												<i class="fas fa-ellipsis-v f-12 brown-grey"></i>
											</button>
											<div
												class="dropdown-menu dropdown-menu-right istar-dropdown-menu"
												aria-labelledby="dropdownMenuButton">
												
												<button class="dropdown-item" onclick="openEditModal()">
													<img src="<%=baseURL%>assets/image/edit.svg" alt="edit"
														srcset="" class="mr-2">Edit
												</button>
												<button class="dropdown-item" href="#">
													<img src="<%=baseURL%>assets/image/delete.svg" alt="delete"
														srcset="" class="mr-2">Delete
												</button>
												<button class="dropdown-item"  onclick="window.location.href = 'task_lead_detail.jsp'">
													<img src="<%=baseURL%>assets/image/details.png" alt="details"
														srcset="" class="mr-2">Details
												</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<%} %>

						<div class="row py-4 pb-5 px-4 ">
							<div class="col-md-12  d-flex justify-content-end p-0">
								<div class="page">
									<ul class="salesken pagination mb-0"></ul>
								</div>
							</div>
						</div>
						<!-- end of target content -->
					</div>

					<div class="tab-pane fade" id="nav-qualified" role="tabpanel"
						aria-labelledby="nav-qualified-tab">

						<!-- start of qualified tab content-->

						<div
							class="row align-items-center theme_solid_border_bottom py-3 px-4">
							<div class="col-md-3 text-result-found	">
								<strong class="number-of-results">03</strong> Results Found
							</div>
							<div class="col-md-9 d-md-flex justify-content-end  ">
								<div class="input-group date custom-calendar">
									<input type="text" id="lead_qualified_datepicker"
										class="form-control  custom-dateselect" value="12-02-2012">
									<div class="input-group-addon px-1"
										onclick="showqualifiedCalendar()">
										<img src="<%=baseURL%>/assets/image/calendar.svg" alt="calendar"/>
									</div>
								</div>
									<div class="istar-dropdown-task border-0 mr-2">
										<button class="dropdown-icon-btn dropleft custom-result-selects text-left" type="button" id="qualifiedDealValue" 
												data-display="static" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
											<span class="sr-only">Toggle Dropdown</span> Filter by
										Deal Value <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
												class=" float-right">
										</button>
										<div class="dropdown-menu istar-dropdown-task-menu custom-dropdown-width "
											aria-labelledby="qualifiedDealValue">
											<button class="dropdown-item" type="button">Manual</button>
											<button class="dropdown-item" type="button">Offline</button>
											<button class="dropdown-item" type="button">Outbound</button>
										</div>
									</div>
									
							 		<div class="istar-dropdown-task border-0 mr-2">
										<button class="dropdown-icon-btn dropleft custom-result-selects text-left" type="button" id="qualifiedStage" 
												data-display="static" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
											<span class="sr-only">Toggle Dropdown</span> Filter by
										Stages <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
												class=" float-right">
										</button>
										<div class="dropdown-menu istar-dropdown-task-menu custom-dropdown-width "
											aria-labelledby="qualifiedStage">
											<button class="dropdown-item" type="button">Manual</button>
											<button class="dropdown-item" type="button">Offline</button>
											<button class="dropdown-item" type="button">Outbound</button>
										</div>
									</div>
								<div class="istar-dropdown-task border-0 mr-2">
										<button class="dropdown-icon-btn dropleft custom-result-selects text-left" type="button" id="qualifiedSourceType" 
												data-display="static" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
											<span class="sr-only">Toggle Dropdown</span> Filter by
										Source Type <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
												class=" float-right">
										</button>
										<div class="dropdown-menu istar-dropdown-task-menu custom-dropdown-width "
											aria-labelledby="qualifiedSourceType">
											<button class="dropdown-item" type="button">Manual</button>
											<button class="dropdown-item" type="button">Offline</button>
											<button class="dropdown-item" type="button">Outbound</button>
										</div>
									</div>

									<div class="dropdown dropleft" id="filterbutton">
										<button
											class="dropdown-icon-btn custom-result-selects text-left"
											id="qualified_dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 
											<span class="sr-only">Toggle Dropdown</span> Filter by
										User <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
												class=" float-right">
										</button>
										 <div class="dropdown-menu filter-menu dropdown-menu-lg-right position-absolute px-4" aria-labelledby="qualified_dropdown" style="width:350px">
													
												<ul class="nav nav-tabs nav-mytabs filtertabs pt-2" id="qualifiedTab" role="tablist">
												  <li class="nav-item">
												    <a class="nav-link active" id="qualified_individual-tab" data-toggle="tab" href="#qualified_individual" role="tab" aria-controls="qualified_individual" aria-selected="true">Individual</a>
												  </li>
												  <li class="nav-item">
												    <a class="nav-link" id="qualified_team-tab" data-toggle="tab" href="#qualified_team" role="tab" aria-controls="qualified_team" aria-selected="false">Team</a>
												  </li>
												 
												</ul>
												<div class="tab-content" id="myTabContent">
												  <div class="tab-pane fade show active px-4 py-3" id="qualified_individual" role="tabpanel" aria-labelledby="qualified_individual-tab">
												  		<div class="input-group py-2">
															<input id="qualified_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
															<div class="input-group-append">
																<button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
																	<i class="fa fa-search f-12 brown-grey"></i>
																</button>
															</div>
														</div>
														
														<div class=" mb-2"  style="height:370px; overflow-x: hidden; overflow-y:auto;">
														
														<%for(int i=0; i<20;i++){ %>
					                                    <div class="d-flex align-items-center pt-3">
					                                    
					                                    
									<input class="istar-checkbox qualifiedagentcheckbox" data-id="<%=i %>" id="qualified_associate-checkbox<%=i %>" type="checkbox">
					                                        <label class="istar-checkbox-style" for="qualified_associate-checkbox<%=i %>"></label>
											<img alt="Lead Image" title="Lead Name" src ="<%=baseURL%>/assets/image/11.png" class="rounded-circle ml-3 mr-2 hw-40">
										  <div>
					                                        	<div class="f-14 font-weight-bold greyish-brown text-truncate" title="Robert Garcia">Robert Garcia</div>
					                                        	<div class="f-12  brownish-grey text-truncate" title="team">Team -02</div>
					                                        </div>
										</div>
										<%} %>
					                                    </div>
					                                    
					                                     		
					                                 </div>
					                                			                                 
												  <div class="tab-pane fade px-4 py-3" id="qualified_team" role="tabpanel" aria-labelledby="qualified_team-tab">
												  		
												  		<div class="input-group py-2">
															<input id="qualified_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
															<div class="input-group-append">
																<button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
																	<i class="fa fa-search f-12 brown-grey"></i>
																</button>
															</div>
														</div>
														
														<div class="mb-2" style="height:370px; overflow-x: hidden; overflow-y:auto;">
														<%for(int j=0; j<20;j++){ %>
														<div class="d-flex align-items-center pt-3">
					                                        <input class="istar-checkbox qualifiedteamcheckbox" data-id="<%=j %>" id="qualified_team-checkbox<%=j %>" type="checkbox">
					                                        <label class="istar-checkbox-style" for="qualified_team-checkbox<%=j%>"></label>
					                                        <div class="f-12 ml-2 brownish-grey">Team -0<%=j%></div>
					                                    </div>
					                                    <%} %>
					                                    </div>
					                                    
					                                     	
												  		
												  </div>
												</div>
												 <div class="w-100 text-center">
												 <button class="btn  rounded-0 theme_bg text-white f-14 font-weight-bold mb-3 text-center px-3" style="min-width:200px;" id="qualified_team_submit">Submit</button>
												</div>
										  </div>
										
									</div> 
							</div>
						</div>

						<div class="row pl-2 py-4 theme_dotted_border_bottom shadow-bottom px-4">
							<div class="col-md-2">
								<div class="f-24 blue-black font-weight-bold">120</div>
								<div class="f-14 brown-grey font-weight-bold">New Leads</div>
							</div>
							<div class="col-md-2">
								<div class="f-24 blue-black font-weight-bold">56</div>
								<div class="f-14 brown-grey font-weight-bold">Engaged lead</div>
							</div>
							<div class="col-md-2">
								<div class="f-24 blue-black font-weight-bold">25 Hrs</div>
								<div class="f-14 brown-grey font-weight-bold">Average time
									spent</div>
							</div>
							<div class="col-md-2">
								<div class="f-24 blue-black font-weight-bold">$ 8562</div>
								<div class="f-14 brown-grey font-weight-bold">Deal Value</div>
							</div>
						</div>

						<div class="row align-items-center theme_solid_border_bottom py-4 px-4">
							<div class="col-md-2 col">
								<button class="btn p-0 black f-14 font-weight-bold">
									Company Name <i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
							<div class="col-md-2 col">
								<button class="btn p-0 black f-14 font-weight-bold">
									Email ID <i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
							<div class="col-md-2 col">
								<button class="btn p-0 black f-14 font-weight-bold">
									Contact No. <i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
							<div class="col-md-2 col ">
								<button class="btn p-0 black f-14 font-weight-bold">
									Recent Task <i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
							<div class="col-md-4 col-12 ">
								<button class="btn p-0 black f-14 font-weight-bold">
									Agent<i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
						</div>

						<%for(int i=0;i<5;i++){ 
				  		String bgcolor="bg-white";
		      			if(i%2!=0){
		      				bgcolor="very-light-pink-grey-bg";
		      			}%>
						<div
							class="row align-items-center theme_solid_border_bottom py-4 px-4 <%=bgcolor%>">
							<div class="col-md-2 col">
								<div class="f-14 fw-500 black text-truncate d-inline" title="Team 01" data-toggle="tooltip" data-placement="bottom">Zencorporation
									Pot. Ltd.</div>
								<div class="f-14 brownish-grey text-truncate d-table" data-toggle="tooltip" data-placement="bottom" title="Miriam Franklin">Miriam Franklin</div>
							</div>
							<div class="col-md-2 col">
								<div class="f-14 brownish-grey text-break">
									infotech@gmail.com <i class="fas fa-info-circle soft-blue"></i>
								</div>
							</div>
							<div class="col-md-2 col">
								<div class="f-14 brownish-grey text-break">
									+91 445 546 6456 <i class="fas fa-info-circle soft-blue"></i>
								</div>
							</div>
							<div class="col-md-2 col d-flex align-items-center">
								<img class="hw-24 pr-2" alt="callicon"
									src="<%=baseURL%>assets/image/calltask.svg">
								<div class="f-14 greyish-brown pr-2  text-break">Call -</div>
								<div class="f-12 brown-grey">June 15, 2019 02:45 PM</div>
							</div>
							<div class="col-md-4 col-12 ">
								<div class="row  align-items-center">
									<div class="col-md-11">
										<div class="row">
											<img class="rounded-circle imgsize-40"
												src="<%=baseURL%>assets/image/11.png" alt="Lead Image" >
											<div class="col-md-10">
												<div class="f-14 greyish-brown text-truncate d-inline" data-toggle="tooltip" data-placement="bottom" title="Stanley Howard">Stanley Howard</div>
												<div class="f-12 brown-grey text-truncate d-table" data-toggle="tooltip" data-placement="bottom" title="Pipeline - New Sales
													Pipeline">Pipeline - New Sales
													Pipeline</div>
											</div>
										</div>
									</div>
									<div class="col-md-1">
										<div class="istar-dropdown dropleft">
											<button class="dropdown-icon-btn " type="button"
												id="dropdownMenuButton" data-display="static"
												data-toggle="dropdown" aria-haspopup="true"
												aria-expanded="false">
												<i class="fas fa-ellipsis-v f-12 brown-grey"></i>
											</button>
											<div
												class="dropdown-menu dropdown-menu-right istar-dropdown-menu"
												aria-labelledby="dropdownMenuButton">
												<button class="dropdown-item"  onclick="openWonModal()">
													<img src="<%=baseURL%>assets/image/won.svg" alt="won"
														srcset="" class="mr-2"> Won
												</button>
												<button class="dropdown-item"  onclick="openLostModal()">
													<img src="<%=baseURL%>assets/image/lost.svg" alt="lost"
														srcset="" class="mr-2">Lose
												</button>
												<button class="dropdown-item" onclick="openEditModal()">
													<img src="<%=baseURL%>assets/image/edit.svg" alt="edit"
														srcset="" class="mr-2">Edit
												</button>
												<button class="dropdown-item" href="#">
													<img src="<%=baseURL%>assets/image/delete.svg" alt="delete"
														srcset="" class="mr-2">Delete
												</button>
												<button class="dropdown-item" onclick="window.location.href = 'task_lead_detail.jsp'">
													<img src="<%=baseURL%>assets/image/details.png" alt="detail"
														srcset="" class="mr-2">Details
												</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<%} %>
						<div class="row py-4 pb-5 px-4 ">
							<div class="col-md-12  d-flex justify-content-end p-0">
								<div class="page">
									<ul class="salesken pagination mb-0"></ul>
								</div>
							</div>
						</div>
						<!-- end of qualified tab content -->

					</div>
					<div class="tab-pane fade" id="nav-lost" role="tabpanel"
						aria-labelledby="nav-lost-tab">

						<!-- start of lost leads tab content-->

						<div
							class="row align-items-center  theme_solid_border_bottom py-3 px-4">
							<div class="col-md-2 col-xl-3 text-result-found	font_text_result">
								<strong class="number-of-results">03</strong> Results Found
							</div>
							<div class="col-md-10 col-xl-9 d-md-flex justify-content-end p-0 ">
								<div class="input-group date custom-calendar">
									<input type="text" id="lead_lost_datepicker"
										class="form-control  custom-dateselect" value="12-02-2012">
									<div class="input-group-addon px-1" onclick="showlostCalendar()">
										<img src="<%=baseURL%>/assets/image/calendar.svg">
									</div>
								</div>
								
								<div class="istar-dropdown-task border-0 mr-2">
										<button class="dropdown-icon-btn dropleft custom-result-selects text-left" type="button" id="lostCauses" 
												data-display="static" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
											<span class="sr-only">Toggle Dropdown</span> Filter by
										Causes <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
												class=" float-right">
										</button>
										<div class="dropdown-menu istar-dropdown-task-menu custom-dropdown-width "
											aria-labelledby="lostCauses">
											<button class="dropdown-item" type="button">Manual</button>
											<button class="dropdown-item" type="button">Offline</button>
											<button class="dropdown-item" type="button">Outbound</button>
										</div>
									</div>
								
								<div class="istar-dropdown-task border-0 mr-2">
										<button class="dropdown-icon-btn dropleft custom-result-selects text-left" type="button" id="lostDealValue" 
												data-display="static" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
											<span class="sr-only">Toggle Dropdown</span> Filter by
										Deal Value <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
												class=" float-right">
										</button>
										<div class="dropdown-menu istar-dropdown-task-menu custom-dropdown-width "
											aria-labelledby="lostDealValue">
											<button class="dropdown-item" type="button">Manual</button>
											<button class="dropdown-item" type="button">Offline</button>
											<button class="dropdown-item" type="button">Outbound</button>
										</div>
									</div>
									
								<div class="istar-dropdown-task border-0 mr-2">
										<button class="dropdown-icon-btn dropleft custom-result-selects text-left" type="button" id="lostStages" 
												data-display="static" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
											<span class="sr-only">Toggle Dropdown</span> Filter by
										Stages <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
												class=" float-right">
										</button>
										<div class="dropdown-menu istar-dropdown-task-menu custom-dropdown-width "
											aria-labelledby="lostStages">
											<button class="dropdown-item" type="button">Manual</button>
											<button class="dropdown-item" type="button">Offline</button>
											<button class="dropdown-item" type="button">Outbound</button>
										</div>
									</div>
								 <div class="istar-dropdown-task border-0 mr-2">
										<button class="dropdown-icon-btn dropleft custom-result-selects text-left" type="button" id="lostSourceType" 
												data-display="static" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
											<span class="sr-only">Toggle Dropdown</span> Filter by
										Source Type <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
												class=" float-right">
										</button>
										<div class="dropdown-menu istar-dropdown-task-menu custom-dropdown-width "
											aria-labelledby="lostSourceType">
											<button class="dropdown-item" type="button">Manual</button>
											<button class="dropdown-item" type="button">Offline</button>
											<button class="dropdown-item" type="button">Outbound</button>
										</div>
									</div>

								<div class="dropdown dropleft" id="filterbutton">
										<button
											class="dropdown-icon-btn custom-result-selects text-left"
											id="lost_dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 
											<span class="sr-only">Toggle Dropdown</span> Filter by
										User <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
												class=" float-right">
										</button>
										 <div class="dropdown-menu filter-menu dropdown-menu-lg-right position-absolute px-4" aria-labelledby="lost_dropdown" style="width:350px">
													
												<ul class="nav nav-tabs nav-mytabs filtertabs pt-2" id="lostTab" role="tablist">
												  <li class="nav-item">
												    <a class="nav-link active" id="lost_individual-tab" data-toggle="tab" href="#lost_individual" role="tab" aria-controls="lost_individual" aria-selected="true">Individual</a>
												  </li>
												  <li class="nav-item">
												    <a class="nav-link" id="lost_team-tab" data-toggle="tab" href="#lost_team" role="tab" aria-controls="lost_team" aria-selected="false">Team</a>
												  </li>
												 
												</ul>
												<div class="tab-content" id="lostTabContent">
												  <div class="tab-pane fade show active px-4 py-3" id="lost_individual" role="tabpanel" aria-labelledby="lost_individual-tab">
												  		<div class="input-group py-2">
															<input id="lost_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
															<div class="input-group-append">
																<button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
																	<i class="fa fa-search f-12 brown-grey"></i>
																</button>
															</div>
														</div>
														
														<div class=" mb-2"  style="height:370px; overflow-x: hidden; overflow-y:auto;">
														
														<%for(int i=0; i<20;i++){ %>
					                                    <div class="d-flex align-items-center pt-3">
					                                    
					                                    
									<input class="istar-checkbox lostagentcheckbox" data-id="<%=i %>" id="lost_associate-checkbox<%=i %>" type="checkbox">
					                                        <label class="istar-checkbox-style" for="lost_associate-checkbox<%=i %>"></label>
											<img alt="Lead Image" title="Lead Name" src ="<%=baseURL%>/assets/image/11.png" class="rounded-circle ml-3 mr-2 hw-40">
										  <div>
					                                        	<div class="f-14 font-weight-bold greyish-brown text-truncate" title="Robert Garcia">Robert Garcia</div>
					                                        	<div class="f-12  brownish-grey text-truncate" title="team">Team -02</div>
					                                        </div>
										</div>
										<%} %>
					                                    </div>
					                                    
					                                     		
					                                 </div>
					                                			                                 
												  <div class="tab-pane fade px-4 py-3" id="lost_team" role="tabpanel" aria-labelledby="lost_team-tab">
												  		
												  		<div class="input-group py-2">
															<input id="lost_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
															<div class="input-group-append">
																<button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
																	<i class="fa fa-search f-12 brown-grey"></i>
																</button>
															</div>
														</div>
														
														<div class="mb-2" style="height:370px; overflow-x: hidden; overflow-y:auto;">
														<%for(int j=0; j<20;j++){ %>
														<div class="d-flex align-items-center pt-3">
					                                        <input class="istar-checkbox lostteamcheckbox" data-id="<%=j %>" id="lost_team-checkbox<%=j %>" type="checkbox">
					                                        <label class="istar-checkbox-style" for="lost_team-checkbox<%=j%>"></label>
					                                        <div class="f-12 ml-2 brownish-grey">Team -0<%=j%></div>
					                                    </div>
					                                    <%} %>
					                                    </div>
					                                    
					                                     	
												  		
												  </div>
												</div>
												 <div class="w-100 text-center">
												 <button class="btn  rounded-0 theme_bg text-white f-14 font-weight-bold  mb-3 text-center px-3" style="min-width:200px;" id="lost_team_submit">Submit</button>
												</div>
										  </div>
										
									</div> 
							</div>
						</div>

						<div class="row pl-2 py-4 shadow-bottom px-4 theme_dotted_border_bottom">

							<div class="col-md-2">
								<div class="f-24 blue-black font-weight-bold">$ 8562</div>
								<div class="f-14 brown-grey font-weight-bold">Deal Value</div>
							</div>

							<div class="col-md-2">
								<div class="f-24 blue-black font-weight-bold">25 Hrs</div>
								<div class="f-14 brown-grey font-weight-bold">Average time
									spent</div>
							</div>

							<div class="col-md-2">
								<div class="f-24 blue-black font-weight-bold">40%</div>
								<div class="f-14 brown-grey font-weight-bold">Percentage
									of loss</div>
							</div>



						</div>

						<div class="row align-items-center theme_solid_border_bottom py-4  px-4">
							<div class="col-md-2 col">
								<button class="btn p-0 black f-14 font-weight-bold">
									Company Name <i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
							<div class="col-md-2 col">
								<button class="btn p-0 black f-14 font-weight-bold">
									Email ID <i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
							<div class="col-md-2 col">
								<button class="btn p-0 black f-14 font-weight-bold">
									Contact No. <i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
							<div class="col-md-2 col ">
								<button class="btn p-0 black f-14 font-weight-bold">
									Recent Task <i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
							<div class="col-md-4 col-12 ">
								<button class="btn p-0 black f-14 font-weight-bold">
									Agent<i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
						</div>

						<%for(int i=0;i<5;i++){ 
				  		String bgcolor="bg-white";
		      			if(i%2!=0){
		      				bgcolor="very-light-pink-grey-bg";
		      			}%>
						<div
							class="row align-items-center theme_solid_border_bottom py-4  px-4 <%=bgcolor%>">
							<div class="col-md-2 col">
								<div class="f-14 fw-500 black text-truncate d-inline" data-toggle="tooltip" data-placement="bottom" title="Vehement Capital Partners.">Vehement Capital
									Partners.</div>
								<div class="f-14 brownish-grey text-truncate d-table" data-toggle="tooltip" data-placement="bottom" title="Miriam Franklin">Miriam Franklin</div>
							</div>
							<div class="col-md-2 col">
								<div class="f-14 brownish-grey text-break">
									infotech@gmail.com <i class="fas fa-info-circle soft-blue"></i>
								</div>
							</div>
							<div class="col-md-2 col">
								<div class="f-14 brownish-grey text-break">
									+91 445 546 6456 <i class="fas fa-info-circle soft-blue"></i>
								</div>
							</div>
							<div class="col-md-2 col d-flex align-items-center">
								<img class="hw-24 pr-2" alt="callicon"
									src="<%=baseURL%>assets/image/calltask.svg">
								<div class="f-14 greyish-brown pr-2 text-break">Call -</div>
								<div class="f-12 brown-grey">June 15, 2019 02:45 PM</div>
							</div>
							<div class="col-md-4 col-12 ">
								<div class="row  align-items-center">
									<div class="col-md-11">
										<div class="row">
											<img class="rounded-circle imgsize-40" alt="Lead Image"
												src="<%=baseURL%>assets/image/11.png">
											<div class="col-md-10">
												<div class="f-14 greyish-brown text-truncate d-inline" data-toggle="tooltip" data-placement="bottom" title="Stanley Howard">Stanley Howard</div>
												<div class="f-12 brown-grey text-truncate d-table" data-toggle="tooltip" data-placement="bottom" title="Pipeline - New Sales Pipeline">Pipeline - New Sales
													Pipeline</div>
											</div>
										</div>
									</div>
									<div class="col-md-1">
										<div class="istar-dropdown dropleft">
											<button class="dropdown-icon-btn " type="button"
												id="dropdownMenuButton" data-display="static"
												data-toggle="dropdown" aria-haspopup="true"
												aria-expanded="false">
												<i class="fas fa-ellipsis-v f-12 brown-grey"></i>
											</button>
											<div
												class="dropdown-menu dropdown-menu-right istar-dropdown-menu"
												aria-labelledby="dropdownMenuButton">
												
												<button class="dropdown-item" onclick="openEditModal()">
													<img src="<%=baseURL%>assets/image/edit.svg" alt="edit"
														srcset="" class="mr-2">Edit
												</button>
												<button class="dropdown-item" href="#">
													<img src="<%=baseURL%>assets/image/delete.svg" alt="delete"
														srcset="" class="mr-2">Delete
												</button>
												<button class="dropdown-item"  onclick="window.location.href = 'task_lead_detail.jsp'">
													<img src="<%=baseURL%>assets/image/details.png" alt="details"
														srcset="" class="mr-2">Details
												</button>
											</div>
										</div>

									</div>
								</div>
							</div>
						</div>
						<%} %>
						<div class="row py-4 pb-5 px-4 ">
							<div class="col-md-12  d-flex justify-content-end p-0">
								<div class="page">
									<ul class="salesken pagination mb-0"></ul>
								</div>
							</div>
						</div>

						<!-- end of lost leads tab content -->

					</div>
					<div class="tab-pane fade" id="nav-win" role="tabpanel"
						aria-labelledby="nav-win-tab">

						<!-- start of won leads content -->

						<div
							class="row align-items-center  theme_solid_border_bottom py-3 px-4">
							<div class="col-md-2 text-result-found font_text_result	">
								<strong class="number-of-results">03</strong> Results Found
							</div>
							<div class="col-md-10 d-md-flex justify-content-end p-0 ">
								<div class="input-group date custom-calendar">
									<input type="text" id="lead_won_datepicker"
										class="form-control  custom-dateselect" value="12-02-2012">
									<div class="input-group-addon px-1" onclick="showwonCalendar()">
										<img src="<%=baseURL%>/assets/image/calendar.svg"/>
									</div>
								</div>
								<div class="istar-dropdown-task border-0 mr-2">
										<button class="dropdown-icon-btn dropleft custom-result-selects text-left" type="button" id="wonCauses" 
												data-display="static" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
											<span class="sr-only">Toggle Dropdown</span> Filter by
										Causes <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
												class=" float-right">
										</button>
										<div class="dropdown-menu istar-dropdown-task-menu custom-dropdown-width "
											aria-labelledby="wonCauses">
											<button class="dropdown-item" type="button">Manual</button>
											<button class="dropdown-item" type="button">Offline</button>
											<button class="dropdown-item" type="button">Outbound</button>
										</div>
									</div>
								
								<div class="istar-dropdown-task border-0 mr-2">
										<button class="dropdown-icon-btn dropleft custom-result-selects text-left" type="button" id="wonDealValue" 
												data-display="static" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
											<span class="sr-only">Toggle Dropdown</span> Filter by
										Deal Value <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
												class=" float-right">
										</button>
										<div class="dropdown-menu istar-dropdown-task-menu custom-dropdown-width "
											aria-labelledby="wonDealValue">
											<button class="dropdown-item" type="button">Manual</button>
											<button class="dropdown-item" type="button">Offline</button>
											<button class="dropdown-item" type="button">Outbound</button>
										</div>
									</div>
									
								<div class="istar-dropdown-task border-0 mr-2">
										<button class="dropdown-icon-btn dropleft custom-result-selects text-left" type="button" id="wonStages" 
												data-display="static" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
											<span class="sr-only">Toggle Dropdown</span> Filter by
										Stages <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
												class=" float-right">
										</button>
										<div class="dropdown-menu istar-dropdown-task-menu custom-dropdown-width "
											aria-labelledby="wonStages">
											<button class="dropdown-item" type="button">Manual</button>
											<button class="dropdown-item" type="button">Offline</button>
											<button class="dropdown-item" type="button">Outbound</button>
										</div>
									</div>
								 <div class="istar-dropdown-task border-0 mr-2">
										<button class="dropdown-icon-btn dropleft custom-result-selects text-left" type="button" id="wonSourceType" 
												data-display="static" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
											<span class="sr-only">Toggle Dropdown</span> Filter by
										Source Type <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
												class=" float-right">
										</button>
										<div class="dropdown-menu istar-dropdown-task-menu custom-dropdown-width "
											aria-labelledby="wonSourceType">
											<button class="dropdown-item" type="button">Manual</button>
											<button class="dropdown-item" type="button">Offline</button>
											<button class="dropdown-item" type="button">Outbound</button>
										</div>
									</div>

								<div class="dropdown dropleft" id="filterbutton">
										
										<button
											class="dropdown-icon-btn custom-result-selects text-left"
											id="won_dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 
											<span class="sr-only">Toggle Dropdown</span> Filter by
										User <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
												class=" float-right">
										</button>
										 <div class="dropdown-menu filter-menu dropdown-menu-lg-right position-absolute px-4 " aria-labelledby="won_dropdown" style="width:350px">
													
												<ul class="nav nav-tabs nav-mytabs filtertabs pt-2" id="wonTab" role="tablist">
												  <li class="nav-item">
												    <a class="nav-link active" id="won_individual-tab" data-toggle="tab" href="#won_individual" role="tab" aria-controls="won_individual" aria-selected="true">Individual</a>
												  </li>
												  <li class="nav-item">
												    <a class="nav-link" id="won_team-tab" data-toggle="tab" href="#won_team" role="tab" aria-controls="won_team" aria-selected="false">Team</a>
												  </li>
												 
												</ul>
												<div class="tab-content" id="wonTabContent">
												  <div class="tab-pane fade show active px-4 py-3" id="won_individual" role="tabpanel" aria-labelledby="won_individual-tab">
												  		<div class="input-group py-2">
															<input id="won_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
															<div class="input-group-append">
																<button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
																	<i class="fa fa-search f-12 brown-grey"></i>
																</button>
															</div>
														</div>
														
														<div class=" mb-2"  style="height:370px; overflow-x: hidden; overflow-y:auto;">
														
														<%for(int i=0; i<20;i++){ %>
					                                    <div class="d-flex align-items-center pt-3">
					                                    
					                                    
									<input class="istar-checkbox wonagentcheckbox" data-id="<%=i %>" id="won_associate-checkbox<%=i %>" type="checkbox">
					                                        <label class="istar-checkbox-style" for="won_associate-checkbox<%=i %>"></label>
											<img alt="Lead Image" title="Lead Name" src ="<%=baseURL%>/assets/image/11.png" class="rounded-circle ml-3 mr-2 hw-40">
										  <div>
					                                        	<div class="f-14 font-weight-bold greyish-brown text-truncate" title="Robert Garcia">Robert Garcia</div>
					                                        	<div class="f-12  brownish-grey text-truncate" title="team">Team -02</div>
					                                        </div>
										</div>
										<%} %>
					                                    </div>
					                                    
					                                     		
					                                 </div>
					                                			                                 
												  <div class="tab-pane fade px-4 py-3" id="won_team" role="tabpanel" aria-labelledby="won_team-tab">
												  		
												  		<div class="input-group py-2">
															<input id="won_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
															<div class="input-group-append">
																<button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
																	<i class="fa fa-search f-12 brown-grey"></i>
																</button>
															</div>
														</div>
														
														<div class="mb-2" style="height:370px; overflow-x: hidden; overflow-y:auto;">
														<%for(int j=0; j<20;j++){ %>
														<div class="d-flex align-items-center pt-3">
					                                        <input class="istar-checkbox wonteamcheckbox" data-id="<%=j %>" id="won_team-checkbox<%=j %>" type="checkbox">
					                                        <label class="istar-checkbox-style" for="won_team-checkbox<%=j%>"></label>
					                                        <div class="f-12 ml-2 brownish-grey">Team -0<%=j%></div>
					                                    </div>
					                                    <%} %>
					                                    </div>
					                                    
					                                     	
												  		
												  </div>
												</div>
												 <div class="w-100 text-center">
												 <button class="btn  rounded-0 theme_bg text-white f-14 font-weight-bold  mb-3 text-center px-3" style="min-width:200px;" id="won_team_submit">Submit</button>
												</div>
										  </div>
										
									</div> 
							</div>
						</div>

						<div class="row pl-2 py-4 shadow-bottom px-4 theme_dotted_border_bottom shadow-bottom">

							<div class="col-md-2">
								<div class="f-24 blue-black font-weight-bold">$ 2345</div>
								<div class="f-14 brown-grey font-weight-bold">Deal Value</div>
							</div>

							<div class="col-md-2">
								<div class="f-24 blue-black font-weight-bold">45 Hrs</div>
								<div class="f-14 brown-grey font-weight-bold">Average time
									spent</div>
							</div>

							<div class="col-md-2">
								<div class="f-24 blue-black font-weight-bold">34%</div>
								<div class="f-14 brown-grey font-weight-bold">Percentage
									of Won</div>
							</div>



						</div>

						<div class="row align-items-center theme_solid_border_bottom py-4 px-4">
							<div class="col-md-2 col">
								<button class="btn p-0 black f-14 font-weight-bold">
									Company Name <i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
							<div class="col-md-2 col">
								<button class="btn p-0 black f-14 font-weight-bold">
									Email ID <i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
							<div class="col-md-2 col">
								<button class="btn p-0 black f-14 font-weight-bold">
									Contact No. <i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
							<div class="col-md-2 col ">
								<button class="btn p-0 black f-14 font-weight-bold">
									Recent Task <i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
							<div class="col-md-4 col-12 ">
								<button class="btn p-0 black f-14 font-weight-bold">
									Agent<i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
						</div>

						<%for(int i=0;i<5;i++){ 
				  		String bgcolor="bg-white";
		      			if(i%2!=0){
		      				bgcolor="very-light-pink-grey-bg";
		      			}%>
						<div
							class="row align-items-center theme_solid_border_bottom py-4 px-4  <%=bgcolor%>">
							<div class="col-md-2 col">
								<div class="f-14 fw-500 black text-truncate d-inline" data-toggle="tooltip" data-placement="bottom" title="Vehement Capital Partners.">Vehement Capital
									Partners.</div>
								<div class="f-14 brownish-grey text-truncate d-table" data-toggle="tooltip" data-placement="bottom" title="Miriam Franklin">Miriam Franklin</div>
							</div>
							<div class="col-md-2 col">
								<div class="f-14 brownish-grey text-break">
									infotech@gmail.com <i class="fas fa-info-circle soft-blue"></i>
								</div>
							</div>
							<div class="col-md-2 col">
								<div class="f-14 brownish-grey text-break">
									+91 445 546 6456 <i class="fas fa-info-circle soft-blue"></i>
								</div>
							</div>
							<div class="col-md-2 col ">
							<div class="d-flex align-items-center">
								<img class="hw-24 pr-2" alt="callicon"
									src="<%=baseURL%>assets/image/calltask.svg">
								<div class="f-14 greyish-brown pr-2 text-break">Call -</div>
								<div class="f-12 brown-grey">June 15, 2019 02:45 PM</div>
								</div>
							</div>
							<div class="col-md-4 col-12 ">
								<div class="row  align-items-center">
									<div class="col-md-11">
										<div class="row">
											<img class="rounded-circle imgsize-40"  alt="Lead Image" 
												src="<%=baseURL%>assets/image/11.png">
											<div class="col-md-10">
												<div class="f-14 greyish-brown text-truncate d-inline" data-toggle="tooltip" data-placement="bottom" title="Stanley Howard">Stanley Howard</div>
												<div class="f-12 brown-grey  text-truncate d-table" data-toggle="tooltip" data-placement="bottom" title="Pipeline - New Sales Pipeline">Pipeline - New Sales
													Pipeline</div>
											</div>
										</div>
									</div>
									<div class="col-md-1">
										<div class="istar-dropdown dropleft">
											<button class="dropdown-icon-btn " type="button"
												id="dropdownMenuButton" data-display="static"
												data-toggle="dropdown" aria-haspopup="true"
												aria-expanded="false">
												<i class="fas fa-ellipsis-v f-12 brown-grey"></i>
											</button>
											<div
												class="dropdown-menu dropdown-menu-right istar-dropdown-menu"
												aria-labelledby="dropdownMenuButton">
												
												<button class="dropdown-item" onclick="openEditModal()">
													<img src="<%=baseURL%>assets/image/edit.svg" alt="edit"
														srcset="" class="mr-2">Edit
												</button>
												<button class="dropdown-item" href="#">
													<img src="<%=baseURL%>assets/image/delete.svg" alt="delete"
														srcset="" class="mr-2">Delete
												</button>
												<button class="dropdown-item"  onclick="window.location.href = 'task_lead_detail.jsp'">
													<img src="<%=baseURL%>assets/image/details.png" alt="details"
														srcset="" class="mr-2">Details
												</button>
											</div>
										</div>

									</div>
								</div>
							</div>
						</div>
						<%} %>
					<div class="row py-4 pb-5 px-4 ">
							<div class="col-md-12  d-flex justify-content-end p-0">
								<div class="page">
									<ul class="salesken pagination mb-0"></ul>
								</div>
							</div>
						</div>

						<!-- end of won leads content -->

					</div>
				</div>

			</div>
		</div>

		<!-- start of lost lead modal -->

		<div class="modal fade" id="lostLeadModalCenter" tabindex="-1"
			role="dialog" aria-labelledby="lostLeadModalCenterTitle"
			aria-hidden="true">
			<div class="modal-dialog modal-lg modal-dialog-centered"
				role="document">
				<div class="modal-content rounded-0 px-3 lostleadmodalsize">
					<div class="row shadow-sm p-3">
						<div
							class="col-md-11 col-11 modal-title greyish-brown f-18 font-weight-bold"
							id="lostLeadModalCenterTitle">Lost Lead</div>
						<button type="button" class="col-md-1 col-1 close"
							data-dismiss="modal" aria-label="Close">
							<img src="<%=baseURL%>assets/image/close.svg" alt="close">
						</button>
					</div>
					<div class="modal-body">
					<form id="lostleadmodal">
						<div class="row pb-4">
							<div class="col-md-12 f-18 font-weight-bold greyish-brown text-truncate" title="Zencorporation Pot. Ltd.">
								Zencorporation Pot. Ltd.</div>
						</div>

						<div class="row pb-4">
							<div class="col-md-4 border-right-separation">
								<div class="f-14 brownish-grey">Contact Person</div>
								<div class="f-16 fw-500 black text-truncate" title="">Miriam Franklin</div>
							</div>
							<div class="col-md-4 border-right-separation">
								<div class="f-14 brownish-grey">Recent Task</div>
								<div class="f-16 fw-500 black">Call</div>
							</div>
							<div class="col-md-4 ">
								<div class="f-14 brownish-grey">Deal Value</div>
								<div class="f-16 fw-500 black">$ 208</div>
							</div>
						</div>

						<div class="row pt-4">
							<div class="col-md-12">
								<textarea
									class="form-control custom-modal-textarea f-14 brown-grey w-100 p-2"
									id="reasonforlosing" name="reasonforlosing" rows="6" placeholder="Type Reason"></textarea>
							</div>
						</div>
					</form>
					</div>
					<div class="modal-footer">
						<button type="button"
							class="btn theme_color f-14 font-weight-bold">Reset</button>
						<button type="button"
							class="btn modal-submit-btn f-14 font-weight-bold"
							 id="lostleadsubmit">SUBMIT</button>
					</div>
				</div>
			</div>
		</div>

		<!-- end of lost lead modal -->


		<!-- start of add lead modal -->
		<div class="modal fade" id="addLeadModalCenter" tabindex="-1"
			role="dialog" aria-labelledby="addLeadModalCenterTitle"
			aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered  modal-xl  "
				role="document">
				<div class="modal-content rounded-0 px-3 addleadmodalsize">

					<div class="modal-body" id="lostLeadModalCenterTitle">

						<div class="row shadow-bottom py-3 ">
							<div class="col-md-11 leadmodal">
								<ul class="nav nav-pills" id="pills-tab" role="tablist">
									<li class="nav-item"><a class="nav-link px-0 active"
										id="pills-upload-tab" data-toggle="pill" href="#pills-upload"
										role="tab" aria-controls="pills-upload" aria-selected="true">
											<div class="d-flex align-items-center flex-row bd-highlight">
												<div class="bd-highlight pr-2 d-flex align-items-center">
													<div class="circle">01</div>
												</div>
												<div class="bd-highlight pr-2 align-self-center tabtitle">Upload
													Lead List</div>
												<div class="bd-highlight d-flex pr-2">
													<img src="<%=baseURL%>assets/image/arrow_right.svg" alt="arrow-right">
												</div>
											</div>
									</a></li>
									<li class="nav-item "><a class="nav-link disabled px-0"
										id="pills-preview-tab" data-toggle="pill"
										href="#pills-preview" role="tab" aria-controls="pills-preview"
										aria-selected="false">
											<div class="d-flex align-items-center flex-row bd-highlight">
												<div class="bd-highlight pr-2 d-flex align-items-center">
													<div class="circle">02</div>
												</div>
												<div class="bd-highlight pr-2 align-self-center tabtitle">Preview</div>

											</div>
									</a></li>
								</ul>
							</div>
							<button type="button" class="col-md-1 col-1 close"
								data-dismiss="modal" aria-label="Close">
								<img src="<%=baseURL%>assets/image/close.svg" alt="close">
							</button>
						</div>

						<div class="tab-content" id="pills-tabContent">
							<div class="tab-pane fade show active" id="pills-upload"
								role="tabpanel" aria-labelledby="pills-upload-tab">
								<!-- start of upload lead content -->
								
								

								<div class="row justify-content-center dropzonediv">
									<div class="col-md-9 my-5 cream_white upload-lead-box"
										style="border: 1px dashed #cccccc;">
										<div
											class="d-flex flex-row align-items-center text-center upload-lead-box">
											<div class="col-md-5" id="previews">
												<img src="<%=baseURL%>assets/image/xlsdoc.svg" alt="xmlicon"
													class="doc-image-size">
											</div>
											<div class="col-md-6">
												<div class="f-16 fw-500 greyish-brown">Drag
													or Drop a Documents</div>
												<div class="f-14 brown-grey">We support only excel
													file up to 100 mb.</div>
												<div class="f-16 font-weight-bold theme_color browse cursor-pointer">Browse</div>
											</div>
										</div>
									</div>
								</div>



								<!-- end of upload lead content -->
							</div>



							<div class="tab-pane fade" id="pills-preview" role="tabpanel"
								aria-labelledby="pills-preview-tab">

								<table class="table table-striped leadpreview">
									<thead>
										<tr>
											<th scope="col" class="black f-14 font-weight-bold">Lead Name</th>
											<th scope="col" class="black f-14 font-weight-bold">Email ID</th>
											<th scope="col" class="black f-14 font-weight-bold">Contact No.</th>
											<th scope="col" ></th>
										</tr>
									</thead>
									<tbody>
										<%for(int i=0;i<20;i++){ %>
										<tr>
											<th scope="row">3</th>
											<td>Larry</td>
											<td>the Bird</td>
											<td>
												<div class="d-flex">
													<button class="hw-30  border-0 bg-transparent">
														<i class="fal fa-edit text-white f-16 brown-grey"></i>
													</button>
													<button class="hw-30  border-0 bg-transparent">
														<i class="fal fa-trash-alt text-white f-16 brown-grey"></i>
													</button>

												</div>

											</td>
										</tr>
										<%} %>
									</tbody>
								</table>

							</div>



						</div>

					</div>

					<div class="modal-footer">
						<button class="btn modal-submit-btn modal-prev-btn f-14 font-weight-bold my-2 mr-auto " style="display:none" >Prev</button>
						<button class="btn leadsubmit f-14 modal-submit-btn font-weight-bold my-2  " style="display:none" >Submit</button>

						<button class="btn modal-submit-btn f-14 font-weight-bold my-2 continue" disabled>CONTINUE</button>

					</div>


				</div>
			</div>
		</div>
		<!-- end of add lead modal -->

		<!-- start of won lead modal -->

		<div class="modal fade" id="wonLeadModalCenter" tabindex="-1"
			role="dialog" aria-labelledby="wonLeadModalCenterTitle"
			aria-hidden="true">
			<div class="modal-dialog modal-lg modal-dialog-centered"
				role="document">
				<div class="modal-content rounded-0 px-3 lostleadmodalsize">
					<div class="row shadow-sm p-3">
						<div
							class="col-md-11 col-11 modal-title greyish-brown f-18 font-weight-bold"
							id="wonLeadModalCenterTitle">Won Lead</div>
						<button type="button" class="col-md-1 col-1 close"
							data-dismiss="modal" aria-label="Close">
							<img src="<%=baseURL%>assets/image/close.svg" alt="close">
						</button>
					</div>
					<div class="modal-body">
					<form id="wonleadmodal">
						<div class="row pb-4">
							<div class="col-md-12 f-18 font-weight-bold greyish-brown text-truncate" title="">
								Zencorporation Pot. Ltd.</div>
						</div>

						<div class="row pb-4">
							<div class="col-md-4 border-right-separation">
								<div class="f-14 brownish-grey">Contact Person</div>
								<div class="f-16 fw-500 black text-truncate" title="">Miriam Franklin</div>
							</div>
							<div class="col-md-4 border-right-separation">
								<div class="f-14 brownish-grey">Recent Task</div>
								<div class="f-16 fw-500 black">Call</div>
							</div>
							<div class="col-md-4 ">
								<div class="f-14 brownish-grey">Deal Value</div>
								<div class="f-16 fw-500 black">$ 208</div>
							</div>
						</div>

						<div class="row pt-4">
							<div class="col-md-12">
								<textarea
									class="form-control custom-modal-textarea f-14 brown-grey w-100 p-2"
									id="reasonforwin" name="reasonforwin" rows="6" placeholder="Type Reason"></textarea>
							</div>
						</div>
					</form>
					</div>
					<div class="modal-footer">
						<button type="button"
							class="btn theme_color f-14 font-weight-bold">Reset</button>
						<button type="button"
							class="btn modal-submit-btn f-14 font-weight-bold"
							 id="wonleadsubmit">SUBMIT</button>
					</div>
				</div>
			</div>
		</div>

		<!-- end of won lead modal -->
		
		
		<!-- start of edit lead modal -->
		<div class="modal fade" id="editLeadModalCenter" tabindex="-1" role="dialog" aria-labelledby="editLeadModalCenterTitle" aria-hidden="true">
		  <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
		    <div class="modal-content rounded-0 px-3 eventmodalsize">
		    	<div class="row shadow-sm p-3" > 
					<div class="col-md-11 col-11 modal-title greyish-brown f-18 font-weight-bold" id="editLeadModalCenterTitle">Edit Lead</div>
					<button type="button" class="col-md-1 col-1 close" data-dismiss="modal" aria-label="Close">
						<img src="<%=baseURL%>assets/image/close.svg" alt="close">
					</button>
				</div>
		      <div class="modal-body">
		      <form id="updateLeadForm">
		       	<div class="row pb-4">
		       		<div class="col-md-6">
		       			<div class="f-14 fw-500 pb-1">Company Name</div>
		       			<input type="text" class="custom-modal-input w-100 form-control f-14" id="company_name" name="company_name" aria-describedby="company_name" placeholder="Type here">
		       		</div>
		       		<div class="col-md-6">
		       			<div class="f-14 fw-500 pb-1">Lead Source</div>
		       			<select class="form-control custom-modal-input w-100 f-14 brown-grey" id="leadSource" name="leadSource" >
					      <option value="0">Select here</option>
					      <option value="online">Online</option>
					      <option value="marketing">Marketing</option>
					      <option value="offline">Offline</option>
					    </select>
		       		</div>
		       	</div>
		    	 <div class="row pb-4">
		       		<div class="col-md-6">
		       			<div class="f-14 fw-500 pb-1">City</div>
		       			<input type="text" class="custom-modal-input w-100 form-control f-14" id="city" name="city" aria-describedby="city" placeholder="Type here">
		       		</div>
		       		<div class="col-md-6">
		       			<div class="f-14 fw-500 pb-1">State</div>
		       			<input type="text" class="custom-modal-input w-100 form-control f-14" id="state" name="state" aria-describedby="state" placeholder="Type here">
		       		</div>
		       	</div>
		       	
		       	<div class="row pb-4">
		       		<div class="col-md-6">
		       			<div class="f-14 fw-500 pb-1">Country</div>
		       			<input type="text" class="custom-modal-input w-100 form-control f-14" id="country" name="country" aria-describedby="country" placeholder="Type here">
		       		</div>
		       		<div class="col-md-6">
		       			<div class="f-14 fw-500 pb-1">Website</div>
		       			<input type="text" class="custom-modal-input w-100 form-control f-14" id="website" name="website" aria-describedby="website" placeholder="Type here">
		       		</div>
		       	</div>
				<div class="row pb-4">
					<div class="col-md-12">
						<div class="f-14 fw-500 pb-1">About Company</div>
						<textarea class="custom-modal-textarea w-100" id="aboutcompany" name="aboutcompany" rows="6"></textarea>
					</div>
				</div>
				
				<div class="row pb-4">
					<div class="col-md-12">
						<div class="f-14 fw-500 pb-1">Address</div>
						<textarea class="custom-modal-textarea w-100" id="address" name="address" rows="6"></textarea>
					</div>
				</div>
				</form>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn theme_color f-14 font-weight-bold">Reset</button>
		        <button type="button" class="btn modal-submit-btn f-14 font-weight-bold" id="updateLead">UPDATE</button>
		      </div>
		    </div>
		  </div>
		</div>
	<!-- end of edit lead modal -->

	</div>
	</main>
	<script src="<%=baseURL%>assets/js/jquery-3.4.1.min.js"></script>
	<script src="<%=baseURL%>assets/js/popper.min.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap.min.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap-datepicker.min.js"></script>
	<script src="<%=baseURL%>assets/js/pagination.min.js"></script>
	<script src="<%=baseURL%>assets/js/salesken.js"></script>
	<script
		src="<%=baseURL%>assets/js/dropzone.min.js"></script>
	<script src="<%=baseURL%>assets/js/alertify.min.js"></script>
			  	<script src="<%=baseURL%>assets/js/jquery.validate.min.js"></script>

	<script src="<%=baseURL%>assets/js/lead.js">
	
	</script>
	<script>
	$( document ).ready(function() {
	$('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
		  var target = $(e.target).html(); // activated tab
		  $('#breadcrumb').html(target);
		    $('.targetpopup').popover('hide');
		    $('.qualifiedpopup').popover('hide');
		    $('.lostpopup').popover('hide');
		    $('.wonpopup').popover('hide');

		    
		});
	});
	
	function openEditModal(){
		$('#editLeadModalCenter').modal('show');
	}
	function openLostModal(){
		$('#lostLeadModalCenter').modal('show');
	}
	function openWonModal(){
		$('#wonLeadModalCenter').modal('show');
	}
	</script>
	<script>
	
	
	$( document ).ready(function() {
	
		$('.dropdown-menu').click(function(e) {
		    e.stopPropagation();
		});
			
$('.filtertabs>li>.nav-link').click(function(e) {
			
			$($(this).attr('href')+'-tab').tab('show')

		});
  $('#target_team_submit').click(function(e) {
	var agent_array=[];
	var team_array=[];
	
	$('.targetagentcheckbox').each(function(){
		if($(this).prop('checked')===true){
			agent_array.push($(this).data('id'));
		}
	});
	$('.targetteamcheckbox').each(function(){
		if($(this).prop('checked')===true){
			team_array.push($(this).data('id'));
		}
	});
	
	if(agent_array.length==0 && team_array.length==0){
		alert("Please select atleast one");
	}else{
		$('#target_dropdown').dropdown('hide');
	}
	console.log(agent_array)
	console.log(team_array)
		

});

  $('#qualified_team_submit').click(function(e) {
		var agent_array=[];
		var team_array=[];
		
		$('.qualifiedagentcheckbox').each(function(){
			if($(this).prop('checked')===true){
				agent_array.push($(this).data('id'));
			}
		});
		$('.qualifiedteamcheckbox').each(function(){
			if($(this).prop('checked')===true){
				team_array.push($(this).data('id'));
			}
		});
		
		if(agent_array.length==0 && team_array.length==0){
			alert("Please select atleast one");
		}else{
			$('#qualified_dropdown').dropdown('hide');
		}
		console.log(agent_array)
		console.log(team_array)

	});
  $('#lost_team_submit').click(function(e) {
		var agent_array=[];
		var team_array=[];
		
		$('.lostagentcheckbox').each(function(){
			if($(this).prop('checked')===true){
				agent_array.push($(this).data('id'));
			}
		});
		$('.lostteamcheckbox').each(function(){
			if($(this).prop('checked')===true){
				team_array.push($(this).data('id'));
			}
		});
		
		if(agent_array.length==0 && team_array.length==0){
			alert("Please select atleast one");
		}else{
			$('#lost_dropdown').dropdown('hide');
		}
		console.log(agent_array)
		console.log(team_array)
	});
  $('#won_team_submit').click(function(e) {
		var agent_array=[];
		var team_array=[];
		
		$('.wonagentcheckbox').each(function(){
			if($(this).prop('checked')===true){
				agent_array.push($(this).data('id'));
			}
		});
		$('.wonteamcheckbox').each(function(){
			if($(this).prop('checked')===true){
				team_array.push($(this).data('id'));
			}
		});
		
		if(agent_array.length==0 && team_array.length==0){
			alert("Please select atleast one");
		}else{
			$('#won_dropdown').dropdown('hide');
		}
		console.log(agent_array)
		console.log(team_array)
	});
  
	});
	

	
	</script>
</body>
</html>