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

</head>
<body data-base-url="<%=baseURL%>">
	<jsp:include page="../navbar/nav.jsp"></jsp:include>

	<main role="main">
	<div class="container-fluid salesken_container">
		<div class="row grey-white-bg bottom-separation-solid align-items-center py-3">
			<div class="col-md-6 col-12 d-flex align-items-center mb-4 mb-md-0">
				<div class="display-1 black f-20 border-right-separation pr-3  fw-500">Pipeline</div>
				<div class="pl-3 pr-2 f-12 brown-grey ">Dashboard</div>
				<i class="fas fa-chevron-circle-right pr-2 f-12 brown-grey"></i>
				<div class=" f-12 brown-grey fw-500">Pipeline</div>

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
				<select class="form-control f-14 custom-taskselect custom-taskborder" id="pipeline">
					<option>Select Pipeline</option>
					<option>Default select</option>
				</select>
			</div>
		</div>

		
			<div class="row align-items-center bg-white border-bottom-separation  pt-3 pb-3">
							<div class="col-md-3 text-result-found	">
								<strong class="number-of-results">04</strong> Results Found
							</div>
							<div class="col-md-9 d-md-flex justify-content-end  ">
									<div class="input-group date custom-calendar">
										<input type="text" id="pipeline_datepicker" class="form-control  custom-dateselect"
											value="12-02-2012">
										<div class="input-group-addon" onclick="showCalendar()">
											<img src ="<%=baseURL%>/assets/image/calendar.svg" class="pr-1">
										</div>
									</div>	
									<select
										class="custom-result-selects"
										id="deal_value">
										<option>Filter by Deal Value</option>
										<option>Default select</option>
									</select> 	
								
									<select
										class="  custom-result-selects"
										id="status">
										<option>Filter by Status</option>
										<option>Default select</option>
									</select>
	
									
									<div class="dropdown dropleft" id="filterbutton">
										<button
											class="filter-btn"
											id="activity" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 
											<i class="fas fa-filter filtericon"></i>
										</button>
										 <div class="dropdown-menu filter-menu dropdown-menu-lg-right position-absolute px-4" aria-labelledby="activity" style="width:350px">
													
												<ul class="nav nav-tabs nav-mytabs filtertabs pt-2" id="myTab" role="tablist">
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
											<img src ="<%=baseURL%>/assets/image/11.png" class="rounded-circle ml-3 mr-2 hw-40">
										  <div>
					                                        	<div class="f-14 font-weight-bold greyish-brown">Robert Garcia</div>
					                                        	<div class="f-12  brownish-grey">Team -02</div>
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
		
		<div class="row very-light-pink-grey-bg" >
		  <div class="col-md-2 col-12 pr-0">
		    <div class="nav flex-column nav-pills" id="piplelinestage-tab" role="tablist" aria-orientation="vertical">
		    <%for(int i =0;i<5;i++){ 
		    	String isactive = "";
				if (i == 0) {
					isactive = "active";
				}
		    %>
		      <a class="nav-link <%=isactive %>" id="stage-<%=i%>-tab" data-toggle="pill" href="#stage-<%=i%>" role="tab" aria-controls="stage-<%=i%>" aria-selected="true">Stage 0<%=i+1	%></a>
		     <%} %>
		     </div>
		  </div>
		  <div class="col-md-10 col-12 bg-white">
		    <div class="tab-content" id="piplelinestage-tabContent">
		    <%for(int i =0;i<5;i++){ 
		    	String isactive = "";
				if (i == 0) {
					isactive = "active";
				}
		    %>
		      <div class="tab-pane fade show pl-0 <%=isactive %>" id="stage-<%=i%>" role="tabpanel" aria-labelledby="stage-<%=i%>-tab">
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
		      						<div class="f-14 brownish-grey">Objection,  Qualification <i class="fal fa-info-circle soft-blue"></i></div>
		      					</div>
		      					<div class="col-md-6">
		      						<div class="f-14 font-weight-bold black mb-1">Weak Playbook</div>
		      						<div class="f-14 brownish-grey">Need Investigation <i class="fal fa-info-circle soft-blue"></i></div>
		      					</div>
		      				</div>
		      			</div>
		      		</div>
		      		
		      		<div class="row align-items-center bottom-separation-solid py-4">
		      			<div class="col-md-2 col">
		      				<button class="btn p-0 black f-14 font-weight-bold">
		      					Lead Name	<i class="fas fa-sort brown-grey ml-2"></i>
		      				</button>
		      			</div>
		      			<div class="col-md-2 col">
		      				<button class="btn p-0 black f-14 font-weight-bold">
		      					Contact Person	<i class="fas fa-sort brown-grey ml-2"></i>
		      				</button>
		      			</div>
		      			<div class="col-md-2 col">
		      				<button class="btn p-0 black f-14 font-weight-bold">
		      					Contact Details	<i class="fas fa-sort brown-grey ml-2"></i>
		      				</button>
		      			</div>
						<div class="col-md-6 col justify-content-lg-start">
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
		      		<div class="row py-4 bottom-separation-solid align-items-center <%=bgcolor%>" onclick="window.location.href = 'task_lead_detail.jsp'">
		      			<div class="col-md-2">
		      				<div class="f-14 black fw-500">Accenture Consulting Inc.</div>
		      				<div class="f-14 brownish-grey fw-500">$ 290</div>
		      			</div>
		      			
		      			<div class="col-md-2">
		      				<div class="f-14 black fw-500">Robert Wolken</div>
		      				<div class="f-14 brownish-grey fw-500">Manager</div>
		      			</div>
		      			
		      			<div class="col-md-2">
		      				<div class="f-14 black fw-500">Info@accenture.com</div>
		      				<div class="f-14 brownish-grey fw-500">+91 888 898 8989</div>
		      			</div>
		      			
		      			<div class="col-md-6">
		      				<div class="row align-items-center">
		      					<div class="col-md-11">
		      						<div class="row position-relative">
		      						<div class="line"></div>
		      							<div class="col-md-3 text-center">
		      									<i class="fas fa-check-circle  tea-color"></i>
	      										<div class="brownish-grey f-14">Need</div>
		      							</div>
										<div class="col-md-3 text-center">
		      									<i class="fas fa-check-circle  tea-color"></i>
	      										<div class="brownish-grey f-14">Budget</div>
		      							</div>	
		      							<div class="col-md-3 text-center">
		      									<i class="fas fa-check-circle  tea-color"></i>
	      										<div class="brownish-grey f-14">Authorized </div>
		      							</div>
		      							<div class="col-md-3 text-center">
		      									<i class="fas fa-times-circle pastel-red"></i>
	      										<div class="brownish-grey f-14">Urgency</div>
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
		
	
		
		});
	
	
	function showCalendar(){
		$('#pipeline_datepicker').datepicker('show')
	}
	
	</script>
</body>
</html>