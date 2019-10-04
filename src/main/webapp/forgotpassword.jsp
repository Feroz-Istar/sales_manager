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
<body class="bg-white">
	<!--------------------------------------------- Opening of container ------------------------------------------------------>
	<div class="container h-100">

		<!--  start of main row of page  -->
		<div class="row align-items-center h-100">


			<!--  start of left column of row which contains login form  -->
			<div class="col-md-5 pl-5 pb-5 py-4 shadow-r">



				<img class="img-fluid mb-5 mt-5 image-width-182 image-height-53"
					alt="Responsive image"
					src="<%=baseURL%>assets/image/saleskenlogo.svg">


				<form>
					<div class="form-group">
						<label for="exampleInputEmail1"
							class="f-14 font-weight-bold label_color line-height-19">Email
							address</label> <input type="email"
							class="form-control f-14 rounded-0 input_wh w-100 istar-form-control shadow-none"
							id="exampleInputEmail1" aria-describedby="emailHelp"
							placeholder="Enter email">
					</div>
					<div class="form-group position-relative ">
						<label for="exampleInputPassword1" class="f-14 font-weight-bold label_color">Password</label> <input
							type="password"
							class="form-control rounded-0 input_wh istar-form-control pr-40"
							id="exampleInputPassword1"
							placeholder="Password">
						<button type="button" class="btn eye_icon istar_password" >
							<i class="far fa-eye "></i>
						</button>
					</div>
					<div class="form-group position-relative mb-5">
						<label for="confirmpassword" class="f-14 font-weight-bold label_color">Confirm Password</label> <input
							type="password"
							class="form-control rounded-0 input_wh istar-form-control pr-40"
							id="confirmpassword"
							placeholder="Password">
						<button type="button" class="btn eye_icon confirm_password">
							<i class="far fa-eye"></i>
						</button>
					</div>


					<button type="submit" class="btn istar-btn-primary f-14  font-weight-bold rounded-0 ">GENERATE
						PASSWORD</button>
				</form>


			</div>
			<!--  end of left column of row which contains login form  -->

			<!--  start of right column of row which contains login background image and heading  -->
			<div class="col-md-7  px-3 py-4 ">
					<div class="pl-5">
				<h5 class="black f-24 line-height-45 mb-0">See What Works, What
					Doesn't</h5>
				<h2 class="black f-38 line-height-45 font-weight-bold mb-4">Help
					your Reps Sell Better</h2>
				<p class="light_gray f-16 line-height-22 mw-436">Lorem ipsum
					dolor sit amet, consectetur adipiscing elit. Nulla sit amet nibh
					loborrtis, vehicula lorem at.</p>
					</div>
				<img src="<%=baseURL%>/assets/image/login_background.svg"
					class="img-fluid mt-5" alt="Responsive image">
			</div>
			<!--  end of right column of row which contains login background image and heading  -->

		</div>
		<!--  end of main row of page  -->

	</div>
	<!--------------------------------------------- closing of container ------------------------------------------------------>

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
	<script>
	$( document ).ready(function() {
	    console.log( "ready!" );
	    
	    $('.confirm_password').click(function (){
	    	console.log('confirm_password');
	    	if($(this).find('.active').length !== 0){
	    		$(this).children().removeClass('active');
	    		$(this).siblings('input').attr('type', 'password'); 

	    	}else{
	    		$(this).children().addClass('active');
	    		$(this).siblings('input').attr('type', 'text'); 

	    	}
	    		

	    	
	    });
	    $('.istar_password').click(function (){
	    	console.log('istar_password');
	    	if($(this).find('.active').length !== 0){
	    		$(this).children().removeClass('active');
	    		$(this).siblings('input').attr('type', 'password'); 

	    	}else{
	    		$(this).children().addClass('active');
	    		$(this).siblings('input').attr('type', 'text'); 

	    	}
	    });
	});

</script>
</body>
</html>