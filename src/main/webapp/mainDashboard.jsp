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


	<jsp:include page="headercss.jsp"></jsp:include>



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
	
	<main role="main">
	<div class="w-100 row pr-30 pl-25 pt-10 pb-10 ongoing_call_bar m-0">
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
		<div class="container-fluid salesken_container"></div>
	</main>

</body>

	<jsp:include page="headerjs.jsp"></jsp:include>



</html>