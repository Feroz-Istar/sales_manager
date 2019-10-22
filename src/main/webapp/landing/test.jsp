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
<body>
	<jsp:include page="../navbar/nav.jsp"></jsp:include>
	<main role="main">
	<div class="container-fluid salesken_container">
		<div class="row">
			<div class="col-md-4">
           <div class="demo">
            <div id="page">
                <ul class="salesken pagination"></ul>
            </div>
            <label id="info">Page information will be displayed here.</label>
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
		$('#page').Pagination({ // id to initial draw and use pagination
            size: 87, // size of list input
            pageShow: 5, // 5 page-item per page
            page: 1, // current page (default)
            limit: 10, // current limit show perpage (default)
    	}, function(obj){ // callback function, you can use it to re-draw table or something
            	console.log(obj)
    	});
	});
	
	</script>
</body>
</html>