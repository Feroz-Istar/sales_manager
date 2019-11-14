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
<title>My Account</title>
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
<link rel="stylesheet" href="<%=baseURL%>assets/css/all.css">


</head>
<body onload="load()">
<jsp:include page="../navbar/nav.jsp"></jsp:include>
	<div class="container-fluid salesken_container">
		<div
			class="row grey-white-bg theme_solid_border_bottom align-items-center m-0 pt-15 pb-15 pl-40 pr-40">
			<div class="col-md-6 col-12 d-flex align-items-center mb-4 mb-md-0 p-0">
				<div class="display-1 black f-20 border-right-separation pr-20 fw-500">My Account</div>
				<div class=" f-12 brown-grey pl-20">Dashboard</div>
				<i class="fas fa-chevron-circle-right f-12 brown-grey pl-2 pr-2"></i>
				<div class=" f-12 brown-grey fw-500">My Account</div>
			</div>
		</div>



		<div class="row very-light-pink-grey-bg m-0 minh-550" >
		  <div class="col-md-2 col-12 p-0 tabcol flex-grow-1 border-right pl-20">
		    <div class="nav flex-column nav-pills h-100" id="piplelinestage-tab" role="tablist" aria-orientation="vertical">
		      <a class="nav-link p-0 pt-15 pb-15 pr-20 pl-20 active" id="v-pills-basic-tab" data-toggle="pill" href="#v-pills-basic" role="tab" aria-controls="v-pills-basic" aria-selected="true">Basic Information</a>
		      <a class="nav-link p-0 pt-15 pb-15 pr-20 pl-20 " id="v-pills-password-tab" data-toggle="pill" href="#v-pills-password" role="tab" aria-controls="v-pills-password" aria-selected="false">Password</a>
		      <a class="nav-link p-0 pt-15 pb-15 pr-20 pl-20" id="v-pills-account-setting-tab" data-toggle="pill" href="#v-pills-account-setting" role="tab" aria-controls="v-pills-account-setting" aria-selected="false">Account Setting</a>
		     </div>
		  </div>
		  <div class="col-md-10 col-12 p-0 bg-white tabcontentcol">
		    <div class="tab-content h-100" id="piplelinestage-tabContent">
		      <div class="tab-pane fade pl-0 pl-50 pr-50 pt-30 pb-20 show active" id="v-pills-basic" role="tabpanel" aria-labelledby="v-pills-basic-tab">
		      	<!-- start of Basic Information content -->
		      		<div class="row m-0 justify-content-between pb-50 theme_dashed_border_bottom_2">
		      			<div class="col-md-6 p-0">
		      				<div class="d-flex align-items-center">
		      					<div class="position-relative">
		      						<img src="<%=baseURL%>assets/image/11.png" class="rounded-circle " height="100" width="100">
		      						<button class="btn rounded-circle d-flex align-items-center justify-content-center p-0 theme_bg hw-30" style="position: absolute; left: 35%; bottom: -12%;">
		      							<i class="fal fa-camera f-14 text-white"></i>
		      						</button>
		      					</div>
		      					<div class="ml-30">
		      						<div class="greyish-brown f-18 font-weight-bold">Wade Wolkers</div>
		      						<div class="brownish-grey f-14">Manager</div>
		      					</div>
		      				</div>
		      			</div>
		      			<div class="col-md-1 p-0 text-right"  data-toggle="modal" data-target="#editAccount">
		      				<img src="<%=baseURL%>assets/image/edit_red.svg" class="cursor-pointer pl-2 pb-2">
		      			</div>
		      		</div>
		      		
		      		<div class="row pt-30 m-0">
		      			<div class="col-md-2 p-0">
		      				<div class="fw-500 f-14 black">Email ID</div>
		      				<div class="greyish-brown f-16">wade@gmail.com</div>
		      			</div>
		      			<div class="col-md-2 p-0">
		      				<div class="fw-500 f-14 black">Contact Number</div>
		      				<div class="greyish-brown f-16">+91 945 950 9509</div>
		      			</div>
		      		</div>
		      		<div class="row pt-30 m-0">
		      			<div class="col-md-2 p-0">
		      				<div class="fw-500 f-14 black">Organization</div>
		      				<div class="greyish-brown f-16">Istarindia Pvt. Ltd.</div>
		      			</div>
		      			<div class="col-md-2 p-0">
		      				<div class="fw-500 f-14 black">Department</div>
		      				<div class="greyish-brown f-16">Sales Department</div>
		      			</div>
		      		</div>
		      		<div class="row pt-30 m-0">
		      			<div class="col-md-2 p-0">
		      				<div class="fw-500 f-14 black">Location</div>
		      				<div class="greyish-brown f-16">Bangalore</div>
		      			</div>
		      			
		      		</div>
		      	<!-- end of Basic Information content -->
		      </div>
		      
		      
		      <div class="tab-pane fade p-0 pt-50 h-100 " id="v-pills-password" role="tabpanel" aria-labelledby="v-pills-password-tab">
		      	<!-- start of password content -->
		      		<div class="row m-0 pl-50 pr-50">
			       		<div class="col-md-4 p-0 theme_dashed_border_bottom pb-30">
			       			<div class="f-14 fw-500 pb-10 black">Old Password</div>
			       			<input type="password" class="custom-modal-input w-100 form-control f-14" id="old-password" name="old-password" aria-describedby="old-password" placeholder="Type here">
			       		</div>
			       	</div>
			       	
			       	<div class="row m-0 pt-30 pl-50 pr-50">
			       		<div class="col-md-4 p-0">
			       			<div class="f-14 fw-500 pb-10 black">New Password</div>
			       			<input type="password" class="custom-modal-input w-100 form-control f-14" id="new-password" name="new-password" aria-describedby="new-password" placeholder="Type here">
			       		</div>
			       	</div>
			       	
			       	<div class="row m-0 pt-30 pb-100 pl-50 pr-50">
			       		<div class="col-md-4 p-0">
			       			<div class="f-14 fw-500 pb-10 black">Confirm Password</div>
			       			<input type="password" class="custom-modal-input w-100 form-control f-14" id="confirm-password" name="confirm-password" aria-describedby="confirm-password" placeholder="Type here">
			       		</div>
			       	</div>
			       	
			       	<div class="row m-0 pt-20 mt-30 pb-20 border-top-task_list justify-content-end pr-50">
			       		<button class="btn big_button rounded-0">UPDATE</button>
			       	</div>
		      	<!-- end of password content -->
		      </div>
		      <div class="tab-pane fade pl-0" id="v-pills-account-setting" role="tabpanel" aria-labelledby="v-pills-account-setting-tab">...</div>
		     
		    </div>
		  </div>
		</div>


		<!-- start of edit account modal -->
		<div class="modal fade" id="editAccount" tabindex="-1"
			role="dialog" aria-labelledby="editAccountTitle"
			aria-hidden="true">
			<div class="modal-dialog modal-lg modal-dialog-centered"
				role="document">
				<div class="modal-content rounded-0 ">
					<div class="modal-header shadow-bottom pt-25 pb-25  pl-30 pr-30 ">
						<h5 class="modal-title greyish-brown f-18 font-weight-bold mb-0">Edit My Account</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<img src="<%=baseURL%>assets/image/close.svg" alt="taskicon"
								class="rounded-circle hw-24 task-icon">
						</button>
					</div>
					<div class="modal-body p-0 pr-30 pl-30 pt-20 pb-40">
						<form id="editAccount">
							 <div class="row m-0">
					       		<div class="col-md-6 p-0 pr-15">
					       			<div class="f-14 fw-500 pb-10 black">Full Name</div>
					       			<input type="text" class="custom-modal-input w-100 form-control f-14" id="name" name="name" aria-describedby="name" placeholder="Type here" value="Wade Wolkers">
					       		</div>
					       		<div class="col-md-6 p-0">
					       			<div class="f-14 fw-500 pb-10 black">Designation</div>
					       			<input type="text" class="custom-modal-input w-100 form-control f-14" id="designation" name="designation" aria-describedby="designation" placeholder="Type here" value="Manager">
					       		</div>
					       	</div>
					       	<div class="row m-0 pt-20">
					       		<div class="col-md-6 p-0 pr-15">
					       			<div class="f-14 fw-500 pb-10 black">Contact Number</div>
					       			<input type="text" class="custom-modal-input w-100 form-control f-14" id="number" name="number" aria-describedby="number" placeholder="Type here" value="+91 945 950 9509">
					       		</div>
					       		<div class="col-md-6 p-0">
					       			<div class="f-14 fw-500 pb-10 black">Email</div>
					       			<input type="text" class="custom-modal-input w-100 form-control f-14" id="email" name="email" aria-describedby="email" placeholder="Type here" value="wade@gmail.com">
					       		</div>
					       	</div>
					       	<div class="row m-0 pt-20">
					       		<div class="col-md-6 p-0 pr-15">
					       			<div class="f-14 fw-500 pb-10 black">Organization</div>
					       			<input type="text" class="custom-modal-input w-100 form-control f-14" id="organization" name="organization" aria-describedby="organization" placeholder="Type here" value="Istarindia">
					       		</div>
					       		<div class="col-md-6 p-0">
					       			<div class="f-14 fw-500 pb-10 black">Department</div>
					       			<input type="text" class="custom-modal-input w-100 form-control f-14" id="department" name="department" aria-describedby="department" placeholder="Type here" value="Sales">
					       		</div>
					       	</div>
					       	<div class="row m-0 pt-20">
					       		<div class="col-md-6 p-0 pr-15">
					       			<div class="f-14 fw-500 pb-10 black">Location</div>
					       			<input type="text" class="custom-modal-input w-100 form-control f-14" id="location" name="location" aria-describedby="location" placeholder="Type here" value="Bangalore">
					       		</div>
					       	</div>
						</form>
					</div>
					<div class="modal-footer p-0 pt-30 pb-30 pl-30	pr-30">
						<button type="button"
							class="btn theme_color f-14 font-weight-bold m-0 pr-20">Reset All</button>
						<button type="button"
							class="btn big_button rounded-0 f-14 font-weight-bold m-0"
							id="submit">SUBMIT</button>
					</div>
					</div>
				</div>
			</div>
		<!-- end of edit account modal -->
		
	</div>
	<script src="<%=baseURL%>assets/js/jquery-3.4.1.min.js"></script>
	<script src="<%=baseURL%>assets/js/popper.min.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap.min.js"></script>
	<script src="<%=baseURL%>assets/js/pagination.min.js"></script>
	<script src="<%=baseURL%>assets/js/salesken.js"></script>
	<script>
		$('.salesken.navbar-nav>li').removeClass('active');
	</script>
</body>
</html>