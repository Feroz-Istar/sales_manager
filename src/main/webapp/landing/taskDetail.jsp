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
<body>
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
						
			</div>
	
	</div>
	<div class="row">
	<div class="col-md-12 bg-white">

				<nav>
				  <div class="nav nav-tabs nav-mytabs pt-2" id="nav-tabs" role="tablist">
				  	<a class="nav-item nav-link show active" id="nav-ongoing-tab"
										data-toggle="tab" href="#nav-ongoing" role="tab"
										aria-controls="nav-ongoing" aria-selected="true">Ongoing</a> <a
										class="nav-item nav-link" id="nav-upcoming-tab" data-toggle="tab"
										href="#nav-upcoming" role="tab" aria-controls="nav-upcoming"
										aria-selected="false">Upcoming</a> <a class="nav-item nav-link"
										id="nav-completed-tab" data-toggle="tab" href="#nav-completed"
										role="tab" aria-controls="nav-completed" aria-selected="false">Completed</a>  </div>
				</nav>
				<div class="tab-content mytab-content" id="nav-tasktabsContent">
					<div class="tab-pane fade show active" id="nav-ongoing"
						role="tabpanel" aria-labelledby="nav-ongoing-tab">
						<!-- start of ongoing tab content -->

						<div class="row align-items-center  border-bottom-separation  pt-3 pb-3">
							<div class="col-md-3 text-result-found	">
								<strong class="number-of-results">03</strong> Results Found
							</div>
							<div class="col-md-9 d-md-flex justify-content-end  ">
								
									<select
										class="  custom-result-selects"
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
	
									<button
										class=" filter-btn">
										<i class="fas fa-filter f-14 brown-grey"></i>
									</button>
								
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


										<div class="row align-items-center mh-100">
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
														class="rounded-circle task-icon" /> <img
														src="<%=baseURL%>assets/image/37.jpg"
														class="rounded-circle task-image" />
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
												    <div class="col-md-4 f-14 font-weight-bold d-flex justify-content-end align-items-center theme_color cursor-pointer">
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
														<button class="btn btn-join f-12 font-weight-bold mr-2">JOIN NOW</button>
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
												<ul class="list-group shadow ">
													<li
														class="list-group-item d-flex flex-column justify-content-center align-items-center mh-100">
														<img src="<%=baseURL%>assets/image/calltask.svg" />
														<div class="f-12 pt-1 greyish-brown">Notes</div>
													</li>
													<li
														class="list-group-item d-flex flex-column justify-content-center align-items-center mh-100">
														<img src="<%=baseURL%>assets/image/calltask.svg" />
														<div class="f-12 pt-1 greyish-brown">Cues</div>
													</li>
													<li
														class="list-group-item d-flex flex-column justify-content-center align-items-center mh-100">
														<img src="<%=baseURL%>assets/image/calltask.svg" />
														<div class="f-12 pt-1 greyish-brown">CRM</div>
													</li>
													<li
														class="list-group-item d-flex flex-column justify-content-center align-items-center mh-100">
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
	
									<button
										class=" filter-btn">
										<i class="fas fa-filter f-14 brown-grey"></i>
									</button>
								
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


										<div class="row align-items-center mh-100">
											<div class="col-md-9">
												<div class="f-16 greyish-brown mb-1">11:00 AM</div>
												<div class="f-16 font-weight-bold mb-1">Opentech Pvt. Ltd.</div>
												<div class="f-12 brown-grey">$ 500 Deal Value</div>
											</div>
											<div class="col-md-3">
												<div class="d-flex flex-row align-items-center">
													<img src="<%=baseURL%>assets/image/calltask.svg"
														class="rounded-circle task-icon" /> <img
														src="<%=baseURL%>assets/image/37.jpg"
														class="rounded-circle task-image" />
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
												    <div class="col-md-4 f-14 font-weight-bold d-flex justify-content-end align-items-center theme_color cursor-pointer">
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
													<img src="<%=baseURL%>assets/image/Group 3614.svg" class="mb-1">
													<div class="f-16 font-weight-bold mb-1">Few minutes left !</div>
													<div class="f-12 brownish-grey">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</div>
												</div>
												
											</div>
											
											
											
											<div class="col-md-1 p-0">
												<ul class="list-group shadow ">
													<li
														class="list-group-item d-flex flex-column justify-content-center align-items-center mh-100">
														<img src="<%=baseURL%>assets/image/calltask.svg" />
														<div class="f-12 pt-1 greyish-brown">Notes</div>
													</li>
													<li
														class="list-group-item d-flex flex-column justify-content-center align-items-center mh-100">
														<img src="<%=baseURL%>assets/image/calltask.svg" />
														<div class="f-12 pt-1 greyish-brown">Cues</div>
													</li>
													<li
														class="list-group-item d-flex flex-column justify-content-center align-items-center mh-100">
														<img src="<%=baseURL%>assets/image/calltask.svg" />
														<div class="f-12 pt-1 greyish-brown">CRM</div>
													</li>
													<li
														class="list-group-item d-flex flex-column justify-content-center align-items-center mh-100">
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
						
						<!-- end of upcoming tab-content -->
					</div>
					
					
					
					
					<div class="tab-pane fade" id="nav-completed" role="tabpanel"
						aria-labelledby="nav-completed-tab">ardfgrgeregggg</div>
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
<script>
$('.salesken.navbar-nav>li').removeClass('active');
$($('.salesken.navbar-nav>li')[1]).addClass('active')
$('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
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