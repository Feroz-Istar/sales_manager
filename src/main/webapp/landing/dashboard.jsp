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

</head>
<body>
	<jsp:include page="../navbar/nav.jsp"></jsp:include>

	<main role="main">
	<div class="container-fluid salesken_container">


		<!-- Start of dashboard header div with dashboard title and New task -->
		<div class="row pb-3" id="incoming_date"
			data-input_date="<%=incomingDate%>">
			<div class="col-md-6 col-6 p-0 m-0">
				<h1 class="display-1 black f-20">Dashboard</h1>

			</div>
			<div class="col-md-6 col-6 d-flex justify-content-end">
				<div class="dropdown">
					<button style="width: 108px; height: 30px;"
						class="btn theme_bg dropdown-toggle text-white font-weight-bold f-12"
						type="button" id="dropdownMenuButton" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">
						<span class="sr-only">Toggle Dropdown</span> New Task &nbsp;
						&nbsp; &nbsp;
					</button>
					<div
						class="dropdown-menu  dropdown-menu-right dropdown-menu-lg-left"
						aria-labelledby="dropdownMenuButton">
						<a class="dropdown-item" href="#">Action</a> <a
							class="dropdown-item" href="#">Another action</a> <a
							class="dropdown-item" href="#">Something else here</a>
					</div>
				</div>

			</div>

		</div>
		<!-- End of dashboard header div with dashboard title and New task -->


		<!-- Start of row in main dashboard. This row divided into three major UI column -->
		<div class="row mb-5">
			<!-- Start of left container/first column of dashboard  -->
			<div class="col-md-3 pr-0 left_container pl-0 bg-white">
				<!-- start of To do list & Notes Tabs -->
				<ul class="saleken nav nav-tabs f-14 custom_dash_padding pt-3 pb-0"
					id="myTab" role="tablist" style="background: #f9f9f9">
					<li class="nav-item"><a class="nav-link active border-left-0"
						id="home-tab" data-toggle="tab" href="#home" role="tab"
						aria-controls="home" aria-selected="true">To-Do List</a></li>
					<li class="nav-item "><a class="nav-link border-left-0"
						id="profile-tab" data-toggle="tab" href="#profile" role="tab"
						aria-controls="profile" aria-selected="false">Notes</a></li>

				</ul>
				<div class="tab-content " id="myTabContent"
					style="background: #f9f9f9">
					<!-- start of To-do list tab content -->
					<div class="tab-pane fade show active " id="home" role="tabpanel"
						aria-labelledby="home-tab">
						<!-- Calendar container -->
						<div class="w-100 pl-2 pr-2 pr-md-4 pl-md-4">
							<div id="datepicker"></div>

						</div>
						<hr class="p-0 m-0">
						<div class="task-item-container bg-white  custom_dash_padding">
							<div class="d-flex flex-row align-items-center pt-2 pb-4">
								<div class="font-weight-bold mr-3 bblack f-18">To-Do List</div>
								<button
									class="btn rounded-circle shadow d-flex justify-content-center align-items-center"
									style="height: 30px; width: 30px; background: white;">
									<i class="fas fa-plus theme_color"></i>
								</button>
							</div>
							<!-- Start of creation to do items card -->
							<%
								for (int j = 0; j < 4; j++) {
							%>
							<div class="taskitem pt-3 pb-3">
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
												<img src="<%=baseURL%>assets/image/won.svg" alt="" srcset=""
													class="mr-2"> Won
											</button>
											<button class="dropdown-item" href="#">
												<img src="<%=baseURL%>assets/image/lost.svg" alt=""
													srcset="" class="mr-2">Lose
											</button>
											<button class="dropdown-item" href="#">
												<img src="<%=baseURL%>assets/image/edit.svg" alt=""
													srcset="" class="mr-2">Edit
											</button>
											<button class="dropdown-item" href="#">
												<img src="<%=baseURL%>assets/image/delete.svg" alt=""
													srcset="" class="mr-2">Delete
											</button>
											<button class="dropdown-item" href="#">
												<img src="<%=baseURL%>assets/image/details.png" alt=""
													srcset="" class="mr-2">Details
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
										src="https://res.cloudinary.com/demo/image/upload/q_60/sample.jpg">
									<%
										}
									%>
								</div>
							</div>
							<%
								}
							%>
							<!-- End of creation to do items card -->

						</div>
					</div>
					<!-- End of To-do list tab content -->

					<!-- Start of Notes tab content -->
					<div class="tab-pane fade bg-white p-3" id="profile"
						role="tabpanel" aria-labelledby="profile-tab">

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
						</ul>

					</div>
					<!-- End of Notes tab content -->

				</div>
				<!-- End of To do list & Notes Tabs -->

			</div>
			<!-- End of left container/first column of dashboard  -->


			<!-- start of center container/second column of dashboard  -->
			<div class="col-md-6 p-0 m-0 center_container mb-3 ">
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

							<div class="card saleskenCard" style="min-height: 194px;">
								<div class="card-body">
									<div class="row align-items-center ml-5 mr-5"
										style="min-height: 104px;">
										<div class="col-md-4">
											<div class="f-42 font-weight-bold greyish-brown">04</div>
											<div class="f-14 font-weight-bold greyish-brown">Not
												asking for next steps</div>
										</div>
										<img class="col-md-2 signalimgsize"
											src="<%=baseURL%>assets/image/Group 3614.svg" />
										<div class="col-md-4 card-separation">
											<div class="f-42 font-weight-bold greyish-brown">12</div>
											<div class="f-14 font-weight-bold greyish-brown">Responded
												positively in the end of a call</div>
										</div>
										<img class="col-md-2 signalimgsize"
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

				<!-- Start of Pipeline and Stages card-->
				<div class="card shadow mb-2" style="min-height: 322px;">
					<div class="card-body">
						<div class="row mb-3">
							<div
								class="card-title col-md-6 font-weight-bold f-18 greyish-brown">Pipeline
								- 01</div>
							<div class="col-md-6 d-flex justify-content-end">
								<button type="button"
									class="btn button_border  h-29 d-flex justify-content-center align-items-center mr-2 ">
									<i class="fas fa-chevron-left brown-grey" disabled></i>
								</button>
								<button type="button"
									class="btn  button_border h-29 d-flex justify-content-center align-items-center">
									<i class="fas fa-chevron-right theme_color"></i>
								</button>
							</div>
						</div>
						<div id="pipeline_carousel" class="carousel slide"
							data-ride="carousel">
							<ol class="carousel-indicators mb-0">
								<li data-target="#pipeline_carousel" data-slide-to="0"
									class="active"></li>
								<li data-target="#pipeline_carousel" data-slide-to="1"></li>
								<li data-target="#pipeline_carousel" data-slide-to="2"></li>
							</ol>

							<div class="carousel-inner ">

								<%
									for (int i = 0; i < 3; i++) {
										String isActive = "";
										if (i == 0)
											isActive = "active";
								%>
								<div class="carousel-item <%=isActive%>">



									<div class="row mb-2">
										<div class="col font-weight-bold f-16 brownish-grey">Stage
											01</div>
									</div>

									<div class="row mb-4">
										<div class="col-md-3 col-6">
											<div class="font-weight-bold f-30">
												<i class="fas fa-dollar-sign light_gray"></i> <span
													class="theme_color"> 7245</span>
											</div>
											<div class="f-14 brownish-grey">Deal Value</div>
										</div>
										<div class="col-md-3 col-6">
											<div class="font-weight-bold f-30 greyish-brown">
												<i class="far fa-flag"></i> 65%
											</div>
											<div class="f-14 brownish-grey">Confident</div>
										</div>
										<div class="col-md-3 col-6">
											<div class="font-weight-bold f-30 greyish-brown">
												<i class="fas fa-trophy"></i> 25%
											</div>
											<div class="f-14 brownish-grey">Won Leads</div>
										</div>
										<div class="col-md-3 col-6">
											<div class="font-weight-bold f-30 greyish-brown">
												<i class="far fa-thumbs-down"></i> 75%
											</div>
											<div class="f-14 brownish-grey">Lost Leads</div>
										</div>
									</div>

									<div class="row mb-3">
										<div class="col-md-6">
											<div class="f-14 font-weight-bold black mb-2">Strong
												Playbook</div>
											<div class="f-14 brownish-grey">Objection, Price,
												Qualification, Introduction, Product Features, Value
												Proposition,</div>
										</div>
										<div class="col-md-6">
											<div class="f-14 font-weight-bold black mb-2">Weak
												Playbook</div>
											<div class="f-14 brownish-grey">Need Investigation,
												Competitor Mapping, Feature Mapping.</div>
										</div>
									</div>

								</div>

								<%
									}
								%>
							</div>
						</div>
					</div>
				</div>
				<!-- End of Pipeline and Stages card-->




				<!-- Start of Teams card-->

				<div class="card shadow mb-2" style="min-height: 245px;">
					<div class="card-body">
						<div class="row mb-3">
							<div class="col-md-6 font-weight-bold f-18">
								Team 01 - <span class="brown-grey">10 user</span>
							</div>
							<div class="col-md-6 d-flex justify-content-end">
								<button type="button"
									class="btn button_border  h-29 d-flex justify-content-center align-items-center mr-2 ">
									<i class="fal fa-forward"></i>	
								</button>
								<button type="button"
									class="btn  button_border h-29 d-flex justify-content-center align-items-center">
									<i class="fas fa-chevron-right theme_color"></i>
								</button>
							</div>
						</div>
						<div class="row">
							<div class="col-md-8">
								<div class="row mb-4">
									<div class="col-md-3 col-6">
										<div class="font-weight-bold f-20">
											<i class="fas fa-dollar-sign light_gray"></i> <span
												class="theme_color"> 345</span>
										</div>
										<div class="f-14 brownish-grey">Deal Value</div>
									</div>
									<div class="col-md-3 col-6">
										<div class="font-weight-bold f-20 black">65%</div>
										<div class="f-14 brownish-grey">Confident</div>
									</div>
									<div class="col-md-3 col-6">
										<div class="font-weight-bold f-20 black">25%</div>
										<div class="f-14 brownish-grey">Won Leads</div>
									</div>
									<div class="col-md-3 col-6">
										<div class="font-weight-bold f-20 black">75%</div>
										<div class="f-14 brownish-grey">Lost Leads</div>
									</div>
								</div>
								<div class="row mb-3">
									<div class="col-md-6">
										<div class="f-14 font-weight-bold mb-2">Strong Playbook</div>
										<div class="f-14 brownish-grey">Objection, Price,
											Qualification, Introduction, Product Features, Value
											Proposition,</div>
									</div>
									<div class="col-md-6">
										<div class="f-14 font-weight-bold mb-2">Weak Playbook</div>
										<div class="f-14 brownish-grey">Need Investigation,
											Competitor Mapping, Feature Mapping.</div>
									</div>
								</div>

							</div>
							<div class="col-md-4">

								<div id="container" style="height: 170px;"></div>
							</div>
						</div>


					</div>
				</div>
				<!-- End of Teams card-->

				<!-- Start of Top/Bottom 5 Agent card-->

				<div class="card shadow" style="min-height: 505px;">
					<div class="card-body agent">
						<div class="row mb-3">
							<div class="col-md-6 font-weight-bold f-18">Bottom 5 Agents</div>
							<div class="col-md-6 d-flex justify-content-end">
								<button type="button"
									class="btn button_border  h-29 d-flex justify-content-center align-items-center mr-2 ">
									<i class="fas fa-chevron-left brown-grey" disabled></i>
								</button>
								<button type="button"
									class="btn  button_border h-29 d-flex justify-content-center align-items-center">
									<i class="fas fa-chevron-right theme_color"></i>
								</button>
							</div>
						</div>
						<%
							for (int k = 0; k < 5; k++) {
								String color = "#ffffff";
								if (k % 2 == 0) {
									color = "#f9f9f9";
								}
						%>
						<div class="row align-items-center separation-bottom py-4"
							style="background: <%=color%>">
							<div class="col-md-4 col-6">
								<div class="d-flex flex-row">
									<img class="mr-2" style="height: 40px; width: 40px"
										src="<%=baseURL%>assets/image/37.jpg" />
									<div class="d-flex flex-column">
										<div class="f-14">Stanley Howard</div>
										<div class="p-0 rateYo" data-rating="<%=k%>"></div>
									</div>
								</div>
							</div>
							<div class="col-md-8 col-6">
								<div class="row">
									<div class="col-md-4 f-14">
										<strong>12%</strong> - Lead Wins
									</div>
									<div class="col-md-4 f-14">
										<strong>15%</strong> - Utilisation
									</div>
									<div class="col-md-4 f-14">
										<strong>$ 20</strong> - Deal Value
									</div>
								</div>
							</div>

						</div>
						<%
							}
						%>


					</div>
				</div>
				<!-- End of Top/Bottom 5 Agent card-->



			</div>
			<!-- End of center container/second column of dashboard  -->

			<!-- Start of right container/third column of dashboard  -->
			<div class="col-md-3 p-0 pl-md-3 pr-md-3">


				<!-- Start of Associate Join now/Listen card-->
				<div class="card mb-3 shadow" style="min-height: 313px;">
					<div class="card-body">
						<div class="d-flex">
							<div
								class="mr-auto  bd-highlight theme_color f-20 font-weight-bold">$
								250</div>
							<div class=" bd-highlight">
								<span class="badge badge-danger"
									style="width: 80px; height: 25px; border-radius: 14px; line-height: 20px; background: #e84c4c !important;">Angry</span>
							</div>
						</div>
						<h5 class="card-title f-18">Accenture Consulting Inc.</h5>
						<div class="f-16 brownish-grey">Robert Wolken</div>
						<div class="f-12 brown-grey mb-2">Manager</div>
						<div class="dotted-1 mb-2"></div>

						<div class="d-flex align-items-center mb-2">
							<div class="mr-auto  ">
								<div class="d-flex flex-column">
									<div class="brown-grey f-12">Call Task by</div>
									<div class="brownish-grey f-16">Marry Vasquez</div>
								</div>

							</div>
							<div class=" bd-highlight">
								<div class="img-wrapper position-relative">
									<img class="hw-66 rounded-circle img-responsive"
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
							<button type="button" class="btn join_btn f-12 mr-2">JOIN
								NOW</button>
							<button type="button" class="btn listen_btn f-12">LISTEN</button>

						</div>
					</div>
					<div class="card-footer cream_white">
						<div class="d-flex justify-content-end">
							<div class="theme_color f-14 font-weight-bold cursor-pointer">
								04 More<i class="fas fa-chevron-circle-right theme_color ml-2"></i>
							</div>
						</div>
					</div>
				</div>
				<!-- End of Associate Join now/Listen card-->



				<!-- Start of issue resolve card-->
				<div class="card mb-3 shadow" style="min-height: 292px;">
					<div class="card-body">
						<h6 class="card-subtitle mb-2 text-muted f-12 pt-3">June 12,
							2019</h6>
						<p class="card-text greyish-brown f-14">Product Price in too
							expensive, and agents are not supportive and they are not
							providing information !</p>
						<div class="f-18 greyish-brown mb-2">Martin Franklin</div>
						<div class="f-16 brownish-grey mb-4">Infogen Consulting Pvt.
							Ltd</div>
						<div>
							<button type="button" class="btn join_btn f-12 mr-2">RESOLVE</button>
						</div>
					</div>
					<div class="card-footer cream_white">
						<div class="d-flex justify-content-end">
							<div class="theme_color f-14 font-weight-bold cursor-pointer">
								04 More<i class="fas fa-chevron-circle-right theme_color ml-2"></i>
							</div>
						</div>
					</div>
				</div>
				<!-- End of issue resolve card-->

				<!-- Start of chat now card-->
				<div class="card mb-3 shadow" style="min-height: 179px;">
					<div class="card-body mr-md-3">
						<h6 class="card-subtitle mb-2 text-muted f-12 pt-3">10:30 AM</h6>
						<div class="row align-items-center mb-3">
							<div class="col-md-9 col-6">
								<p class="card-text greyish-brown f-14">Hello Sir, The
									customer is asking about discount, please tell me….</p>
							</div>
							<div class="col-md-3 col-6">
								<img class="hw-60 " alt="user"
									src="<%=baseURL%>assets/image/11.png">

							</div>
						</div>


						<div>
							<button type="button" class="btn join_btn f-12 mr-2">CHAT
								NOW</button>
						</div>
					</div>

				</div>
				<!-- End of chat now card-->
				<!-- Start of accepting incoming call by Associate card-->
				<div class="card mb-3 shadow" style="min-height: 255px;">
					<div class="card-body">
						<div class="row mb-2">
							<div class="col-md-6 d-flex col-6">
								<img class="hw-24 mr-1" src="<%=baseURL%>assets/image/task.svg">
								<div class="f-16 brownish-grey " style="line-height: 28px;">Call
									Task</div>

							</div>
							<div class="col-md-6 d-flex col-6">
								<img class="hw-24 mr-1" src="<%=baseURL%>assets/image/alarm.svg">
								<div class="f-16 brownish-grey" style="line-height: 28px;">12:30
									PM</div>
							</div>
						</div>

						<h5 class="card-title f-18 mb-2">Accenture Consulting Inc.</h5>
						<div class="f-16 brownish-grey">Robert Wolken</div>
						<div class="f-12 brown-grey ">Manager</div>

					</div>
					<div class="card-footer pb-2 cream_white">
						<p class="brownish-grey f-16 ">Louella sent an request for
							Meeting!</p>
						<button type="button" class="btn join_btn f-12 mr-2 mb-3">ACCEPT</button>
						<button type="button" class="btn listen_btn f-12 mb-3">REJECT</button>
					</div>
				</div>
				<!-- End of accepting incoming call by Associate card-->


			</div>
			<!-- End of right container/third column of dashboard  -->

		</div>
		<!-- End of row main dashboard row divided into three column -->


	</div>
	</main>
	<script src="<%=baseURL%>assets/js/jquery-3.4.1.min.js"></script>
	<script src="<%=baseURL%>assets/js/popper.min.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap.min.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap-datepicker.min.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap-datepicker.min.js"></script>
	<script src="<%=baseURL%>assets/js/highcharts.js"></script>
	<script src="<%=baseURL%>assets/js/exporting.js"></script>
	<script src="<%=baseURL%>assets/js/jquery.rateyo.min.js"></script>

	<script src="<%=baseURL%>assets/js/dashboard.js"></script>
</body>
</html>