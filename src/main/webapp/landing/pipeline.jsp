<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
<title>Salesken - Pipeline</title>
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
<link rel="stylesheet" href="<%=baseURL%>assets/css/pipeline.css">
<link href="<%=baseURL%>assets/css/bootstrap-select.min.css" rel="stylesheet">
<link rel="stylesheet" href="<%=baseURL%>assets/css/salesken_style_media_query.css">

</head>
<body data-base-url="<%=baseURL%>">

<!-- start of circular progress bar for page loading -->
	<div class="salesken_progress h-100 w-100 " style="display:none">
		<div
			class="d-flex align-items-center justify-content-center  h-100 w-100">
			<div class="spinner-border text-danger" role="status">
				<span class="sr-only">Loading...</span>
			</div>
		</div>
	</div>
	<!-- end of circular progress bar for page loading -->
	<jsp:include page="../navbar/nav.jsp"></jsp:include>

	<main role="main">
	<div class="container-fluid salesken_container">
		<div class="row grey-white-bg theme_solid_border_bottom align-items-center  m-0 pl-40 pr-40 pt-10 pb-10">
			<div class="col-md-6 col-12 d-flex align-items-center p-0 ">
				
				<div class="dropdown">
									<div class="display-1 black f-20 border-right-separation fw-500 pr-20 dropdown-toggle"id="pipeline_select" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										<img src="<%=baseURL%>assets/image/dropdown-right-black.svg" alt="call"
												class=" float-right">Pipeline</div>
									<div
										class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="pipeline_select">
										<button class="dropdown-item" type="button">
											 Pipeline 1
										</button>
										<button class="dropdown-item" type="button">
											Pipeline 2
										</button>
									</div>
								</div>
				<div class=" f-12 brown-grey pl-20">Dashboard</div>
				<i class="fas fa-chevron-circle-right f-12 brown-grey pl-2 pr-2"></i>
				<div class=" f-12 brown-grey fw-500">Pipeline</div>

			</div>
			<div class="col-md-6 col-12 d-lg-flex justify-content-md-end p-0 ">
				<div class="input-group position-relative search_width">
				<i class="fa fa-search f-12 brown-grey searchBox" ></i>
					<input id=""
						class="form-control  custom-taskborder brown-grey f-14 search_height custom-result-selects"
						type="search" placeholder="Search"
						style="padding-right:30px">
				</div>
				
			</div>
		</div>

		
			<div class="row align-items-center bg-white theme_solid_border_bottom m-0  pl-40 pt-15 pb-15 pr-40">
							<div class="col-md-3 text-result-found p-0">
								<strong class="number-of-results">04</strong> Results Found
							</div>
							<div class="col-md-9 d-md-flex justify-content-end p-0 ">
									<div class="input-group date custom-calendar">
										<input type="text" id="pipeline_datepicker" class="form-control  custom-dateselect"
											value="12-02-2012">
										<div class="input-group-addon" onclick="showCalendar()">
											<img src ="<%=baseURL%>/assets/image/calendar.svg"  alt="calendar" class="pr-1">
										</div>
									</div>	
									<div class="istar-dropdown-task select_focus mr-10">
									<button class="istar-dropdown-arrow dropdown-toggle"
										id="pipeline_deal_value" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										<span class="sr-only">Toggle Dropdown</span>Filter by Deal Value
										<img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
												class=" float-right">
									</button>
									<div
										class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="pipeline_deal_value">
										<button class="dropdown-item" type="button">
											 $1000
										</button>
										<button class="dropdown-item" type="button">
											 $5000
										</button>
									</div>
								</div>
								
									<div class="istar-dropdown-task select_focus mr-10">
									<button class="istar-dropdown-arrow dropdown-toggle"
										id="pipeline_status" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										<span class="sr-only">Toggle Dropdown</span>Filter by Stages
										<img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
												class=" float-right">
									</button>
									<div
										class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="pipeline_status">
										<button class="dropdown-item" type="button">
											 Won
										</button>
										<button class="dropdown-item" type="button">
											Lost
										</button>
									</div>
								</div>
	
									
									<div class="istar-dropdown-task dropdown dropleft" id="filterbutton">
										<button class="istar-dropdown-arrow "
										id="activity" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										<span class="sr-only">Toggle Dropdown</span> Filter by User <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
												class=" float-right">
										</button>
										 <div class="dropdown-menu filter-menu dropdown-menu-lg-right position-absolute px-4" aria-labelledby="activity" style="width:350px">
													
												<ul class="nav nav-tabs nav-mytabs filtertabs pt-2 d-flex align-items-end" id="myTab" role="tablist">
												  <li class="nav-item">
												    <a class="nav-link active" id="individual-tab" data-toggle="tab" href="#individual" role="tab" aria-controls="individual" aria-selected="true">Individual</a>
												  </li>
												  <li class="nav-item">
												    <a class="nav-link" id="team-tab" data-toggle="tab" href="#team" role="tab" aria-controls="team" aria-selected="false">Team</a>
												  </li>
												 
												</ul>
												<div class="tab-content" id="myTabContent">
												  <div class="tab-pane fade show active px-4 py-3" id="individual" role="tabpanel" aria-labelledby="individual-tab">
												  		<div class="input-group py-2">
															<input id="individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
															<div class="input-group-append">
																<button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
																	<i class="fa fa-search f-12 brown-grey"></i>
																</button>
															</div>
														</div>
														
														<div class=" mb-2"  style="height:370px; overflow-x: hidden; overflow-y:auto;">
														
														<%for(int i=0; i<20;i++){ %>
					                                    <div class="d-flex align-items-center pt-3">
					                                    
					                                    
									<input class="istar-checkbox agentcheckbox" data-id="<%=i %>" id="associate-checkbox<%=i %>" type="checkbox">
					                                        <label class="istar-checkbox-style" for="associate-checkbox<%=i %>"></label>
											<img alt="user-img" src ="<%=baseURL%>/assets/image/11.png" class="rounded-circle ml-3 mr-2 hw-40">
										  <div>
					                                        	<div class="f-14 font-weight-bold greyish-brown text-truncate" title="Robert Garcia">Robert Garcia</div>
					                                        	<div class="f-12  brownish-grey text-truncate" title="team">Team -02</div>
					                                        </div>
										</div>
										<%} %>
					                                    </div>
					                                    
					                                     		
					                                 </div>
					                                			                                 
												  <div class="tab-pane fade px-4 py-3" id="team" role="tabpanel" aria-labelledby="team-tab">
												  		
												  		<div class="input-group py-2">
															<input id="individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
															<div class="input-group-append">
																<button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
																	<i class="fa fa-search f-12 brown-grey"></i>
																</button>
															</div>
														</div>
														
														<div class="mb-2" style="height:370px; overflow-x: hidden; overflow-y:auto;">
														<%for(int j=0; j<20;j++){ %>
														<div class="d-flex align-items-center pt-3">
					                                        <input class="istar-checkbox teamcheckbox" data-id="<%=j %>" id="team-checkbox<%=j %>" type="checkbox">
					                                        <label class="istar-checkbox-style" for="team-checkbox<%=j%>"></label>
					                                        <div class="f-12 ml-2 brownish-grey">Team -0<%=j%></div>
					                                    </div>
					                                    <%} %>
					                                    </div>
					                                    
					                                     	
												  		
												  </div>
												</div>
												 <div class="w-100 text-center">
												 <button class="btn  rounded-0 theme_bg text-white f-14 font-weight-bold agentteamsubmit mb-3 text-center px-3" style="min-width:200px;">Submit</button>
												</div>
										  </div>
										
									</div> 
								
							</div>
						</div>
		
		<div class="row very-light-pink-grey-bg m-0" >
		  <div class="col-md-2 col-12 p-0 tabcol flex-grow-1 border-right">
		    <div class="nav flex-column nav-pills h-100 pl-40" id="piplelinestage-tab" role="tablist" aria-orientation="vertical">
		    <%for(int i =0;i<5;i++){ 
		    	String isactive = "";
				if (i == 0) {
					isactive = "active";
				}
		    %>
		      <a class="nav-link pt-15 pb-15 pl-20 pr-20 <%=isactive %> text-truncate" title="Stage 01" id="stage-<%=i%>-tab" data-toggle="pill" href="#stage-<%=i%>" role="tab" aria-controls="stage-<%=i%>" aria-selected="true">Stage 0<%=i+1	%></a>
		     <%} %>
		     </div>
		  </div>
		  <div class="col-md-10 col-12 p-0 bg-white tabcontentcol">
		    <div class="tab-content" id="piplelinestage-tabContent">
		    <%for(int i =0;i<5;i++){ 
		    	String isactive = "";
				if (i == 0) {
					isactive = "active";
				}
		    %>
		      <div class="tab-pane fade show p-0 <%=isactive %>" id="stage-<%=i%>" role="tabpanel" aria-labelledby="stage-<%=i%>-tab">
		      		
		      		<div class="row align-items-center m-0 theme_dotted_border_bottom shadow-bottom pl-45 pt-20 pb-20 pr-45">
		      		
		      			<div class="col-md-6 p-0">
		      				<div class="row m-0">
		      						<div class="col-md-3 col-6 p-0">
									<div class="font-weight-bold f-30">
										<i class="fas fa-dollar-sign black"></i> <span
											class="theme_color"> 7245</span>
									</div>
									<div class="f-12 brownish-grey">Achieved Value</div>
									</div>
									<div class="col-md-3 col-6 p-0">
										<div class="font-weight-bold f-30 greyish-brown">
											<i class="fas fa-dollar-sign black"></i>88765
										</div>
										<div class="f-12 brownish-grey">Pipeline Value</div>
									</div>
									<div class="col-md-3 col-6 p-0">
										<div class="font-weight-bold f-30 greyish-brown">
											25%
										</div>
										<div class="f-12 brownish-grey">Tentative</div>
									</div>
									<div class="col-md-3 col-6 p-0">
										<div class="font-weight-bold f-30 greyish-brown">
											75%
										</div>
										<div class="f-12 brownish-grey">Win Rate</div>
									</div>
		      				</div>
		      				
		      			</div>
		      			<div class="col-md-6 p-0">
		      				<div class="row m-0">
		      					<div class="col-md-6 p-0">
		      						<div class="font-weight-bold brownish-grey f-12 pb-5">
		      							Strong <i class="fal fa-info-circle soft-blue f-14"></i>
		      						</div>
		      						<div class="d-flex">
										<button type="button" class="btn  rounded-0 f-12 m-1 font-weight-bold signal_background">Introduction</button>
										<button type="button" class="btn  rounded-0 f-12 m-1 font-weight-bold signal_background">Introduction</button>
		      						</div>
		      					</div>
		      					<div class="col-md-6 p-0">
		      						<div class="font-weight-bold brownish-grey f-12 pb-5">
		      							Weak <i class="fal fa-info-circle soft-blue f-14"></i>
		      						</div>
		      						<div class="d-flex">
		      																	<button type="button" class="btn  rounded-0 f-12 m-1 font-weight-bold signal_background">Introduction</button>
										<button type="button" class="btn  rounded-0 f-12 m-1 font-weight-bold signal_background">Introduction</button>
		      						</div>
		      					</div>
		      				</div>
		      			</div>
		      			
						
					</div>
		      		
		      		<div class="row align-items-center theme_solid_border_bottom m-0 pl-45 pt-20 pb-20 pr-40">
		      			<div class="col-md-2 col p-0">
		      				<button class="btn p-0 black f-14 font-weight-bold">
		      					Lead Name	<i class="fas fa-sort brown-grey ml-2"></i>
		      				</button>
		      			</div>
		      			<div class="col-md-2 col p-0">
		      				<button class="btn p-0 black f-14 font-weight-bold">
		      					Contact Person	<i class="fas fa-sort brown-grey ml-2"></i>
		      				</button>
		      			</div>
		      			<div class="col-md-2 col p-0">
		      				<button class="btn p-0 black f-14 font-weight-bold">
		      					Contact Details	<i class="fas fa-sort brown-grey ml-2"></i>
		      				</button>
		      			</div>
						<div class="col-md-6 col justify-content-lg-start  p-0">
							<button class="btn p-0 black f-14 font-weight-bold">
								Deal Journey <i class="fas fa-sort brown-grey ml-2"></i>
							</button>
						</div>
					</div>
		      		
		      		<%for(int j=0;j<5;j++){
		      			String bgcolor="bg-white";
		      			if(j%2!=0){
		      				bgcolor="very-light-pink-grey-bg";
		      			}
		      			%>
		      		<div class="row m-0 theme_solid_border_bottom align-items-center pl-45 pr-40 pt-30 pb-30 <%=bgcolor%>" >
		      			<div class="col-md-2 p-0">
		      				<div class="f-14 black fw-500 text-truncate" title="Accenture Consulting Inc.">Accenture Consulting Inc.</div>
		      				<div class="f-14 brownish-grey fw-500">$ 290</div>
		      			</div>
		      			
		      			<div class="col-md-2 p-0">
		      				<div class="f-14 black fw-500 text-truncate" title="Robert Wolken">Robert Wolken</div>
		      				<div class="f-14 brownish-grey fw-500 text-truncate" title="Manager">Manager</div>
		      			</div>
		      			
		      			<div class="col-md-2 p-0">
		      				<div class="f-14 black fw-500 text-break">Info@accenture.com</div>
		      				<div class="f-14 brownish-grey fw-500 text-truncate" title="888">+91 888 898 8989</div>
		      			</div>
		      			
		      			<div class="col-md-6 p-0">
		      				<div class="row align-items-center m-0">
		      					<div class="col-md-11 p-0">
		      						<div class="row position-relative m-0">
		      						<div class="line"></div>
		      							<div class="col-md-3 text-center p-0">
		      									<i class="fas fa-check-circle  tea-color"></i>
	      										<div class="brownish-grey f-14">Need</div>
		      							</div>
										<div class="col-md-3 text-center p-0">
		      									<i class="fas fa-check-circle  tea-color"></i>
	      										<div class="brownish-grey f-14">Budget</div>
		      							</div>	
		      							<div class="col-md-3 text-center p-0">
		      									<i class="fas fa-check-circle  tea-color"></i>
	      										<div class="brownish-grey f-14">Authorized </div>
		      							</div>
		      							<div class="col-md-3 text-center p-0">
		      									<i class="fas fa-times-circle pastel-red"></i>
	      										<div class="brownish-grey f-14">Urgency</div>
		      							</div>
		      							
		      							
		      							
									</div>
		      					</div>
		      					<div class="col-md-1 p-0 text-right">
		      						<div class="istar-dropdown dropleft d-inline">
											<button class="dropdown-icon-btn p-0 text-right" type="button" id="dropdownMenuButton"
		                                            data-display="static" data-toggle="dropdown" aria-haspopup="true"
		                                            aria-expanded="false">
												<i class="fas fa-ellipsis-v f-12 brown-grey"></i>
											</button>
											<div class="dropdown-menu dropdown-menu-right istar-dropdown-menu"
	                                            aria-labelledby="dropdownMenuButton">
	                                            <button class="dropdown-item" href="#"><img src="<%=baseURL%>assets/image/won.svg" alt="won"
	                                                    srcset="" class="mr-2"> Won</button>
	                                            <button class="dropdown-item" href="#"><img src="<%=baseURL%>assets/image/lost.svg"
	                                                    alt="lost" srcset="" class="mr-2">Lose</button>
	                                            <button class="dropdown-item" href="#"><img src="<%=baseURL%>assets/image/edit.svg" alt="edit"
	                                                    srcset="" class="mr-2">Edit</button>
	                                            <button class="dropdown-item" href="#"><img src="<%=baseURL%>assets/image/delete.svg"
	                                                    alt="delete" srcset="" class="mr-2">Delete</button>
	                                            <button class="dropdown-item" onclick="window.location.href = 'task_lead_detail.jsp'"><img src="<%=baseURL%>assets/image/details.png"
	                                                    alt="details" srcset="" class="mr-2">Details</button>
	                                        </div>
	                                    </div>
		      					</div>
		      					
		      				</div>
		      			</div>
		      		</div>
		      		<%} %>

						<div class="row  m-0 ">
							<div class="col-md-12  d-flex justify-content-end p-0">
								<div class="page">
									<ul class="salesken pagination  m-0 pt-30 pb-40 pr-40"></ul>
								</div>
							</div>
						</div>
						
					</div>
		     <%} %>
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
		<script src="<%=baseURL%>assets/js/salesken.js"></script>
		<script src="<%=baseURL%>assets/js/bootstrap-select.min.js"></script>
	<script>
	$( document ).ready(function() {
		$('.salesken.navbar-nav>li').removeClass('active');
		$($('.salesken.navbar-nav>li')[2]).addClass('active')
		$('.page').Pagination({ // id to initial draw and use pagination
            size: 87, // size of list input
            pageShow: 5, // 5 page-item per page
            page: 1, // current page (default)
            limit: 10, // current limit show perpage (default)
    	}, function(obj){ // callback function, you can use it to re-draw table or something
            	console.log(obj)
    	});
	});
	
	</script>
	<script>
	$( document ).ready(function() {
		$('#pipeline_datepicker').datepicker({autoclose:true});
		
		$('.dropdown-menu').click(function(e) {
		    e.stopPropagation();
		});
		
		$('.filtertabs>li>.nav-link').click(function(e) {
			
			$($(this).attr('href')+'-tab').tab('show')

		});
			$('.agentteamsubmit').click(function(e) {
				$('#activity').dropdown('hide')	
				
			});
	});
	
	
	function showCalendar(){
		$('#pipeline_datepicker').datepicker('show')
	}
	
	</script>
</body>
</html>