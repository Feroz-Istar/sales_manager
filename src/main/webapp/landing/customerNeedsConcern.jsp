<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html lang="en" class="h-100">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<title>Reports - Need</title>
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
<link href="<%=baseURL%>assets/css/bootstrap-datepicker3.min.css?xsww"
	rel="stylesheet">
<link href="<%=baseURL%>assets/css/bootstrap-datepicker3.min.css?xsww"
	rel="stylesheet">
<link rel="stylesheet" href="<%=baseURL%>assets/css/report.css">

</head>
<body onload="load()">

	<div class="loader-div d-none">
		<div
			class="inner-circle-div d-flex align-items-center justify-content-center">
			<div class="spinner-border  text-danger">
				<span class="sr-only">Loading...</span>
			</div>
		</div>
	</div>
	<jsp:include page="../navbar/nav.jsp"></jsp:include>

	<main role="main">
	<div class="container-fluid salesken_container">
	<div class="row grey-white-bg align-items-center m-0 theme_solid_border_bottom pl-40 pr-40 pt-10 pb-10">
			<div class="col-md-6 col-12 d-flex align-items-center p-0">
				<i class="fas fa-arrow-left black f-20 cursor-pointer" onclick="window.location.href = 'report.jsp'"></i>
				<div class="display-1 black f-20 border-right-separation pr-20  fw-500 pl-20">Needs & Concern </div>
				<div class="f-12 brown-grey pl-20">Dashboard</div>
				<i class="fas fa-chevron-circle-right pl-2 pr-2 f-12 very-light-pink"></i>
				<div class="f-12 brown-grey ">Report</div>
				<i class="fas fa-chevron-circle-right pl-2 pr-2 f-12 very-light-pink"></i>
				<div class="f-12 brown-grey ">Customer</div>
				<i class="fas fa-chevron-circle-right pl-2 pr-2 f-12 very-light-pink"></i>
				<div class=" f-12 brown-grey fw-500 " id="breadcrumb">Needs & Concern </div>
			</div>
			
			
		</div>
		<div class="row align-items-center bg-white theme_solid_border_bottom m-0  pl-40 pt-15 pb-15 pr-40">
							<div class="col-md-3 text-result-found p-0">
								<strong class="number-of-results">04</strong> Results Found
							</div>
							<div class="col-md-9 d-md-flex justify-content-end p-0 ">
									
								
						
								
								<div class="istar-dropdown-task select_focus mr-10">
									<button class="istar-dropdown-arrow dropdown-toggle"
										id="nofollowup_status" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										<span class="sr-only">Toggle Dropdown</span>All Personas
										<img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
												class=" float-right">
									</button>
									<div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="nofollowup_status">
										<button class="dropdown-item" type="button">
											 Won
										</button>
										<button class="dropdown-item" type="button">
											Lost
										</button>
									</div>
								</div>
	
									
									
								
							</div>
						</div>
			
			
				<div class="row m-0 bg-white pl-30 pr-30">
				
					<%for(int i=0;i<12;i++){ 
						String isshow="";
						if(i>4){
							isshow="d-none";
						}
					%>
					<div class="col-md-3 p-0 col_bordering4_blank minh-200">
							<div class="">
							<div class="row m-0 align-items-center pt-30 pb-30 pr-15 pl-15 <%=isshow%>">
								<div class="col-md-2 pr-20 p-0 text-center" >
									<div class="greyish-brown f-42 font-weight-bold">04</div>
									<div class="greyish-brown f-12 fw-300">Instances </div>
								</div>
								<div class="col-md-9 theme_solid_border_left p-0 pl-15">
									<div class="f-14 blue-black pb-20">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce finibus, risus non…egestas gravida, ante ligula rutrum ligula, non dictum purus justo mattis tortor</div>
									<div class="btn bg-purple pl-10 pr-10 pt-5 pb-5 text-white f-12 font-weight-bold">Personas 01</div>
								</div>
							</div>
					</div>
					</div>
					<%} %>
				</div>
			
			
	
	</div>
	</main>

</body>

<script src="<%=baseURL%>assets/js/jquery-3.4.1.min.js"></script>
<script src="<%=baseURL%>assets/js/popper.min.js"></script>
<script src="<%=baseURL%>assets/js/bootstrap.min.js"></script>
<script src="<%=baseURL%>assets/js/salesken.js"></script>
<script src="<%=baseURL%>assets/js/pagination.min.js"></script>

<script src="<%=baseURL%>assets/js/bootstrap-datepicker.min.js"></script>
<script>
$(document).ready(function(){
	$('.salesken.navbar-nav>li').removeClass('active');
	$($('.salesken.navbar-nav>li')[3]).addClass('active');
});
</script>



