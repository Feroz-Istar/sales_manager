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
<body style="background: #ffffff !important">
	<main role="main" class="h-100">
	<div class="container-fluid   h-100">
		<div class="row h-100  ">
			<div class="col-md-5 d-flex justify-content-end h-100 align-items-center">
				<div class="card  px-4 mx-4 border-0 " style="box-shadow: 15px 0 5px -5px #eeeeee;width: 32rem;" >
					<div class="card-body  ">
					      <div style="text-align:center">
					
						<button class="rounded-circle tea border-0 mb-4"
							style="z-index: 1; width: 35px; height: 35px;">
							<i class="fas fa-check text-white f-16"></i>
						</button>
						</div>
						<p class="brownish-grey f-14 text-center mb-0">Great! Password has been
							generated ! </p>
						<p class="brown-grey f-14 text-center">You can now login to Salesken</p>
						
						<img class="my-3 text-center" alt="saleskenlogo" src="<%=baseURL%>assets/image/saleskenlogo.svg" style="height:54px; width:184px; ">
						<div class="my-3" style="border-top:1px solid #eeeeee;"></div>


						<form style="">
							<div class="form-group mb-4">
								<label class="f-14" for="exampleInputEmail1" style="color:#262626!important;">Email address</label> 
								<input
									type="email" class="form-control f-14" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Email" style="  width: 287.5px;
									height: 50px;color:#95989a!important;">
							
							</div>
							<div class="form-group mb-4">
								<label class="f-14" for="exampleInputPassword1" style="color:#262626!important;">Password</label> <input
									type="password" class="form-control f-14" id="exampleInputPassword1"
									placeholder="Password" style="  width: 287.5px;height: 50px;color:#95989a!important;">
							</div>
							
							<button type="submit" class="btn f-14 text-center w-100 font-weight-bold p-0 mb-4" style="  width: 287.5px !important;background:#ed4d67; height:40px;color:white;">Login</button>
							<button type="button" class="btn f-14  text-left w-100 font-weight-bold p-0 theme_color" style="height:40px;">Forgot Password ?</button>
						
						
						</form>

					</div>
				</div>
			</div>
			<div class="col-md-7   h-100 d-flex align-items-center">
				<div>
				<h1 class="display-4 f-24 mb-2">See What Works, What Doesn’t &</h1>

				<h1 class="display-3 f-38 mb-5">Help your Reps Sell Better</h1>
				<p class="brown-grey f-16 mb-5" style="max-width:300px;"">Lorem ipsum dolor sit amet,
					consectetur adipiscing elit. Nulla sit amet nibh lobortis, vehicula
					lorem at.</p>
				<img class="login_background" alt="login_background"
					src="<%=baseURL%>assets/image/login_background.svg" />
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


</body>
</html>