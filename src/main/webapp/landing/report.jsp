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
<title>Salesken - Reports</title>
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
	String usertabs[]={"All Users","Sales Team","Product Team","Tech Team"};
	
	
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
<body data-base-url="<%=baseURL%>">
	<jsp:include page="../navbar/nav.jsp"></jsp:include>
	<main role="main">
	<div class="container-fluid salesken_container">
	
	<div class="row bg-white align-items-center py-3 border-bottom-separation pl-3">
		<div class="col-md-6 col-12 d-flex align-items-center mb-4 mb-md-0"> 
		<div class="display-1 black f-20 border-right-separation pr-3  fw-500">Reports</div>
							<div class="pl-3 pr-2 f-12 brown-grey ">Report</div>
					<i class="fas fa-chevron-circle-right pr-2 f-12 brown-grey"></i>
					<div class=" f-12 brown-grey  fw-500" id="breadcrumb">Task</div>
		
		</div>
	</div>
		<div class="row mb-5">
			<div class="col-md-12 bg-white ">
				<ul class="nav nav-tabs nav-mytabs  pt-2 mx-4" id="reportTab" role="tablist">
					<li class="nav-item"><a class="nav-item nav-link active" id="task-tab"
							data-toggle="tab" href="#task" role="tab"
							aria-controls="task" aria-selected="true">Task</a></li>
					<li class="nav-item"><a
							class="nav-item nav-link" id="users-tab"
							data-toggle="tab" href="#users" role="tab"
							aria-controls="users" aria-selected="false">Users</a></li>
					<li class="nav-item"><a class="nav-item nav-link" id="customer-tab" data-toggle="tab"
							href="#customer" role="tab" aria-controls="customer"
							aria-selected="false">Customer</a></li>
						<li class="nav-item"><a class="nav-item nav-link"
							id="time_analysis-tab" data-toggle="tab" href="#time_analysis" role="tab"
							aria-controls="time_analysis" aria-selected="false">Time Analysis</a></li>
				</ul>
				<div class="tab-content p-0 mytab-content" id="nav-tabContent">
					<div class="tab-pane fade show active" id="task"
						role="tabpanel" aria-labelledby="task-tab">
						<!-- start of Task tab  content -->
<div class="row align-items-center  border-bottom-separation  pt-3 pb-3">
							<div class="col-md-3 text-result-found	">
								<strong class="number-of-results">04</strong> Results Found
							</div>
							<div class="col-md-9 d-md-flex justify-content-end  ">
									
									<div class="istar-dropdown-task">
										<button
											class="istar-dropdown-arrow dropdown-toggle"
											id="activity" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 
											<span class="sr-only">Toggle Dropdown</span>
    										Filter by Activities &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
										</button>
										 <div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu">
										    <button class="dropdown-item" type="button">
										    <img src="<%=baseURL%>assets/image/calltask.svg" class="task-dropdown">
										    Call Task</button>
										    <button class="dropdown-item" type="button">
										    <img src="<%=baseURL%>assets/image/emailtask.svg" class="task-dropdown">
										    Email Task</button>
										    <button class="dropdown-item" type="button">
										    <img src="<%=baseURL%>assets/image/webinartask.svg" class="task-dropdown">
										    Webinar Task
										    </button>
										    <button class="dropdown-item" type="button">
										    <img src="<%=baseURL%>assets/image/presentation.svg" class="task-dropdown">
										    Presentation
										    </button>
										  </div>
										
									</div> 
									
									<button
										class=" filter-btn">
										<i class="fas fa-filter f-14 brown-grey"></i>
									</button>
								
							</div>
						</div>
						<div class="row">
						<%for(int i=0;i<12;i++){ %>
							<div class="col-md-3 d-flex align-items-center col_bordering" style="min-height:200px;">
								<div class="row  w-100">
								<div class="col-md-9 m-0">
								<div><div class="font-weight-bold f-42" > 04</div>
								<div class="greyish-brown f-14 fw-500"> Not asking for next steps</div>
								</div>
								</div>
								<div class="col-md-3  p-0 m-0 text-center">
								<img src="<%=baseURL%>assets/image/Group 3614.svg" width="76" height="76" >
								</div>
								</div>
								
								
							</div>
						<%} %>
						</div>
						<!-- end of Task tab  content -->
					</div>

					<div class="tab-pane fade" id="users" role="tabpanel"
						aria-labelledby="users-tab">

						<!-- start of user tab content-->

							
						<div class="row align-items-center  border-bottom-separation  pt-3 pb-3">
							<div class="col-md-3 text-result-found	">
								<strong class="number-of-results">04</strong> Results Found
							</div>
							<div class="col-md-9 d-md-flex justify-content-end  ">
									
									<div class="istar-dropdown-task">
										<button
											class="istar-dropdown-arrow dropdown-toggle"
											id="activity" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 
											<span class="sr-only">Toggle Dropdown</span>
    										Filter by Activities &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
										</button>
										 <div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu">
										    <button class="dropdown-item" type="button">
										    <img src="<%=baseURL%>assets/image/calltask.svg" class="task-dropdown">
										    Call Task</button>
										    <button class="dropdown-item" type="button">
										    <img src="<%=baseURL%>assets/image/emailtask.svg" class="task-dropdown">
										    Email Task</button>
										    <button class="dropdown-item" type="button">
										    <img src="<%=baseURL%>assets/image/webinartask.svg" class="task-dropdown">
										    Webinar Task
										    </button>
										    <button class="dropdown-item" type="button">
										    <img src="<%=baseURL%>assets/image/calltask.svg" class="task-dropdown">
										    Presentation
										    </button>
										  </div>
										
									</div> 
									
									<button
										class=" filter-btn">
										<i class="fas fa-filter f-14 brown-grey"></i>
									</button>
								
							</div>
						</div>
			<div class="row very-light-pink-grey-bg" >
		  <div class="col-md-2 col-12 pr-0">
		    <div class="nav flex-column nav-pills" id="piplelinestage-tab" role="tablist" aria-orientation="vertical">
		    <%for(int i =0;i<usertabs.length;i++){ 
		    	String isactive = "";
				if (i == 0) {
					isactive = "active";
				}
		    %>
		      <a class="nav-link <%=isactive %>" id="<%=usertabs[i].trim()%>-tab" data-toggle="pill" href="#<%=usertabs[i].trim()%>" role="tab" aria-controls="<%=usertabs[i].trim() %>" aria-selected="true"><%=usertabs[i]	%></a>
		     <%} %>
		    </div>
		    
		    </div>
		    		  <div class="col-md-10 col-12 bg-white">
		    		    <div class="tab-content" id="piplelinestage-tabContent">
					    <%for(int i =0;i<usertabs.length;i++){ 
					    	String isactive = "";
							if (i == 0) {
								isactive = "active";
							}
					    %>
		    		      <div class="tab-pane fade show pl-0 <%=isactive %>" id="<%=usertabs[i].trim()%>" role="tabpanel" aria-labelledby="<%=usertabs[i].trim()%>-tab">
		   					 <div class="row align-items-center py-4 shadow-bottom">
		      			<div class="col-md-2 col-4">
		      				<div class="f-24 font-weight-bold blue-black">$ 8562</div>
		      				<div class="f-14 brown-grey">Deal Value</div>
		      			</div>
		      			<div class="col-md-2 col-4">
		      				<div class="f-24 font-weight-bold blue-black">689</div>
		      				<div class="f-14 brown-grey">Won Leads</div>
		      			</div>
		      			<div class="col-md-2 col-4">
		      				<div class="f-24 font-weight-bold blue-black">234</div>
		      				<div class="f-14 brown-grey">Lost Leads</div>
		      			</div>
		      			<div class="col-md-2 col-4">
		      				<div class="f-24 font-weight-bold blue-black">85%</div>
		      				<div class="f-14 brown-grey">Confident </div>
		      			</div>
		      			<div class="col-md-2 col-4">
		      				<div class="f-24 font-weight-bold blue-black">65%</div>
		      				<div class="f-14 brown-grey">Tentative </div>
		      			</div>
		      		</div>
		    <div class="row align-items-center bottom-separation-solid py-4">
		      			<div class="col-md-2 col ">
		      				<button class="btn p-0 black f-14 font-weight-bold">
		      					Agent Name	<i class="fas fa-sort brown-grey ml-2"></i>
		      				</button>
		      			</div>
		      			<div class="col-md-2 col ">
		      				<button class="btn p-0 black f-14 font-weight-bold">
		      					Achieved & Pipeline Value	<i class="fas fa-sort brown-grey ml-2"></i>
		      				</button>
		      			</div>
		      			<div class="col-md-2 col ">
		      				<button class="btn p-0 black f-14 font-weight-bold">
		      					Won & Lost Leads	<i class="fas fa-sort brown-grey ml-2"></i>
		      				</button>
		      			</div>
						<div class="col-md-2 col justify-content-lg-start ">
							<button class="btn p-0 black f-14 font-weight-bold">
								Week <i class="fas fa-sort brown-grey ml-2"></i>
							</button>
						</div>
						
						<div class="col-md-2 col justify-content-lg-start">
							<button class="btn p-0 black f-14 font-weight-bold">
								Strong
							</button>
						</div>
						
						</div>
						
						<%for(int j=0; j<10; j++){ %>
						<div class="row  align-items-center bottom-separation-solid py-4 "  onclick="window.location.href = 'userDetail.jsp'">
							<div class="col-md-2">
								<div class="row">
									<div class="col-md-2 mr-2">
										<img src="<%=baseURL%>assets/image/37.jpg" class=" hw-40 rounded-circle"/>
									</div>
									<div class="col-md-9">
										<div class="f-14 greyish-brown">Stanley Howard</div>
										<div class="f-12 brown-grey">ID - 00089</div>
									</div>
								</div>
							</div>
							<div class="col-md-2">
								<div class="row align-items-center">
									<i class="fal fa-check-circle col-md-1 soft-blue"></i>
									<div class="col-md-3 pr-0 greyish-brown f-14 border-right-separation"> $ 240 </div>
									<img class="menu_icon col-md-2 px-0 greyish-brown" src="<%=baseURL%>assets/image/report_green.svg" style="width:12px;height: 12px !important;">
									<div class="col-md-4 greyish-brown pl-0 f-14">$ 4589 </div>
								</div>
							</div>
							<div class="col-md-2">
								<div class="row align-items-center">
									<div class="col-md-1 tea-color f-14">45</div>
									<div class="col-md-1 p-0 greyish-brown f-14 text-center">/</div>
									<div class="col-md-1 p-0 pastel-red f-14">20</div>
								</div>
							</div>
							<div class="col-md-2 f-14 brownish-grey">
							Introduction, Price..
							<i class="fal fa-info-circle soft-blue"></i>
							</div>
							<div class="col-md-2 f-14 brownish-grey">
							Need Investigation
							<i class="fal fa-info-circle soft-blue"></i>
							</div>
							<div class="col-md-2 col text-right">
								<button class="btn">
									<i class="fas fa-ellipsis-v f-12 brown-grey"></i>
								</button>
							</div>
						</div>
						
						<%} %>
						
						<div class="row py-3 justify-content-end">
							<div class="col-md-3">
								<div class="page">
									<ul class="salesken pagination"></ul>
								</div>
							</div>
						</div>
		    </div>
		    
		    <%} %>
		    
		    </div>
		    </div>
		    
		    
		    
		    
		    
			</div>		
		
						<!-- end of user tab content -->

					</div>
					<div class="tab-pane fade" id="customer" role="tabpanel"
						aria-labelledby="customer-tab">

						<!-- start of customer tab content-->

					<div class="row align-items-center border-bottom-separation  pt-3 pb-3">
							<div class="col-md-3 text-result-found	">
								<strong class="number-of-results">04</strong> Results Found
							</div>
							
						</div>
						<hr class="p-0 m-0">

						<div class="row  border-bottom-dashed-separation mr-md-2">
						
							<%for(int i=0;i<4;i++){ %>
							<div class="col-md-3 col_bordering p-0 m-0 d-md-flex align-items-center" style="min-height:200px;">
							<div class=" w-100 d-flex">
								<div class="col-md-6 p-0 m-0 text-center	">
								<div><div class="font-weight-bold f-42"> 05</div>
								<div class="greyish-brown f-14 fw-500">Objection</div>
								</div>
								</div>
								<div class="col-md-6  p-0 m-0  ">
								<img src="<%=baseURL%>assets/image/objection.svg" width="93.8" height="87.2">
								</div>
								</div>
							</div>
							<%} %>
							
						</div>
						<!-- end of customer tab content -->

					</div>
					<div class="tab-pane fade" id="time_analysis" role="tabpanel"
						aria-labelledby="time_analysis-tab">

						<!-- start of time analysis tab content -->

						<div class="card shadow">
							<div class="card-body">
								<div class="d-flex">
								<%for(int i=0;i<5;i++){ %>
									<div class="mr-4">
										<div class="f-14 greyish-brown mb-1">Pipeline Stage 01</div>
										<div class="d-flex">
											
												<button class="hw-40 rounded-circle tea border-0"
													style="z-index: 1; border: 2px solid white !important;">
													<i class="fas fa-phone-alt  text-white f-12"></i>
												</button>
											
											<button class="hw-40 rounded-circle tea border-0"
													style="z-index: 1; border: 2px solid white !important;">
													<i class="fas fa-phone-alt  text-white f-12"></i>
												</button>
										</div>
									</div>
									<%} %>
								</div>

							</div>

						</div>
						
						<div class="row py-4">
						<div class="col-md-6">
						<h5 class="mb-1 f-20 black">Title</h5>
						
						</div>
						<div class="col-md-6  d-flex justify-content-end">
						<select class=" form-control mr-2 custom-taskselect f-14 custom-taskborder brown-grey" id="deal_value">
										<option>Filter by Team</option>
										<option>Default select</option>
									</select>
						</div>
						</div>
						
						
						<div class="row reportrow position-relative" style="min-height:300px">
						<%for(int i=0;i<10;i++){ %>
							<div class="col  p-0 m-0 reportcol" >
							<div class="greyish-brown f-30 border-bottom-dashed-separation "><%=i+1 %>0%</div>

								<div class="list-group border-right-dashed-separation pt-4 pl-2 pr-2" style="min-height:250px">
									<a href="#"
										class="list-group-item list-group-item-action active">
										<div class="d-flex w-100 justify-content-between ">
											<h5 class="mb-1 f-12">List group item heading</h5>
										</div>
										
									</a> 
									
								</div>




							</div>
							<%} %>
							<i class="far fa-flag flag_pos"></i>
<i class="fas fa-trophy trpohy_pos"></i>						</div>



						<!-- end of won leads content -->

					</div>
				</div>

			</div>
		</div>
	</main>


	<script src="<%=baseURL%>assets/js/jquery-3.4.1.min.js"></script>
	
	<script src="<%=baseURL%>assets/js/popper.min.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap.min.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap-datepicker.min.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap-datepicker.min.js"></script>
	<script src="<%=baseURL%>assets/js/highcharts.js"></script>
	<script src="<%=baseURL%>assets/js/exporting.js"></script>
	<script src="<%=baseURL%>assets/js/pagination.min.js"></script>
	<script src="<%=baseURL%>assets/js/salesken.js"></script>
	<script>
	$( document ).ready(function() {
		
		$($('.reportcol>.border-right-dashed-separation').last()).addClass('border-0');
		$('.salesken.navbar-nav>li').removeClass('active');
		$($('.salesken.navbar-nav>li')[3]).addClass('active');
		$('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
			  var target = $(e.target).html(); // activated tab
			  $('#breadcrumb').html(target);
			});
		
		$('.page').Pagination({ // id to initial draw and use pagination
            size: 87, // size of list input
            pageShow: 5, // 5 page-item per page
            page: 1, // current page (default)
            limit: 10, // current limit show perpage (default)
    	}, function(obj){ // callback function, you can use it to re-draw table or something
            	console.log(obj)
    	});
		$('#pipeline_datepicker').datepicker({autoclose:true});
	});
	function showCalendar(){
		$('#pipeline_datepicker').datepicker('show')
	}
	</script>
</body>
</html>