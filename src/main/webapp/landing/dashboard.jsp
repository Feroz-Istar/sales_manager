<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html lang="en" class="h-100">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
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
	String today_date= sdf.format(new Date());
	int size=0;

%>
<link rel="icon" href="<%=baseURL%>favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="<%=baseURL%>favicon.ico"
	type="image/x-icon" />
<link rel="stylesheet" href="<%=baseURL%>assets/css/bootstrap.min.css">
<link href="<%=baseURL%>assets/css/bootstrap-datepicker3.min.css?xsww"
	rel="stylesheet">
<link rel="stylesheet" href="<%=baseURL%>assets/css/salesken_style.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/dashboard.css">

<link rel="stylesheet" href="<%=baseURL%>assets/css/all.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/jquery.rateyo.css">

<link href="<%=baseURL%>assets/css/bootstrap-datepicker3.min.css?xsww"
	rel="stylesheet">
<link rel="stylesheet" href="<%=baseURL%>assets/css/wickedpicker.min.css">
  <link href="<%=baseURL%>assets/css/summernote-bs4.css" rel="stylesheet">
    <link href="<%=baseURL%>assets/css/bootstrap-select.min.css" rel="stylesheet">
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
		<div class="row pb-3" id="incoming_date"
			data-input_date="<%=incomingDate%>">
			<div class="col-md-6 col-6 p-0 m-0 d-flex align-items-center">
				<h1 class="display-1 black f-20 fw-500 mb-0">Dashboard</h1>

			</div>
			<div class="col-md-6 col-6 d-flex justify-content-end ">
				<div class="istar-dropdown-task">
					 <button class="btn btn-style px-2 f-12 dropdown-toggle"
						type="button" id="newTaskMenuButton" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">NEW TASK</button>
					
					 <div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu dropdown-menu-lg-left" aria-labelledby="newTaskMenuButton">
					    <button class="dropdown-item" type="button" onclick="window.location.href = 'dashboardCreateTask.jsp'">
					    <img src="<%=baseURL%>assets/image/calltask.svg" title="Call" alt="call" class="task-dropdown">
					    Call Task</button>
					    <button class="dropdown-item" type="button">
					    <img src="<%=baseURL%>assets/image/emailtask.svg" title="Email" alt="email" class="task-dropdown">
					    Email Task</button>
					    <button class="dropdown-item" type="button">
					    <img src="<%=baseURL%>assets/image/webinartask.svg" title="Webinar" alt="webinar" class="task-dropdown">
					    Webinar Task
					    </button>
					    <button class="dropdown-item" type="button">
					    <img src="<%=baseURL%>assets/image/presentation.svg" title="Presentation" alt="presentation" class="task-dropdown">
					    Presentation
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
				<ul class="saleken nav nav-tabs f-14  pb-0 pl-20 pt-30"
					id="myTab" role="tablist" style="background: #f9f9f9">
					<li class="nav-item">
						<a class="nav-link active border-istar-left-0" id="home-tab" data-toggle="tab" href="#home" role="tab"
						aria-controls="home" aria-selected="true">To - Do List</a>
					</li>
					<li class="nav-item ">
						<a class="nav-link border-istar-left-0" id="profile-tab" data-toggle="tab" href="#profile" role="tab"
						aria-controls="profile" aria-selected="false">Notes</a>
					</li>

				</ul>
				<div class="tab-content " id="myTabContent"
					style="background: #f9f9f9">
					<!-- start of To-do list tab content -->
					<div class="tab-pane fade show active " id="home" role="tabpanel"
						aria-labelledby="home-tab">
						<!-- Calendar container -->
						<div class="w-100 px-2 d-flex justify-content-center">
							<div id="datepicker" class="d-flex justify-content-center"></div>

						</div>
						<hr class="p-0 m-0">
						
						
						<div class="task-item-container bg-white  pl-20 pr-20 pt-40 pb-40">
							
							<div class="d-flex flex-row align-items-center  istar-dropdown pb-10">
								<div class="pr-20 bblack f-18 fw-500">To-Do List</div>
								<%-- <button
									class="btn rounded-circle shadow d-flex justify-content-center align-items-center sales_ken_popover"
									style="height: 30px; width: 30px; background: white;"  data-toggle="popover"  data-placement="bottom"  data-content='<ul class="popover_content list-group  py-2 bg-white" style="">   <li class="list-group-item border-0 f-14 cursor-pointer rounded-0" id="create_event" onclick="scheduleEvent()">Create an Event</li>   <li class="list-group-item border-0 f-14 cursor-pointer rounded-0" id="schedule_task" onclick="scheduleTask()">Schedule Task</li> </ul>'>
									<i class="fas fa-plus theme_color"></i>
								</button> --%>

									<div class="istar-dropdown-task border-0">
									<div class="d-flex" style="min-width: 60px;" id="todolist" data-toggle="dropdown" aria-haspopup="true"
											aria-expanded="false">
									
										<button
											class="btn rounded-circle shadow d-flex justify-content-center align-items-center "
											style="height: 30px; width: 30px; background: white;"
											>
											<i class="fas fa-plus theme_color"></i>
											
										</button>
										</div>
										<div class="dropdown-menu   istar-dropdown-task-menu  dropdown-menu-right dropdown-menu-lg-left" style="min-width:150px;max-width:150px;"
											aria-labelledby="todolist">
											<button class="dropdown-item" type="button" id="create_event" onclick="scheduleEvent()">Create
												an Event</button>

											<button class="dropdown-item" type="button"  id="schedule_task" onclick="scheduleTask()">Schedule
												Task</button>

										</div>
									</div>
								

							</div>
							<!-- Start of creation to do items card -->
							<%
								for (int j = 0; j < 4; j++) {
									
							%>
							<div class="taskitem  pt-20 pb-20" style="display:none">
								<div class="d-flex flex-row align-items-center mb-2 ">
									<div class="font-weight-bold f-14 bblack">Meeting with
										Sales Team</div>
									<div class=" ml-auto istar-dropdown dropleft f-12 brown-grey">
										<button class="dropdown-icon-btn " type="button"
											id="dropdownMenuButton" data-display="static"
											data-toggle="dropdown" aria-haspopup="true"
											aria-expanded="false">
											<i class="fas fa-ellipsis-v f-12 brown-grey"></i>
										</button>
										<div
											class="dropdown-menu dropdown-menu-right istar-dropdown-menu"
											aria-labelledby="dropdownMenuButton">
											
											<button class="dropdown-item" href="#">
												<img src="<%=baseURL%>assets/image/edit.svg" alt="edit"
													srcset="" class="mr-2">Edit
											</button>
											<button class="dropdown-item" href="#">
												<img src="<%=baseURL%>assets/image/delete.svg" alt="delete"
													srcset="" class="mr-2">Delete
											</button>
											
										</div>
									</div>

								</div>
								<div class="f-12  mb-1 bblack mb-2">11:00 AM</div>
								<div class="d-flex flex-row  mb-1">
									<%
										for (int i = 0; i < 3; i++) {
												String img_mar = "";
												if (i != 0) {
													img_mar = "ml_10";
												}
									%>
									<img class="rounded-circle imgsize mr-1 <%=img_mar%>"
										 alt="associate-name" title="associate-name" src="https://res.cloudinary.com/demo/image/upload/q_60/sample.jpg">
									<%
										}
									%>
									
								</div>
							</div>
							<%
									}
							%>
							
								<!-- start of no-data for todo list -->	
								<div class="no-event">						
								<div class="w-100 mt-4 pt-4 text-center">
									<img src="<%=baseURL%>assets/image/08.svg" alt="no-event-data"
													srcset="" class="mr-2 mb-3">
								</div>
								<div class="fw-500 f-16 greyish-brown mb-2 text-center">Track your tasks</div>
								<div class="fw-500 f-12 brownish-grey  mx-4 px-4 text-center">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</div>	
								</div>
								<!-- end of no-data for todo list -->							
								
							
							
							<!-- End of creation to do items card -->

						</div>
					</div>
					<!-- End of To-do list tab content -->

					<!-- Start of Notes tab content -->
					<div class="tab-pane fade bg-white p-3" id="profile"
						role="tabpanel" aria-labelledby="profile-tab">
						    <div id="summernote"></div>
						
<!-- 
						<div class="row">
							<div class="col-md-6 d-flex">
								<input type="checkbox" name="select_all" value="Bike"
									class="p-1 mr-2 checksize align-self-center"><br>
								<button class="btn p-1 mr-2">
									<i class="fas fa-list"></i>
								</button>
								<button class="btn p-1 mr-2">
									<i class="fas fa-list-ol"></i>
								</button>
							</div>
							<div class="col-md-6 d-flex justify-content-end">
								<button class="btn p-1 mr-2">
									<i class="fas fa-paperclip"></i>
								</button>
								<button class="btn p-1 ">
									<i class="fas fa-ellipsis-v"></i>
								</button>
							</div>
						</div>
						<hr>
						<div class="">
							<input type="checkbox" name="vehicle1 " value="Bike"
								class="p-1 mr-2 mb-3 checksize ">Need to Call TEK System
							today <br> <input type="checkbox" name="vehicle2"
								value="Car"
								class="p-1 mr-2 mb-3 checksize f-14 font-weight-bold">Setup
							the lead information<br> <input type="checkbox"
								name="vehicle3" value="Boat"
								class="p-1 mr-2 mb-3 checksize f-14 font-weight-bold" checked>Cras
							at finibus purus.<br>
						</div>
						<ul type="disc" class="pl-4 f-14">
							<li>Lorem ipsum dolor sit amet</li>
							<li>Suspendisse sit amet sem ac tellus</li>
							<li>Nulla malesuada justo sed diam.</li>
						</ul> -->
								<!-- start of no-data for notes list -->	
								<div class="no-notes text-center cursor-pointer" onclick="opennotes()">						
									<div class="w-100 mt-4 pt-4">
										<img src="<%=baseURL%>assets/image/make_notes.svg" alt="no-notes"
														srcset="" class="mr-2 mb-4">
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
			<div class="col-md-6 p-0 m-0 center_container mb-3 ">
			

				<!-- Start of Pipeline and Stages card-->
					<div class="pipeline-card"></div>
				<!-- End of Pipeline and Stages card-->

				<!-- Start of Teams card-->
					<div class="team-card pb-10"></div>
				<!-- End of Teams card-->



	<!-- Start of Signal and its count card -->
				<div id="carouselExampleIndicators" class="carousel slide mb-2"
					data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#carouselExampleIndicators" data-slide-to="0"
							class="active"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
					</ol>
					<div class="carousel-inner shadow">

						<%	
							for (int i = 0; i < 4; i++) {
								String isActive = "";
								if (i == 0) {
									isActive = "active";
								}
						%>
						<div class="carousel-item <%=isActive%>">

							<div class="card  rounded-0 saleskenCard" style="min-height: 194px;">
								<div class="card-body">
									<div class="row align-items-center px-3"
										style="min-height: 104px;">
										<div class="col-md-4">
											<div class="font-weight-bold f-30">
												04
											</div>
											<div class="f-14 fw-500 greyish-brown">Not
												asking for next steps</div>
										</div>
										<img class="col-md-2 signalimgsize" alt="next-step-img"
											src="<%=baseURL%>assets/image/Group 3614.svg" />
										<div class="col-md-4 card-separation">
											<div class="f-30 font-weight-bold greyish-brown">12</div>
											<div class="f-14 fw-500 greyish-brown">Responded
												positively in the end of a call</div>
										</div>
										<img class="col-md-2 signalimgsize" alt="next-step-img"
											src="<%=baseURL%>assets/image/Group 3614.svg" />
									</div>
								</div>
							</div>


						</div>
						<%
							}
						%>

					</div>
					<a class="carousel-control-prev" href="#carouselExampleIndicators"
						role="button" data-slide="prev"> <span
						class="carousel-control-prev-icon" aria-hidden="true"></span> <span
						class="sr-only">Previous</span>
					</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
						role="button" data-slide="next"> <span
						class="carousel-control-next-icon" aria-hidden="true"></span> <span
						class="sr-only">Next</span>
					</a>
				</div>
				<!-- End of Signal and its count card -->
				<!-- Start of Top/Bottom 5 Agent card-->
					<div class="top-bottom-agent-card"></div>
				
				<!-- End of Top/Bottom 5 Agent card-->



			</div>
			<!-- End of center container/second column of dashboard  -->

			<!-- Start of right container/third column of dashboard  -->
			<div class="col-md-3 p-0 pl-md-3 pr-md-3">


				<!-- Start of ongoing task list 
				initially it will be hidden   
				We will display this container on click of view more click
				-->

				<div class="ongoing_task_container position-relative"
					style="display: none;">
					<div class="row">
						<div class="col">

							<div class="d-flex mb-3 border-top-task_list ">
								<div class="mr-auto pt-4 greyish-brown f-16 font-weight-bold">Task
									List</div>
								<button type="button"
									class="close task very-light-pink-bg pt-4 removefocus"
									aria-label="Close" style="">
									<span aria-hidden="true">&times;</span>
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
				<div class="task_resolve_container position-relative"
					style="display: none;">
					<div class="row">
						<div class="col">

							<div class="d-flex mb-3 border-top-task_list ">
								<div class="mr-auto pt-4 greyish-brown f-16 font-weight-bold">RESOLVE</div>
								<button type="button"
									class="close resolve_task very-light-pink-bg pt-4 removefocus"
									aria-label="Close" style="">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>



						</div>

					</div>

					<div class="task_resolve_content"></div>
				</div>
				<!-- End of ongoing task list (view more click on ongoing task card) -->

				<div class="third_main_container">
				<!-- Start of Associate Join now/Listen card-->
				<div class="card  rounded-0 shadow mb-20">
					<div class="card-body ongoingtaskcard cursor-pointer p-0 p-20">
						<div class="d-flex pb-10">
							<div
								class="mr-auto  bd-highlight theme_color f-20 font-weight-bold">$
								250</div>
							<div class=" bd-highlight">
								<span class="badge badge-danger istar_badge"
									>Angry</span>
							</div>
						</div>
						<h5 class="card-title mb-0 f-18 font-weight-bold text-truncate" title="Accenture">Accenture Consulting Inc.</h5>
						<div class="f-16 brownish-grey text-truncate" title="Accenture">Robert Wolken</div>
						<div class="f-12 brown-grey pb-10">Manager</div>
						<div class="dotted-1 "></div>

						<div class="d-flex align-items-center pt-20">
							<div class="mr-auto  ">
								<div class="d-flex flex-column">
									<div class="brown-grey f-12">Call Task by</div>
									<div class="brownish-grey f-16 text-truncate" title="Accenture">Marry Vasquez</div>
								</div>

							</div>
							<div class=" bd-highlight">
								<div class="img-wrapper position-relative">
									<img class="hw-66 rounded-circle img-responsive" title="Lead Name" alt="lead-img"
										src="<%=baseURL%>assets/image/layer.png" />
									<div class="img-overlay"
										style="position: absolute; left: -19px; top: 28%;">
										<button class="hw-30 rounded-circle tea border-0"
											style="z-index: 1; border: 2px solid white !important;">
											<i class="fas fa-phone-alt  text-white f-12"></i>
										</button>
									</div>
								</div>

							</div>
						</div>

						<div class="d-flex">
							
								
								<div class=" pr-10">
								<button type="button" class="btn small_button rounded-0 f-12 font-weight-bold">JOIN NOW</button>
								</div>
								<button type="button" class="btn small_outline_button rounded-0 f-12 font-weight-bold">LISTEN</button>
								

						</div>
					</div>
					<div class="card-footer cream_white p-0 pt-10 pb-10">
						<div class="d-flex justify-content-end view_more_ongoing_task pr-20">
							<div class="theme_color f-14 font-weight-bold cursor-pointer">
								04 More<i class="fas fa-chevron-circle-right theme_color ml-2"></i>
							</div>
						</div>
					</div>
				</div>
				<!-- End of Associate Join now/Listen card-->



				<!-- Start of issue resolve card-->
				<div class="card rounded-0 shadow mb-20" >
					<div class="card-body p-0 p-20">
						<h6 class="card-subtitle m-0 text-muted f-12 pb-10 fw-300">June 12,
							2019</h6>
						<p class="card-text greyish-brown f-14 text-truncate mb-0" title="Product Price in too expensive">Product Price in too
							expensive, and agents are not supportive and they are not
							providing information !</p>
						<div class="f-18 pt-20 greyish-brown text-truncate" title="Martin Franklin">Martin Franklin</div>
						<div class="f-16 brownish-grey text-truncate" title="Infogen Consulting Pvt.">Infogen Consulting Pvt.
							Ltd</div>
						<div class="pt-25">
														<button type="button" class="btn small_button rounded-0 f-12 font-weight-bold resolvecardmodal" href="/modals/resolvetask.jsp">RESOLVE</button>
												</div>
					</div>
					<div class="card-footer cream_white p-0 pt-10 pb-10">
						<div class="d-flex justify-content-end pr-20">
							<div class="theme_color f-14 font-weight-bold cursor-pointer view_more_resolve_task">
								04 More<i class="fas fa-chevron-circle-right theme_color ml-2"></i>
							</div>
						</div>
					</div>
				</div>
				<!-- End of issue resolve card-->

				<!-- Start of chat now card-->
				<div class="card mb-3 rounded-0 shadow" >
					<div class="card-body p-0 p-20">
						<h6 class=" mb-0 text-muted f-12 fw-300 pb-10">10:30 AM</h6>
						<div class="row align-items-center m-0 pb-15">
							<div class="col-md-9 col-6 p-0 pr-10">
								<p class="card-text greyish-brown f-14 text-trucate" title="Hello Sir, The
									customer is asking about dis">Hello Sir, The
									customer is asking about discount, please tell me….</p>
							</div>
							<div class="col-md-3 col-6  p-0 pl-10">
								<img class="hw-60 " alt="user" title="UserName"
									src="<%=baseURL%>assets/image/11.png">

							</div>
						</div>


						<div>
							<button type="button" class="btn join_btn  istar-btn-hover f-12 mr-2">CHAT
								NOW</button>
						</div>
					</div>

				</div>
				<!-- End of chat now card-->
				<!-- Start of accepting incoming call by Associate card-->
				<div class="card rounded-0 shadow ">
					<div class="card-body p-20">
					<div class="row m-0 pb-10">
							<div class="col-md-6 p-0 d-flex col-6 ">
								<img class="hw-24 mr-1" alt="task" src="<%=baseURL%>assets/image/task.svg">
								<div class="f-16 brownish-grey " style="line-height: 28px;">Call
									Task</div>

							</div>
							<div class="col-md-6 p-0 d-flex col-6">
								<img class="hw-24 mr-1" src="<%=baseURL%>assets/image/alarm.svg" alt="alarm">
								<div class="f-16 brownish-grey" style="line-height: 28px;">12:30
									PM</div>
							</div>
							</div>
							<h5 class="mb-0 f-18 text-truncate" title="Accenture">Accenture Consulting Inc.</h5>
						<div class="f-16 brownish-grey text-truncate" title="Robert Wolken">Robert Wolken</div>
						<div class="f-12 brown-grey ">Manager</div>
						</div>

						

					<div class="card-footer p-20 cream_white">
						<p class="brownish-grey f-16 pb-25">Louella sent an request for
							Meeting!</p>
						<button type="button" class="btn join_btn istar-btn-hover f-12 mr-2 mb-3">ACCEPT</button>
						<button type="button" class="btn listen_btn f-12 mb-3">REJECT</button>
					</div>
				</div>
				<!-- End of accepting incoming call by Associate card-->


			</div>
			</div>
			<!-- End of right container/third column of dashboard  -->

		</div>
		<!-- End of row main dashboard row divided into three column -->

	<!-- start of create event modal -->
		<div class="modal fade" id="createEventModalCenter" tabindex="-1" role="dialog" aria-labelledby="createEventModalCenterTitle" aria-hidden="true">
		  <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
		    <div class="modal-content rounded-0 pl-30 pr-30 eventmodalsize">
		     <div class="modal-header pt-20 pb-20 px-0">
		    	<h5 class="modal-title greyish-brown f-18 font-weight-bold mb-0">Create an Event</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
				</div>
		      <div class="modal-body p-0">
		      	<form action="" id="createTaskFrom">
		      	<fieldset>
		       	<div class="row pt-20 m-0">
		       		<div class="col-md-6 p-0 pr-7_5">
		       			<div class="f-14 fw-500 pb-10">Add Title</div>
		       			<input type="text" class="custom-modal-input w-100 form-control f-14 istar-form-control" name="eventTitle" id="eventTitle" aria-describedby="eventTitle" placeholder="Type here"/>
		       		</div>
		       		<div class="col-md-6 p-0 pl-7_5">
		       			<div class="f-14 fw-500 pb-10">Type</div>
		       			<select class="form-control custom-modal-input w-100 f-14 brwon-grey istar-form-control"  name="eventType" id="eventType">
					      <option value="0">Select Here</option>
					      <option value="1">Type 1</option>
					      <option value="2">Type 2</option>
					    </select>
		       		</div>
		       	</div>
		       	<div class="row m-0 pt-20">
					<div class="col-md-6 p-0 pr-7_5">
						<div class="f-14 fw-500 pb-10">Date</div>
					<%-- 	<div class="custom-modal-input w-100 d-flex mr-2 border-0">
							<input class="f-14  removefocus w-100 pl-2  istar-form-control " placeholder="Select here" id="event_date" name="event_date" value="<%=today_date%>">
							<img src="<%=baseURL%>assets/image/calendar.svg" alt="" class="pr-2">	
						</div>	 --%>
						<div class="input-group position-relative  ">
				<img src="<%=baseURL%>assets/image/calendar.svg" alt="" class=" event_date">
					<input id="event_date" name="event_date" value="<%=today_date%>" class=" pl-2 f-14  removefocus w-100 istar-form-control h-35" placeholder="Select here" >
				</div>
					</div>
					<div class="col-md-6 p-0 pl-7_5">
						<div class="f-14 fw-500 pb-10">Time	</div>
						<%-- <div class="custom-modal-input w-100 d-flex mr-2 ">
							<input class="f-14 border-0 removefocus w-100 pl-2 timepicker istar-form-control " name="timepicker" id="timepicker" placeholder="Select here">
							<img src="<%=baseURL%>assets/image/alarm.svg" alt="" class="pr-2">	
						</div>	 --%>
				<div class="input-group position-relative  ">
				<img src="<%=baseURL%>assets/image/alarm.svg" alt="" class="event_date">
					<input id="timepicker" name="event_date"  class=" pl-2 f-14  removefocus timepicker w-100 istar-form-control h-35" type="text"  placeholder="Select here" >
				</div>
					</div>
				</div>
				<div class="row m-0 pt-20">
					<div class="col-md-12 p-0">
						<div class="f-14 fw-500 pb-10">Add Guest</div>
		       			<input type="text" class="custom-modal-input w-100 form-control f-14 istar-form-control" id="addGuest" name="addGuest" aria-describedby="addGuest" placeholder="Select here">
					</div>
				</div>
				
				<div class="row m-0 pt-20 pb-40">
					<div class="col-md-12 p-0">
						<div class="f-14 fw-500 pb-10">Description</div>
						<textarea class="custom-modal-textarea w-100 istar-form-control form-control" id="eventdescription " name="eventdescription" rows="6"></textarea>
					</div>
				</div>
				</fieldset>
				</form>
		      </div>
		      <div class="modal-footer p-0 pt-20 pb-20">
		        <button type="submit" class="btn theme_color f-14 font-weight-bold" >Reset</button>
		         <button type="button" class="btn big_button rounded-0 f-14 font-weight-bold"  id="create" onclick="showList()">CREATE</button>		        
		      </div>
		    </div>
		  </div>
		</div>
	<!-- end of create event modal -->
	
	<!-- start of schedule task modal -->
	
	<div class="modal fade" id="scheduleTaskModalCenter" tabindex="-1" role="dialog" aria-labelledby="scheduleTaskModalCenterTitle" aria-hidden="true">
	  <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
	    <div class="modal-content eventmodalsize rounded-0 pl-30 pr-30">
	     <div class="modal-header pt-20 pb-20 px-0">
		    	<h5 class="modal-title greyish-brown f-18 font-weight-bold mb-0">Schedule Task</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
				</div>
	      <div class="modal-body  p-0">
	      <form id="scheduletaskform" class="mb-0">
	      <fieldset>
	        <div class="row  pt-20 m-0">
		        <div class="col-md-12 istar-dropdown p-0">
			      <div class="f-14 fw-500 pb-10">Lead Name</div>
							<div class="form-group">
									<select class="form-control selectpicker h-35" id="leadname" data-style="removefocus" title="Select here"
										data-live-search="true" id="exampleFormControlSelect1" >

										<%
											for (int i = 0; i < 10; i++) {
												String bgcolor = "bg-white";
												if (i % 2 == 0) {
													bgcolor = "cream_white";
												}
										%>
										<option
											data-content="<div class='row w-100 py-2 px-3 m-0'>
											 <div class='col-md-4 f-14 fw-500 black text-center'>Vehement Capital Partners</div> 
											 <div class='col-md-4 f-14 greyish-brown text-center'>Miriam Franklin <%=i%></div> 
											 <div class='col-md-4 f-14 greyish-brown text-right'>+91 445 546 6456</div>
											  </div>">Miriam
											Franklin
											<%=i%></option>
										<%
											}
										%>
									</select>
								</div>

				</div>
				
	        </div>
	        
	        <div class="row  pt-20 m-0">
	        	<div class="col-md-6 istar-dropdown p-0 pr-7_5">
	       			<div class="f-14 fw-500 pb-10">Task Type</div>
	       			
				    
					<button class="custom-modal-input w-100 pl-2 d-flex h-35" style="justify-content: space-between;"
						id="activity" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Select here
						<i class="fas fa-chevron-down very-light-pink f-12 align-self-center"></i> 
					</button>
					 <div class="dropdown-menu dropdown-menu-right task-dropdown-menu" id="scheduleTaskType">
					    <button class="dropdown-item" type="button">
					    <img src="<%=baseURL%>assets/image/calltask.svg" alt="call" class="task-dropdown">
					    Call Task</button>
					    <button class="dropdown-item" type="button">
					    <img src="<%=baseURL%>assets/image/emailtask.svg" alt="email" class="task-dropdown">
					    Email Task</button>
					    <button class="dropdown-item" type="button">
					    <img src="<%=baseURL%>assets/image/webinartask.svg" alt="webinar" class="task-dropdown">
					    Webinar Task
					    </button>
					    <button class="dropdown-item" type="button">
					    <img src="<%=baseURL%>assets/image/presentation.svg" alt="presentation" class="task-dropdown">
					    Presentation
					    </button>
					  </div>
					
	       		</div>
	       		<div class="col-md-6 p-0 pl-7_5">
	       			<div class="f-14 fw-500 pb-10">Task By</div>
	       			<select class="form-control custom-modal-input w-100 f-14 brwon-grey h-35" id="taskActor" name="taskActor">
				      <option value="0">Me</option>
				      <option value="1">Type 1</option>
				      <option value="2">Type 2</option>
				    </select>
	       		</div>
	        </div>
	        <div class="row  pt-20 m-0 pb-30">
					<div class="col-md-6 p-0 pr-7_5">
						<div class="f-14 fw-500 pb-10">Date</div>
						<div class="custom-modal-input w-100 d-flex mr-2 h-35">
							<input class="f-14 border-0 removefocus w-100 pl-2 " placeholder="Select here" id="schedule_task_date" value="<%=today_date%>">
							<img src="<%=baseURL%>assets/image/calendar.svg" alt="date" class="pr-2">	
						</div>	
					</div>
					<div class="col-md-6 p-0 pl-7_5">
						<div class="f-14 fw-500 pb-10">Time	</div>
						<div class="custom-modal-input w-100 d-flex mr-2 h-35">
							<input class="f-14 border-0 removefocus w-100 pl-2 " placeholder="Select here" id="schedule_task_time">
							<img src="<%=baseURL%>assets/image/alarm.svg" alt="alarm" class="pr-2">	
						</div>	
					</div>
				</div>
				</fieldset>
				</form>
	      </div>
	      <div class="modal-footer p-0 pt-20 pb-20">
	         <button type="button" class="btn theme_color f-14 font-weight-bold">Reset</button>
	         
	          <button type="button" class="btn big_button modal-submit-btn rounded-0 f-14 font-weight-bold" id="schedule">SCHEDULE</button>
	         
	      </div>
	    </div>
	  </div>
	</div>
	
	<!-- end of schedule task modal -->

<!-- start of resolve card modal -->

<div class="modal fade" id="resolvecardmodal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered " role="document">
    <div class="modal-content rounded-0 px-3 ">
      <div class="row shadow-sm p-3"> 
					<div class="col-md-11 col-11 modal-title greyish-brown f-18 font-weight-bold" id="createresolveModalCenterTitle">Objection</div>
					<button type="button" class="col-md-1 col-1 close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
      <div class="modal-body">
		
		     
      </div>
      <div class="modal-footer">
        <button type="button" class="btn theme_color bg-transparent font-weight-bold" data-dismiss="modal">Reset</button>
        <button type="button" class="btn  istar-btn-primary" style="width: 140px;">RESOLVE</button>
      </div>
    </div>
  </div>
</div>



<!-- end of resolve card modal -->
	</div>
	</main>
	<script src="<%=baseURL%>assets/js/jquery-3.4.1.min.js"></script>
	<script src="<%=baseURL%>assets/js/popper.min.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap.min.js"></script>
 	<script src="<%=baseURL%>assets/js/bootstrap-datepicker.min.js"></script>
 	<script src="<%=baseURL%>assets/js/highcharts.js"></script>
	<script src="<%=baseURL%>assets/js/exporting.js"></script>
	<script src="<%=baseURL%>assets/js/jquery.rateyo.min.js"></script>

	<script src="<%=baseURL%>assets/js/dashboard.js"></script>
	<script src="<%=baseURL%>assets/js/salesken.js"></script>
	<script src="<%=baseURL%>assets/js/wickedpicker.min.js"></script>
    <script src="<%=baseURL%>assets/js/summernote-bs4.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap-select.min.js"></script>
	<script src="<%=baseURL%>assets/js/jquery.validate.min.js"></script>
	
</body>
</html>