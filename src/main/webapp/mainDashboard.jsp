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
%>
<link rel="icon" href="<%=baseURL%>favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="<%=baseURL%>favicon.ico" type="image/x-icon" />

<link href="<%=baseURL%>assets/css/bootstrap-datepicker3.min.css?xsww" rel="stylesheet">
<link rel="stylesheet" href="<%=baseURL%>assets/css/dashboard.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/all.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/alertify.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/jquery.rateyo.css">
<link href="<%=baseURL%>assets/css/bootstrap-datepicker3.min.css?xsww" rel="stylesheet">
<link rel="stylesheet" href="<%=baseURL%>assets/css/wickedpicker.min.css">
<link href="<%=baseURL%>assets/css/summernote-bs4.css" rel="stylesheet">
<link href="<%=baseURL%>assets/css/bootstrap-select.min.css" rel="stylesheet">
<link rel="stylesheet" href="<%=baseURL%>assets/css/salesken_style_media_query.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/multiselect.css">
<link rel="stylesheet" href="https://daneden.github.io/animate.css/animate.min.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/taskDetail.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/createTask.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/report.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/salesken_style.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/createTask.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/pipeline.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/report.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/leads.css">




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
	<jsp:include page="navbar/nav.jsp"></jsp:include>
	<div class="w-100 row pr-30 pl-25 pt-10 pb-10 ongoing_call_bar " style="display: flex;">
		<div class="col-md-6 p-0 d-flex align-items-center">
			<img src="<%=baseURL%>assets/image/call_white.svg" alt="call" class="task-dropdown">
			<div class="gray_text_color f-14 pl-15">
				You are on call with <span class="font-weight-bold" id="contact">(043)-335-4103 </span> &nbsp; &nbsp; &nbsp;|&nbsp; &nbsp; &nbsp;<span class="f-12">00:30</span>
			</div>
		</div>
		<div class="col-md-6 p-0 gray_text_color  font-weight-bold f-14  d-flex align-items-center justify-content-end">
			Tab to Return<i class="fas fa-chevron-circle-right pl-2 pr-2 f-14 gray_text_color "></i>
		</div>
	</div>
	<main role="main">
		<div class="container-fluid salesken_container"></div>
	</main>

</body>
<script src="<%=baseURL%>assets/js/jquery-3.4.1.min.js"></script>
<script src="<%=baseURL%>assets/js/popper.min.js"></script>
<script src="<%=baseURL%>assets/js/bootstrap.min.js"></script>
<script src="<%=baseURL%>assets/js/bootstrap-datepicker.min.js"></script>
<script src="<%=baseURL%>assets/js/jquery.bootpag.js"></script>
<script src="<%=baseURL%>assets/js/alertify.min.js"></script>
<script src="<%=baseURL%>assets/js/twilio.js"></script>
<script src="<%=baseURL%>assets/js/salesken.js"></script>
<script src="<%=baseURL%>assets/js/highcharts.js"></script>
<script src="<%=baseURL%>assets/js/exporting.js"></script>
<script src="<%=baseURL%>assets/js/jquery.rateyo.min.js"></script>
<script src="<%=baseURL%>assets/js/wickedpicker.min.js"></script>
<script src="<%=baseURL%>assets/js/summernote-bs4.js"></script>
<script src="<%=baseURL%>assets/js/bootstrap-select.min.js"></script>
<script src="<%=baseURL%>assets/js/main_dashboard.js"></script>
<script src="<%=baseURL%>assets/js/multiselect.js"></script>
<script src="<%=baseURL%>assets/js/jquery.validate.min.js"></script>
<script src="<%=baseURL%>assets/js/pagination.min.js"></script>
<script src="<%=baseURL%>assets/js/dropzone.min.js"></script>



</html>