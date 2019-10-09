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
											<div class="row h-100">
											<div class="col-md-11">
												<div class="row pt-2 pl-3 justify-content-between">
													<div class="col-10">
														<p class="greyish-brown f-18 font-weight-bold">Call
															Task</p>
													</div>
													<div class="col-2 text-right">
														<img src="<%=baseURL%>assets/image/heart.svg" class="mr-2">
														<img src="<%=baseURL%>assets/image/message.svg" class="mr-2">
														<img src="<%=baseURL%>assets/image/reply.svg">
													</div>
												</div>
												<div class="row pt-2 pl-3">
													<div class="col-md-3 border-right-dashed-separation">
														<p class="brownish-grey f-14 mb-0">Initiated At</p>
														<p class="black f-16 mb-0">11:00 AM</p>
													</div>
													<div class="col-md-3 border-right-dashed-separation">
														<p class="brownish-grey f-14 mb-0">Pipeline Detail</p>
														<p class="black f-16 mb-0">Stage 02</p>
													</div>
													<div class="col-md-3">
														<p class="brownish-grey f-14 mb-0">Contact Person</p>
														<p class="black f-16 mb-0">Robert Wolken</p>
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
												<ul class="list-group shadow d-flex flex-column h-100">
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
						
						
						
						<!-- end of task detail -->
					</div>
						
						
				  <div class="tab-pane fade" id="agentDetails" role="tabpanel" aria-labelledby="agentDetails-tab">
				  	<!-- start of agent detail content -->		
				  	<div class="row">		
				  		<div class="col-md-2">		
				  			<img src="<%=baseURL%>assets/image/11.png" class="hw-60" />		
				  		</div>		
				  		<div class="col-md-4">		
				  			<div class="">Stanley Howard</div>		
				  			<div class="">asdsadsa</div>		
				  		</div>		
				  		<div class="col-md-6 text-right">asdada</div>		
				  	</div>		
				  	<!-- end of agent detail content -->
				  
				  </div>
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