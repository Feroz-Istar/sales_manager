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
<body>
	<jsp:include page="../navbar/nav.jsp"></jsp:include>
	<main role="main">
	<div class="container-fluid salesken_container">
	
	<div class="row bg-white align-items-center py-3 border-bottom-separation pl-3">
		<div class="col-md-6 col-12 d-flex align-items-center mb-4 mb-md-0"> 
		<div class="display-1 black f-20 border-right-separation pr-3 ">Reports</div>
							<div class="pl-3 pr-2 f-12 brown-grey ">Report</div>
					<i class="fas fa-chevron-circle-right pr-2 f-12 brown-grey"></i>
					<div class=" f-12 brown-grey " id="breadcrumb">Task</div>
		
		</div>
	</div>
		<div class="row bg-white pl-3">
			<div class="col-md-12">
				<ul class="nav nav-tabs nav-mytabs  pt-2" id="reportTab" role="tablist">
					<li class="nav-item"><a class="nav-link active" id="task-tab"
						data-toggle="tab" href="#task" role="tab" aria-controls="home"
						aria-selected="true">Task</a></li>
					<li class="nav-item"><a class="nav-link" id="users-tab"
						data-toggle="tab" href="#users" role="tab"
						aria-controls="profile" aria-selected="false">Users</a></li>
					<li class="nav-item"><a class="nav-link" id="customer-tab"
						data-toggle="tab" href="#customer" role="tab"
						aria-controls="contact" aria-selected="false">Customer</a></li>
						<li class="nav-item"><a class="nav-link" id="time_analysis-tab"
						data-toggle="tab" href="#time_analysis" role="tab"
						aria-controls="contact" aria-selected="false">Time Analysis</a></li>
				</ul>
				<div class="tab-content" id="reportTabContent" style="min-height:600px;">
					<div class="tab-pane fade show active" id="task" role="tabpanel"
						aria-labelledby="task-tab">
						<div class="row align-items-center  border-bottom-separation  pt-3 pb-3">
							<div class="col-md-3 f-16 brown-grey">
								<strong class="greyish-brown mr-2">03</strong> Results Found
							</div>
							<div class="col-md-9 d-md-flex justify-content-end  ">
								
									 <select class=" form-control mr-2 custom-taskselect f-14 custom-taskborder brown-grey" id="activities">
										<option>Filter by Activities</option>
										<option>Default select</option>
									</select> 
	
									<button class=" btn custom-taskbutton custom-taskborder d-flex justify-content-center align-items-center mr-3">
										<i class="fas fa-filter f-14 brown-grey"></i>
									</button>
								
							</div>
						</div>
						<div class="row">
						<%for(int i=0;i<12;i++){ %>
							<div class="col-md-3 d-flex align-items-center col_bordering" style="min-height:200px;">
								<div class="row  w-100">
								<div class="col-md-6 p-0 m-0 text-center">
								<div><div class=" f-42" > 04</div>
								<div class="greyish-brown f-14 font-weight-bold"> Not asking for next steps</div>
								</div>
								</div>
								<div class="col-md-6  p-0 m-0 text-center">
								<img src="<%=baseURL%>assets/image/Group 3614.svg" width="76" height="76"/ >
								</div>
								</div>
								
								
							</div>
						<%} %>
						</div>
						
						
						</div>
						
						
						
					<div class="tab-pane fade" id="users" role="tabpanel"
						aria-labelledby="users-tab">
						
						<div class="row bg-white bottom-separation-solid py-3">
			<div class="col-md-6 col-12 brown-grey align-self-center">
				<strong class="greyish-brown">25</strong> &nbsp; Results Found
			</div>
			<div class="col-md-6 col-12 d-lg-flex justify-content-lg-end">
				<div class="input-group date custom-taskborder mr-2 custom-taskselect">
					<input type="text" id="pipeline_datepicker" class="form-control border-0  f-14 custom-dateselect" value="12-02-2012">
					<div class="input-group-addon" onclick="showCalendar()">
						<img src="http://localhost:8081/salesken_v2//assets/image/calendar.svg" class="pr-1">
					</div>
				</div>
				<select class="form-control mr-2 custom-taskselect f-14 custom-taskborder" id="activities">
					<option>Filter by Activities</option>
					<option>Default select</option>
				</select> <select class="form-control mr-2 custom-taskselect f-14 custom-taskborder" id="deal_value">
					<option>Filter by Deal Value</option>
					<option>Default select</option>
				</select> <select class="form-control mr-2 custom-taskselect f-14 custom-taskborder" id="stages">
					<option>Filter by Stages</option>
					<option>Default select</option>
				</select>
				<button class="btn custom-taskbutton custom-taskborder d-flex justify-content-center align-items-center">
					<i class="fas fa-filter f-14 "></i>
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
		      				<div class="f-24 font-weight-bold blue-black">85% </div>
		      				<div class="f-14 brown-grey">Confident</div>
		      			</div>
		      			<div class="col-md-2 col-4">
		      				<div class="f-24 font-weight-bold blue-black">65%</div>
		      				<div class="f-14 brown-grey">Tentative </div>
		      			</div>
		      			<div class="col-md-6 col-12">
		      				<div class="d-flex">
		      					<div class="col-md-6">
		      						<div class="f-14 font-weight-bold black mb-1">Strong Playbook</div>
		      						<div class="f-14 brownish-grey">Objection,  Qualification <i class="fas fa-info-circle soft-blue"></i></div>
		      					</div>
		      					<div class="col-md-6">
		      						<div class="f-14 font-weight-bold black mb-1">Weak Playbook</div>
		      						<div class="f-14 brownish-grey">Need Investigation <i class="fas fa-info-circle soft-blue"></i></div>
		      					</div>
		      				</div>
		      			</div>
		      		</div>
		    <div class="row align-items-center bottom-separation-solid py-4">
		      			<div class="col-md-2 col p-0">
		      				<button class="btn p-0 black f-14 font-weight-bold">
		      					Agent Name	<i class="fas fa-sort brown-grey ml-2"></i>
		      				</button>
		      			</div>
		      			<div class="col-md-2 col p-0">
		      				<button class="btn p-0 black f-14 font-weight-bold">
		      					Achieved & Pipeline Value	<i class="fas fa-sort brown-grey ml-2"></i>
		      				</button>
		      			</div>
		      			<div class="col-md-2 col p-0">
		      				<button class="btn p-0 black f-14 font-weight-bold">
		      					Won & Lost Leads	<i class="fas fa-sort brown-grey ml-2"></i>
		      				</button>
		      			</div>
						<div class="col-md-2 col justify-content-lg-start p-0">
							<button class="btn p-0 black f-14 font-weight-bold">
								Week <i class="fas fa-sort brown-grey ml-2"></i>
							</button>
						</div>
						
						<div class="col-md-2 col justify-content-lg-start p-0">
							<button class="btn p-0 black f-14 font-weight-bold">
								Strong <i class="fas fa-sort brown-grey ml-2"></i>
							</button>
						</div>
						</div>
						
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
		
		
		
						
						</div>
					<div class="tab-pane fade" id="customer" role="tabpanel"
						aria-labelledby="customer-tab">

						<div class="row bg-white bottom-separation-solid py-3">
							<div class="col-md-12 col-12 brown-grey align-self-center">
								<strong class="greyish-brown">25</strong> &nbsp; Results Found
							</div>
						</div>
						<hr class="p-0 m-0">

						<div class="row  border-bottom-dashed-separation mr-md-2">
						
							<%for(int i=0;i<4;i++){ %>
							<div class="col-md-3 col_bordering p-0 m-0 d-md-flex align-items-center" style="min-height:200px;">
							<div class=" w-100 d-flex">
								<div class="col-md-6 p-0 m-0 text-center	">
								<div><div class=" f-42"> 05</div>
								<div class="greyish-brown f-14 font-weight-bold">Objection</div>
								</div>
								</div>
								<div class="col-md-6  p-0 m-0  ">
								<img src="http://localhost:8081/salesken_v2/assets/image/Group 3614.svg" width="93.8" height="87.2">
								</div>
								</div>
							</div>
							<%} %>
							
						</div>

					</div>



















					<div class="tab-pane fade" id="time_analysis" role="tabpanel"
						aria-labelledby="time_analysis-tab">...time_analysis</div>
				</div>
			</div>
		</div>
	
	
	</div>
	</main>


	<script src="<%=baseURL%>assets/js/jquery-3.4.1.min.js"></script>
	<script type="text/javascript" src="http://botmonster.com/jquery-bootpag/jquery.bootpag.js"></script>
	
	<script src="<%=baseURL%>assets/js/popper.min.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap.min.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap-datepicker.min.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap-datepicker.min.js"></script>
	<script src="<%=baseURL%>assets/js/highcharts.js"></script>
	<script src="<%=baseURL%>assets/js/exporting.js"></script>
	<script src="<%=baseURL%>assets/js/pagination.min.js"></script>
	
	<script>
	$( document ).ready(function() {
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