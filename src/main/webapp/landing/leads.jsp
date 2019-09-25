<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
<title>Salesken - Leads</title>
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
<link rel="stylesheet" href="<%=baseURL%>assets/css/leads.css">

</head>
<body>
	<jsp:include page="../navbar/nav.jsp"></jsp:include>
	<main role="main">
	<div class="container-fluid salesken_container">
		<div class="row grey-white-bg bottom-separation-solid align-items-center py-3">
			<div class="col-md-6 col-12 d-flex align-items-center mb-4 mb-md-0">
				<div class="display-1 black f-20 border-right-separation pr-3 ">Leads</div>
				<div class="pl-3 pr-2 f-12 brown-grey ">Dashboard</div>
				<i class="fas fa-chevron-circle-right pr-2 f-12 brown-grey"></i>
				<div class=" f-12 brown-grey">Leads	</div>

			</div>
			<div class="col-md-6 col-12 d-lg-flex justify-content-md-end">
				<div class="input-group  pl-2 pr-2 search_width">
					<input id=""
						class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
					<div class="input-group-append">
						<button
							class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center"
							type="button" style="">
							<i class="fa fa-search f-12 brown-grey"></i>
						</button>
					</div>
				</div>
				<button class="btn btn-style f-12">UPLOAD NEW</button>
			</div>
		</div>
		
		
		<div class="row">
			<div class="col-md-12 bg-white">
				<nav>
				  <div class="nav nav-tabs nav-mytabs pt-2" id="nav-tab" role="tablist">
				    <a class="nav-item nav-link active" id="nav-target-tab" data-toggle="tab" href="#nav-target" role="tab" aria-controls="nav-target" aria-selected="true">Target</a>
				    <a class="nav-item nav-link" id="nav-qualified-tab" data-toggle="tab" href="#nav-qualified" role="tab" aria-controls="nav-qualified" aria-selected="false">Qualified</a>
				    <a class="nav-item nav-link" id="nav-lost-tab" data-toggle="tab" href="#nav-lost" role="tab" aria-controls="nav-lost" aria-selected="false">Lost Leads</a>
				  	<a class="nav-item nav-link" id="nav-win-tab" data-toggle="tab" href="#nav-win" role="tab" aria-controls="nav-win" aria-selected="false">Won Leads</a>
				  </div>
				</nav>
				<div class="tab-content p-0 mytab-content" id="nav-tabContent">
				  <div class="tab-pane fade show active" id="nav-target" role="tabpanel" aria-labelledby="nav-target-tab">
				  		<!-- start of target content -->
				  		
				  		<div class="row align-items-center  border-bottom-separation py-3">
							<div class="col-md-3 f-16 brown-grey">
								<strong class="greyish-brown mr-2">500</strong> Results Found
							</div>
							<div class="col-md-9 d-md-flex justify-content-end  ">
								 <select
										class=" form-control mr-2 custom-taskselect f-14 custom-taskborder brown-grey"
										id="source">
										<option>Filter by Source type</option>
										<option>Default select</option>
									</select> 
									<div class="dropdown">
										<button
											class="mr-2 custom-taskselect f-14 custom-taskborder brown-grey"
											id="activity">
											
										</button>
									</div>
									<button
										class=" btn custom-taskbutton custom-taskborder d-flex justify-content-center align-items-center">
										<i class="fas fa-filter f-14 brown-grey"></i>
									</button>
								
							</div>
						</div>
						
						<div class="row pl-2 py-4 shadow-bottom">
							<div class="col-md-2">
								<div class="f-24 blue-black font-weight-bold">280</div>
								<div class="f-14 brown-grey font-weight-bold">New Leads</div>
							</div>
							<div class="col-md-2">
								<div class="f-24 blue-black font-weight-bold">156</div>
								<div class="f-14 brown-grey font-weight-bold">Engaged lead</div>
							</div>
							<div class="col-md-2">
								<div class="f-24 blue-black font-weight-bold">30 Hrs</div>
								<div class="f-14 brown-grey font-weight-bold">Average time spent</div>
							</div>
						</div>

						<div class="row align-items-center bottom-separation-solid py-4">
							<div class="col-md-2 col">
								<button class="btn p-0 black f-14 font-weight-bold">
									Company Name <i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
							<div class="col-md-2 col">
								<button class="btn p-0 black f-14 font-weight-bold">
									Email ID <i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
							<div class="col-md-2 col">
								<button class="btn p-0 black f-14 font-weight-bold">
									Contact No. <i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
							<div class="col-md-2 col ">
								<button class="btn p-0 black f-14 font-weight-bold">
									Lead Source <i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
							<div class="col-md-4 col-12 ">
								<button class="btn p-0 black f-14 font-weight-bold">
									Agent<i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
						</div>

						<%for(int i=0;i<5;i++){ 
							String bgcolor="bg-white";
			      			if(i%2!=0){
			      				bgcolor="very-light-pink-grey-bg";
			      			}
						%>
						<div class="row align-items-center bottom-separation-solid py-4 <%=bgcolor%>">
							<div class="col-md-2 col">
								<div class="f-14 font-weight-bold black">Vehement Capital Partners</div>
								<div class="f-14 brownish-grey">Miriam Franklin</div>
							</div>
							<div class="col-md-2 col">
								<div class="f-14 brownish-grey">infotech@gmail.com
									<i class="fas fa-info-circle soft-blue"></i>
								</div>
							</div>
							<div class="col-md-2 col">
								<div class="f-14 brownish-grey">+91 445 546 6456
									<i class="fas fa-info-circle soft-blue"></i>
								</div>
							</div>
							<div class="col-md-2 col ">
								<div class="f-14 brownish-grey">Web Form</div>
							</div>
							<div class="col-md-4 col-12 ">
								<div class="row  align-items-center">
									<div class="col-md-11">
										<div class="d-flex">
											<img class="rounded-circle imgsize-40" src="<%=baseURL%>assets/image/11.png">
											<div class="ml-3">
												<div class="f-14 greyish-brown">Stanley Howard</div>
												<div class="f-12 brown-grey">Team 01</div>
											</div>
										</div>
									</div>
									<div class="col-md-1">
										<i class="fas fa-ellipsis-v f-12 brown-grey"></i>
									</div>
								</div>
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
					
						<!-- end of target content -->				  
				  </div>
				  
				  <div class="tab-pane fade" id="nav-qualified" role="tabpanel" aria-labelledby="nav-qualified-tab">
				  
				  	<!-- start of qualified tab content-->
				  	
				  		<div class="row align-items-center  border-bottom-separation py-3">
							<div class="col-md-3 f-16 brown-grey">
								<strong class="greyish-brown mr-2">500</strong> Results Found
							</div>
							<div class="col-md-9 d-md-flex justify-content-end  ">
								<div class="input-group date custom-taskborder mr-2 custom-taskselect ">
									<input type="text" id="pipeline_datepicker" class="form-control border-0  f-14 custom-dateselect" value="12-02-2012">
									<div class="input-group-addon" onclick="showCalendar()">
										<img
											src="http://localhost:8080/salesken_v2//assets/image/calendar.svg" class="pr-1">
									</div>
								</div>

									<select
										class="form-control mr-2 custom-taskselect f-14 custom-taskborder brown-grey" id="deal_value">
										<option>Filter by Deal Value</option>
										<option>Default select</option>
									</select> 
									
									<select
										class=" form-control mr-2 custom-taskselect f-14 custom-taskborder brown-grey"
										id="stage">
										<option>Filter by Stages</option>
										<option>Default select</option>
									</select>
									
									<select
										class=" form-control mr-2 custom-taskselect f-14 custom-taskborder brown-grey"
										id="source">
										<option>Filter by Source type</option>
										<option>Default select</option>
									</select> 
	
									<button
										class=" btn custom-taskbutton custom-taskborder d-flex justify-content-center align-items-center">
										<i class="fas fa-filter f-14 brown-grey"></i>
									</button>
								
							</div>
						</div>
						
						<div class="row pl-2 py-4 shadow-bottom">
							<div class="col-md-2">
								<div class="f-24 blue-black font-weight-bold">120</div>
								<div class="f-14 brown-grey font-weight-bold">New Leads</div>
							</div>
							<div class="col-md-2">
								<div class="f-24 blue-black font-weight-bold">56</div>
								<div class="f-14 brown-grey font-weight-bold">Engaged lead</div>
							</div>
							<div class="col-md-2">
								<div class="f-24 blue-black font-weight-bold">25 Hrs</div>
								<div class="f-14 brown-grey font-weight-bold">Average time spent</div>
							</div>
							<div class="col-md-2">
								<div class="f-24 blue-black font-weight-bold">$ 8562</div>
								<div class="f-14 brown-grey font-weight-bold">Deal Value </div>
							</div>
						</div>

						<div class="row align-items-center bottom-separation-solid py-4">
							<div class="col-md-2 col">
								<button class="btn p-0 black f-14 font-weight-bold">
									Company Name <i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
							<div class="col-md-2 col">
								<button class="btn p-0 black f-14 font-weight-bold">
									Email ID <i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
							<div class="col-md-2 col">
								<button class="btn p-0 black f-14 font-weight-bold">
									Contact No. <i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
							<div class="col-md-2 col ">
								<button class="btn p-0 black f-14 font-weight-bold">
									Recent Task <i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
							<div class="col-md-4 col-12 ">
								<button class="btn p-0 black f-14 font-weight-bold">
									Agent<i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
						</div>
				  		
				  		<%for(int i=0;i<5;i++){ 
				  		String bgcolor="bg-white";
		      			if(i%2!=0){
		      				bgcolor="very-light-pink-grey-bg";
		      			}%>
						<div class="row align-items-center bottom-separation-solid py-4  <%=bgcolor%>">
							<div class="col-md-2 col">
								<div class="f-14 font-weight-bold black">Zencorporation Pot. Ltd.</div>
								<div class="f-14 brownish-grey">Miriam Franklin</div>
							</div>
							<div class="col-md-2 col">
								<div class="f-14 brownish-grey">infotech@gmail.com
									<i class="fas fa-info-circle soft-blue"></i>
								</div>
							</div>
							<div class="col-md-2 col">
								<div class="f-14 brownish-grey">+91 445 546 6456
									<i class="fas fa-info-circle soft-blue"></i>
								</div>
							</div>
							<div class="col-md-2 col d-flex align-items-center">
								<img class="hw-24 pr-2" src="<%=baseURL%>assets/image/calltask.svg">
								<div class="f-14 greyish-brown pr-2">Call - </div>
								<div class="f-12 brown-grey">June 15, 2019   02:45 PM</div>
							</div>
							<div class="col-md-4 col-12 ">
								<div class="row  align-items-center">
									<div class="col-md-11">
										<div class="d-flex">
											<img class="rounded-circle imgsize-40" src="<%=baseURL%>assets/image/11.png">
											<div class="ml-3">
												<div class="f-14 greyish-brown">Stanley Howard</div>
												<div class="f-12 brown-grey">Pipeline - New Sales Pipeline</div>
											</div>
										</div>
									</div>
									<div class="col-md-1">
										<div class="istar-dropdown dropleft">
											<button class="dropdown-icon-btn " type="button" id="dropdownMenuButton"
		                                            data-display="static" data-toggle="dropdown" aria-haspopup="true"
		                                            aria-expanded="false">
												<i class="fas fa-ellipsis-v f-12 brown-grey"></i>
											</button>
											<div class="dropdown-menu dropdown-menu-right istar-dropdown-menu"
	                                            aria-labelledby="dropdownMenuButton">
	                                            <button class="dropdown-item" href="#"><img src="<%=baseURL%>assets/image/won.svg" alt=""
	                                                    srcset="" class="mr-2"> Won</button>
	                                            <button class="dropdown-item" href="#"><img src="<%=baseURL%>assets/image/lost.svg"
	                                                    alt="" srcset="" class="mr-2">Lose</button>
	                                            <button class="dropdown-item" href="#"><img src="<%=baseURL%>assets/image/edit.svg" alt=""
	                                                    srcset="" class="mr-2">Edit</button>
	                                            <button class="dropdown-item" href="#"><img src="<%=baseURL%>assets/image/delete.svg"
	                                                    alt="" srcset="" class="mr-2">Delete</button>
	                                            <button class="dropdown-item" href="#"><img src="<%=baseURL%>assets/image/details.png"
	                                                    alt="" srcset="" class="mr-2">Details</button>
	                                        </div>
	                                    </div>
									</div>
								</div>
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
				  	<!-- end of qualified tab content -->
				  
				  </div>
				  <div class="tab-pane fade" id="nav-lost" role="tabpanel" aria-labelledby="nav-lost-tab">
				  
				  	<!-- start of lost leads tab content-->
				  	
				  		<div class="row align-items-center  border-bottom-separation py-3">
							<div class="col-md-3 f-16 brown-grey">
								<strong class="greyish-brown mr-2">500</strong> Results Found
							</div>
							<div class="col-md-9 d-md-flex justify-content-end  ">
								<div class="input-group date custom-taskborder mr-2 custom-taskselect ">
									<input type="text" id="pipeline_datepicker" class="form-control border-0  f-14 custom-dateselect" value="12-02-2012">
									<div class="input-group-addon" onclick="showCalendar()">
										<img
											src="http://localhost:8080/salesken_v2//assets/image/calendar.svg" class="pr-1">
									</div>
								</div>
								
									<select
										class="form-control mr-2 custom-taskselect f-14 custom-taskborder brown-grey" id="causes">
										<option>Filter by Causes</option>
										<option>Default select</option>
									</select> 

									<select
										class="form-control mr-2 custom-taskselect f-14 custom-taskborder brown-grey" id="deal_value">
										<option>Filter by Deal Value</option>
										<option>Default select</option>
									</select> 
									
									<select
										class=" form-control mr-2 custom-taskselect f-14 custom-taskborder brown-grey"
										id="stage">
										<option>Filter by Stages</option>
										<option>Default select</option>
									</select>
									
									<select
										class=" form-control mr-2 custom-taskselect f-14 custom-taskborder brown-grey"
										id="source">
										<option>Filter by Source type</option>
										<option>Default select</option>
									</select> 
	
									<button
										class=" btn custom-taskbutton custom-taskborder d-flex justify-content-center align-items-center">
										<i class="fas fa-filter f-14 brown-grey"></i>
									</button>
								
							</div>
						</div>
						
						<div class="row pl-2 py-4 shadow-bottom">
						
							<div class="col-md-2">
								<div class="f-24 blue-black font-weight-bold">$ 8562</div>
								<div class="f-14 brown-grey font-weight-bold">Deal Value </div>
							</div>
							
							<div class="col-md-2">
								<div class="f-24 blue-black font-weight-bold">25 Hrs</div>
								<div class="f-14 brown-grey font-weight-bold">Average time spent</div>
							</div>
							
							<div class="col-md-2">
								<div class="f-24 blue-black font-weight-bold">40%</div>
								<div class="f-14 brown-grey font-weight-bold">Percentage of loss </div>
							</div>
							
							
							
						</div>

						<div class="row align-items-center bottom-separation-solid py-4">
							<div class="col-md-2 col">
								<button class="btn p-0 black f-14 font-weight-bold">
									Company Name <i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
							<div class="col-md-2 col">
								<button class="btn p-0 black f-14 font-weight-bold">
									Email ID <i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
							<div class="col-md-2 col">
								<button class="btn p-0 black f-14 font-weight-bold">
									Contact No. <i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
							<div class="col-md-3 col ">
								<button class="btn p-0 black f-14 font-weight-bold">
									Recent Task <i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
							<div class="col-md-3 col-12 ">
								<button class="btn p-0 black f-14 font-weight-bold">
									Agent<i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
						</div>
				  		
				  		<%for(int i=0;i<5;i++){ 
				  		String bgcolor="bg-white";
		      			if(i%2!=0){
		      				bgcolor="very-light-pink-grey-bg";
		      			}%>
						<div class="row align-items-center bottom-separation-solid py-4  <%=bgcolor%>">
							<div class="col-md-2 col">
								<div class="f-14 font-weight-bold black">Vehement Capital Partners.</div>
								<div class="f-14 brownish-grey">Miriam Franklin</div>
							</div>
							<div class="col-md-2 col">
								<div class="f-14 brownish-grey">infotech@gmail.com
									<i class="fas fa-info-circle soft-blue"></i>
								</div>
							</div>
							<div class="col-md-2 col">
								<div class="f-14 brownish-grey">+91 445 546 6456
									<i class="fas fa-info-circle soft-blue"></i>
								</div>
							</div>
							<div class="col-md-2 col d-flex align-items-center">
								<img class="hw-24 pr-2" src="<%=baseURL%>assets/image/calltask.svg">
								<div class="f-14 greyish-brown pr-2">Call - </div>
								<div class="f-12 brown-grey">June 15, 2019   02:45 PM</div>
							</div>
							<div class="col-md-4 col-12 ">
								<div class="row  align-items-center">
									<div class="col-md-11">
										<div class="d-flex">
											<img class="rounded-circle imgsize-40" src="<%=baseURL%>assets/image/11.png">
											<div class="ml-3">
												<div class="f-14 greyish-brown">Stanley Howard</div>
												<div class="f-12 brown-grey">Pipeline - New Sales Pipeline</div>
											</div>
										</div>
									</div>
									<div class="col-md-1">
										<button class="btn" type="button" id="dropdownMenuButton" data-display="static" 
												data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
											<i class="fas fa-ellipsis-v f-12 brown-grey"></i>
										</button>
										
									</div>
								</div>
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
				  	
				  	<!-- end of lost leads tab content -->
				  
				  </div>
				  <div class="tab-pane fade" id="nav-win" role="tabpanel" aria-labelledby="nav-win-tab">
				  	
				  	<!-- start of won leads content -->
				  		
				  				<div class="row align-items-center  border-bottom-separation py-3">
							<div class="col-md-3 f-16 brown-grey">
								<strong class="greyish-brown mr-2">500</strong> Results Found
							</div>
							<div class="col-md-9 d-md-flex justify-content-end  ">
								<div class="input-group date custom-taskborder mr-2 custom-taskselect ">
									<input type="text" id="pipeline_datepicker" class="form-control border-0  f-14 custom-dateselect" value="12-02-2012">
									<div class="input-group-addon" onclick="showCalendar()">
										<img
											src="http://localhost:8080/salesken_v2//assets/image/calendar.svg" class="pr-1">
									</div>
								</div>
								
									<select
										class="form-control mr-2 custom-taskselect f-14 custom-taskborder brown-grey" id="causes">
										<option>Filter by Causes</option>
										<option>Default select</option>
									</select> 

									<select
										class="form-control mr-2 custom-taskselect f-14 custom-taskborder brown-grey" id="deal_value">
										<option>Filter by Deal Value</option>
										<option>Default select</option>
									</select> 
									
									<select
										class=" form-control mr-2 custom-taskselect f-14 custom-taskborder brown-grey"
										id="stage">
										<option>Filter by Stages</option>
										<option>Default select</option>
									</select>
									
									<select
										class=" form-control mr-2 custom-taskselect f-14 custom-taskborder brown-grey"
										id="source">
										<option>Filter by Source type</option>
										<option>Default select</option>
									</select> 
	
									<button
										class=" btn custom-taskbutton custom-taskborder d-flex justify-content-center align-items-center">
										<i class="fas fa-filter f-14 brown-grey"></i>
									</button>
								
							</div>
						</div>
						
						<div class="row pl-2 py-4 shadow-bottom">
						
							<div class="col-md-2">
								<div class="f-24 blue-black font-weight-bold">$ 2345</div>
								<div class="f-14 brown-grey font-weight-bold">Deal Value </div>
							</div>
							
							<div class="col-md-2">
								<div class="f-24 blue-black font-weight-bold">45 Hrs</div>
								<div class="f-14 brown-grey font-weight-bold">Average time spent</div>
							</div>
							
							<div class="col-md-2">
								<div class="f-24 blue-black font-weight-bold">34%</div>
								<div class="f-14 brown-grey font-weight-bold">Percentage of Won </div>
							</div>
							
							
							
						</div>

						<div class="row align-items-center bottom-separation-solid py-4">
							<div class="col-md-2 col">
								<button class="btn p-0 black f-14 font-weight-bold">
									Company Name <i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
							<div class="col-md-2 col">
								<button class="btn p-0 black f-14 font-weight-bold">
									Email ID <i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
							<div class="col-md-2 col">
								<button class="btn p-0 black f-14 font-weight-bold">
									Contact No. <i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
							<div class="col-md-3 col ">
								<button class="btn p-0 black f-14 font-weight-bold">
									Recent Task <i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
							<div class="col-md-3 col-12 ">
								<button class="btn p-0 black f-14 font-weight-bold">
									Agent<i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
						</div>
				  		
				  		<%for(int i=0;i<5;i++){ 
				  		String bgcolor="bg-white";
		      			if(i%2!=0){
		      				bgcolor="very-light-pink-grey-bg";
		      			}%>
						<div class="row align-items-center bottom-separation-solid py-4  <%=bgcolor%>">
							<div class="col-md-2 col">
								<div class="f-14 font-weight-bold black">Vehement Capital Partners.</div>
								<div class="f-14 brownish-grey">Miriam Franklin</div>
							</div>
							<div class="col-md-2 col">
								<div class="f-14 brownish-grey">infotech@gmail.com
									<i class="fas fa-info-circle soft-blue"></i>
								</div>
							</div>
							<div class="col-md-2 col">
								<div class="f-14 brownish-grey">+91 445 546 6456
									<i class="fas fa-info-circle soft-blue"></i>
								</div>
							</div>
							<div class="col-md-3 col d-flex align-items-center">
								<img class="hw-24 pr-2" src="<%=baseURL%>assets/image/calltask.svg">
								<div class="f-14 greyish-brown pr-2">Call - </div>
								<div class="f-12 brown-grey">June 15, 2019   02:45 PM</div>
							</div>
							<div class="col-md-3 col-12 ">
								<div class="row  align-items-center">
									<div class="col-md-11">
										<div class="d-flex">
											<img class="rounded-circle imgsize-40" src="<%=baseURL%>assets/image/11.png">
											<div class="ml-3">
												<div class="f-14 greyish-brown">Stanley Howard</div>
												<div class="f-12 brown-grey">Pipeline - New Sales Pipeline</div>
											</div>
										</div>
									</div>
									<div class="col-md-1">
										<button class="dropdown-icon-btn dropleft" type="button" id="dropdownMenuButton"
	                                            data-display="static" data-toggle="dropdown" aria-haspopup="true"
	                                            aria-expanded="false">
											<i class="fas fa-ellipsis-v f-12 brown-grey"></i>
										</button>
										<div class="dropdown-menu dropdown-menu-right istar-dropdown-menu"
                                            aria-labelledby="dropdownMenuButton">
                                            <button class="dropdown-item" href="#"><img src="<%=baseURL%>assets/image/won.svg" alt=""
                                                    srcset="" class="mr-2"> Won</button>
                                            <button class="dropdown-item" href="#"><img src="<%=baseURL%>assets/image/lost.svg"
                                                    alt="" srcset="" class="mr-2">Lose</button>
                                            <button class="dropdown-item" href="#"><img src="<%=baseURL%>assets/image/edit.svg" alt=""
                                                    srcset="" class="mr-2">Edit</button>
                                            <button class="dropdown-item" href="#"><img src="<%=baseURL%>assets/image/delete.svg"
                                                    alt="" srcset="" class="mr-2">Delete</button>
                                            <button class="dropdown-item" href="#"><img src="<%=baseURL%>assets/image/details.png"
                                                    alt="" srcset="" class="mr-2">Details</button>
                                        </div>
										
									</div>
								</div>
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
				  		
				  	<!-- end of won leads content -->
				  
				  </div>
				</div>
				
			</div>
		</div>
		
		
	</div>
	</main>
	<script src="<%=baseURL%>assets/js/jquery-3.4.1.min.js"></script>
	<script src="<%=baseURL%>assets/js/popper.min.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap.min.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap-datepicker.min.js"></script>
		<script src="<%=baseURL%>assets/js/pagination.min.js"></script>
		<script>
	$( document ).ready(function() {
		$('.salesken.navbar-nav>li').removeClass('active');
		$($('.salesken.navbar-nav>li')[4]).addClass('active')
		$('.page').Pagination({ // id to initial draw and use pagination
            size: 87, // size of list input
            pageShow: 5, // 5 page-item per page
            page: 1, // current page (default)
            limit: 10, // current limit show perpage (default)
    	}, function(obj){ // callback function, you can use it to re-draw table or something
            	console.log(obj)
    	});
		$('#pipeline_datepicker').datepicker({autoclose:true});
		
		function showCalendar(){
			$('#pipeline_datepicker').datepicker('show')
		}
		
	});
	
	</script>
</body>
</html>