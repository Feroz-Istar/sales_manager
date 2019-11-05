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
<link rel="stylesheet"
	href="<%=baseURL%>assets/css/salesken_style_media_query.css">
	<link rel="stylesheet" href="<%=baseURL%>assets/css/jquery.rateyo.css">

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
	<div class="container-fluid salesken_container mb-5">
		<div
			class="row grey-white-bg align-items-center m-0 theme_solid_border_bottom pl-40 pr-40 pt-10 pb-10">
			<div class="col-md-6 col-12 d-flex align-items-center p-0">
				<i class="fas fa-arrow-left black f-20 cursor-pointer"
					onclick="window.location.href = 'report.jsp'"></i>
				<div
					class="display-1 black f-20 border-right-separation pr-20  fw-500 pl-20">Stanley Howard</div>
				<div class="f-12 brown-grey pl-20">Path</div>
				<i class="fas fa-chevron-circle-right pl-2 pr-2 f-12 very-light-pink"></i>
				<div class=" f-12 brown-grey fw-500 " id="breadcrumb">Current Page
					</div>
			</div>
		</div>
		<div class="row m-0">
			<div class="col-md-12 bg-white p-0 ">
				<ul class="nav nav-tabs nav-mytabs p-0 pl-40 pt-20 d-flex align-items-end"
					id="agent-details" role="tablist">
					<li class="nav-item"><a class="nav-item nav-link active"
						id="agent-detail-tab" data-toggle="tab" href="#agent-detail"
						role="tab" aria-controls="nav-target" aria-selected="true">Task
							Detail</a></li>
					<li class="nav-item"><a class="nav-item nav-link"
						id="lead-detail-tab" data-toggle="tab" href="#lead-detail"
						role="tab" aria-controls="nav-qualified" aria-selected="false">Agent
							Detail</a></li>
				</ul>
				<div class="tab-content p-0 mytab-content"
					id="agent-details-tabContent">
					<div class="tab-pane fade show active" id="agent-detail"
						role="tabpanel" aria-labelledby="agent-detail-tab">
						<!-- start of target content -->

						<!-- start of task detail content -->
						<div
							class="row align-items-center theme_solid_border_bottom m-0 pl-40 pr-40 pt-15 pb-15  m-0">
							<div class="col-md-12 text-result-found	p-0">
								<strong class="number-of-results">02</strong> Results Found
							</div>

						</div>

						<div class="row very-light-pink-grey-bg m-0">
							<div class="col-md-3 p-0 border-right pl-20">
								<div class="nav flex-column nav-pills"
									id="taskdetail-tab-list" role="tablist"
									aria-orientation="vertical">
									<%
										for (int i = 0; i < 3; i++) {
											String isactive = "";
											if (i == 0) {
												isactive = "active";
											}
									%>
									<div
										class="nav-link rounded-0 p-0 <%=isactive%> theme_solid_border_bottom"
										id="v-pills-<%=i%>-tabs" data-toggle="pill"
										href="#v-pills-<%=i%>" role="tab"
										aria-controls="v-pills-<%=i%>" aria-selected="true">


										<div class="row align-items-center m-0 p-20">
											<div class="col-md-9 p-0">
												<div class="d-flex flex-row ">
													<div
														class="f-16 font-weight-bold pr-10 theme_color">$
														500</div>
														<div class=" border-right-separation  my-1"></div>
													<div
														class="pl-10 f-12 align-self-center signal-analytical font-weight-bold">Analytical</div>
												</div>
												<div class="f-16 fw-500  black text-truncate" data-toggle="tooltip" data-placement="bottom" title="Globex Corporation. Inc.">Globex Corporation
													Inc.</div>
												<div class="f-12 brown-grey">Initiated at 11:00 PM</div>
											</div>
											<div class="col-md-3 p-0">
												<div class="d-flex flex-row align-items-center">
													<img src="<%=baseURL%>assets/image/calltask.svg" alt="taskicon"
														class="rounded-circle hw-30 task-icon" /> <img
														src="<%=baseURL%>assets/image/37.jpg" data-toggle="tooltip" data-placement="bottom" title="Agent name"
														class="rounded-circle hw-40 task-image" alt="task-image" />
												</div>
											</div>
										</div>

									</div>

									<%
										}
									%>
								</div>
							</div>


							<div class="col-md-9 p-0 bg-white">
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
										aria-labelledby="v-pills-<%=i%>-tabs"></div>
									<%
										}
									%>
								</div>
							</div>
						</div>



						<!-- end of task detail -->
						<!-- end of target content -->
					</div>

					<div class="tab-pane fade" id="lead-detail" role="tabpanel"
						aria-labelledby="lead-detail-tab">

						<!-- start of Agent details tab -->
						
						<div class="row m-0 pt-35 pr-40 pl-40 pb-30">				
				  		<div class="col-md-6 p-0">	
				  			<div class="d-flex">	
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
					  			<img src="<%=baseURL%>assets/image/people.svg" class="pr-10" alt="team" />
					  			<div class="f-14 greyish-brown pr-40 text-truncate" title="Team North">Team North</div>
					  			<img src="<%=baseURL%>assets/image/mail.svg" class="pr-10" alt="email"/>
					  			<div class="f-14 greyish-brown pr-40 text-truncate" title="stanleyhoward@gmail.com">stanleyhoward@gmail.com</div>
					  			<img src="<%=baseURL%>assets/image/call.svg" class="pr-10" alt="phone"/>
					  			<div class="f-14 greyish-brown pr-40">(741)-210-1851</div>
					  			<img src="<%=baseURL%>assets/image/editcolor.svg"/>
				  			</div>
				  		</div>		
				  	</div>		
				  	
				  	<div class="row m-0 theme_dotted_border_bottom shadow-bottom pb-25">
				  		<div class="col-md-2 p-0 border-right-dashed-separation">
				  			<div class="row m-0">
				  				<%-- <div class="col-md-3 p-0 align-self-center">
				  					<img src="<%=baseURL%>assets/image/task.svg" class="hw-45" alt="task" />
				  				</div> --%>
				  				<div class="col-md-12 p-0">
				  					
				  					<div class="black font-weight-bold f-30">$ <span class="pastel-red f-30">450</span></div>
									<div class="f-12 brownish-grey">Achieved Value</div>
				  				
				  				</div>
				  			</div>
				  		</div>
				  		<div class="col-md-2 p-0 border-right-dashed-separation">
				  			<div class="row m-0">
				  				<div class="col-md-1 p-0 pt-10">
				  					<img src="<%=baseURL%>assets/image/Group 6056.svg" class="hw-25"  alt="done"/>
				  				</div>
				  				<div class="col-md-11 p-0 pl-10">
				  					<div class="f-30 black font-weight-bold">24-40</div>
									<div class="f-12 brownish-grey">Won & Lost Leads </div>
				  				</div> 
				  			</div>
				  		</div>
				  		<div class="col-md-2 p-0 border-right-dashed-separation">
				  			<div class="row m-0">
				  				<div class="col-md-3 p-0 align-self-center">
				  					<img src="<%=baseURL%>assets/image/call.svg" class="hw-45"  alt="call"/>
				  				</div>
				  				<div class="col-md-9 p-0">
				  					<div class="f-24 blue-black font-weight-bold">34</div>
									<div class="f-14 brown-grey">Call Tasks </div>
				  				</div>
				  			</div>
				  		</div>
				  		<div class="col-md-2 p-0 border-right-dashed-separation">
				  			<div class="row">
				  				<div class="col-md-3 p-0+ align-self-center">
				  					<img src="<%=baseURL%>assets/image/mail.svg" class="hw-45"  alt="mail"/>
				  				</div>
				  				<div class="col-md-9 p-0">
				  					<div class="f-24 blue-black font-weight-bold">12</div>
									<div class="f-14 brown-grey">Email Tasks </div>
				  				</div>
				  			</div>
				  		</div>
				  		<div class="col-md-2 p-0 border-right-dashed-separation">
				  			<div class="row">
				  				<div class="col-md-3 p-0 align-self-center">
				  					<img src="<%=baseURL%>assets/image/desktop.svg" class="hw-45"  alt="desktop"/>
				  				</div>
				  				<div class="col-md-9 p-0">
				  					<div class="f-24 blue-black font-weight-bold">12</div>
									<div class="f-14 brown-grey ">Webinar Tasks </div>
				  				</div>
				  			</div>
				  		</div>
				  		<div class="col-md-2 p-0">
				  			<div class="row m-0">
				  				<div class="col-md-3 p-0 align-self-center">
				  					<i class="fas fa-video f-30 brown-grey"></i>
				  				</div>
				  				<div class="col-md-9 p-0">
				  					<div class="f-24 blue-black font-weight-bold">03</div>
									<div class="f-14 brown-grey">Presentation Tasks </div>
				  				</div>
				  			</div>
				  		</div>
				  	</div>
				  	
				  	<div class="row m-0">
				  		<div class="col-md-9 p-0">
				  			<div class="row m-0">
				  				<div class="col-md-3 p-0">
				  					<div class="f-24 blue-black font-weight-bold">$ 2345</div>
									<div class="f-14 brown-grey">Deal Value</div>
				  				</div>
				  				<div class="col-md-3 p-0">
				  					<div class="f-24 blue-black font-weight-bold">45</div>
									<div class="f-14 brown-grey">Won Leads</div>
				  				</div>
				  				<div class="col-md-3 p-0">
				  					<div class="f-24 blue-black font-weight-bold">04</div>
									<div class="f-14 brown-grey">Lost Leads</div>
				  				</div>
				  				<div class="col-md-3 p-0">
				  					<div class="f-24 blue-black font-weight-bold">30</div>
									<div class="f-14 brown-grey">Activities Per Lead Won</div>
				  				</div>
				  			</div>
				  			<div class="row theme_dashed_border_bottom	 m-0">
				  				<div class="col-md-6 p-0">
		      						<div class="f-14 font-weight-bold black mb-1">Strong Playbook</div>
		      						<div class="f-14 brownish-grey">Objection,  Qualification <i class="fal fa-info-circle soft-blue"></i></div>
		      					</div>
		      					<div class="col-md-6 p-0">
		      						<div class="f-14 font-weight-bold black mb-1">Weak Playbook</div>
		      						<div class="f-14 brownish-grey">Need Investigation <i class="fal fa-info-circle soft-blue"></i></div>
		      					</div>
				  			</div>
				  			<div class="row m-0 pt-40 pr-40 pl-40">
				  				<div class="col-md-6 p-0 fw-500 black">Dispositions</div>
				  			</div>
				  		
				  			<div class="row m-0">
		  					<table class="table table-striped ">
								  <thead >
								    <tr>
								      <th class="f-14 p-0 pl-40 pt-20 border-top-0 pb-20" scope="col">Lead Names</th>
								      <th class="f-14 p-0  pt-20 border-top-0 pb-20" scope="col">Follow-Ups </th>
								      <th class="f-14 p-0  pt-20 border-top-0 pb-20" scope="col">Talk Ratio</th>
								      <th class="f-14 p-0  pt-20 border-top-0 pb-20" scope="col">Connected Call</th>
								    </tr>
								  </thead>
								  <tbody>
								  
								  <%for(int i=0;i<10;i++){ %>
								    <tr>
								      <td class="f-14 text-truncate p-0 pl-40 pt-30 pb-30" title="Massive Dynamic Pvt. Ltd.">Massive Dynamic Pvt. Ltd.</td>
								      <td class="f-14 p-0 pt-30 pb-30">45</td>
								      <td class="f-14 p-0  pt-30 pb-30">20%</td>
								      <td class="f-14 p-0 pt-30 pb-30">03</td>
								    </tr>
								    <%}%>
								   </tbody>
							  </table>
				  			</div>
				  		</div>
				  			
				  		<div class="col-md-3 cream_white p-0 pl-40 pt-30">
				  			<div class="f-16 fw-500 black ">Comments</div>
				  			
				  			<%for(int i=0;i<3;i++){ %>
				  			<div class="f-12  brown-grey pt-30">June 22, 2019</div>
				  			<div class="f-14 greyish-brown fw-500 text-truncate pb-10" title="Lawrence">Lawrence Lynch</div>
				  			<div class="f-14 blue-black theme_dashed_border_bottom	 text-break pb-20">Cras eget elementum arcu, vel malesuada felis. Nulla fringilla viverra justo a imperdiet. Etiam vitae tempor enim, sed aliquet ante. Maecenas eu vehicula diam.</div>
				  			<%} %>
				  		</div>				  		
				  	</div>	
						<!-- End of Agent details tab -->
					</div>


				</div>

			</div>
		</div>

		<!-- start of leave task modal -->
		<div class="modal fade" id="leaveTaskModal" tabindex="-1"
			role="dialog" aria-labelledby="leaveTaskModalTitle"
			aria-hidden="true">
			<div class="modal-dialog modal-lg modal-dialog-centered"
				role="document">
				<div class="modal-content">
					 <div class="modal-header border-0 pb-40 ">
					 
						<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<img src="<%=baseURL%>assets/image/close.svg" alt="taskicon"
									class="rounded-circle hw-24 task-icon">
							</button>
					</div>
					<div class="modal-body p-0 pt-60 pl-30 pr-30 pb-30">

						
					</div>
					<div class="modal-footer p-0  pt-20 pb-20 mr-30 ml-30">
						<button type="button"
							class="btn theme_color bg-transparent font-weight-bold"
							data-dismiss="modal">Cancel</button>
							<button type="button" class="btn big_button rounded-0 f-14 font-weight-bold" data-dismiss="modal">LEAVE</button>
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
	<script src="<%=baseURL%>assets/js/jquery.rateyo.min.js"></script>

	<script>
		$(document)
				.ready(
						function() {
							$('.salesken.navbar-nav>li').removeClass('active');

							$
									.get(
											location.origin
													+ '/tabcontent/leadCallTaskModal.jsp',
											function(data) {

												var tabid = $(
														'#taskdetail-tab-list>.nav-link')
														.attr('href').replace(
																'#', '')
												$('#' + tabid).html(data);
											});

							$('#taskdetail-tab-list>.nav-link')
									.on(
											'show.bs.tab',
											function(e) {
												var tabid = $(e.target).attr(
														'href')
														.replace('#', '');
												// newly activated tab
												var url = location.origin;

												switch ($(e.target).data(
														'task_type')) {
												case 'call':
													url = url
															+ '/tabcontent/leadCallTaskModal.jsp';
													break;
												case 'email':
													url = url
															+ '/tabcontent/leadEmailTaskModal.jsp';
													break;
												case 'webinar':
													url = url
															+ '/tabcontent/leadWebinarTaskModal.jsp';
													break;
												default:
													url = url
															+ '/tabcontent/leadCallTaskModal.jsp';
													break;
												}

												$.get(url, function(data) {
													//console.log(data);
													//console.log(selectedTab);

													$('#' + tabid).html(data);
													//  alert( "Load was performed." );
												});
												console.log($(e.target).data(
														'task_type')) // newly activated tab

												//close share n comment popover on tab change

											})

							$('.nav-tabs>.nav-item').on('show.bs.tab',
									function(e) {
									});

						});
	</script>
</body>
</html>