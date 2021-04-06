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
<canvas class="" id="myCanvas" width=" 900px" height="300px" style="border:1px solid #d3d3d3;    ">
Your browser does not support the HTML5 canvas tag.</canvas>
<canvas class="position-absolute" id="circleCanvas" width=" 900px" height="30px" style="left:0;top:47%;z-index:999 ">
Your browser does not support the HTML5 canvas tag.</canvas>
</div>
</div>

<script>
var json;

$.get('https://gist.githubusercontent.com/riyaistar/47e45a6499a7729e07c2499bcb9c53f1/raw/37b0d333b585f46534c41bbbaa6ce2f42fa232b2/ccccc', function(data) {
 json = JSON.parse(data);
console.log(json)
var c = document.getElementById("myCanvas");
var canvasHeight=c.height;
var canvasWidth=c.width;

var widthRatio=canvasWidth/json.total_time;
var circle = document.getElementById("circleCanvas");
var ctxCircle = circle.getContext("2d");
var circlecanvasHeight=circle.height;
var circlecanvasWidth=circle.width;
ctxCircle.beginPath();

CanvasRenderingContext2D.prototype.roundRect = function (x, y, width, height, radius) {
  if (width < 2 * radius) radius = width / 2;
  if (height < 2 * radius) radius = height / 2;
  this.beginPath();
  this.moveTo(x + radius, y);
  this.arcTo(x + width, y, x + width, y + height, radius);
  this.arcTo(x + width, y + height, x, y + height, radius);
  this.arcTo(x, y + height, x, y, radius);
  this.arcTo(x, y, x + width, y, radius);
  this.closePath();
  return this;
}
drawSnippet();
drawCircle(20,15);
drawSignal();



circle.addEventListener('click', function(e) {
	ctxCircle.clearRect(0, 0, circlecanvasWidth,circlecanvasHeight);
	 var x = e.offsetX;
	 var y = e.offsetY;
	 
	 drawSnippet();
	 drawCircle(x,15);

});




});




function drawCircle(x,y){
	var circle = document.getElementById("circleCanvas");
	var ctxCircle = circle.getContext("2d");
	var circlecanvasHeight=circle.height;
	var circlecanvasWidth=circle.width;
	var widthRatio=circlecanvasWidth/json.total_time;
	ctxCircle.beginPath();
	ctxCircle.arc(x, y, 12, 0, 2 * Math.PI);
    ctxCircle.fillStyle = '#ffffff';

    ctxCircle.fill();

	ctxCircle.lineWidth = 1;
	ctxCircle.strokeStyle = '#000000';
	/* ctxCircle.shadowColor = "#ffffff";
	ctxCircle.shadowOffsetX = 0;
	ctxCircle.shadowOffsetY = 0;
	ctxCircle.shadowBlur = 7; */
    ctxCircle.stroke();
	
	
	
	ctxCircle.beginPath();
	ctxCircle.fillStyle = "#ffffff";
	ctxCircle.globalAlpha = 0.6;


	ctxCircle.fillRect(0, 0, x-14, circlecanvasHeight);
	ctxCircle.fill();
	
}


function drawSnippet(){
	var circle = document.getElementById("circleCanvas");
	var ctxCircle = circle.getContext("2d");
	var circlecanvasHeight=circle.height;
	var circlecanvasWidth=circle.width;
	var widthRatio=circlecanvasWidth/json.total_time;
	ctxCircle.beginPath();
	ctxCircle.globalAlpha = 1;

	for(var snippet of json.snippets){
		console.log(snippet);
		var snippetsWidth=(snippet.to-snippet.from)*widthRatio;
		if(snippet.speaker=="Agent")
		{
			ctxCircle.fillStyle ="red";
		}else{
			ctxCircle.fillStyle ="blue";
		}
		ctxCircle.beginPath();
		ctxCircle.roundRect(snippet.from * widthRatio,circlecanvasHeight/2.5,snippetsWidth, 10,3);
		ctxCircle.fill();	
	}
	
	
	
	
	
}

function drawSignal(){
	var c = document.getElementById("myCanvas");
	var canvasHeight=c.height;
	var canvasWidth=c.width;
	var ctx = c.getContext("2d");
	var widthRatio=canvasWidth/json.total_time;

	ctx.beginPath();
	for(var snippet of json.snippets){
		for(var signal of snippet.signals){
			if ( ctx.setLineDash !== undefined )   ctx.setLineDash([5, 5,5]);
			if ( ctx.mozDash !== undefined )       ctx.mozDash = [5, 5,5];
			ctx.beginPath();              
			ctx.lineWidth="0.8";
			ctx.strokeStyle="#999999";
			ctx.moveTo(snippet.from * widthRatio, 50);
			ctx.lineTo(snippet.from * widthRatio, canvasHeight/2-10);
			ctx.stroke();
			
			ctx.beginPath();
			ctx.arc(snippet.from * widthRatio, canvasHeight/2-10, 2, 0, 2 * Math.PI);
			ctx.fillStyle = '#999999';
			ctx.fill();
			
			
			ctx.beginPath();
			ctx.arc(snippet.from * widthRatio, 42, 8, 0, 2 * Math.PI);
			ctx.fillStyle = 'green';
			ctx.fill();
			
		}
		
	}
	
	
}


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