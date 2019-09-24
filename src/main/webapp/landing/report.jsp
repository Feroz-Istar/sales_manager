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
<body>
	<jsp:include page="../navbar/nav.jsp"></jsp:include>
	<main role="main">
	<div class="container-fluid salesken_container">
	
	<div class="row bg-white align-items-center py-3 border-bottom-separation pl-3">
		<div class="col-md-6 col-12 d-flex align-items-center mb-4 mb-md-0"> 
		<div class="display-1 black f-20 border-right-separation pr-3 ">Reports</div>
							<div class="pl-3 pr-2 f-12 brown-grey ">Report</div>
					<i class="fas fa-chevron-circle-right pr-2 f-12 brown-grey"></i>
					<div class=" f-12 brown-grey " id="breadcrumb">Task</div>
		
		</div>
	</div>
		<div class="row bg-white pl-3">
			<div class="col-md-12">
				<ul class="nav nav-tabs nav-mytabs  pt-2" id="reportTab" role="tablist">
					<li class="nav-item"><a class="nav-link active" id="task-tab"
						data-toggle="tab" href="#task" role="tab" aria-controls="home"
						aria-selected="true">Task</a></li>
					<li class="nav-item"><a class="nav-link" id="users-tab"
						data-toggle="tab" href="#users" role="tab"
						aria-controls="profile" aria-selected="false">Users</a></li>
					<li class="nav-item"><a class="nav-link" id="customer-tab"
						data-toggle="tab" href="#customer" role="tab"
						aria-controls="contact" aria-selected="false">Customer</a></li>
						<li class="nav-item"><a class="nav-link" id="time_analysis-tab"
						data-toggle="tab" href="#time_analysis" role="tab"
						aria-controls="contact" aria-selected="false">Time Analysis</a></li>
				</ul>
				<div class="tab-content" id="reportTabContent">
					<div class="tab-pane fade show active" id="task" role="tabpanel"
						aria-labelledby="task-tab">
						<div class="row align-items-center  border-bottom-separation  pt-3 pb-3">
							<div class="col-md-3 f-16 brown-grey">
								<strong class="greyish-brown mr-2">03</strong> Results Found
							</div>
							<div class="col-md-9 d-md-flex justify-content-end  ">
								
									 <select class=" form-control mr-2 custom-taskselect f-14 custom-taskborder brown-grey" id="activities">
										<option>Filter by Activities</option>
										<option>Default select</option>
									</select> 
	
									<button class=" btn custom-taskbutton custom-taskborder d-flex justify-content-center align-items-center mr-3">
										<i class="fas fa-filter f-14 brown-grey"></i>
									</button>
								
							</div>
						</div>
						
						
						
						</div>
					<div class="tab-pane fade" id="users" role="tabpanel"
						aria-labelledby="users-tab">...users</div>
					<div class="tab-pane fade" id="customer" role="tabpanel"
						aria-labelledby="customer-tab">...</div>
						<div class="tab-pane fade" id="time_analysis" role="tabpanel"
						aria-labelledby="time_analysis-tab">...time_analysis</div>
				</div>
			</div>
		</div>
	
	
	</div>
	</main>


	<script src="<%=baseURL%>assets/js/jquery-3.4.1.min.js"></script>
	<script type="text/javascript" src="http://botmonster.com/jquery-bootpag/jquery.bootpag.js"></script>
	
	<script src="<%=baseURL%>assets/js/popper.min.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap.min.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap-datepicker.min.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap-datepicker.min.js"></script>
	<script src="<%=baseURL%>assets/js/highcharts.js"></script>
	<script src="<%=baseURL%>assets/js/exporting.js"></script>
	<script src="<%=baseURL%>assets/js/pagination.min.js"></script>
	
	<script>
	$( document ).ready(function() {
		$('.salesken.navbar-nav>li').removeClass('active');
		$($('.salesken.navbar-nav>li')[3]).addClass('active');
		$('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
			  var target = $(e.target).html(); // activated tab
			  $('#breadcrumb').html(target);
			});
	});
	
	</script>
</body>
</html>