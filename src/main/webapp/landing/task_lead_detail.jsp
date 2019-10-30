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

</head>
<body data-base-url="<%=baseURL%>">
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
					class="display-1 black f-20 border-right-separation pr-20  fw-500">Accenture
					Consulting Inc.</div>
				<div class="f-12 brown-grey pl-20">Path</div>
				<i class="fas fa-chevron-circle-right pl-2 pr-2 f-12 brown-grey"></i>
				<div class=" f-12 brown-grey fw-500 " id="breadcrumb">Current
					Page</div>
			</div>
		</div>
		<div class="row m-0">
			<div class="col-md-12 bg-white p-0 ">
				<ul class="nav nav-tabs nav-mytabs p-0 pl-40 pt-20 d-flex align-items-end"
					id="agent-details" role="tablist">
					<li class="nav-item"><a class="nav-item nav-link active"
						id="agent-detail-tab" data-toggle="tab" href="#agent-detail"
						role="tab" aria-controls="nav-target" aria-selected="true">Agent
							Detail</a></li>
					<li class="nav-item"><a class="nav-item nav-link"
						id="lead-detail-tab" data-toggle="tab" href="#lead-detail"
						role="tab" aria-controls="nav-qualified" aria-selected="false">Lead
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
								<strong class="number-of-results">04</strong> Results Found
							</div>

						</div>

						<div class="row very-light-pink-grey-bg m-0">
							<div class="col-md-3 p-0 border-right pl-20">
								<div class="nav flex-column nav-pills" id="taskdetail-tab-list"
									role="tablist" aria-orientation="vertical">
									<%
										for (int i = 0; i < 4; i++) {
											String isactive = "";
											String tasktype = "call";
											if (i == 0) {
												isactive = "active";
											}
											if (i == 1) {
												tasktype = "email";
											}
											if (i == 2) {
												tasktype = "webinar";
											}
									%>
									<div
										class="nav-link rounded-0 p-0 <%=isactive%> theme_solid_border_bottom"
										id="v-pills-<%=i%>-tabs" data-toggle="pill"
										href="#v-pills-<%=i%>" role="tab"
										aria-controls="v-pills-<%=i%>" aria-selected="true"
										data-task_type="<%=tasktype%>">



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
												<p class="brown-grey f-12 d-flex align-items-center m-0">
													<i class="tangerine fas fa-circle m-1"
														style="font-size: 8px;"></i>Ongoing
												</p>
												<p class="brown-grey f-12 m-0">June 26, 2019</p>
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

						<!-- start of lead details tab -->
						<div
							class="row align-items-center shadow-bottom m-0 theme_dotted_border_bottom pr-40 pl-40 pt-25 pb-25">
							<div class="col-md-2 col-4 p-0">
								<div class="f-24 font-weight-bold blue-black">$ 8562</div>
								<div class="f-14 brown-grey">Deal Value</div>
							</div>
							<div class="col-md-2 col-4 p-0">
								<div class="f-24 font-weight-bold blue-black">85%</div>
								<div class="f-14 brown-grey">Confident</div>
							</div>
							<div class="col-md-2 col-4 p-0">
								<div class="f-24 font-weight-bold blue-black">65%</div>
								<div class="f-14 brown-grey">Tentative</div>
							</div>
							<div class="col-md-2 col-4 p-0">
								<div class="f-24 font-weight-bold blue-black">Stage 02</div>
								<div class="f-14 brown-grey">Current Stage</div>
							</div>
							<div class="col-md-4 col-12 p-0">
								<div class="row position-relative m-0">
									<div class="line" style="left:75px"></div>
									<div class="col-md-3 text-center p-0">
										<i class="fas fa-check-circle  tea-color"></i>
										<div class="brownish-grey f-14">Need</div>
									</div>
									<div class="col-md-3 text-center p-0">
										<i class="fas fa-check-circle  tea-color"></i>
										<div class="brownish-grey f-14">Budget</div>
									</div>
									<div class="col-md-3 text-center p-0">
										<i class="fas fa-check-circle  tea-color"></i>
										<div class="brownish-grey f-14">Authorized</div>
									</div>
									<div class="col-md-3 text-center p-0">
										<i class="fas fa-times-circle pastel-red"></i>
										<div class="brownish-grey f-14">Urgency</div>
									</div>



								</div>
							</div>
						</div>

						<div class="row m-0">
							<div class="col-md-8 minh-650 p-0 pt-30 pl-40 pr-30">
								<div class="d-flex  align-items-center">
									<div class="mr-auto  black f-16 fw-500 pb-20">Information</div>
									<div class=" bd-highlight f-16">
										<img src="<%=baseURL%>assets/image/edit.svg" class=""
											alt="edit">
									</div>
								</div>
								<div class="row m-0">
									<div class="col-md-3 p-0">
										<div class="d-flex flex-column pb-20">
											<div class=" black f-14 font-weight-bold text-truncate"
												title="Robert Wolken">Robert Wolken</div>
											<div class="brownish-grey f-14 ">CEO</div>
										</div>
									</div>
									<div class="col-md-3 p-0">
										<div class="d-flex flex-column pb-20">
											<div class="black f-14 font-weight-bold text-truncate"
												title="Johnni Owen">Johnni Owens</div>
											<div class="brownish-grey f-14 ">Manager</div>
										</div>
									</div>

								</div>
								<h4 class="black f-14 font-weight-bold m-0">About Company</h4>
								<p class="blue-black f-14 m-0 pb-20">Lorem Ipsum is simply
									dummy text of the printing and typesetting industry. Lorem
									Ipsum has been the industry's standard dummy text ever since
									the 1500s, when an unknown printer took a galley of type and
									scrambled it to make a type specimen book.</p>
								<p class="black f-14 font-weight-bold m-0">Contact Us</p>
								<p class="blue-black f-14 m-0">+91 989 989 8787 &nbsp;
									&nbsp; |&nbsp;&nbsp; 080 6565 5656 23</p>
								<p class="blue-black f-14 m-0 ">www.openthech.com</p>
								<p class="blue-black f-14 m-0">2nd Floor “Makam Plaza” 63/1
									Above Kotak Bank, 18th Cross Rd, Malleshwaram, Bengaluru,
									Karnataka 560055</p>

								<div class="theme_dashed_border_bottom mb-30 mt-40"></div>

								<div class="d-flex align-items-center">
									<div class="mr-auto  black f-16 fw-500 pb-25">CRM Fields</div>
									<div class=" bd-highlight f-16">
										<img src="<%=baseURL%>assets/image/edit.svg" class=""
											alt="edit">
									</div>
								</div>

								<%
									for (int m = 0; m < 2; m++) {
								%>
								<div class="d-flex flex-column">
									<div class="f-14 font-weight-bold black">
										Question
										<%=(m + 1)%></div>
									<div class="f-14 blue-black pb-20">Lorem Ipsum is simply
										dummy text of the printing and typesetting industry. Lorem
										Ipsum has been the industry's standard dummy text ever since.</div>
								</div>
								<%
									}
								%>
							</div>
							<div
								class="col-md-4 pt-20 pl-40 pr-40 p-0 theme_solid_border_left very-light-pink-grey-bg">
								<%
									for (int k = 0; k < 2; k++) {
								%>

								<h4 class="black fw-500 f-16  m-0 pt-10 pb-10">Objections</h4>
								<%
									for (int l = 0; l < 2; l++) {
								%>
								<div
									class="signal_description border_bottom_1_dashed pb-20 pt-20">

									<p class=" brown-grey f-12 m-0">June 22, 2019</p>
									<p class="blue-black f-14 text-break m-0">Lorem Ipsum is
										simply dummy text of the printing and typesetting industry.
										Lorem Ipsum has been the industry's standard dummy text ever
										since the 1500s, when an unknown printer took a galley of type
										and scrambled it to make a type specimen book.</p>
								</div>
								<%
									}
									}
								%>
							</div>

						</div>
						<!-- End of lead details tab -->
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