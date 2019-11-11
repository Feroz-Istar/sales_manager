<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%><%@ page language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
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
<body class="bg-white"  onload="load()">
	<!--------------------------------------------- Opening of container ------------------------------------------------------>
	<div class="container h-100">
<div class="row h-100  ">
			<div
				class="col-md-5 p-0 d-flex justify-content-end h-100 align-items-center">
				<div class="card  pr-115 border-0 pt-60 pb-60 shadow_right">
					<div class="card-body p-0 ">
				
					
							<img class=" text-center saleskenlogo" alt="salesken_logo" src="<%=baseURL%>assets/image/nav_icon.png" />


						<form class="pt-30 pb-30" id="forgotform">
							<div class="form-group pb-30 mb-0">
								<label class="f-14 fw-500 very-light-pink  mb-0 pb-10 "
									for="email">Email address</label> <input type="email"
									class="form-control very-light-pink-bg p-0 pr-15 pl-15 pb-15 pt-15  f-14 rounded-0 input_wh istar-form-control" name="email"
									id="email" aria-describedby="emailHelp"
									placeholder="Email ">

							</div>
							<div class="form-group position-relative  pb-30 mb-0">
								<label class="f-14 fw-500 black-two mb-0  pb-10 "
									for="password">Password</label> <input
									type="password" class="form-control p-0 pr-40 pl-15 pb-15 pt-15 -very-light-pink f-14 rounded-0 input_wh istar-form-control"
									id="password" placeholder="Password" name="password">
										<button type="button" class="btn eye_icon confirm_password p-0   pl-2">
							<img src="<%=baseURL%>assets/image/eye.svg" alt="eye" />
						</button>
							</div>
					<div class="form-group position-relative pb-40 mb-0">
								<label class="f-14 fw-500 black-two mb-0 pb-10 "
									for="password">Confirm Password</label> <input
									type="password" class="form-control pr-40 pl-15 pb-15 pt-15  f-14 rounded-0 very-light-pink input_wh istar-form-control"
									id="confirmpassword" placeholder=" Confirm Password" name="confirmpassword">
									<button type="button" class="btn  eye_icon confirm_password p-0 pl-2">
						<img src="<%=baseURL%>assets/image/eye.svg" alt="eye" />
						</button>
							</div>
							<button type="submit"
								class="btn istar-btn-primary f-14 text-center w-100 font-weight-bold p-0 rounded-0  login_button"
								style="" id="forgot_botton">GENERATE PASSWORD</button>
						</form>
					</div>
				</div>
			</div>
			<div class="col-md-7  p-0 h-100 d-flex align-items-center">
				<div>
					<p class="black f-24 mb-0 pb-5 pl-90">See What Works, What Doesn’t &</p>

					<h1 class="black  f-38  mb-0 pl-90	fw-900">Help your
						Reps Sell Better</h1>
					<p class="brown-grey f-16 mb-0 pb-90 pt-30 pl-90" style="max-width: 534px;">Lorem
						ipsum dolor sit amet, consectetur adipiscing elit. Nulla sit amet
						nibh lobortis, vehicula lorem at.</p>
					<img class="login_background" alt="login_background"
						src="<%=baseURL%>assets/image/login_background.svg" />
				</div>
			</div>
		</div>
	
	

	</div>
	<!--------------------------------------------- closing of container ------------------------------------------------------>

<script src="<%=baseURL%>assets/js/jquery-3.4.1.min.js"></script>


	<script src="<%=baseURL%>assets/js/popper.min.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap.min.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap-datepicker.min.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap-datepicker.min.js"></script>
	<script src="<%=baseURL%>assets/js/highcharts.js"></script>
	<script src="<%=baseURL%>assets/js/exporting.js"></script>
	<script src="<%=baseURL%>assets/js/pagination.min.js"></script>
		<script src="<%=baseURL%>assets/js/jquery.validate.min.js"></script>
			<script src="<%=baseURL%>assets/js/salesken.js"></script>
			
	<script>
	$( document ).ready(function() {
	    console.log( "ready!" );
	
	    jQuery.validator.setDefaults({
			errorPlacement : function(error, element) {
				error.addClass('invalid-feedback');
			},
			highlight : function(element, errorClass, validClass) {
				$(element).addClass('is-invalid');
			},
			unhighlight : function(element, errorClass, validClass) {
				$(element).removeClass('is-invalid').addClass('is-valid');
			}
		});
		$("#forgotform").validate({
			rules : {
				email : {
					required : true,
					email : true
				},
				password : {
					required : true	,
					 minlength: 4
				},
				confirmpassword : {
					required : true	,
					equalTo: "#password"
				}
			}
		});
	});

</script>
</body>
</html>