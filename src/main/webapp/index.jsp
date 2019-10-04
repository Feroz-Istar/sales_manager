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
<title>Salesken Login</title>
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
<link rel="stylesheet" href="<%=baseURL%>assets/css/login.css">

<link href="<%=baseURL%>assets/css/bootstrap-datepicker3.min.css?xsww"
	rel="stylesheet">
</head>
<body style="background: #ffffff !important">
	<main role="main" class="h-100">
	<div class="container-fluid   h-100">
		<div class="row h-100  ">
			<div
				class="col-md-5 d-flex justify-content-end h-100 align-items-center">
				<div class="card  px-4 mx-4 border-0  shadow_right"
					style="width: 28rem;">
					<div class="card-body  ">
						<div style="text-align: center">

							<button class="rounded-circle tea border-0 mb-4 tick_icon">
								<i class="fas fa-check text-white f-16"></i>
							</button>
						</div>
						<p class="brownish-grey f-14 text-center mb-0 font-weight-bold">Great!
							Password has been generated !</p>
						<p class="brown-grey f-14 text-center">You can now login to
							Salesken</p>

						<img class="my-3 text-center saleskenlogo" alt="saleskenlogo"
							src="<%=baseURL%>assets/image/saleskenlogo.svg">
						<div class="my-3 border_top"></div>


						<form style="">
							<div class="form-group mb-4">
								<label class="f-14 font-weight-bold label_color"
									for="email">Email </label> <input type="email"
									class="form-control f-14 rounded-0 input_wh" name="email"
									id="email" aria-describedby="emailHelp"
									placeholder="Email">

							</div>
							<div class="form-group mb-4">
								<label class="f-14 font-weight-bold label_color"
									for="password">Password</label> <input
									type="password" class="form-control f-14 rounded-0 input_wh"
									id="password" placeholder="Password">
							</div>

							<button type="button"
								class="btn istar-btn-primary f-14 text-center w-100 font-weight-bold p-0 rounded-0 mb-4 login_button"
								style="">LOGIN</button>
							<button type="button"
								class="btn f-14  text-left w-100 font-weight-bold p-0 theme_color "
								style="height: 40px;">Forgot Password ?</button>


						</form>

					</div>
				</div>
			</div>
			<div class="col-md-7   h-100 d-flex align-items-center">
				<div>
					<h1 class="display-4 f-24 mb-2">See What Works, What Doesn’t &</h1>

					<h1 class="display-3 f-38 mb-5 font-weight-bold">Help your
						Reps Sell Better</h1>
					<p class="brown-grey f-16 mb-5" style="max-width: 433px;"">Lorem
						ipsum dolor sit amet, consectetur adipiscing elit. Nulla sit amet
						nibh lobortis, vehicula lorem at.</p>
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
<script src="https://cdn.jsdelivr.net/npm/node-forge@0.7.0/dist/forge.min.js"></script>

	<script>
		$(document).ready(function() {
			console.log("ready!");

			/*
				
				$.post("http://192.168.0.141:8081/javacore/api/global/authenticate",{ email: "John", password: "2pm" },function(data){
					 console.log(data);
				}, "json");

				//window.location.href = location.href + 'landing/dashboard.jsp'
			
			 */
			 $('.login_button').click(function() {
				 //window.location.href = location.href + 'landing/dashboard.jsp';
				 var obj = { email: $('#email').val(), password: $('#password').val() };
				 
				  $.ajax({
			    contentType: 'application/json',
			    data: JSON.stringify(obj),
			    dataType: 'json',
			    success: function(data,textStatus,request){
			       /*  console.log(data);
			        console.log(textStatus); */
			        console.log(request.getResponseHeader('Authorization').replace('Bearer ',''));

			        console.log(request);
					window.location.replace("landing/dashboard.jsp");

			    },
			    error: function(){
			    	  console.log("Device control failed");
			    },
			    processData: false,
			    type: 'POST',
			    url: 'http://192.168.0.140:8081/javacore/api/global/authenticate'
			}); 
			 });
		});
	</script>
</body>
</html>