<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html lang="en" class="h-100">
<html>
<head>
<meta charset="utf-8">

<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no, shrink-to-fit=no">

<meta name="description" content="">
<title>Salesken Account Verified</title>
</head>
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>
<link rel="icon" href="<%=baseURL%>favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="<%=baseURL%>favicon.ico"
	type="image/x-icon" />
<link rel="stylesheet" href="<%=baseURL%>assets/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/salesken_style.css">
<body data-base-url="<%=baseURL%>" onload="load()">
<jsp:include page="../navbar/nav.jsp"></jsp:include>

	<main role="main">
	<div class="container-fluid salesken_container">
		<div class="row m-0 bg-white align-items-center minh-650">
			<div class="col-md-8 p-0 pl-115">
				<div class="f-52 font-weight-bold rosy-pink">500</div>
				<div class="fw-500 black f-20 pb-50">Internal Server Error...</div>
				<div class="f-12 brownish-grey">The server encountered an error & was unable to complete your request. Please contact the <br>server administrator for more information.  &nbsp; &nbsp;
					<span class="theme_color font-weight-bold cursor-pointer">Click here</span>
				</div>
			</div>
			<div class="col-md-4 p-0">
				<img src="<%=baseURL%>assets/image/server-error.svg">
			</div>
		</div>
	</div>
	</main>
	<script src="<%=baseURL%>assets/js/jquery-3.4.1.min.js"></script>
	<script src="<%=baseURL%>assets/js/popper.min.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap.min.js"></script>
</body>
</html>
	