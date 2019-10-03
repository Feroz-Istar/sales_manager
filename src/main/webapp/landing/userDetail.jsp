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
</head>
<body data-base-url="<%=baseURL%>">

<jsp:include page="../navbar/nav.jsp"></jsp:include>
<main role="main">
	<div class="container-fluid salesken_container">
	
		<div class="row grey-white-bg align-items-center py-3 border-bottom-separation" >
			<div class="col-md-6 col-12 d-flex align-items-center mb-4 mb-md-0" > 
				<i class="fas fa-arrow-left black f-20 pr-3 cursor-pointer" onclick="window.location.href = 'report.jsp'"></i>
				<div class="display-1 black f-20 border-right-separation pr-3 ">Stanley Howard</div>
				<div class="pl-3 pr-2 f-12 brown-grey ">Path</div>
				<i class="fas fa-chevron-circle-right pr-2 f-12 brown-grey"></i>
				<div class=" f-12 brown-grey " id="breadcrumb">Current Page</div>
			</div>
		</div>
		
		<div class="row bg-white pl-3">
			<div class="col-md-12">
				<ul class="nav nav-tabs nav-mytabs pt-2" id="myTab" role="tablist">
				  <li class="nav-item">
				    <a class="nav-link active" id="taskDetails-tab" data-toggle="tab" href="#taskDetails" role="tab" aria-controls="taskDetails" aria-selected="true">Task Details</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" id="agentDetails-tab" data-toggle="tab" href="#agentDetails" role="tab" aria-controls="agentDetails" aria-selected="false">Agent Details</a>
				  </li>
				</ul>
				<div class="tab-content" id="myTabContent">
				  <div class="tab-pane fade show active" id="taskDetails" role="tabpanel" aria-labelledby="taskDetails-tab">
				  	<!-- start of task detail content -->
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
										<div class="row">
											<div class="col-md-11">
											
											</div>
											
											
											
											<div class="col-md-1 p-0">
												<ul class="list-group shadow ">
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
						
						
						
						<!-- end of task detail -->
					</div>
						
						
				  <div class="tab-pane fade" id="agentDetails" role="tabpanel" aria-labelledby="agentDetails-tab">...</div>
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
<script src="<%=baseURL%>assets/js/salesken.js"></script>
<script>
	$( document ).ready(function() {
		$('#task_datepicker').datepicker({autoclose:true});
	});
	function showCalendar(){
		$('#task_datepicker').datepicker('show')
	}
</script>
</body>
</html>