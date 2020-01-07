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
			<div class="col-md-5 p-0 d-flex justify-content-end h-100 align-items-center ">
					<div class="card  pr-115 border-0 pt-60 pb-60 shadow_right">
						<div class="card-body p-0 ">
							<img class=" text-center saleskenlogo" alt="salesken_logo" src="<%=baseURL%>assets/image/nav_icon.png" />
							<div class="theme_border_bottom mt-30 "></div>
							<div class="mt-40 generated" style="display: none;">
								<p class="brownish-grey f-14 pb-1 mb-0 fw-500"><img src="<%=baseURL%>assets/image/checkiconsmall.png">
								Email sent!</p>
								<p class="mb-0 brown-grey pl-1 f-14 email_check"></p>
							</div> 
							
							<!-- LOGIN FORM START -->
							<form class="pt-40 pb-30" id="loginform">
								<div class="form-group pb-10 mb-0">
									<label class="f-14 label_color mb-0 pb-10 fw-500" for="email">Email address</label> <input type="email" class="form-control pr-15 pl-15 pb-15 pt-15 f-14 rounded-0 input_wh istar-form-control" name="email" id="email" aria-describedby="emailHelp" placeholder="Email ">
									<label id="email-error" class="error invisible f-14 theme_color" for="email">error message</label>
								</div>
								<button type="button" class="btn istar-btn-primary f-14 text-center w-100 font-weight-bold p-0 rounded-0  big_button get_reset_link" style="">GET RESET LINK</button>
								<button onclick="window.location.href='<%=baseURL%>global/index.jsp'" class=" mt-30 f-14 btn text-left font-weight-bold p-0 theme_color">Cancel</button>
							</form>
							
						</div>
					</div>
				</div>
			<div class="col-md-7 p-0  h-100 d-flex align-items-center">
				<div class="text-break">
						<p class="black f-24 mb-0 pl-90">Unparalleled Visibility</p>

						<h1 class=" f-38  mb-0	pl-90 fw-900 black">Improved Performance</h1>
						<p class="brown-grey f-16 mb-0 pb-90 pt-40 pl-90" style="max-width: 534px;">Salesken allows your sales reps to dramatically improve their quota performance by providing deep insights into what works and intelligence to assist their sales pitch</p>
						<img class="login_background pl-30" alt="login_background" src="<%=baseURL%>assets/image/login_background.svg" />
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