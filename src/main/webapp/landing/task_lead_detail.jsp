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
<title>Salesken Dashboard</title>
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
	<div class="container-fluid salesken_container">
		<div class="row grey-white-bg align-items-center py-3 border-bottom-separation" >
			<div class="col-md-6 col-12 d-flex align-items-center mb-4 mb-md-0" > 
				<i class="fas fa-arrow-left black f-20 pr-3 cursor-pointer" onclick="window.location.href = 'report.jsp'"></i>
				<div class="display-1 black f-20 border-right-separation pr-3 ">Accenture Consulting Inc.</div>
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
				    <a class="nav-link" id="leadDetails-tab" data-toggle="tab" href="#leadDetails" role="tab" aria-controls="leadDetails" aria-selected="false">Lead Details</a>
				  </li>
				</ul>
				<div class="tab-content" id="myTabContent">
				  <div class="tab-pane fade show active" id="taskDetails" role="tabpanel" aria-labelledby="taskDetails-tab">
				  	<!-- start of task detail content -->
				  	<div class="row align-items-center  border-bottom-separation  pt-3 pb-3">
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
													<img src="http://localhost:8081/assets/image/calltask.svg" class="rounded-circle hw-30 task-icon"> <img src="http://localhost:8081/assets/image/37.jpg" class="rounded-circle hw-40 task-image">
												</div>
											</div>
											<div class="col-md-9">
												<p class="soft-blue f-12 mb-1"> Confident</p>
												<h1 class="black f-16 font-weight-bold">Marry Vasquez</h1>
												<p class="brown-grey f-12">Ongoing</p>
											
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
						
						
				  <div class="tab-pane fade" id="leadDetails" role="tabpanel" aria-labelledby="agentDetails-tab">.Lead..</div>
				</div>
			</div>
		</div>
	
	
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

	<script>
	
	</script>
</body>
</html>