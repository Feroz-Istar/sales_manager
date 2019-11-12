<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<title>Salesken - User Detail</title>
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
<link rel="stylesheet" href="<%=baseURL%>assets/css/jquery.rateyo.css">
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
	
		<div class="row grey-white-bg align-items-center m-0 theme_solid_border_bottom pl-40 pr-40 pt-10 pb-10">
			<div class="col-md-6 col-12 d-flex align-items-center p-0">
				<i class="fas fa-arrow-left black f-20 cursor-pointer" onclick="window.location.href = 'customerUser.jsp'"></i>
				<div class="display-1 black f-20 border-right-separation pr-20  fw-500 pl-20">Stanley Howard</div>
				<div class="f-12 brown-grey pl-20">Dashboard</div>
				<i class="fas fa-chevron-circle-right pl-2 pr-2 f-12 very-light-pink"></i>
				<div class="f-12 brown-grey">Users</div>
				<i class="fas fa-chevron-circle-right pl-2 pr-2 f-12 very-light-pink"></i>
				<div class=" f-12 brown-grey fw-500 " id="breadcrumb">Stanley Howard</div>
			</div>
			<div class="col-md-6 d-flex align-items-center justify-content-end">
				
					<button type="button" class="istar-btn-icon  previous p-0" style="top: -14px !important; right: 36px;">
		                 <i class="fal fa-chevron-left"></i>
		             </button>
		             <button type="button" class="istar-btn-icon  active next p-0"  style="top: -14px !important; right: -2px;">
		                 <i class="fal fa-chevron-right"></i>
		             </button>
				
				</div>
		</div>
		<div class="row rounded-0 alert alert-success mb-0 font-italic align-items-center d-none" role="alert">
		 <span class="font-weight-bold f-14 mr-2 tea-color">Won Lead: </span> <div class="f-12 brownish-grey">A simple success alert—check it out!</div>
		</div>
		<div class="row rounded-0 alert alert-danger mb-0 font-italic align-items-center d-none" role="alert">
		 <span class="font-weight-bold f-14 mr-2 theme_color">Lost Lead: </span> <div class="f-12 brownish-grey">A simple success alert—check it out!</div>
		</div>
		<div class="row bg-white m-0 pt-20">
			<div class="col-md-12 p-0">
				<ul class="nav nav-tabs nav-mytabs pl-40 pr-40 d-flex align-items-end" id="myTab" role="tablist">
				  <li class="nav-item">
				    <a class="nav-link  nav-item active" id="taskDetails-tab" data-toggle="tab" href="#taskDetails" role="tab" aria-controls="taskDetails" aria-selected="true">Task Details</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link  nav-item" id="agentDetails-tab" data-toggle="tab" href="#agentDetails" role="tab" aria-controls="agentDetails" aria-selected="false">Agent Details</a>
				  </li>
				</ul>
				<div class="tab-content" id="myTabContent">
				  <div class="tab-pane fade show active" id="taskDetails" role="tabpanel" aria-labelledby="taskDetails-tab">
				  	<!-- start of task detail content -->
				  	<div class="row align-items-center  border-bottom-separation m-0 pt-10 pb-10 pl-40 pr-40">
							<div class="col-md-3 text-result-found p-0">
								<strong class="number-of-results">04</strong> Results Found
							</div>
							<div class="col-md-9 d-md-flex justify-content-end p-0 ">
								<div class="input-group date custom-calendar mr-10">
									<input type="text" id="task_datepicker" class="form-control  custom-dateselect"
										value="12-02-2012">
									<div class="input-group-addon" onclick="showCalendar()">
										<img src ="<%=baseURL%>/assets/image/calendar.svg" class="pr-1" alt="calendar">
									</div>
								</div>	
								<div class="istar-dropdown-task select_focus mr-10">
									<button class="istar-dropdown-arrow dropdown-toggle" data-display="static"
										id="user_stage" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										<span class="sr-only">Toggle Dropdown</span>All Stages
										<img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
												class=" float-right">
									</button>
									<div
										class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="user_stage" data-display="static">
										<button class="dropdown-item" type="button">
											Stage 1
										</button>
										<button class="dropdown-item" type="button">
											 Stage 2
										</button>
									</div>
								</div> 	
								<div class="istar-dropdown-task select_focus mr-10">
									<button
										class="istar-dropdown-arrow dropdown-toggle" data-display="static"
										id="activity" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 
										<span class="sr-only">Toggle Dropdown</span>
   										All Activities <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
												class=" float-right">
									</button>
									 <div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu">
									    <button class="dropdown-item" type="button">
									    <img src="<%=baseURL%>assets/image/calltask.svg" class="task-dropdown" alt="call">
									    Call Task</button>
									    <button class="dropdown-item" type="button">
									    <img src="<%=baseURL%>assets/image/emailtask.svg" class="task-dropdown" alt="email">
									    Email Task</button>
									    <button class="dropdown-item" type="button">
									    <img src="<%=baseURL%>assets/image/webinartask.svg" class="task-dropdown" alt="webinar">
									    Webinar Task
									    </button>
									    <button class="dropdown-item" type="button">
									    <img src="<%=baseURL%>assets/image/presentation.svg" class="task-dropdown" alt="presentation">
									    Presentation
									    </button>
									  </div>
									
								</div> 
								<div class="istar-dropdown-task select_focus mr-10">
									<button class="istar-dropdown-arrow dropdown-toggle" data-display="static"
										id="user_status" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										<span class="sr-only">Toggle Dropdown</span>All Status
										<img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
												class=" float-right">
									</button>
									<div
										class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="user_status">
										<button class="dropdown-item" type="button">
											Status 1
										</button>
										<button class="dropdown-item" type="button">
											 Status 2
										</button>
									</div>
								</div> 	
								<div class="istar-dropdown-task select_focus">
									<button class="istar-dropdown-arrow dropdown-toggle" data-display="static"
										id="user_leads" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										<span class="sr-only">Toggle Dropdown</span>All Leads
										<img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
												class=" float-right">
									</button>
									<div
										class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="user_leads">
										<button class="dropdown-item" type="button">
											Lead 1
										</button>
										<button class="dropdown-item" type="button">
											 Lead 2
										</button>
									</div>
								</div> 
							</div>
						</div>
						
						<div class="row cream_white m-0 theme_solid_border_bottom justify-content-between align-items-center pl-40 pr-40 pt-10 pb-10" id="agent_filters">
							<div class="col-md-10 d-flex p-0">
									<button class="theme_solid_border bg-white brown-grey rounded f-12 position-relative search-filter" >Filter 1
									<i class="fas fa-times-circle brown-grey f-14 cross-btn"></i>
									</button>
							</div>
							
							<div class="col-md-2 text-right p-0">
								<button type="submit" class="btn theme_color f-14 font-weight-bold p-0" id="agent_reset">Reset</button>
							</div>
						</div>
						
						<div class="row very-light-pink-grey-bg m-0">
							<div class="col-md-3 p-0 pl-20">
								<div class="nav flex-column nav-pills" id="taskdetail-tab-list"
									role="tablist" aria-orientation="vertical">
									<%
										for (int i = 0; i < 4; i++) {
											String isactive = "";
											String tasktype="call";
											if (i == 0) {
												isactive = "active";
											}
											if (i ==1) {
												tasktype = "email";
											}
											if (i == 2) {
												tasktype = "webinar";
											}
											
									%>
									<div class="nav-link <%=isactive%> border-bottom-separation p-0" id="v-pills-<%=i%>-tabs" data-toggle="pill"
										href="#v-pills-<%=i%>" role="tab"
										aria-controls="v-pills-<%=i%>" aria-selected="true" data-task_type="<%=tasktype%>">
										<div class="row align-items-center m-0 p-20">
											<div class="col-md-2 p-0">
												<div class="d-flex flex-row align-items-center">
													<img src="<%=baseURL%>assets/image/calltask.svg"
														alt="callicon" class="rounded-circle hw-30 task-icon">
													<img src="<%=baseURL%>assets/image/37.jpg"
														title="Agent Name" alt="user-img"
														class="rounded-circle hw-40 task-image">
												</div>
											</div>
											<div class="col-md-10 pl-15 p-0">
												<p class="soft-blue f-12 font-weight-bold m-0">Confident</p>
												<h1 class="black f-16 fw-500 m-0 text-truncate"
													title="Robert Wolken">Marry Vasquez</h1>
												<p class="brown-grey f-12 m-0">June 26, 2019</p>
											</div>

										</div>
									</div>

									<%
										}
									%>
								</div>
							</div>


							<div class="col-md-9 bg-white p-0">
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
										aria-labelledby="v-pills-<%=i%>-tabs">
										
									</div>
									<%
										}
									%>
								</div>
							</div>
						</div>
						
					
						
						
						
						<!-- end of task detail -->
					</div>
						
						
				  <div class="tab-pane fade" id="agentDetails" role="tabpanel" aria-labelledby="agentDetails-tab">
				  	<!-- start of agent detail content -->		
				  	<div class="row m-0 pt-35 pl-40 pr-40">				
				  		<div class="col-md-6 p-0">	
				  			<div class="d-flex align-items-center">	
				  				<img src="<%=baseURL%>assets/image/11.png" class="hw-60" alt="user-img"/>
				  				<div class="pl-20">
				  					<div class="f-16  fw-500 black text-truncate" title="Globex Corporation Inc.">Stanley Howard</div>
						  			<div class="d-flex align-items-center">		
						  				<div class="p-0 rateYo mr-4" data-rating="3"></div>
						  				<i class="far fa-thumbs-up mr-2 f-24 brown-grey"></i>
						  				<div class="greyish-brown  fw-500 f-16 mr-1">12</div>
						  				<div class="brown-grey f-14">Likes</div>
						  			</div>	
				  				</div>
				  			</div>
				  		</div>		
				  		<div class="col-md-6 text-right	p-0">
				  			<div class="d-flex align-items-center justify-content-end">
					  			<img src="<%=baseURL%>assets/image/people.svg" class="mr-2" alt="team" />
					  			<div class="f-14 greyish-brown mr-4 text-truncate" title="Team North">Team North</div>
					  			<img src="<%=baseURL%>assets/image/mail.svg" class="mr-2" alt="email"/>
					  			<div class="f-14 greyish-brown mr-4 text-truncate" title="stanleyhoward@gmail.com">stanleyhoward@gmail.com</div>
					  			<img src="<%=baseURL%>assets/image/call.svg" class="mr-2" alt="phone"/>
					  			<div class="f-14 greyish-brown mr-4">(741)-210-1851</div>
					  			<img src="<%=baseURL%>assets/image/edit_red.svg"/>
				  			</div>
				  		</div>		
				  	</div>		
				  	
				  	<div class="row border-bottom-dashed-separation m-0 pt-25 pb-25 pl-40 pr-40">
				  		<div class="col-md-6 p-0">
				  			<div class="row m-0">
				  				<div class="col-md-3 p-0 border-right-dashed-separation">
				  					<div class="d-flex align-items-center">
				  						<i class="fas fa-dollar-sign black f-30"></i>
				  						<div class="f-30 font-weight-bold pastel-red"> &nbsp;450 </div>
				  					</div>
				  					<div class="f-12 brownish-grey">Achieved Value</div>
				  				</div>
				  				<div class="col-md-3 p-0 border-right-dashed-separation pl-15">
				  					<div class="d-flex align-items-center">
				  						<img src="<%=baseURL %>assets/image/people.svg" class="h-30">
				  						<div class="f-30 font-weight-bold black"> &nbsp;24 - 40 </div>
				  					</div>
				  					<div class="f-12 brownish-grey">Won & Lost Leads</div>
				  				</div>
				  				<div class="col-md-3 p-0 border-right-dashed-separation pl-15">
				  					<div class="d-flex align-items-center">
				  						<img src="<%=baseURL %>assets/image/stats.svg" class="h-30">
				  						<div class="f-30 font-weight-bold black"> &nbsp;30</div>
				  					</div>
				  					<div class="f-12 brownish-grey">Activities Per Lead Won </div>
				  				</div>
				  				<div class="col-md-3 p-0 border-right-dashed-separation pl-15">
				  					<div class="d-flex align-items-center">
				  						<img src="<%=baseURL %>assets/image/task.svg" class="h-30">
				  						<div class="f-30 font-weight-bold black"> &nbsp;40 </div>
				  					</div>
				  					<div class="f-12 brownish-grey">Pending Tasks </div>
				  				</div>
				  			</div>
				  		</div>
				  		<div class="col-md-6">
				  			<div class="row">
				  				<div class="col-md-4 p-0 pl-15">
				  					<div class="d-flex align-items-center">
				  						<img src="<%=baseURL %>assets/image/call_outline.svg" class="h-30">
				  						<div class="f-30 font-weight-bold black"> &nbsp;34 </div>
				  					</div>
				  					<div class="f-12 brownish-grey">Completed Task </div>
				  				</div>	
				  				<div class="col-md-4 p-0">
				  					<div class="d-flex align-items-center pl-15">
				  						<img src="<%=baseURL %>assets/image/call_outline.svg" class="h-30">
				  						<div class="f-30 font-weight-bold black"> &nbsp;12 </div>
				  					</div>
				  					<div class="f-12 brownish-grey"></div>
				  				</div>
				  				<div class="col-md-4 p-0">
				  					<div class="d-flex align-items-center pl-15">
				  						<img src="<%=baseURL %>assets/image/webinar_outline.svg" class="h-30">
				  						<div class="f-30 font-weight-bold black"> &nbsp;05 </div>
				  					</div>
				  					<div class="f-12 brownish-grey"></div>
				  				</div>
				  			</div>
				  		</div>
				  	</div>
				  	
				  	<div class="row m-0">
				  		<div class="col-md-9 p-0">
				  			<div class="f-16 fw-500 black pt-30 pl-40 pb-10">	Playbook Stats</div>
				  			<div class="row border-bottom-dashed-separation m-0 pl-40 pr-40 pb-40">
				  				<div class="col-md-6 p-0">
		      						<div class="f-12 font-weight-bold brownish-grey mb-1">Strong  <i class="fal fa-info-circle soft-blue"></i></div>
		      						<img src="<%=baseURL %>assets/image/introduction_signal.svg" class="pr-2 pb-2">
										<img src="<%=baseURL %>assets/image/softSkill_signal.svg" class="pr-2 pb-2">
										<img src="<%=baseURL %>assets/image/nxt_step_signal.svg" class="pr-2 pb-2">
										<img src="<%=baseURL %>assets/image/solution_signal.svg" class="pr-2 pb-2">
		      					</div>
		      					<div class="col-md-6 p-0">
		      						<div class="f-12 font-weight-bold brownish-grey mb-1">Weak <i class="fal fa-info-circle soft-blue"></i></div>
		      						<img src="<%=baseURL %>assets/image/introduction_signal.svg" class="pr-2 pb-2">
										<img src="<%=baseURL %>assets/image/softSkill_signal.svg" class="pr-2 pb-2">
										<img src="<%=baseURL %>assets/image/nxt_step_signal.svg" class="pr-2 pb-2">
										<img src="<%=baseURL %>assets/image/solution_signal.svg" class="pr-2 pb-2">
		      					</div>
				  			</div>
				  			<div class="row m-0 pt-40 pl-40">
				  				<div class="col-md-6 fw-500 p-0">Disposition</div>
				  			</div>
				  			
				  			<div class="row m-0 pl-40 pt-30 pb-20 align-items-center bottom_border_1px">
								<div class="col-md-3 p-0 black f-14 font-weight-bold">Lead Name</div>
								<div class="col-md-3 p-0 black f-14 font-weight-bold">Follow-Ups </div>
								<div class="col-md-3 p-0 black f-14 font-weight-bold">Talk Ratio</div>
								<div class="col-md-3 p-0 black f-14 font-weight-bold">Connected Call</div>
							</div>
						
							<%for(int i=0;i<10;i++){ 
								String bg_color="bg-white";
								if(i%2==0){
									bg_color="cream_white";
								}
							%>
								
							<div class="row m-0 pl-40 leadpreview pt-30 pb-30 bottom_border_1px align-items-center <%=bg_color%>">
								<div class="col-md-3 p-0 greyish-brown f-14">Massive Dynamic Pvt. Ltd.</div>
								<div class="col-md-3 p-0 greyish-brown f-14">45</div>
								<div class="col-md-3 p-0 greyish-brown f-14">20%</div>
								<div class="col-md-3 p-0 greyish-brown f-14">03</div>
								
							</div>
							<%} %>
				  		</div>
				  			
				  		<div class="col-md-3 cream_white theme_solid_border_left p-0 pl-40 pr-40 pt-30 pb-30 ">
				  			<div class="f-16 fw-500 black">Comments</div>
				  			
				  			<%for(int i=0;i<3;i++){ %>
				  			<div class="f-12 brown-grey pt-30">June 22, 2019</div>
				  			<div class="f-14 greyish-brown fw-500 pb-10 text-truncate" title="Lawrence">Lawrence Lynch</div>
				  			<div class="f-14 blue-black border-bottom-dashed-separation pb-20 text-break">Cras eget elementum arcu, vel malesuada felis. Nulla fringilla viverra justo a imperdiet. Etiam vitae tempor enim, sed aliquet ante. Maecenas eu vehicula diam.</div>
				  			<%} %>
				  		</div>				  		
				  	</div>				  	
				 
				  	<!-- end of agent detail content -->
				  
				  </div>
				</div>
			</div>
		</div>
<!-- start of leave task modal -->
		<div class="modal fade" id="leaveTaskModal" tabindex="-1" role="dialog" aria-labelledby="leaveTaskModalTitle" aria-hidden="true">
		  <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
		    <div class="modal-content">
		      <div class="d-flex pt-3 justify-content-end">
		        <div class="col-md-1	">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			          <span aria-hidden="true">&times;</span>
			        </button>
		        </div>
		      </div>
		      <div class="modal-body">
		        
		        <div class="row  pt-4 justify-content-center">
		        	<div class="font-weight-bold greyish-brown f-18">Do you wanna exit this task?</div>
		        </div>
		        <div class="row p-4 justify-content-center">
		        	<div class="bblack f-14">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</div>
		        </div>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn theme_color bg-transparent font-weight-bold" data-dismiss="modal">Cancel</button>
        		<button type="button" class="btn rounded-0 istar-btn-primary" data-dismiss="modal" style="width: 140px;">LEAVE</button>
		      </div>
		    </div>
		  </div>
		</div>
		<!-- end of leave task modal -->

</div>
</main>

<script src="<%=baseURL%>assets/js/jquery-3.4.1.min.js"></script>
<script src="<%=baseURL%>assets/js/popper.min.js"></script>
<script src="<%=baseURL%>assets/js/bootstrap.min.js"></script>
<script src="<%=baseURL%>assets/js/bootstrap-datepicker.min.js"></script>
<script src="<%=baseURL%>assets/js/bootstrap-datepicker.min.js"></script>
<script src="<%=baseURL%>assets/js/salesken.js"></script>
<script src="<%=baseURL%>assets/js/jquery.rateyo.min.js"></script>

<script>
	$( document ).ready(function() {
		$('#task_datepicker').datepicker({autoclose:true});
		$('.salesken.navbar-nav>li').removeClass('active');

		/* start of rating bar js code */
		$(".rateYo").each(function(index) {
			console.log(typeof $(this).attr('data-rating'))
			$(this).rateYo({
				rating: $(this).attr('data-rating'),
				spacing: "0px",
				    starWidth: "18px",
				    readOnly: true,
				    ratedFill: "#f79c0d",
				    normalFill: "#dddddd",
				'starSvg': '<svg xmlns="http://www.w3.org/2000/svg"  viewBox="0 0 24 24">     <defs>         <style>             .cls-1{fill:none}.cls-2{clip-path:url(#clip-path)}      </style>         <clipPath id="clip-path">             <path d="M0 0h24v24H0z" class="cls-1"/>         </clipPath>     </defs>     <g id="Component" class="cls-2">         <path id="Rectangle_936" d="M0 0h24v24H0z" class="cls-1" data-name="Rectangle 936"/>         <path id="Path_59" d="M965.57 1814.81a.846.846 0 0 1-.461-.136l-4.78-3.1-4.78 3.1a.848.848 0 0 1-1.277-.942l1.5-5.3-4.467-3.776a.848.848 0 0 1 .487-1.494l5.359-.385 2.412-5.276a.848.848 0 0 1 1.543 0l2.412 5.276 5.359.385a.848.848 0 0 1 .487 1.494l-4.468 3.776 1.5 5.3a.848.848 0 0 1-.816 1.078zm-5.241-5.092a.847.847 0 0 1 .461.136l3.353 2.172-1.034-3.664a.848.848 0 0 1 .269-.878l3.294-2.785-3.783-.272a.848.848 0 0 1-.711-.493l-1.849-4.046-1.849 4.046a.848.848 0 0 1-.711.493l-3.783.272 3.294 2.785a.848.848 0 0 1 .269.878l-1.034 3.664 3.353-2.172a.847.847 0 0 1 .461-.136z" class="cls-3" data-name="Path 59" transform="translate(-948 -1794)"/>     </g> </svg> '
			});
		});
		/* end of rating bar js code */
		
		 $.get(location.origin+'/tabcontent/userCallTaskModal.jsp', function( data ) {
        
			var tabid= $('#taskdetail-tab-list>.nav-link').attr('href').replace('#','')
        	$('#'+tabid).html(data);
    		});
	    
	    $('#taskdetail-tab-list>.nav-link').on('show.bs.tab', function (e) {
	    	var tabid= $(e.target).attr('href').replace('#','');
	    	 // newly activated tab
			var url=location.origin;
			
	    	switch($(e.target).data('task_type')){
	    	case 'call':
		    	  url=url+ '/tabcontent/userCallTaskModal.jsp';
		    	  break;
	    	case 'email':
	    		url=url+ '/tabcontent/userEmailTaskModal.jsp';
		    	  break;
	    	case 'webinar':
	    		url=url+ '/tabcontent/userWebinarTaskModal.jsp';
		    	  break;
		    default: url=url+ '/tabcontent/userCallTaskModal.jsp';
	    			 break;
	    	}
	    	
	    	$.get(url, function( data ) {
	        	//console.log(data);
	        	//console.log(selectedTab);

	        	$('#'+tabid).html(data);
	    		//  alert( "Load was performed." );
	    		});
	    	  console.log($(e.target).data('task_type')) // newly activated tab
		    
	    	  //close popover on tab change
	    	 
	    	  $('.popover').popover('hide');

	    	});
	    
	    $('.nav-tabs>.nav-item').on('show.bs.tab', function (e) {
	    	  $('.popover').popover('hide');
  		});
	    $('#agent_reset').click(function(){
			 $('#agent_filters').hide();
		 });
	    
	});
	function showCalendar(){
		$('#task_datepicker').datepicker('show')
	}
</script>
</body>
</html>