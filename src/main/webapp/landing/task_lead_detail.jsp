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
<title>Lead Detail</title>
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
	SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
	SimpleDateFormat incoming = new SimpleDateFormat("dd-MM-yyyy");
	String incomingDate = request.getParameter("var") != null
			? request.getParameter("var")
			: sdf.format(new Date());
%>
<link rel="icon" href="<%=baseURL%>favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="<%=baseURL%>favicon.ico"
	type="image/x-icon" />
<link rel="stylesheet" href="<%=baseURL%>assets/css/bootstrap.min.css">
<link href="<%=baseURL%>assets/css/bootstrap-datepicker3.min.css?xsww"
	rel="stylesheet">
<link rel="stylesheet" href="<%=baseURL%>assets/css/salesken_style.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/all.css">

<link href="<%=baseURL%>assets/css/bootstrap-datepicker3.min.css?xsww"
	rel="stylesheet">
</head>
<body data-base-url="<%=baseURL%>">
	<jsp:include page="../navbar/nav.jsp"></jsp:include>
	<main role="main">
	<div class="container-fluid salesken_container mb-5">
		<div
			class="row grey-white-bg align-items-center py-3 border-bottom-separation">
			<div class="col-md-6 col-12 d-flex align-items-center mb-4 mb-md-0">
				<i class="fas fa-arrow-left black f-20 pr-3 cursor-pointer"
					onclick="window.location.href = 'report.jsp'"></i>
				<div class="display-1 black f-20 border-right-separation pr-3  fw-500">Accenture
					Consulting Inc.</div>
				<div class="pl-3 pr-2 f-12 brown-grey ">Path</div>
				<i class="fas fa-chevron-circle-right pr-2 f-12 brown-grey"></i>
				<div class=" f-12 brown-grey fw-500 " id="breadcrumb">Current Page</div>
			</div>
		</div>
		<div class="row bg-white pl-3">
			<div class="col-md-12">
				<ul class="nav nav-tabs nav-mytabs pt-2 " id="myTab" role="tablist">
					<li class="nav-item"><a class="nav-link active"
						id="taskDetails-tab" data-toggle="tab" href="#taskDetails"
						role="tab" aria-controls="taskDetails" aria-selected="true">Task
							Details</a></li>
					<li class="nav-item"><a class="nav-link" id="leadDetails-tab"
						data-toggle="tab" href="#leadDetails" role="tab"
						aria-controls="leadDetails" aria-selected="false">Lead Details</a>
					</li>
				</ul>
				<div class="tab-content" id="myTabContent">
					<div class="tab-pane fade show active" id="taskDetails"
						role="tabpanel" aria-labelledby="taskDetails-tab">
						<!-- start of task detail content -->
						<div
							class="row align-items-center  border-bottom-separation  pt-3 pb-3">
							<div class="col-md-12 text-result-found	">
								<strong class="number-of-results">04</strong> Results Found
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
											<div class="col-md-3">
												<div class="d-flex flex-row align-items-center">
													<img src="<%=baseURL%>assets/image/calltask.svg"
														class="rounded-circle hw-30 task-icon"> <img
														src="<%=baseURL%>assets/image/37.jpg"
														class="rounded-circle hw-40 task-image">
												</div>
											</div>
											<div class="col-md-9">
												<p class="soft-blue f-12 font-weight-bold mb-1">Confident</p>
												<h1 class="black f-16 fw-500 mb-1">Marry Vasquez</h1>
												<p class="brown-grey f-12 d-flex align-items-center mb-1">
													<i class="tangerine fas fa-circle mr-1"
														style="font-size: 8px;"></i>Ongoing
												</p>
												<p class="brown-grey f-12">June 26, 2019</p>
											</div>
											<%-- <div class="col-md-10">
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
											</div> --%>
										</div>

									</div>

									<%
										}
									%>
								</div>
							</div>


							<div class="col-md-9 bg-white">
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
										<div class="row h-100">
											<div class="col-md-11">
												<div class="row pt-2 pl-3">
													<div class="col">
														<p class="greyish-brown f-18 font-weight-bold">Call
															Task</p>
													</div>
												</div>
												<div class="row pt-2 pl-3">
													<div class="col-md-3 border-right-dashed-separation">
														<p class="brownish-grey f-14 mb-0">Initiated At</p>
														<p class="black f-16 fw-500 mb-0">11:00 AM</p>
													</div>
													<div class="col-md-3 border-right-dashed-separation">
														<p class="brownish-grey f-14 mb-0">Pipeline Detail</p>
														<p class="black f-16 fw-500 mb-0">Stage 02</p>
													</div>
													<div class="col-md-3">
														<p class="brownish-grey f-14 mb-0">Contact Person</p>
														<p class="black f-16 fw-500 mb-0">Robert Wolken</p>
													</div>
													<div class="col-md-3 text-right">
														<button type="button" class="btn btn-outline-dark" data-toggle="modal" data-target="#leaveTaskModal">LEAVE
															TASK</button>

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
															<i class="fas fa-forward"></i>
														</button>
														<button class="btn hw-64 shadow rounded-circle  mr-1">
															<i class="fas fa-play"></i>
														</button>

														<button class="btn  mr-5">
															<i class="fas fa-backward"></i>
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
															<i class="fas fa-forward"></i>
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
																				<p class="greyish-brown f-16 fw-500  align-self-center">Customers who responded positively in the end of a call</p>
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
																<h3 class="black fw-500 f-16 mb-4">Transcript</h3>
																<div class="transcript_container p-3 " style="max-height:520px; overflow-x:hidden;overflow-y:auto;">
																<%for(int j=0;j<20;j++){ %>
																<div class="d-flex flex-column pr-5 mr-5 mb-4 ">
																	<p class="f-14 bblack">
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
																	<p class="f-14 bblack align-self-end">
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
												<ul class="list-group shadow d-flex flex-column h-100 taskpopup">
													<li
														class="notespopup  list-group-item d-flex flex-column justify-content-center align-items-center minh-100" >
														<img src="<%=baseURL%>assets/image/calltask.svg" />
														<div class="f-12 pt-1 greyish-brown">Notes</div>
													</li>
													<li
														class="cuespopover list-group-item d-flex flex-column justify-content-center align-items-center minh-100">
														<img src="<%=baseURL%>assets/image/calltask.svg" />
														<div class="f-12 pt-1 greyish-brown">Cues</div>
													</li>
													<li
														class="crmpopover list-group-item d-flex flex-column justify-content-center align-items-center minh-100">
														<img src="<%=baseURL%>assets/image/calltask.svg" />
														<div class="f-12 pt-1 greyish-brown">CRM</div>
													</li>
													<li
														class="chatpopover list-group-item d-flex flex-column justify-content-center align-items-center minh-100">
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


					<div class="tab-pane fade" id="leadDetails" role="tabpanel"
						aria-labelledby="agentDetails-tab">

						<div class="row align-items-center py-4 shadow-bottom">
							<div class="col-md-2 col-4">
								<div class="f-24 font-weight-bold blue-black">$ 8562</div>
								<div class="f-14 brown-grey">Deal Value</div>
							</div>
							<div class="col-md-2 col-4">
								<div class="f-24 font-weight-bold blue-black">85%</div>
								<div class="f-14 brown-grey">Confident</div>
							</div>
							<div class="col-md-2 col-4">
								<div class="f-24 font-weight-bold blue-black">65%</div>
								<div class="f-14 brown-grey">Tentative</div>
							</div>
							<div class="col-md-2 col-4">
								<div class="f-24 font-weight-bold blue-black">Stage 02</div>
								<div class="f-14 brown-grey">Current Stage</div>
							</div>
							<div class="col-md-4 col-12">
								<div class="row position-relative">
									<div class="line"></div>
									<div class="col-md-3 text-center">
										<i class="fas fa-check-circle  tea-color"></i>
										<div class="brownish-grey f-14">Need</div>
									</div>
									<div class="col-md-3 text-center">
										<i class="fas fa-check-circle  tea-color"></i>
										<div class="brownish-grey f-14">Budget</div>
									</div>
									<div class="col-md-3 text-center">
										<i class="fas fa-check-circle  tea-color"></i>
										<div class="brownish-grey f-14">Authorized</div>
									</div>
									<div class="col-md-3 text-center">
										<i class="fas fa-times-circle pastel-red"></i>
										<div class="brownish-grey f-14">Urgency</div>
									</div>



								</div>
							</div>
						</div>
						
						<div class="row">
							<div class="col-md-8">
								<div class="d-flex">
								 <div class="mr-auto  black f-16 fw-500">Information</div>
  								<div class="p-2 bd-highlight f-22">
  									<img src="<%=baseURL%>assets/image/edit.svg" class="">
								</div>
								</div>
								<div class="d-flex mb-3">
									<div class="d-flex flex-column ">
										<div class="mr-5 black f-14 font-weight-bold">Robert
											Wolken</div>
									<div class="brownish-grey f-14 ">CEO</div>
									</div>
									<div class="d-flex flex-column ">
									<div class="black f-14 font-weight-bold">Johnni Owens</div>
									<div class="brownish-grey f-14 ">Manager</div>

									</div>
								</div>
								<h4 class="black f-14 mb-2 font-weight-bold">About Company</h4>
								<p class="blue-black f-14 ">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. </p>
								<p class="black f-14 font-weight-bold mb-2">Contact Us</p>
								<p class="blue-black f-14 mb-1">+91 989 989 8787    &nbsp; &nbsp; |&nbsp;&nbsp;       080 6565 5656 23</p>
								<p class="blue-black f-14 ">www.openthech.com</p>
								<p class="blue-black f-14" style="max-width:200px;">2nd Floor “Makam Plaza” 63/1 Above Kotak Bank, 18th Cross Rd, Malleshwaram, Bengaluru, Karnataka 560055</p>								
								
								<div class="border-bottom-dashed-separation mb-3"></div>
								
								<div class="d-flex">
								 	<div class="mr-auto  black f-16 fw-500">CRM Fields</div>
  									<div class="p-2 bd-highlight f-22">
  										<img src="<%=baseURL%>assets/image/edit.svg" class="">
									</div>
								</div>
								
								<%for(int m=0;m<2;m++){ %>
								<div class="d-flex flex-column mb-3">
									<div class="f-14 font-weight-bold black">Question <%= (m+1) %></div>
									<div class="f-14 blue-black">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since.</div>
								</div>
								<%} %>
							</div>
							<div class="col-md-4">
							<%for(int k=0;k<2;k++){ %>
							
							<h4 class="black fw-500 f-16 mb-3">Objections </h4>
							<%for(int l=0;l<2;l++){ %>
							<div class="signal_description border_bottom_1_dashed mb-3">
							
							<p class=" brown-grey f-12 mb-2">June 22, 2019</p>
							<p class="blue-black f-14 ">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. </p>
							</div>
							<%} }%>
							</div>
						
						</div>


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
        		<button type="button" class="btn rounded-0 istar-btn-primary" style="width: 140px;">LEAVE</button>
		      </div>
		    </div>
		  </div>
		</div>
<!-- end of leave task modal -->

	</div>
	</main>


	<script src="<%=baseURL%>assets/js/jquery-3.4.1.min.js"></script>
	<script type="text/javascript"
		src="http://botmonster.com/jquery-bootpag/jquery.bootpag.js"></script>

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
		$('.salesken.navbar-nav>li').removeClass('active');
		
		
		
	});
	

	</script>
</body>
</html>