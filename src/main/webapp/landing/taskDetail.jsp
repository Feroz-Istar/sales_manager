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
</head>
<body data-base-url="<%=baseURL%>">
	<jsp:include page="../navbar/nav.jsp"></jsp:include>
	<main role="main">	
	<div class="container-fluid salesken_container">
		<div class="row grey-white-bg align-items-center py-3 border-bottom-separation">
		<div class="col-md-6 col-12 d-flex align-items-center mb-4 mb-md-0" > 
		<div class="display-1 black f-20 border-right-separation pr-3 ">Task
				Details</div>
							<div class="pl-3 pr-2 f-12 brown-grey ">Task Detail</div>
					<i class="fas fa-chevron-circle-right pr-2 f-12 brown-grey"></i>
					<div class=" f-12 brown-grey " id="breadcrumb">Ongoing</div>
		
		</div>
			<div class="col-md-6 col-12 d-flex justify-content-md-end"> 
			
			
			<div class="input-group  pl-2 pr-2 search_width">
                <input id="" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
                <div class="input-group-append">
                    <button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="    " >
                        <i class="fa fa-search f-12 brown-grey"></i>
                    </button>
                </div>
            </div>
			
			<div class="istar-dropdown-task">
				<button class="btn btn-style px-2 f-12 dropdown-toggle"
				type="button" id="newTaskMenuButton" data-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false">NEW TASK</button>
				
					 <div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu dropdown-menu-lg-left" aria-labelledby="newTaskMenuButton">
								    <button class="dropdown-item" type="button" onclick="window.location.href = 'createTask.jsp'">
								    <img src="<%=baseURL%>assets/image/calltask.svg" class="task-dropdown">
								    Call Task</button>
								    <button class="dropdown-item" type="button">
								    <img src="<%=baseURL%>assets/image/emailtask.svg" class="task-dropdown">
								    Email Task</button>
								    <button class="dropdown-item" type="button">
								    <img src="<%=baseURL%>assets/image/webinartask.svg" class="task-dropdown">
								    Webinar Task
								    </button>
								    <button class="dropdown-item" type="button">
								    <img src="<%=baseURL%>assets/image/calltask.svg" class="task-dropdown">
								    Presentation
								    </button>
					</div>
				
			</div>
						
			</div>
	
	</div>
	<div class="row">
	<div class="col-md-12 bg-white">

				<nav>
				  <div class="nav nav-tabs nav-mytabs taskdetailtab pt-2" id="nav-tabs" role="tablist">
				  	<a class="nav-item nav-link show active" id="nav-ongoing-tab"
										data-toggle="tab" href="#nav-ongoing" role="tab"
										aria-controls="nav-ongoing" aria-selected="true">Ongoing</a> <a
										class="nav-item nav-link" id="nav-upcoming-tab" data-toggle="tab"
										href="#nav-upcoming" role="tab" aria-controls="nav-upcoming"
										aria-selected="false">Upcoming</a> <a class="nav-item nav-link"
										id="nav-completed-tab" data-toggle="tab" href="#nav-completed"
										role="tab" aria-controls="nav-completed" aria-selected="false">Completed</a>  </div>
				</nav>
				<div class="tab-content mytab-content p-0" id="nav-tasktabsContent">
					<div class="tab-pane fade show active" id="nav-ongoing"
						role="tabpanel" aria-labelledby="nav-ongoing-tab">
						<!-- start of ongoing tab content -->

						<div class="row align-items-center  border-bottom-separation  pt-3 pb-3">
							<div class="col-md-3 text-result-found	">
								<strong class="number-of-results">03</strong> Results Found
							</div>
							<div class="col-md-9 d-md-flex justify-content-end  ">
								
									<select
										class=" custom-modal-input custom-result-selects"
										id="deal_value">
										<option>Filter by Deal Value</option>
										<option>Default select</option>
									</select> <select
										class="  custom-result-selects"
										id="stages">
										<option>Filter by Stages</option>
										<option>Default select</option>
									</select> 	
									<div class="istar-dropdown-task">
										<button
											class="istar-dropdown-arrow dropdown-toggle"
											id="activity" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 
											<span class="sr-only">Toggle Dropdown</span>
    										Filter by Activities &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
										</button>
										 <div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu">
										    <button class="dropdown-item" type="button">
										    <img src="<%=baseURL%>assets/image/calltask.svg" class="task-dropdown">
										    Call Task</button>
										    <button class="dropdown-item" type="button">
										    <img src="<%=baseURL%>assets/image/emailtask.svg" class="task-dropdown">
										    Email Task</button>
										    <button class="dropdown-item" type="button">
										    <img src="<%=baseURL%>assets/image/webinartask.svg" class="task-dropdown">
										    Webinar Task
										    </button>
										    <button class="dropdown-item" type="button">
										    <img src="<%=baseURL%>assets/image/calltask.svg" class="task-dropdown">
										    Presentation
										    </button>
										  </div>
										
									</div> 
									<select
										class="  custom-result-selects"
										id="status">
										<option>Filter by Status</option>
										<option>Default select</option>
									</select>
	
									<div class="dropdown dropleft" id="filterbutton">
										<button
											class="filter-btn"
											id="activity" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 
											<i class="fas fa-filter filtericon"></i>
										</button>
										 <div class="dropdown-menu filter-menu dropdown-menu-lg-right position-absolute px-4" aria-labelledby="activity" style="width:350px">
													
												<ul class="nav nav-tabs nav-mytabs filtertabs pt-2" id="myTab" role="tablist">
												  <li class="nav-item">
												    <a class="nav-link active" id="individual-tab" data-toggle="tab" href="#individual" role="tab" aria-controls="individual" aria-selected="true">Individual</a>
												  </li>
												  <li class="nav-item">
												    <a class="nav-link" id="team-tab" data-toggle="tab" href="#team" role="tab" aria-controls="team" aria-selected="false">Team</a>
												  </li>
												 
												</ul>
												<div class="tab-content" id="myTabContent">
												  <div class="tab-pane fade show active px-4 py-3" id="individual" role="tabpanel" aria-labelledby="individual-tab">
												  		<div class="input-group py-2">
															<input id="individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
															<div class="input-group-append">
																<button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
																	<i class="fa fa-search f-12 brown-grey"></i>
																</button>
															</div>
														</div>
														
														<div class=" mb-2"  style="height:370px; overflow-x: hidden; overflow-y:auto;">
														
														<%for(int i=0; i<20;i++){ %>
					                                    <div class="d-flex align-items-center pt-3">
					                                    
					                                    
									<input class="istar-checkbox agentcheckbox" data-id="<%=i %>" id="associate-checkbox<%=i %>" type="checkbox">
					                                        <label class="istar-checkbox-style" for="associate-checkbox<%=i %>"></label>
											<img src ="<%=baseURL%>/assets/image/11.png" class="rounded-circle ml-3 mr-2 hw-40">
										  <div>
					                                        	<div class="f-14 font-weight-bold greyish-brown">Robert Garcia</div>
					                                        	<div class="f-12  brownish-grey">Team -02</div>
					                                        </div>
										</div>
										<%} %>
					                                    </div>
					                                    
					                                     		
					                                 </div>
					                                			                                 
												  <div class="tab-pane fade px-4 py-3" id="team" role="tabpanel" aria-labelledby="team-tab">
												  		
												  		<div class="input-group py-2">
															<input id="individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
															<div class="input-group-append">
																<button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
																	<i class="fa fa-search f-12 brown-grey"></i>
																</button>
															</div>
														</div>
														
														<div class="mb-2" style="height:370px; overflow-x: hidden; overflow-y:auto;">
														<%for(int j=0; j<20;j++){ %>
														<div class="d-flex align-items-center pt-3">
					                                        <input class="istar-checkbox teamcheckbox" data-id="<%=j %>" id="team-checkbox<%=j %>" type="checkbox">
					                                        <label class="istar-checkbox-style" for="team-checkbox<%=j%>"></label>
					                                        <div class="f-12 ml-2 brownish-grey">Team -0<%=j%></div>
					                                    </div>
					                                    <%} %>
					                                    </div>
					                                    
					                                     	
												  		
												  </div>
												</div>
												 <div class="w-100 text-center">
												 <button class="btn  rounded-0 theme_bg text-white f-14 font-weight-bold agentteamsubmit mb-3 text-center px-3" style="min-width:200px;">Submit</button>
												</div>
										  </div>
										
									</div> 
								
							</div>
						</div>

						<div class="row very-light-pink-grey-bg">
							<div class="col-md-3 pr-0">
								<div class="nav flex-column nav-pills" id="taskdetail-tab-list"
									role="tablist" aria-orientation="vertical">
									<%
										for (int i = 0; i < 3; i++) {
											String isactive = "";
											if (i == 0) {
												isactive = "active";
											}
									%>
									<div class="nav-link <%=isactive%> border-bottom-separation"
										id="v-pills-<%=i%>-tabs" data-toggle="pill"
										href="#v-pills-<%=i%>" role="tab"
										aria-controls="v-pills-<%=i%>" aria-selected="true">


										<div class="row align-items-center minh-100">
											<div class="col-md-9">
												<div class="d-flex flex-row mb-1">
													<div
														class="f-16 font-weight-bold border-right-separation pr-2 theme_color">$ 500</div>
													<div
														class="pl-2 f-12 align-self-center signal-analytical font-weight-bold">Analytical</div>
												</div>
												<div class="f-16 font-weight-bold mb-1 bblack">Globex
													Corporation Inc.</div>
												<div class="f-12 brown-grey">Initiated at 11:00 PM</div>
											</div>
											<div class="col-md-3">
												<div class="d-flex flex-row align-items-center">
													<img src="<%=baseURL%>assets/image/calltask.svg"
														class="rounded-circle hw-30 task-icon" /> <img
														src="<%=baseURL%>assets/image/37.jpg"
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


							<div class="col-md-9 bg-white">
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
										<div class="row">
											<div class="col-md-11">
											
											<div class="shadow-bottom py-4">
												<div class="row justify-content-between">
												    <div class="col-md-4 f-18 font-weight-bold greyish-brown">
												      Globex Corporation. Inc.
												    </div>
												    <div class="col-md-4 f-14 font-weight-bold d-flex justify-content-end align-items-center theme_color cursor-pointer" onclick="window.location.href = 'task_lead_detail.jsp'">
												     View More <i class="fas fa-chevron-circle-right ml-1 pr-2"></i>
												    </div>
												 </div>
												<div class="row align-items-center py-2">
													<div class="col-md-2">
														<div class="f-14 brownish-grey">Contact Person</div>
														<div class="f-16 font-weight-bold bblack ">Rosemary Garcia</div>
													</div>
													<div class="col-md-2">
														<div class="f-14 brownish-grey">Agent</div>
														<div class="f-16 font-weight-bold bblack ">Marry Vasquez</div>
													</div>
													<div class="col-md-5"></div>
													<div class="col-md-3 d-flex justify-content-end">
														<button class="btn btn-join f-12 font-weight-bold mr-2 istar-btn-hover">JOIN NOW</button>
														<button class="btn btn-listen f-12 font-weight-bold">LISTEN</button>
													</div>
												</div>
												</div>
												
												<div class="dotted-bottom-separation py-4">
													<div class="row">
														<div class="col-md-3 border-right-separation">
															<div class="brownish-grey f-14">Task Type</div>
															<div class="f-16 font-weight-bold bblack ">Call</div>
														</div>
														<div class="col-md-3 border-right-separation">
															<div class="brownish-grey f-14">Initiated At</div>
															<div class="f-16 font-weight-bold bblack ">11:00 AM	</div>
														</div>
														<div class="col-md-3 border-right-separation">
															<div class="brownish-grey f-14">Deal Value</div>
															<div class="f-16 font-weight-bold bblack ">$500</div>
														</div>
														<div class="col-md-3">
															<div class="brownish-grey f-14">Pipeline Detail </div>
															<div class="f-16 font-weight-bold bblack ">Stage 02</div>
														</div>
													</div>
												</div>
												
												
											</div>
											
											
											
											<div class="col-md-1 p-0">
												<ul class="list-group shadow d-flex flex-column h-100">
													<li
														class="notespopup list-group-item d-flex flex-column justify-content-center align-items-center minh-100" >
														<img src="<%=baseURL%>assets/image/calltask.svg" />
														<div class="f-12 pt-1 greyish-brown">Notes</div>
													</li>
													<li
														class="list-group-item d-flex flex-column justify-content-center align-items-center minh-100">
														<img src="<%=baseURL%>assets/image/calltask.svg" />
														<div class="f-12 pt-1 greyish-brown">Cues</div>
													</li>
													<li
														class="list-group-item d-flex flex-column justify-content-center align-items-center minh-100">
														<img src="<%=baseURL%>assets/image/calltask.svg" />
														<div class="f-12 pt-1 greyish-brown">CRM</div>
													</li>
													<li
														class="list-group-item d-flex flex-column justify-content-center align-items-center minh-100">
														<img src="<%=baseURL%>assets/image/calltask.svg" />
														<div class="f-12 pt-1 greyish-brown">Chat</div>
													</li>
													<li
														class=" flex-grow list-group-item d-flex flex-column justify-content-center align-items-center minh-100"
														style="height: calc(100% - 80px);"></li>
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
						
						
						<div class="row align-items-center  border-bottom-separation  pt-3 pb-3">
							<div class="col-md-3 text-result-found	">
								<strong class="number-of-results">04</strong> Results Found
							</div>
							<div class="col-md-9 d-md-flex justify-content-end  ">
									<div class="input-group date custom-calendar">
										<input type="text" id="upcoming_datepicker" class="form-control  custom-dateselect"
											value="12-02-2012">
										<div class="input-group-addon" onclick="showCalendar()">
											<img src ="<%=baseURL%>/assets/image/calendar.svg" class="pr-1">
										</div>
									</div>	
									<select
										class="  custom-result-selects"
										id="stages">
										<option>Filter by Stages</option>
										<option>Default select</option>
									</select> 	
									<div class="istar-dropdown mr-2 custom-taskborder ">
										<button
											class="istar-dropdown-arrow dropdown-toggle"
											id="activity" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 
											<span class="sr-only">Toggle Dropdown</span>
    										Filter by Activities &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
										</button>
										 <div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu">
										    <button class="dropdown-item" type="button">
										    <img src="<%=baseURL%>assets/image/calltask.svg" class="task-dropdown">
										    Call Task</button>
										    <button class="dropdown-item" type="button">
										    <img src="<%=baseURL%>assets/image/emailtask.svg" class="task-dropdown">
										    Email Task</button>
										    <button class="dropdown-item" type="button">
										    <img src="<%=baseURL%>assets/image/webinartask.svg" class="task-dropdown">
										    Webinar Task
										    </button>
										    <button class="dropdown-item" type="button">
										    <img src="<%=baseURL%>assets/image/calltask.svg" class="task-dropdown">
										    Presentation
										    </button>
										  </div>
										
									</div> 
									<select
										class="  custom-result-selects"
										id="status">
										<option>Filter by Status</option>
										<option>Default select</option>
									</select>
	
									<jsp:include page="../popover/agentteamfilter.jsp"></jsp:include>
								
							</div>
						</div>

						<div class="row very-light-pink-grey-bg">
							<div class="col-md-3 pr-0">
								<div class="nav flex-column nav-pills" id="taskdetail-tab-list"
									role="tablist" aria-orientation="vertical">
									<%
										for (int i = 0; i < 4; i++) {
											String isactive = "";
											if (i == 0) {
												isactive = "active";
											}
									%>
									<div class="nav-link <%=isactive%> border-bottom-separation"
										id="v-pills-<%=i%>-tabs" data-toggle="pill"
										href="#v-pills-<%=i%>" role="tab"
										aria-controls="v-pills-<%=i%>" aria-selected="true">


										<div class="row align-items-center minh-100">
											<div class="col-md-9">
												<div class="f-16 greyish-brown mb-1">11:00 AM</div>
												<div class="f-16 font-weight-bold mb-1">Opentech Pvt. Ltd.</div>
												<div class="f-12 brown-grey">$ 500 Deal Value</div>
											</div>
											<div class="col-md-3">
												<div class="d-flex flex-row align-items-center">
													<img src="<%=baseURL%>assets/image/calltask.svg"
														class="rounded-circle hw-30 task-icon" /> <img
														src="<%=baseURL%>assets/image/37.jpg"
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


							<div class="col-md-9 bg-white">
								<div class="tab-content" id="taskdetail-tab-listContent">
									<%
										for (int i = 0; i < 4; i++) {
											String isactive = "";
											if (i == 0) {
												isactive = "active";
											}
									%>
									<div class="tab-pane fade show <%=isactive%>"
										id="v-pills-<%=i%>" role="tabpanel"
										aria-labelledby="v-pills-<%=i%>-tabs">
										<div class="row">
											<div class="col-md-11">
											
											<div class="shadow-bottom py-4">
												<div class="row justify-content-between">
												    <div class="col-md-4 f-18 font-weight-bold greyish-brown">
												      Opentech Pvt. Ltd.
												    </div>
												    <div class="col-md-4 f-14 font-weight-bold d-flex justify-content-end align-items-center theme_color cursor-pointer"  onclick="window.location.href = 'task_lead_detail.jsp'">
												     View More <i class="fas fa-chevron-circle-right ml-1 pr-2"></i>
												    </div>
												 </div>
												<div class="row align-items-center py-2">
													<div class="col-md-2">
														<div class="f-14 brownish-grey">Contact Person</div>
														<div class="f-16 font-weight-bold">Deann Harper</div>
													</div>
													<div class="col-md-2">
														<div class="f-14 brownish-grey">Agent</div>
														<div class="f-16 font-weight-bold">Bradley Obrien</div>
													</div>
													<div class="col-md-5"></div>
													<div class="col-md-3 d-flex justify-content-end">
														<button class="btn btn-listen f-12 font-weight-bold" data-toggle="modal" data-target="#rescheduleCenter">RESCHEDULE</button>
													</div>
												</div>
												</div>

												


												<div class="dotted-bottom-separation py-4">
													<div class="row">
														<div class="col-md-3 border-right-separation">
															<div class="brownish-grey f-14">Task Type</div>
															<div class="f-16 font-weight-bold">Call</div>
														</div>
														<div class="col-md-3 border-right-separation">
															<div class="brownish-grey f-14">Timing</div>
															<div class="f-16 font-weight-bold">11:00 AM	</div>
														</div>
														<div class="col-md-3 border-right-separation">
															<div class="brownish-grey f-14">Deal Value</div>
															<div class="f-16 font-weight-bold">$500</div>
														</div>
														<div class="col-md-3">
															<div class="brownish-grey f-14">Pipeline Detail </div>
															<div class="f-16 font-weight-bold">Stage 02</div>
														</div>
													</div>
												</div>
												
												<div class="d-flex flex-column justify-content-center align-items-center py-4">
													<img src="<%=baseURL%>assets/image/timer.svg" class="mb-1 time-img-size">
													<div class="f-16 font-weight-bold mb-1">Few minutes left !</div>
													<div class="f-12 brownish-grey">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</div>
												</div>
												
											</div>
											
											
											
											<div class="col-md-1 p-0">
												<ul class="list-group shadow d-flex flex-column h-100">
													<li
														class="notespopup list-group-item d-flex flex-column justify-content-center align-items-center minh-100" >
														<img src="<%=baseURL%>assets/image/calltask.svg" />
														<div class="f-12 pt-1 greyish-brown">Notes</div>
													</li>
													<li
														class="list-group-item d-flex flex-column justify-content-center align-items-center minh-100">
														<img src="<%=baseURL%>assets/image/calltask.svg" />
														<div class="f-12 pt-1 greyish-brown">Cues</div>
													</li>
													<li
														class="list-group-item d-flex flex-column justify-content-center align-items-center minh-100">
														<img src="<%=baseURL%>assets/image/calltask.svg" />
														<div class="f-12 pt-1 greyish-brown">CRM</div>
													</li>
													<li
														class="list-group-item d-flex flex-column justify-content-center align-items-center minh-100">
														<img src="<%=baseURL%>assets/image/calltask.svg" />
														<div class="f-12 pt-1 greyish-brown">Chat</div>
													</li>
													<li
														class=" flex-grow list-group-item d-flex flex-column justify-content-center align-items-center minh-100"
														style="height: calc(100% - 80px);"></li>
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
						<div class="row align-items-center  border-bottom-separation  pt-3 pb-3">
							<div class="col-md-3 text-result-found	">
								<strong class="number-of-results">04</strong> Results Found
							</div>
							<div class="col-md-9 d-md-flex justify-content-end  ">
								<div class="input-group date custom-calendar">
									<input type="text" id="task_datepicker" class="form-control  custom-dateselect"
										value="12-02-2012">
									<div class="input-group-addon" onclick="showCalendar()">
										<img src ="<%=baseURL%>/assets/image/calendar.svg" class="pr-1">
									</div>
								</div>	
								<select
									class="  custom-result-selects"
									id="stages">
									<option>Filter by Stages</option>
									<option>Default select</option>
								</select> 	
								<div class="istar-dropdown mr-2 custom-taskborder ">
									<button
										class="istar-dropdown-arrow dropdown-toggle"
										id="activity" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 
										<span class="sr-only">Toggle Dropdown</span>
   										Filter by Activities &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
									</button>
									 <div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu">
									    <button class="dropdown-item" type="button">
									    <img src="<%=baseURL%>assets/image/calltask.svg" class="task-dropdown">
									    Call Task</button>
									    <button class="dropdown-item" type="button">
									    <img src="<%=baseURL%>assets/image/emailtask.svg" class="task-dropdown">
									    Email Task</button>
									    <button class="dropdown-item" type="button">
									    <img src="<%=baseURL%>assets/image/webinartask.svg" class="task-dropdown">
									    Webinar Task
									    </button>
									    <button class="dropdown-item" type="button">
									    <img src="<%=baseURL%>assets/image/calltask.svg" class="task-dropdown">
									    Presentation
									    </button>
									  </div>
									
								</div> 
								<select
									class="  custom-result-selects"
									id="status">
									<option>Filter by Status</option>
									<option>Default select</option>
								</select>
								<select
									class="  custom-result-selects"
									id="leads">
									<option>Filter by Leads</option>
									<option>Default select</option>
								</select>
							</div>
						</div>
						
						<div class="row very-light-pink-grey-bg">
							<div class="col-md-3 pr-0">
								<div class="nav flex-column nav-pills" id="taskdetail-tab-list"
									role="tablist" aria-orientation="vertical">
									<%
										for (int i = 0; i < 4; i++) {
											String isactive = "";
											if (i == 0) {
												isactive = "active";
											}
									%>
									<div class="nav-link <%=isactive%> border-bottom-separation"
										id="v-pills-<%=i%>-tabs" data-toggle="pill"
										href="#v-pills-<%=i%>" role="tab"
										aria-controls="v-pills-<%=i%>" aria-selected="true">


										<div class="row align-items-center minh-100">
											<div class="col-md-10">
												<div class="d-flex flex-row mb-1">
													<div
														class="f-16 font-weight-bold border-right-separation pr-2 theme_color">$ 500</div>
													<div
														class="pl-2 f-12 align-self-center signal-analytical font-weight-bold">Analytical</div>
												</div>
												<div class="f-16 font-weight-bold mb-1 bblack">Globex
													Corporation Inc.</div>
												<div class="f-12 brown-grey">Initiated at 11:00 PM</div>
											</div>
											<div class="col-md-2">
												<div class="d-flex flex-row align-items-center">
													<img src="<%=baseURL%>assets/image/calltask.svg"
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


							<div class="col-md-9 bg-white">
								<div class="tab-content" id="taskdetail-tab-listContent">
									<%
										for (int i = 0; i < 4; i++) {
											String isactive = "";
											if (i == 0) {
												isactive = "active";
											}
									%>
									<div class="tab-pane fade show <%=isactive%>"
										id="v-pills-<%=i%>" role="tabpanel"
										aria-labelledby="v-pills-<%=i%>-tabs">
											<div class="row h-100">
											<div class="col-md-11">
												<div class="row pt-2 pl-3 justify-content-between">
													<div class="col-9">
														<p class="greyish-brown f-18 font-weight-bold">Call
															Task</p>
													</div>
													<div class="col-3">
														<div class="d-flex justify-content-end">
															<img src="<%=baseURL%>assets/image/heart.svg" class="mr-2">
														<img src="<%=baseURL%>assets/image/message.svg" class="mr-2">
														<img src="<%=baseURL%>assets/image/reply.svg" class="mr-2">
														<div class="f-14 font-weight-bold theme_color cursor-pointer align-self-center" onclick="window.location.href = 'task_lead_detail.jsp'">
												    		 View More <i class="fas fa-chevron-circle-right ml-1 pr-2"></i>
												    </div>
														</div>
													</div>
												</div>
												<div class="row pt-2 pl-3">
													
													<div class="col-md-3 ">
														<p class="brownish-grey f-14 mb-0">Contact Person</p>
														<p class="black f-16 mb-0">Robert Wolken</p>
													</div>
													<div class="col-md-3 ">
														<p class="brownish-grey f-14 mb-0">Agent</p>
														<p class="black f-16 mb-0">Marilyn Fowler</p>
													</div>

												</div>
												<div class="row pt-2 pl-3">
													<div class="col">
														<nav>
															<div class="nav nav-tabs nav-mytabs pt-2" id="nav-tabs"
																role="tablist">
																<a class="nav-item nav-link show active minw-150"
																	id="whatswrong-tab" data-toggle="tab"
																	href="#whatswrong" role="tab"
																	aria-controls="whatswrong" aria-selected="true">Whats
																	Wrong?</a> <a class="nav-item nav-link minw-150 "
																	id="whatsright-tab" data-toggle="tab"
																	href="#whatsright" role="tab"
																	aria-controls="whatsright" aria-selected="false">Whats
																	Right?</a> <a class="nav-item nav-link minw-150"
																	id="all-tab" data-toggle="tab" href="#all" role="tab"
																	aria-controls="all" aria-selected="false">All</a>
															</div>
														</nav>
														<div class="tab-content mytab-content"
															id="nav-tasktabsContent">
															<div class="tab-pane fade show active" id="whatswrong"
																role="tabpanel" aria-labelledby="whatswrong-tab"></div>
															<div class="tab-pane fade show " id="whatsright"
																role="tabpanel" aria-labelledby="whatsright-tab"></div>
															<div class="tab-pane fade show " id="all" role="tabpanel"
																aria-labelledby="all-tab"></div>
														</div>
													</div>


												</div>

												<div class="row pt-2 pl-3 mb-5">
													<div class="col d-flex flex-row justify-content-center">

														<div class="d-flex flex-row align-items-center mr-5">
															<img src="<%=baseURL%>assets/image/man.jpg"
																class="rounded-circle hw-60 task-image-right"> <img
																src="<%=baseURL%>assets/image/calltask.svg"
																class="rounded-circle hw-40 task-icon">

														</div>
														<button class="btn  mr-1">
															<i class="fas fa-backward"></i>
														</button>
														<button class="btn hw-64 shadow rounded-circle  mr-1">
															<i class="fas fa-play"></i>
														</button>

														<button class="btn  mr-5">
															<i class="fas fa-forward"></i>
														</button>
														<div class="d-flex flex-row align-items-center">
															<img src="<%=baseURL%>assets/image/layer.png"
																class="rounded-circle hw-60 task-image-right"> <img
																src="<%=baseURL%>assets/image/calltask.svg"
																class="rounded-circle hw-40 task-icon">

														</div>

													</div>
												</div>
												<div class="row mt-2 ml-3 border-top-task_list">
													<div class="col-md-4 p-0 m-0" style="	border-right: 1px solid #cccccc;">
													<%for(int j=0;j<10;j++){ %>
													<div class="d-flex flex-row  p-3 audioitem" style="border-bottom: 1px dashed #cccccc;">
														<div class="mr-auto">
														<p class="mb-0 light_gray f-12">06 Mint</p>
														<p class="mb-0 bblack f-16">Introduction</p>
														
														
														</div>
														<div>	<button class="btn  mr-1 hw-45 playaudio">
															<i class="fas fa-play"></i>
														</button></div>
													</div>
													<%} %>
													
													</div>
													<div class="col-md-8 p-0">


														<div id="carouselExampleIndicators"
															class="carousel slide mb-2" data-ride="carousel">
															<ol class="carousel-indicators">
																<li data-target="#carouselExampleIndicators"
																	data-slide-to="0" class="active"></li>
																<li data-target="#carouselExampleIndicators"
																	data-slide-to="1"></li>
																<li data-target="#carouselExampleIndicators"
																	data-slide-to="2"></li>
															</ol>
															<div class="carousel-inner ">

																<%
																	for (int h = 0; h < 4; h++) {
																			String isActive = "";
																			if (h == 0) {
																				isActive = "active";
																			}
																%>
																<div class="carousel-item  <%=isActive%>">

																	<div class="row align-items-center ml-3 mr-3"
																		style="min-height: 170px;">
																		<div class="col">
																		<div class="d-flex flex-row">
																		
																		<img class="hw-94 mr-5" src="<%=baseURL%>assets/image/Group 3614.svg">
																		<div class="border-right-blue mr-3"></div>
																		<p class="greyish-brown f-16 font-weight-bold  align-self-center">Customers who responded positively in the end of a call</p>
																		</div>
																		</div>
																	</div>
																		
																</div>
																<%
																	}
																%>

															</div>
															<a class="carousel-control-prev"
																href="#carouselExampleIndicators" role="button"
																data-slide="prev"> <span
																class="carousel-control-prev-icon" aria-hidden="true"></span>
																<span class="sr-only">Previous</span>
															</a> <a class="carousel-control-next"
																href="#carouselExampleIndicators" role="button"
																data-slide="next"> <span
																class="carousel-control-next-icon" aria-hidden="true"></span>
																<span class="sr-only">Next</span>
															</a>
														</div>
														
														<div class="row mt-2   ml-3 pr-2" >
															<div class="col">
																<h3 class="black f-16 mb-4">Transcript</h3>
																<div class="transcript_container p-3 " style="max-height:520px; overflow-x:hidden;overflow-y:auto;">
																<%for(int j=0;j<20;j++){ %>
																<div class="d-flex flex-column pr-5 mr-5 mb-4 ">
																	<p class="f-16 bblack">
																		<small class="f-12 brown-grey mr-2">00:20.</small> Jamie
																		Vargas
																	</p>
																	<div class="card shadow" style="border-radius: 1.25rem !important;" >
																		<div class="card-body">
																			<p class="card-text">Some quick example text to
																				build on the card title and make up the bulk of the
																				card's content.</p>
																		</div>
																	</div>
																</div>
																
																
																<div class="d-flex flex-column pl-5 ml-5 mb-4">
																	<p class="f-16 bblack align-self-end">
																		<small class="f-12 brown-grey mr-2 ">00:20.</small> Jamie
																		Vargas
																	</p>
																	<div class="card shadow align-self-end very-light-pink-bg" style="border-radius: 1.25rem !important;" >
																		<div class="card-body">
																			<p class="card-text">Some quick example text to
																				build on the card title and make up the bulk of the
																				card's content.</p>
																		</div>
																	</div>
																</div>
																<%} %>
																</div>
															</div>

														</div>


													</div>
												</div>

											</div>



											<div class="col-md-1 p-0">
												<ul class="list-group shadow d-flex flex-column h-100" id="extra">
													<li
														class="list-group-item d-flex flex-column justify-content-center align-items-center minh-100">
														<img src="<%=baseURL%>assets/image/calltask.svg" />
														<div class="f-12 pt-1 greyish-brown">Notes</div>
													</li>
													<li
														class="list-group-item d-flex flex-column justify-content-center align-items-center minh-100">
														<img src="<%=baseURL%>assets/image/calltask.svg" />
														<div class="f-12 pt-1 greyish-brown">Cues</div>
													</li>
													<li
														class="list-group-item d-flex flex-column justify-content-center align-items-center minh-100">
														<img src="<%=baseURL%>assets/image/calltask.svg" />
														<div class="f-12 pt-1 greyish-brown">CRM</div>
													</li>
													<li
														class="list-group-item d-flex flex-column justify-content-center align-items-center minh-100">
														<img src="<%=baseURL%>assets/image/calltask.svg" />
														<div class="f-12 pt-1 greyish-brown">Chat</div>
													</li>
													<li
														class=" flex-grow list-group-item d-flex flex-column justify-content-center align-items-center minh-100"
														style="height: calc(100% - 80px);"></li>
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
						
							
					<!-- end of completed tab -->
					
					</div>
				</div>
</div>
</div>

	<!--start of Task Reschedule modal -->
			<div class="modal fade" id="rescheduleCenter" tabindex="-1" role="dialog" aria-labelledby="rescheduleCenterTitle"
				aria-hidden="true">
				<div class="modal-dialog modal-lg modal-dialog-centered" role="document">
					<div class="modal-content rounded-0">
						<div class="d-flex shadow-sm py-3">
							<div class="col-md-11 modal-title greyish-brown f-18 font-weight-bold" id="rescheduleCenterTitle">Reschedule Task</div>
							<button type="button" class="col-md-1 close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">×</span>
							</button>
						</div>
						<div class="modal-body">
							<div class="f-18 font-weight-bold">Opentech Pvt. Ltd.</div>
							<div class="row  py-3 dotted-bottom-separation">
								<div class="col-md-4 border-right-separation">
									<div class="f-14 brownish-grey">Contact Person</div>
									<div class="f-16 font-weight-bold">Deann Harper</div>
								</div>
								<div class="col-md-4 border-right-separation">
									<div class="f-14 brownish-grey">Agent</div>
									<div class="f-16 font-weight-bold">Bradley Obrien</div>
								</div>
								<div class="col-md-4 ">
									<div class="f-14 brownish-grey">Date & Time</div>
									<div class="f-16 font-weight-bold">June 12, 19 &nbsp;&nbsp;&nbsp; 11:00 AM</div>
								</div>
							</div>
							<div class="row py-3">
								<div class="col-md-6">
									<div class="f-14 font-weight-bold pb-1">Date</div>
									<div class="custom-taskborder custom-taskselect w-100 d-flex mr-2">
										<input class="f-14 border-0 removefocus w-100 pl-2" placeholder="Select here">
										<img src="<%=baseURL%>assets/image/calendar.svg" class="pr-2">	
									</div>	
								</div>
								<div class="col-md-6">
									<div class="f-14 font-weight-bold pb-1">Time	</div>
									<div class="custom-taskborder custom-taskselect w-100 d-flex mr-2">
										<input class="f-14 border-0 removefocus w-100 pl-2" placeholder="Select here">
										<img src="<%=baseURL%>assets/image/alarm.svg" class="pr-2">	
									</div>	
								</div>
							</div>
							<div class="row py-3">
								<div class="col-md-12">
									<div class="f-14 font-weight-bold pb-1">Reason</div>
									<textarea class="w-100 custom-modal-textarea" rows="5" ></textarea>
								</div>
							</div>
						</div>
						
						<div class="d-flex pb-3 justify-content-end">
							<div class="col-4 text-right">
								<button class="btn theme_color font-weight-bold f-14 mr-2">Reset</button>
								<button class="btn modal-submit-btn font-weight-bold f-14">Submit</button>
							</div>
						</div>
					</div>
				</div>
			</div>
	<!--end of Task Reschedule modal -->



<script src="<%=baseURL%>assets/js/jquery-3.4.1.min.js"></script>
<script src="<%=baseURL%>assets/js/popper.min.js"></script>
<script src="<%=baseURL%>assets/js/bootstrap.min.js"></script>
<script src="<%=baseURL%>assets/js/bootstrap-datepicker.min.js"></script>
<script src="<%=baseURL%>assets/js/salesken.js"></script>
<script>
$('.salesken.navbar-nav>li').removeClass('active');
$($('.salesken.navbar-nav>li')[1]).addClass('active')
$('.taskdetailtab  a').on('shown.bs.tab', function (e) {
	  var target = $(e.target).html(); // activated tab
	  $('#breadcrumb').html(target);

	});

</script>
<script>
	$( document ).ready(function() {
		$('#upcoming_datepicker').datepicker({autoclose:true})
		});
	
	function showCalendar(){
		$('#upcoming_datepicker').datepicker('show')
	}
	
	</script>

	
 
	</div>
	</main>
	

	
</body>



</html>