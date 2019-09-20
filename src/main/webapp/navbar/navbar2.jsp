<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="-1" />
<meta charset="UTF-8">
<title>Insert title here</title>
<%
String url = request.getRequestURL().toString();
String baseURL = url.substring(0, url.length() - request.getRequestURI().length()) + request.getContextPath() + "/";
SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
SimpleDateFormat incoming = new SimpleDateFormat("dd-MM-yyyy");
String incomingDate= request.getParameter("var") != null ?request.getParameter("var"): sdf.format(new Date());
%>
<link rel="stylesheet" href="<%=baseURL%>assets/css/bootstrap.min.css">
<link  href="<%=baseURL%>assets/css/bootstrap-datepicker3.min.css?xsww" rel="stylesheet">
<link rel="stylesheet" href="<%=baseURL%>assets/css/salesken_style.css">

</head>
<body style="background:#eeeeee;">
       <div class="container">
    <div class="row">
        <div class='col-md-4' style="">
        
       <div id="datepicker" ></div>


        </div>
        
    </div>
</div>


<script src="<%=baseURL%>assets/js/jquery-3.4.1.min.js"></script>
<script src="<%=baseURL%>assets/js/popper.min.js"></script>
<script src="<%=baseURL%>assets/js/bootstrap.min.js"></script>
    <script src="<%=baseURL%>assets/js/bootstrap-datepicker.min.js"></script>
<script>
$( document ).ready(function() {
	var active_dates = ["21/9/2019","25/9/2019"];

	 $('#datepicker').datepicker({
		todayHighlight:true,
		updateViewDate:true,
		weekStart:1,
		 beforeShowDay: function(date){
	         var d = date;
	         var curr_date = d.getDate();
	         var curr_month = d.getMonth() + 1; //Months are zero based
	         var curr_year = d.getFullYear();
	         var formattedDate = curr_date + "/" + curr_month + "/" + curr_year

	           if ($.inArray(formattedDate, active_dates) != -1){
	               return {
	                  classes: 'activeClass'
	               };
	           }
	          return;
	      }
	}); 
	 $("#datepicker").datepicker("update", '<%=incomingDate%>');

	$('#datepicker').on('changeDate', function() {
		alert(        $('#datepicker').datepicker('getFormattedDate'));
		window.location.href=window.location.pathname+"?var="+$('#datepicker').datepicker('getFormattedDate');
	});
	
	
		 
});


</script>
</body>
</html>