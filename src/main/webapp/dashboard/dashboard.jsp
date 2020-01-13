<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html lang="en" class="h-100">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no, shrink-to-fit=no">
<meta name="description" content="">
<title>Salesken Dashboard</title>
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
	SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
	SimpleDateFormat incoming = new SimpleDateFormat("dd-MM-yyyy");
	String incomingDate = request.getParameter("var") != null ? request.getParameter("var")
			: sdf.format(new Date());
	String today_date = sdf.format(new Date());
	int size = 0;
%>
<link rel="icon" href="<%=baseURL%>favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="<%=baseURL%>favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="<%=baseURL%>assets/css/bootstrap.min.css">
<link href="<%=baseURL%>assets/css/bootstrap-datepicker3.min.css?xsww" rel="stylesheet">
<link rel="stylesheet" href="<%=baseURL%>assets/css/salesken_style.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/dashboard.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/all.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/jquery.rateyo.css">
<link href="<%=baseURL%>assets/css/bootstrap-datepicker3.min.css?xsww" rel="stylesheet">
<link rel="stylesheet" href="<%=baseURL%>assets/css/wickedpicker.min.css">
<link href="<%=baseURL%>assets/css/summernote-bs4.css" rel="stylesheet">
<link href="<%=baseURL%>assets/css/bootstrap-select.min.css" rel="stylesheet">
<link rel="stylesheet" href="<%=baseURL%>assets/css/salesken_style_media_query.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/multiselect.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.4.0/animate.min.css">
	<script src="<%=baseURL%>assets/js/jquery-3.4.1.min.js"></script>

</head>
<body data-baseurl="<%=baseURL%>" onload="load()">
	<!-- start of circular progress bar for page loading -->
	<div class="salesken_progress h-100 w-100 " style="display: none">
		<div class="d-flex align-items-center justify-content-center  h-100 w-100">
			<div class="spinner-border text-danger" role="status">
				<span class="sr-only">Loading...</span>
			</div>
		</div>
	</div>
	<!-- end of circular progress bar for page loading -->
	<div class="loader-div d-none">
		<div class="inner-circle-div d-flex align-items-center justify-content-center">
			<div class="spinner-border  text-danger">
				<span class="sr-only">Loading...</span>
			</div>
		</div>
	</div>
	<jsp:include page="../navbar/nav.jsp"></jsp:include>
	<main role="main">
		<div class="container-fluid salesken_container">
			<!-- Start of dashboard header div with dashboard title and New task -->
			<div class="row pb-3" id="incoming_date" data-input_date="<%=incomingDate%>">
				<div class="col-md-6 col-6 p-0 m-0 d-flex align-items-center">
					<h1 class="display-1 black f-20 fw-500 mb-0">Dashboard</h1>
				</div>
				<div class="col-md-6 col-6 d-flex justify-content-end ">
					<div class="dropdown">
						<button class="btn small_button rounded-0 f-12 dropdown-toggle font-weight-bold " data-hover="dropdown" data-animations="fadeInDownNew fadeInRightNew fadeInUpNew fadeInLeftNew"
							id="dashboard_activity" data-toggle="dropdown" data-display="static" aria-haspopup="true" aria-expanded="false">
							<span class="sr-only">Toggle Dropdown</span>NEW TASK <img src="<%=baseURL%>/assets/image/toggle_white.svg" alt="call" class="h-17 text-white ">
						</button>
						<div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="dashboard_activity">
							<button class="dropdown-item" type="button" onclick="window.location.href='partials/'+'dashboardCreateTask.jsp'">
								<img src="<%=baseURL%>assets/image/calltask.svg" alt="call" class="task-dropdown"> Call Task
							</button>
							<button class="dropdown-item" type="button">
								<img src="<%=baseURL%>assets/image/emailtask.svg" alt="email" class="task-dropdown"> Email Task
							</button>
							<button class="dropdown-item" type="button">
								<img src="<%=baseURL%>assets/image/webinartask.svg" alt="webinar" class="task-dropdown"> Webinar Task
							</button>
							<button class="dropdown-item" type="button">
								<img src="<%=baseURL%>assets/image/presentation.svg" alt="presentation" class="task-dropdown"> Presentation
							</button>
						</div>
					</div>
				</div>
			</div>
			<!-- End of dashboard header div with dashboard title and New task -->
			<!-- Start of row in main dashboard. This row divided into three major UI column -->
			<div class="row ">
				<!-- Start of left container/first column of dashboard  -->
				<div class="col-md-3 pr-0 left_container pl-0 bg-white">
					<!-- start of To do list & Notes Tabs -->
					<ul class="saleken nav nav-tabs f-16  pb-0 pl-20 pt-30" id="myTab" role="tablist" style="background: #f9f9f9">
						<li class="nav-item"><a class="nav-link active border-istar-left-0 " id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">To - Do List</a></li>
						<li class="nav-item "><a class="nav-link border-istar-left-0 " id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Notes</a></li>
					</ul>
					<div class="tab-content " id="myTabContent" style="background: #f9f9f9">
						<!-- start of To-do list tab content -->
						<div class="tab-pane fade show active " id="home" role="tabpanel" aria-labelledby="home-tab">
							<!-- Calendar container -->
							<div class="w-100 px-2 d-flex justify-content-center">
								<div id="datepicker" class="d-flex justify-content-center"></div>
							</div>
							<hr class="p-0 m-0">
							<div class="task-item-container bg-white  pl-20 pt-20 pr-20 pb-40">
								<div class="d-flex flex-row align-items-center  istar-dropdown pb-10 to_do_list">
									<div class="bblack f-18 fw-500 pb-5">To-Do List</div>
									<div class="istar-dropdown-task border-0">
										<button class="btn rounded-circle bg-white shadow hw-30 d-flex justify-content-center align-items-center ml-20 mr-10 theme_color todo-btn" id="todolist" data-toggle="dropdown"
											data-display="static" aria-haspopup="true" aria-expanded="false">
											<i class="fal fa-plus "></i>
										</button>
										<div class="dropdown-menu istar-dropdown-task-menu  dropdown-menu-right dropdown-menu-lg-right" style="min-width: 150px !important; max-width: 150px !important;" aria-labelledby="todolist">
											<button class="dropdown-item  f-14 fw-500" type="button" id="create_event" onclick="scheduleEvent()">Create an Event</button>
											<button class="dropdown-item  f-14 fw-500" type="button" id="schedule_task" onclick="scheduleTask()">Schedule Task</button>
										</div>
									</div>
								</div>
							<!-- start of no-data for todo list -->
								<div class="no-event">
									<div class="w-100 mt-4 pt-4 text-center">
										<img src="<%=baseURL%>assets/image/08.svg" alt="no-event-data" srcset="" class="mr-2 mb-3">
									</div>
									<div class="fw-500 f-16 greyish-brown mb-2 text-center">Track your tasks</div>
									<div class="fw-500 f-12 brownish-grey  mx-4 px-4 text-center">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</div>
								</div>
								<!-- end of no-data for todo list -->
								<!-- Start of creation to do items card -->
								<div class="to_do_items">
								
								</div>
								<!-- End of creation to do items card -->
							</div>
						</div>
						<!-- End of To-do list tab content -->
						<!-- Start of Notes tab content -->
						<div class="tab-pane fade bg-white" id="profile" role="tabpanel" aria-labelledby="profile-tab">
							<div id="summernote"></div>
							<!-- start of no-data for notes list -->
							<div class="no-notes text-center cursor-pointer" onclick="opennotes()">
								<div class="w-100 mt-4 pt-4">
									<img src="<%=baseURL%>assets/image/make_notes.svg" alt="no-notes" srcset="" class="mr-2 mb-4">
								</div>
								<div class="fw-500 f-16 greyish-brown mt-2 mb-2">Keep your notes</div>
								<div class="fw-500 f-12 brownish-grey  mx-4 px-4">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</div>
							</div>
							<!-- end of no-data for notes list -->
						</div>
						<!-- End of Notes tab content -->
					</div>
					<!-- End of To do list & Notes Tabs -->
				</div>
				<!-- End of left container/first column of dashboard  -->
				<!-- start of center container/second column of dashboard  -->
				<div class="col-md-6 p-0 m-0 center_container ">
					<!-- Start of Pipeline and Stages card-->
					<div class="pipeline-card"></div>
					<!-- End of Pipeline and Stages card-->
					<!-- Start of Signal and its count card -->
					<div id="carouselExampleIndicators" class="carousel slide mb-2" data-ride="carousel"></div>
					<!-- End of Signal and its count card -->
					<!-- Start of Teams card-->
					<div class="team-card pb-10"></div>
					<!-- End of Teams card-->
					<!-- Start of Top/Bottom 5 Agent card-->
					<div class="top-bottom-agent-card"></div>
					<!-- End of Top/Bottom 5 Agent card-->
				</div>
				<!-- End of center container/second column of dashboard  -->
				<!-- Start of right container/third column of dashboard  -->
				<div class="col-md-3 p-0 pl-md-3 pr-md-3">
				<div>
				
				</div>
				
					<!-- Start of ongoing task list 
                     initially it will be hidden   
                     We will display this container on click of view more click
                     -->
					<div class="ongoing_task_container position-relative" style="display: none;">
						<div class="row">
							<div class="col">
								<div class="d-flex mb-3 border-top-task_list ">
									<div class="mr-auto pt-4 greyish-brown f-16 font-weight-bold">Task List</div>
									<button type="button" class="close task very-light-pink-bg pt-4 removefocus" aria-label="Close" style="">
										<img src="<%=baseURL%>assets/image/close.svg" alt="taskicon" class="border-0 hw-24 task-icon">
									</button>
								</div>
							</div>
						</div>
						<div class="ongoing_task_content"></div>
					</div>
					<!-- End of ongoing task list (view more click on ongoing task card) -->
					<!-- Start of resolve task list 
                     initially it will be hidden   
                     We will display this container on click of view more click
                     -->
					<div class="task_resolve_container position-relative" style="display: none;">
						<div class="row">
							<div class="col">
								<div class="d-flex mb-3 border-top-task_list ">
									<div class="mr-auto pt-4 greyish-brown f-16 font-weight-bold">RESOLVE</div>
									<button type="button" class="close resolve_task very-light-pink-bg pt-4 removefocus" aria-label="Close" style="">
										<img src="<%=baseURL%>assets/image/close.svg" alt="taskicon" class="border-0 hw-24 task-icon">
									</button>
								</div>
							</div>
						</div>
						<div class="task_resolve_content"></div>
					</div>
					<!-- End of ongoing task list (view more click on ongoing task card) -->
										<button type="button" onclick="onCloseClick()" class="btn p-0 mb-2 showmore_close" style="display:none"><img src="<%=baseURL%>assets/image/close.svg" alt="taskicon" class="border-0 hw-24 task-icon"></button>
					
					<div class="third_main_container_behind"></div>
					
					
					<div class="third_main_container">
					
						<!-- Start of Associate Join now/Listen card-->
						<div class="" id="ongoing_task_card" ></div>
						<!-- End of Associate Join now/Listen card-->
						<!-- Start of issue resolve card-->
						<div class="" id="raise_issue_card"></div>
						<!-- End of issue resolve card-->
						<!-- Start of chat now card-->
						<div class="" id="chat_card" onclick="window.location.href = '/taskDetails/partials/task_lead_detail.jsp'"></div>
						<!-- End of chat now card-->
						<!-- Start of accepting incoming call by Associate card-->
						<div class="" id="upcoming_meeting"></div>
						<!-- End of accepting incoming call by Associate card-->
					</div>
				</div>
				<!-- End of right container/third column of dashboard  -->
			</div>
			<!-- End of row main dashboard row divided into three column -->
			<!-- start of create event modal -->
			<jsp:include page="../dashboard/modal/create_event_modal.jsp"></jsp:include>
			<!-- end of create event modal -->
			<!-- start of schedule task modal -->
			<jsp:include page="../dashboard/modal/schedule_task_modal.jsp"></jsp:include>
			<!-- end schedule task modal -->
			<!-- start of resolve card modal -->
			<jsp:include page="../dashboard/modal/resolve_card_modal.jsp"></jsp:include>
			<!-- end of resolve card modal -->
			<!-- start of delete modal -->
			<jsp:include page="../dashboard/modal/delete_modal.jsp"></jsp:include>
			<!-- end of delete modal -->
		</div>
	</main>

	<script src="<%=baseURL%>assets/js/popper.min.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap.min.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap-datepicker.min.js"></script>
	<script src="<%=baseURL%>assets/js/jquery.rateyo.min.js"></script>
	<script src="<%=baseURL%>assets/js/dashboard_left.js"></script>
	<script src="<%=baseURL%>assets/js/dashboard_right.js"></script>
	<script src="<%=baseURL%>assets/js/dashboard_center.js"></script>
	<script src="<%=baseURL%>assets/js/salesken.js"></script>
	<script src="<%=baseURL%>assets/js/wickedpicker.min.js"></script>
	<script src="<%=baseURL%>assets/js/summernote-bs4.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap-select.min.js"></script>
	
	<script src="<%=baseURL%>assets/js/multiselect.js"></script>
	<script src="<%=baseURL%>assets/js/jquery.validate.min.js"></script>
</body>
</html>