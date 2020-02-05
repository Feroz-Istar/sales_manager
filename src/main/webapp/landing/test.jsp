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
	<script src="<%=baseURL%>assets/js/jquery-3.4.1.min.js"></script>
	<script type="text/javascript"
		src="http://botmonster.com/jquery-bootpag/jquery.bootpag.js"></script>	
	
		

</head>
<body >
	<jsp:include page="../navbar/nav.jsp"></jsp:include>
	<main role="main">
	<div class="container-fluid salesken_container">
<div class="position-relative">
<canvas class="" id="myCanvas" width=" 1500px" height="900px" style="border:1px solid #d3d3d3;    ">
Your browser does not support the HTML5 canvas tag.</canvas>
<canvas class="position-relative" id="circleCanvas" width=" 1500px" height="80px" style="border:1px solid #d3d3d3;bottom: 500px;  z-index:999 ">
Your browser does not support the HTML5 canvas tag.</canvas>
</div>
</div>

<script>
$.get('https://gist.githubusercontent.com/riyaistar/47e45a6499a7729e07c2499bcb9c53f1/raw/37b0d333b585f46534c41bbbaa6ce2f42fa232b2/ccccc', function(data) {

	var json = JSON.parse(data);
	console.log(json)
	console.log(json.agent)
    var c = document.getElementById("myCanvas");
    var canvasHeight=c.height;
    var canvasWidth=c.width;
    
    var widthRatio=canvasWidth/json.total_time;
    
    var count = parseInt("8")
    var yCordinate=canvasHeight/2;
    var x_axis=0;
    var y_axis=yCordinate/2;
    for(var i=0;i<json.snippets.length;i++)
    	{
    		var snippetsWidth=(json.snippets[i].to-json.snippets[i].from)*widthRatio;
    		x_axis=(json.snippets[i].from*widthRatio);
    				var ctx = c.getContext("2d");
    				if(json.snippets[i].speaker=="Agent")
    					{
    					ctx.fillStyle ="red";
    					}else{
    						ctx.fillStyle ="blue";
    					}
    				ctx.beginPath();
    				ctx.fillRect( x_axis,yCordinate-40,snippetsWidth, 80);
    				ctx.stroke();
    				
    	}	
    //////////////////////////////
    
    var circle = document.getElementById("circleCanvas");
    var ctxCircle = circle.getContext("2d");
    ctxCircle.beginPath();

    elemLeft = circle.offsetLeft,
    elemTop = circle.offsetTop,
    circle.addEventListener('click', function(event) {
    	ctxCircle.clearRect(0, 0, circle.width, circle.height);
    	ctxCircle.beginPath();
        var x = event.pageX - elemLeft,
            y = event.pageY - elemTop;
   
		if(x>=(canvasWidth-40))
			{
				x=canvasWidth; 
			}else if(x<=80){
			x=80;
			}
  	
    	var cavaswidth2=circle.width;
		var y_axis=x_axis=radius=circle.height/2;
		ctxCircle.beginPath();
		ctxCircle.arc(x-40,y_axis,radius, 0, 2 * Math.PI);
		ctxCircle.fillStyle = 'white';
		ctxCircle.fill();
		ctxCircle.lineWidth = 1;
		ctxCircle.strokeStyle = '#003300';
		ctxCircle.stroke();
		ctxCircle.globalAlpha = .7;
		ctxCircle.fillStyle ="yellow";
		ctxCircle.fillRect(x,0,cavaswidth2-radius*2, 80);
		ctxCircle.globalAlpha = 1.0;
    }, false);

})



</script> 


	
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

	
</body>
</html>