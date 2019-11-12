<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Salesken - Pipeline</title>
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
<link rel="stylesheet" href="<%=baseURL%>assets/css/pipeline.css">
<link href="<%=baseURL%>assets/css/bootstrap-select.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="<%=baseURL%>assets/css/salesken_style_media_query.css">

</head>
<body data-base-url="<%=baseURL%>" onload="load()">

	<!-- start of circular progress bar for page loading -->
	<div class="salesken_progress h-100 w-100 " style="display: none">
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
			class="row grey-white-bg theme_solid_border_bottom align-items-center  m-0 pl-40 pr-40 pt-10 pb-10">
			<div class="col-md-6 col-12 d-flex align-items-center p-0 ">

				<div class="dropdown">
					<div
						class="display-1 black f-20 border-right-separation fw-500 pr-20 dropdown-toggle"
						id="pipeline_select" data-toggle="dropdown" aria-haspopup="true" data-display="static"
						aria-expanded="false">
						<img src="<%=baseURL%>assets/image/dropdown-right-black.svg"
							alt="call" class=" float-right">Pipeline 01
					</div>
					<div
						class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu"
						aria-labelledby="pipeline_select">
						<button class="dropdown-item" type="button">Pipeline 02</button>
						<button class="dropdown-item" type="button">Pipeline 03</button>
					</div>
				</div>
				<div class=" f-12 brown-grey pl-20">Dashboard</div>
				<i class="fas fa-chevron-circle-right f-12 brown-grey pl-2 pr-2"></i>
				<div class=" f-12 brown-grey fw-500">Pipeline</div>

			</div>
			<div class="col-md-6 col-12 d-lg-flex justify-content-md-end p-0 ">
				<div class="input-group position-relative pl-2 search_width">
					<img src="<%=baseURL%>assets/image/search.svg" alt="edit"
						class="searchBox"> <input id="pipeline_search"
						class="form-control  custom-taskborder brown-grey  f-14 search_height custom-result-selects"
						type="search" placeholder="Search" style="padding-right: 30px">
				</div>

			</div>
		</div>


		<div
			class="row align-items-center bg-white theme_solid_border_bottom m-0  pl-40 pt-15 pb-15 pr-40">
			<div class="col-md-3 text-result-found p-0">
				<strong class="number-of-results">04</strong> Results Found
			</div>
			<div class="col-md-9 d-md-flex justify-content-end p-0 ">
				<div class="input-group date custom-calendar">
					<input type="text" id="pipeline_datepicker"
						class="form-control  custom-dateselect" value="12-02-2012"
						placeholder="Calendar">
					<div class="input-group-addon" onclick="showCalendar()">
						<img src="<%=baseURL%>/assets/image/calendar.svg" alt="calendar"
							class="pr-1">
					</div>
				</div>
				<div class="istar-dropdown-task select_focus mr-10">
					<button class="istar-dropdown-arrow dropdown-toggle" data-display="static"
						id="pipeline_deal_value" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">
						<span class="sr-only">Toggle Dropdown</span>All Deal Value <img
							src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
							class=" float-right">
					</button>
					<div
						class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" data-display="static"
						aria-labelledby="pipeline_deal_value">
						<button class="dropdown-item" type="button">$1000</button>
						<button class="dropdown-item" type="button">$5000</button>
					</div>
				</div>

				<div class="istar-dropdown-task select_focus mr-10">
					<button class="istar-dropdown-arrow dropdown-toggle"
						id="pipeline_status" data-toggle="dropdown" aria-haspopup="true" data-display="static"
						aria-expanded="false">
						<span class="sr-only">Toggle Dropdown</span>All Status <img
							src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
							class=" float-right">
					</button>
					<div
						class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" data-display="static"
						aria-labelledby="pipeline_status">
						<button class="dropdown-item" type="button">Won</button>
						<button class="dropdown-item" type="button">Lost</button>
					</div>
				</div>


				<div class="istar-dropdown-task dropleft" id="filterbutton">
					<button class="istar-dropdown-arrow " data-display="static"
					id="pipeline_dropdown" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false">
					<span class="sr-only">Toggle Dropdown</span> All Agents <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
							class=" float-right">
					</button>
					<div class="dropdown-menu filter-menu dropdown-menu-right istar-dropdown-task-menu  dropdown-menu-lg-left position-absolute px-4"
					aria-labelledby="pipeline_dropdown" style="width: 350px; margin-top: 0px !important;">
								
							<ul class="dropdown-nav nav nav-tabs nav-mytabs filtertabs pt-2 d-flex align-items-end" id="pipelineTab" role="tablist">
							  <li class="nav-item">
							    <a class="nav-link active" id="pipeline_individual-tab" data-toggle="tab" href="#pipeline_individual" role="tab" aria-controls="pipeline_individual" aria-selected="true">Individual</a>
							  </li>
							  <li class="nav-item">
							    <a class="nav-link" id="pipeline_team-tab" data-toggle="tab" href="#pipeline_team" role="tab" aria-controls="pipeline_team" aria-selected="false">Team</a>
							  </li>
							 
							</ul>
							<div class="tab-content" id="pipelineTabContent">
							  <div class="tab-pane fade show active px-4 py-3" id="pipeline_individual" role="tabpanel" aria-labelledby="pipeline_individual-tab">
							  		<div class="input-group py-2">
										<input id="pipeline_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
										<div class="input-group-append">
											<button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
												<i class="fa fa-search f-12 brown-grey"></i>
											</button>
										</div>
									</div>
									
									<div class=" mb-2"  style="height:370px; overflow-x: hidden; overflow-y:auto;">
									
									<%for(int i=0; i<20;i++){ %>
                                    <div class="d-flex align-items-center pt-3">
                                    
                                    
				<input class="istar-checkbox pipelineagentcheckbox" data-id="<%=i %>" id="pipeline_associate-checkbox<%=i %>" type="checkbox">
                                        <label class="istar-checkbox-style" for="pipeline_associate-checkbox<%=i %>"></label>
						<img alt="Lead Image" title="Lead Name" src ="<%=baseURL%>/assets/image/11.png" class="rounded-circle ml-3 mr-2 hw-40">
					  <div>
                                        	<div class="f-14 font-weight-bold greyish-brown text-truncate" title="Robert Garcia">Robert Garcia</div>
                                        	<div class="f-12  brownish-grey text-truncate" title="team">Team -02</div>
                                        </div>
					</div>
					<%} %>
                                    </div>
                                    
                                     		
                                 </div>
                                			                                 
							  <div class="tab-pane fade px-4 py-3" id="pipeline_team" role="tabpanel" aria-labelledby="pipeline_team-tab">
							  		
							  		<div class="input-group py-2">
										<input id="pipeline_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
										<div class="input-group-append">
											<button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
												<i class="fa fa-search f-12 brown-grey"></i>
											</button>
										</div>
									</div>
									
									<div class="mb-2" style="height:370px; overflow-x: hidden; overflow-y:auto;">
									<%for(int j=0; j<20;j++){ %>
									<div class="d-flex align-items-center pt-3">
                                        <input class="istar-checkbox pipelineteamcheckbox" data-id="<%=j %>" id="pipeline_team-checkbox<%=j %>" type="checkbox">
                                        <label class="istar-checkbox-style" for="pipeline_team-checkbox<%=j%>"></label>
                                        <div class="f-12 ml-2 brownish-grey">Team -0<%=j%></div>
                                    </div>
                                    <%} %>
                                    </div>
                                    
                                     	
							  		
							  </div>
							</div>
							 <div class="w-100 text-center">
							 <button class="btn  rounded-0 theme_bg text-white f-14 font-weight-bold  mb-3 text-center px-3" style="min-width:200px;" id="pipeline_team_submit">Submit</button>
							</div>
					  </div>
					
				</div> 	

			</div>
		</div>
		<div
			class="row cream_white m-0 theme_solid_border_bottom justify-content-between align-items-center pl-40 pr-40 pt-10 pb-10"
			id='pipeline_filter'>
			<div class="col-md-10 d-flex p-0">
				<button
					class="theme_solid_border bg-white brown-grey rounded f-12 position-relative search-filter">
					2 BHK Flats <i
						class="fas fa-times-circle brown-grey f-14 cross-btn"></i>
				</button>
			</div>

			<div class="col-md-2 text-right p-0">
				<button type="submit"
					class="btn theme_color f-14 font-weight-bold p-0"
					id='pipeline_reset'>Reset</button>
			</div>
		</div>
		
		<div class="row cream_white m-0 theme_solid_border_bottom justify-content-between align-items-center pl-40 pr-40 pt-15 pb-15">
		<div class="card w-100 " style="box-shadow: 0 10px 40px 0 rgba(0, 0, 0, 0.1);">
				<div class="card-body  pt-30 pb-30 pl-30 pr-30" >
					<div class="row m-0">
					<%for(int i=0;i<3;i++){ %>
						<div class="col p-0 mr-30">
							<div class="f-16 greyish-brown fw-500 pb-10">Achieved</div>
							<div class="row m-0">
								<div class="col-md-4 p-0">
									<img src="<%=baseURL%>assets/image/Group 3614.svg" alt="call"
										class="task-dropdown">
								</div>
								<div class="col-md-4 p-0">
									<div class="greyish-brown f-12 fw-500 pb-5">Quarter 01</div>
									<div class="greyish-brown f-30  font-weight-bold">$ 100k</div>
									<div class="f-12 brown-grey">From 25 Deals</div>
								</div>
								<div class="col-md-4 p-0 border-right-dashed-separation">
									<div class="greyish-brown f-12 fw-500">YTD</div>
									<div class="greyish-brown f-30  font-weight-bold">$ 800k</div>
									<div class="f-12 brown-grey">From 68 Deals</div>
								</div>
							</div>
						</div>
						<%} %>
					</div>
				</div>
			</div>
		</div>

		<div class="row very-light-pink-grey-bg m-0">
			<div class="col-md-2 col-12 p-0 tabcol flex-grow-1 border-right">
				<div class="nav flex-column nav-pills h-100 pl-40"
					id="piplelinestage-tab" role="tablist" aria-orientation="vertical">
					<%
						for (int i = 0; i < 5; i++) {
							String isactive = "";
							if (i == 0) {
								isactive = "active";
							}
					%>
					<a
						class="nav-link pt-15 pb-15 pl-20 pr-20 <%=isactive%> text-truncate"
						title="Stage 01" id="stage-<%=i%>-tab" data-toggle="pill"
						href="#stage-<%=i%>" role="tab" aria-controls="stage-<%=i%>"
						aria-selected="true">Stage 0<%=i + 1%></a>
					<%
						}
					%>
				</div>
			</div>
			<div class="col-md-10 col-12 p-0 bg-white tabcontentcol">
				<div class="tab-content" id="piplelinestage-tabContent">
					<%
						for (int i = 0; i < 5; i++) {
							String isactive = "";
							if (i == 0) {
								isactive = "active";
							}
					%>
					<div class="tab-pane fade show p-0 <%=isactive%>" id="stage-<%=i%>"
						role="tabpanel" aria-labelledby="stage-<%=i%>-tab">

						<div
							class="row align-items-center m-0 theme_dotted_border_bottom shadow-bottom pl-45 pt-20 pb-20 pr-45">

							<div class="col-md-6 p-0">
								<div class="row m-0">
									<div class="col-md-3 col-6 p-0">
										<div class="font-weight-bold f-30">
											<i class="fas fa-dollar-sign black"></i><span
												class="pastel-red">&nbsp;7245</span>
										</div>
										<div class="f-12 brownish-grey">Achieved Value</div>
									</div>
									<div class="col-md-3 col-6 p-0">
										<div class="font-weight-bold f-30 greyish-brown">
											<i class="fas fa-dollar-sign black"></i>&nbsp;88765
										</div>
										<div class="f-12 brownish-grey">Pipeline Value</div>
									</div>
									<div class="col-md-3 col-6 p-0">
										<div class="font-weight-bold f-30 greyish-brown">25%</div>
										<div class="f-12 brownish-grey">Tentative</div>
									</div>
									<div class="col-md-3 col-6 p-0">
										<div class="font-weight-bold f-30 greyish-brown">75%</div>
										<div class="f-12 brownish-grey">Win Rate</div>
									</div>
								</div>

							</div>
							<div class="col-md-6 p-0">
								<div class="row m-0">
									<div class="col-md-6 p-0">
										<div class="font-weight-bold brownish-grey f-12 pb-5">
											Strong <i class="fal fa-info-circle soft-blue f-14"></i>
										</div>
										<div class="d-flex">
											<img src="<%=baseURL %>assets/image/introduction_signal.svg" class="pr-2 pb-2">
											<img src="<%=baseURL %>assets/image/softSkill_signal.svg" class="pr-2 pb-2">
										</div>
									</div>
									<div class="col-md-6 p-0">
										<div class="font-weight-bold brownish-grey f-12 pb-5">
											Weak <i class="fal fa-info-circle soft-blue f-14"></i>
										</div>
										<div class="d-flex">
											<img src="<%=baseURL %>assets/image/introduction_signal.svg" class="pr-2 pb-2">
											<img src="<%=baseURL %>assets/image/softSkill_signal.svg" class="pr-2 pb-2">
										</div>
									</div>
								</div>
							</div>


						</div>

						<div
							class="row align-items-center theme_solid_border_bottom m-0 pl-45 pt-20 pb-20 pr-40">
							<div class="col-md-2 col p-0">
								<button class="btn p-0 black f-14 font-weight-bold">
									Lead Name <i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
							<div class="col-md-2 col p-0">
								<button class="btn p-0 black f-14 font-weight-bold">
									Contact Person <i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
							<div class="col-md-2 col p-0">
								<button class="btn p-0 black f-14 font-weight-bold">
									Contact Details <i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
							<div class="col-md-6 col justify-content-lg-start  p-0">
								<button class="btn p-0 black f-14 font-weight-bold">
									Deal Journey <i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
						</div>

						<%
							for (int j = 0; j < 5; j++) {
									String bgcolor = "bg-white";
									if (j % 2 != 0) {
										bgcolor = "very-light-pink-grey-bg";
									}
						%>
						<div
							class="row m-0 theme_solid_border_bottom align-items-center pl-45 pr-40 pt-30 pb-30 <%=bgcolor%>">
							<div class="col-md-2 p-0">
								<div class="f-14 black fw-500 text-truncate"
									title="Accenture Consulting Inc.">Accenture Consulting
									Inc.</div>
								<div class="f-14 brownish-grey fw-500">$ 290</div>
							</div>

							<div class="col-md-2 p-0">
								<div class="f-14 black fw-500 text-truncate"
									title="Robert Wolken">Robert Wolken</div>
								<div class="f-14 brownish-grey fw-500 text-truncate"
									title="Manager">Manager</div>
							</div>

							<div class="col-md-2 p-0">
								<div class="f-14 black fw-500 text-break">Info@accenture.com</div>
								<div class="f-14 brownish-grey fw-500 text-truncate" title="888">+91
									888 898 8989</div>
							</div>

							<div class="col-md-6 p-0">
								<div class="row  m-0">
									<div class="col-md-11 p-0">
										<div class="row position-relative justify-content-between m-0">
											<div class="line"></div>
											<div class="col-md-1 p-0">
												<i class="fas fa-check-circle pl-2 tea-color"></i>
												<div class="brownish-grey f-14">Need</div>
											</div>
											<div class="col-md-1 text-center p-0">
												<i class="fas fa-check-circle  tea-color"></i>
												<div class="brownish-grey f-14">Budget</div>
											</div>
											<div class="col-md-1 text-center p-0">
												<i class="fas fa-check-circle  tea-color"></i>
												<div class="brownish-grey f-14">Authorized</div>
											</div>
											<div class="col-md-1 text-center p-0">
												<i class="fas fa-times-circle pastel-red"></i>
												<div class="brownish-grey f-14">Urgency</div>
											</div>



										</div>
									</div>
									<div class="col-md-1 p-0 text-right h-100 ">
										<div class="dropdown dropleft pt-20 d-inline">
											<button class="dropdown-icon-btn p-0 text-right"  data-display="static"
												type="button" id="dropdownMenuButton" data-display="static"
												data-toggle="dropdown" aria-haspopup="true"
												aria-expanded="false">
												<i class="fas fa-ellipsis-v f-12 brown-grey mt-3"></i>
											</button>
											<div
												class="dropdown-menu dropdown-menu-right istar-dropdown-menu arrow-left"
												aria-labelledby="dropdownMenuButton">
												<button class="dropdown-item" href="#">
													<img src="<%=baseURL%>assets/image/won.svg" alt="won"
														srcset="" class="mr-2"> Won
												</button>
												<button class="dropdown-item" href="#">
													<img src="<%=baseURL%>assets/image/lost.svg" alt="lost"
														srcset="" class="mr-2">Lose
												</button>
												<button class="dropdown-item" href="#" data-toggle="modal" data-target="#changeStageModal">
													<img src="<%=baseURL%>assets/image/stats.svg" alt="edit"
														srcset="" class="mr-2" height="20" width="24">Change Stage
												</button>

												<button class="dropdown-item"  data-toggle="modal" data-target="#assignOwnerModal">
													<img src="<%=baseURL%>assets/image/people.svg" alt="details" 
														srcset="" class="mr-2">Change Owner 
												</button>
											</div>
										</div>
									</div>

								</div>
							</div>
						</div>
						<%
							}
						%>

						<div class="row  m-0 ">
							<div class="col-md-12  d-flex justify-content-end p-0">
								<div class="page">
									<ul class="salesken pagination  m-0 pt-30 pb-40 pr-40"></ul>
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

	<!-- start of change stage modal -->
		<div class="modal fade" id="changeStageModal" tabindex="-1"
			role="dialog" aria-labelledby="changeStageModalTitle"
			aria-hidden="true">
			<div class="modal-dialog modal-lg modal-dialog-centered"
				role="document">
				<div class="modal-content rounded-0 ">
					<div class="modal-header shadow-bottom pt-25 pb-25  pl-30 pr-30 ">
						<h5 class="modal-title greyish-brown f-18 font-weight-bold mb-0">Change Stage</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<img src="<%=baseURL%>assets/image/close.svg" alt="taskicon"
								class="rounded-circle hw-24 task-icon">
						</button>
					</div>
					<div class="modal-body p-0 pr-30 pl-30">
						<div class="pt-40 greyish-brown font-weight-bold f-18 pb-10">TEK Consulting Inc.</div>
						<div class="row m-0 pb-20 border_bottom_1_dashed">
							<div class="col-md-4 border-right-dashed-separation p-0">
								<div class="f-14 brownish-grey">Contact Person</div>
								<div class="fw-500 f-16 black">Johnni Owens</div>
							</div>
							<div class="col-md-4 border-right-dashed-separation p-0 pl-15">
								<div class="f-14 brownish-grey">Agent</div>
								<div class="fw-500 f-16 black">Raul Woods</div>
							</div>
							<div class="col-md-4 p-0 pl-15">
								<div class="f-14 brownish-grey">Current Stage</div>
								<div class="fw-500 f-16 black">Stage 01</div>
							</div>
						</div>
						
						<div class="row m-0">
							<div class="col-md-6 p-0">
								<div class="fw-500 f-14 black pb-10 pt-20">Stage Type</div>
								<div class="istar-dropdown">
								<button class="custom-modal-input w-100 pl-2 d-flex h-35"
									style="justify-content: space-between;" id="stageType"
									data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="false">Select here <i class="fas fa-chevron-down very-light-pink f-12 align-self-center"></i>
								</button>
								<div
									class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu w-100"
									 aria-labelledby="stageType">
									<button class="dropdown-item" type="button">Stage Type 1</button>
									<button class="dropdown-item" type="button">Stage Type 2</button>
									<button class="dropdown-item" type="button">Stage Type 3</button>
									<button class="dropdown-item" type="button">Stage Type 4</button>
								</div>
								</div>
							</div>
						</div>
						<div class="row pb-40 pt-20 m-0">
							<div class="col-md-12 p-0">
								<div class="fw-500 f-14 black pb-10">Reason</div>
								<textarea class="form-control custom-modal-textarea f-14 brown-grey w-100 p-2"
									id="reasontochangestage" name="reasontochangestage" rows="6" placeholder="Type here"></textarea>
							</div>
						</div>
							
						
					</div>
					<div class="modal-footer p-0 pt-30 pb-30 pl-30	pr-30">
						<button type="submit"
							class="btn theme_color f-14 font-weight-bold m-0 pr-20">Reset</button>
						<button type="button"
							class="btn big_button rounded-0 f-14 font-weight-bold m-0"
							id="create">SUBMIT</button>
					</div>
				</div>
			</div>
		</div>
		<!-- end of change stage modal -->
		
		
		<!-- start of change owner modal -->
		<div class="modal fade" id="assignOwnerModal" tabindex="-1" role="dialog" aria-labelledby="assignOwnerModalTitle"
			aria-hidden="true">
			<div class="modal-dialog modal-lg modal-dialog-centered"
				role="document">
				<div class="modal-content rounded-0 ">
					<div class="modal-header shadow-bottom pt-25 pb-25  pl-30 pr-30 ">
						<h5 class="modal-title greyish-brown f-18 font-weight-bold mb-0">Assign Owner</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<img src="<%=baseURL%>assets/image/close.svg" alt="taskicon"
								class="rounded-circle hw-24 task-icon">
						</button>
					</div>
					<div class="modal-body p-0">
						<div class="row m-0 align-items-center cream_white pt-10 pb-10 pr-30 pl-30">
							<div class="col-md-6 text-result-found p-0">
									<strong class="number-of-results ">504</strong> Results Found
							</div>
							<div class="col-md-6 d-lg-flex justify-content-md-end p-0">
								<div class="input-group position-relative search_width ">
								<img src="<%=baseURL%>assets/image/search.svg" alt="edit" class=" searchBox">
									<input id="" class="form-control  custom-taskborder brown-grey  f-14 search_height custom-result-selects"
										type="search" placeholder="Search" style="padding-right:30px">
								</div>
							</div>
						</div>
						
						<div style="height:360px; overflow-x: none; overflow-y:auto;">
						<%for(int j=0; j<20;j++){ %>
						<div class="d-flex align-items-center pt-10 pb-10 pr-30 pl-30 border-bottom-separation " >
                             <input class="istar-checkbox" data-id="<%=j %>" id="owner-checkbox<%=j %>" type="checkbox">
                             <label class="istar-checkbox-style" for="owner-checkbox<%=j%>"></label>
                             <div class="d-flex w-100 m-0 align-items-center" >
                             	<div class="col-md-4">
                             		<div class="d-flex align-items-center">
                             			<img src="<%=baseURL%>assets/image/37.jpg" class="rounded-circle hw-40">
                             			<div class="ml-2">
                             				<div class="f-14 greyish-brown">Stanley Howard</div>
                             				<div class="f-12 brown-grey">Associate</div>
                             			</div>
                             		</div>
                             	</div>
                             	<div class="col-md-4 f-14 greyish-brown">stanley@gmail.com</div>
                             	<div class="col-md-4 f-14 greyish-brown">+91 445 546 6456</div>
                             </div>
                         </div>
                         <%} %>
						</div>
					</div>
					<div class="modal-footer p-0 pt-30 pb-30 pl-30	pr-30">
						<button type="button"
							class="btn theme_color f-14 font-weight-bold m-0 pr-20"  data-dismiss="modal">Reset All</button>
						<button type="button"
							class="btn big_button rounded-0 f-14 font-weight-bold m-0"  data-dismiss="modal"
							id="submit">SUBMIT</button>
					</div>
				</div>
			</div>
		</div>
		<!-- end of change owner modal -->

	</div>
	</main>

	<script src="<%=baseURL%>assets/js/jquery-3.4.1.min.js"></script>
	<script src="<%=baseURL%>assets/js/popper.min.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap.min.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap-datepicker.min.js"></script>
	<script src="<%=baseURL%>assets/js/pagination.min.js"></script>
	<script src="<%=baseURL%>assets/js/salesken.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap-select.min.js"></script>
	<script>
		$(document).ready(function() {
			$('.salesken.navbar-nav>li').removeClass('active');
			$($('.salesken.navbar-nav>li')[2]).addClass('active')
			$('.page').Pagination({ // id to initial draw and use pagination
				size : 87, // size of list input
				pageShow : 5, // 5 page-item per page
				page : 1, // current page (default)
				limit : 10, // current limit show perpage (default)
			}, function(obj) { // callback function, you can use it to re-draw table or something
				console.log(obj)
			});
		});
	</script>
	<script>
		$(document).ready(function() {
			$('#pipeline_datepicker').datepicker({
				autoclose : true
			});

			$('.filter-menu.dropdown-menu').click(function(e) {
				e.stopPropagation();
			});

			$('.filtertabs>li>.nav-link').click(function(e) {
				$($(this).attr('href') + '-tab').tab('show')
			});
			$('.agentteamsubmit').click(function(e) {
				$('#activity').dropdown('hide');
			});
			$('#pipeline_reset').click(function() {
				$('#pipeline_filter').hide();
			});
			
			
			$('#pipeline_team_submit').click(function(e) {
				var agent_array=[];
				var team_array=[];
				
				$('.pipelineagentcheckbox').each(function(){
					if($(this).prop('checked')===true){
						agent_array.push($(this).data('id'));
					}
				});
				$('.pipelineteamcheckbox').each(function(){
					if($(this).prop('checked')===true){
						team_array.push($(this).data('id'));
					}
				});
				
				if(agent_array.length==0 && team_array.length==0){
					alert("Please select atleast one");
				}else{
					$('#pipeline_dropdown').dropdown('hide');
				}
				console.log(agent_array)
				console.log(team_array)
			});
			
		});

		function showCalendar() {
			$('#pipeline_datepicker').datepicker('show')
		}
	</script>
</body>
</html>