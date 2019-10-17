<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<title>Salesken - User Detail</title>
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
<link rel="stylesheet" href="<%=baseURL%>assets/css/jquery.rateyo.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/salesken_style_media_query.css">

</head>
<body data-base-url="<%=baseURL%>">

<jsp:include page="../navbar/nav.jsp"></jsp:include>
<main role="main">
	<div class="container-fluid salesken_container">
	
		<div class="row grey-white-bg align-items-center py-3 border-bottom-separation" >
			<div class="col-md-6 col-12 d-flex align-items-center mb-4 mb-md-0" > 
				<i class="fas fa-arrow-left black f-20 pr-3 cursor-pointer" onclick="window.location.href = 'report.jsp'"></i>
				<div class="display-1 black f-20 border-right-separation pr-3 fw-500">Stanley Howard</div>
				<div class="pl-3 pr-2 f-12 brown-grey ">Path</div>
				<i class="fas fa-chevron-circle-right pr-2 f-12 brown-grey"></i>
				<div class=" f-12 brown-grey  fw-500" id="breadcrumb">Current Page</div>
			</div>
		</div>
		<div class="row rounded-0 alert alert-success mb-0 font-italic align-items-center d-none" role="alert">
		 <span class="font-weight-bold f-14 mr-2 tea-color">Won Lead: </span> <div class="f-12 brownish-grey">A simple success alert—check it out!</div>
		</div>
		<div class="row rounded-0 alert alert-danger mb-0 font-italic align-items-center d-none" role="alert">
		 <span class="font-weight-bold f-14 mr-2 theme_color">Lost Lead: </span> <div class="f-12 brownish-grey">A simple success alert—check it out!</div>
		</div>
		<div class="row bg-white pl-3">
			<div class="col-md-12">
				<ul class="nav nav-tabs nav-mytabs pt-2" id="myTab" role="tablist">
				  <li class="nav-item">
				    <a class="nav-link active" id="taskDetails-tab" data-toggle="tab" href="#taskDetails" role="tab" aria-controls="taskDetails" aria-selected="true">Task Details</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" id="agentDetails-tab" data-toggle="tab" href="#agentDetails" role="tab" aria-controls="agentDetails" aria-selected="false">Agent Details</a>
				  </li>
				</ul>
				<div class="tab-content" id="myTabContent">
				  <div class="tab-pane fade show active" id="taskDetails" role="tabpanel" aria-labelledby="taskDetails-tab">
				  	<!-- start of task detail content -->
				  	<div class="row align-items-center  border-bottom-separation  pt-3 pb-3">
							<div class="col-md-3 text-result-found	">
								<strong class="number-of-results">04</strong> Results Found
							</div>
							<div class="col-md-9 d-md-flex justify-content-end  ">
								<div class="input-group date custom-calendar">
									<input type="text" id="task_datepicker" class="form-control  custom-dateselect"
										value="12-02-2012">
									<div class="input-group-addon" onclick="showCalendar()">
										<img src ="<%=baseURL%>/assets/image/calendar.svg" class="pr-1">
									</div>
								</div>	
								<select
									class="  custom-result-selects"
									id="stages">
									<option>Filter by Stages</option>
									<option>Default select</option>
								</select> 	
								<div class="istar-dropdown mr-2 custom-taskborder select_focus">
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
								<select
									class="  custom-result-selects"
									id="status">
									<option>Filter by Status</option>
									<option>Default select</option>
								</select>
								<select
									class="  custom-result-selects"
									id="leads">
									<option>Filter by Leads</option>
									<option>Default select</option>
								</select>
							</div>
						</div>
						
						<div class="row very-light-pink-grey-bg">
							<div class="col-md-3 pr-0">
								<div class="nav flex-column nav-pills" id="taskdetail-tab-list"
									role="tablist" aria-orientation="vertical">
									<%
										for (int i = 0; i < 4; i++) {
											String isactive = "";
											String tasktype="call";
											if (i == 0) {
												isactive = "active";
											}
											if (i ==1) {
												tasktype = "email";
											}
											if (i == 2) {
												tasktype = "webinar";
											}
											
									%>
									<div class="nav-link <%=isactive%> border-bottom-separation"
										id="v-pills-<%=i%>-tabs" data-toggle="pill"
										href="#v-pills-<%=i%>" role="tab"
										aria-controls="v-pills-<%=i%>" aria-selected="true" data-task_type="<%=tasktype%>">
										


										<div class="row align-items-center minh-100">
											<div class="col-md-10">
												<div class="d-flex flex-row ">
													<div
														class="f-16 font-weight-bold border-right-separation pr-2 theme_color">$ 500</div>
													<div
														class="pl-2 f-12 align-self-center signal-analytical font-weight-bold">Analytical</div>
												</div>
												<div class="f-16  fw-500 black">Globex
													Corporation Inc.</div>
												<div class="f-12 brown-grey">Initiated at 11:00 PM</div>
											</div>
											<div class="col-md-2">
												<div class="d-flex flex-row align-items-center">
													<img src="<%=baseURL%>assets/image/calltask.svg"
														class="rounded-circle hw-30" /> 
												</div>
											</div>
										</div>

									</div>

									<%
										}
									%>
								</div>
							</div>


							<div class="col-md-9 bg-white">
								<div class="tab-content h-100" id="taskdetail-tab-listContent">
									<%
										for (int i = 0; i < 4; i++) {
											String isactive = "";
											if (i == 0) {
												isactive = "active";
											}
									%>
									<div class="tab-pane h-100 fade show <%=isactive%>"
										id="v-pills-<%=i%>" role="tabpanel"
										aria-labelledby="v-pills-<%=i%>-tabs">
										
									</div>
									<%
										}
									%>
								</div>
							</div>
						</div>
						
					
						
						
						
						<!-- end of task detail -->
					</div>
						
						
				  <div class="tab-pane fade" id="agentDetails" role="tabpanel" aria-labelledby="agentDetails-tab">
				  	<!-- start of agent detail content -->		
				  	<div class="row mt-4">				
				  		<div class="col-md-6">	
				  			<div class="d-flex">	
				  				<img src="<%=baseURL%>assets/image/11.png" class="hw-60" />
				  				<div class="ml-4">
				  					<div class="f-16  fw-500 black">Stanley Howard</div>
						  			<div class="d-flex align-items-center">		
						  				<div class="p-0 rateYo mr-4" data-rating="3"></div>
						  				<i class="far fa-thumbs-up mr-2 f-24 brown-grey"></i>
						  				<div class="greyish-brown  fw-500 f-16 mr-1">12</div>
						  				<div class="brown-grey f-14">Likes</div>
						  			</div>	
				  				</div>
				  			</div>
				  		</div>		
				  		<div class="col-md-6 text-right	">
				  			<div class="d-flex align-items-center justify-content-end">
					  			<img src="<%=baseURL%>assets/image/people.svg" class="mr-2" />
					  			<div class="f-14 greyish-brown mr-4">Team North</div>
					  			<img src="<%=baseURL%>assets/image/mail.svg" class="mr-2" />
					  			<div class="f-14 greyish-brown mr-4">stanleyhoward@gmail.com</div>
					  			<img src="<%=baseURL%>assets/image/call.svg" class="mr-2" />
					  			<div class="f-14 greyish-brown mr-4">(741)-210-1851</div>
					  			<img src="<%=baseURL%>assets/image/edit.svg"/>
				  			</div>
				  		</div>		
				  	</div>		
				  	
				  	<div class="row py-3 border-bottom-dashed-separation ">
				  		<div class="col-md-2 border-right-dashed-separation">
				  			<div class="row">
				  				<div class="col-md-3 align-self-center">
				  					<img src="<%=baseURL%>assets/image/task.svg" class="hw-45" />
				  				</div>
				  				<div class="col-md-9">
				  					<div class="f-24 blue-black font-weight-bold">40</div>
									<div class="f-14 brown-grey ">Total Tasks </div>
				  				</div>
				  			</div>
				  		</div>
				  		<div class="col-md-2 border-right-dashed-separation">
				  			<div class="row">
				  				<div class="col-md-3 align-self-center">
				  					<img src="<%=baseURL%>assets/image/donecircle.svg" class="hw-45" />
				  				</div>
				  				<div class="col-md-9">
				  					<div class="f-24 blue-black font-weight-bold">24</div>
									<div class="f-14 brown-grey ">Completed Tasks </div>
				  				</div>
				  			</div>
				  		</div>
				  		<div class="col-md-2 border-right-dashed-separation">
				  			<div class="row">
				  				<div class="col-md-3 align-self-center">
				  					<img src="<%=baseURL%>assets/image/call.svg" class="hw-45" />
				  				</div>
				  				<div class="col-md-9">
				  					<div class="f-24 blue-black font-weight-bold">34</div>
									<div class="f-14 brown-grey">Call Tasks </div>
				  				</div>
				  			</div>
				  		</div>
				  		<div class="col-md-2 border-right-dashed-separation">
				  			<div class="row">
				  				<div class="col-md-3 align-self-center">
				  					<img src="<%=baseURL%>assets/image/mail.svg" class="hw-45" />
				  				</div>
				  				<div class="col-md-9">
				  					<div class="f-24 blue-black font-weight-bold">12</div>
									<div class="f-14 brown-grey">Email Tasks </div>
				  				</div>
				  			</div>
				  		</div>
				  		<div class="col-md-2 border-right-dashed-separation">
				  			<div class="row">
				  				<div class="col-md-3 align-self-center">
				  					<img src="<%=baseURL%>assets/image/desktop.svg" class="hw-45" />
				  				</div>
				  				<div class="col-md-9">
				  					<div class="f-24 blue-black font-weight-bold">12</div>
									<div class="f-14 brown-grey ">Webinar Tasks </div>
				  				</div>
				  			</div>
				  		</div>
				  		<div class="col-md-2">
				  			<div class="row">
				  				<div class="col-md-3 align-self-center">
				  					<i class="fas fa-video f-30 brown-grey"></i>
				  				</div>
				  				<div class="col-md-9">
				  					<div class="f-24 blue-black font-weight-bold">03</div>
									<div class="f-14 brown-grey">Presentation Tasks </div>
				  				</div>
				  			</div>
				  		</div>
				  	</div>
				  	
				  	<div class="row ">
				  		<div class="col-md-9">
				  			<div class="row py-3">
				  				<div class="col-md-3">
				  					<div class="f-24 blue-black font-weight-bold">$ 2345</div>
									<div class="f-14 brown-grey">Deal Value</div>
				  				</div>
				  				<div class="col-md-3">
				  					<div class="f-24 blue-black font-weight-bold">45</div>
									<div class="f-14 brown-grey">Won Leads</div>
				  				</div>
				  				<div class="col-md-3">
				  					<div class="f-24 blue-black font-weight-bold">04</div>
									<div class="f-14 brown-grey">Lost Leads</div>
				  				</div>
				  				<div class="col-md-3">
				  					<div class="f-24 blue-black font-weight-bold">30</div>
									<div class="f-14 brown-grey">Activities Per Lead Won</div>
				  				</div>
				  			</div>
				  			<div class="row border-bottom-dashed-separation py-3">
				  				<div class="col-md-6">
		      						<div class="f-14 font-weight-bold black mb-1">Strong Playbook</div>
		      						<div class="f-14 brownish-grey">Objection,  Qualification <i class="fal fa-info-circle soft-blue"></i></div>
		      					</div>
		      					<div class="col-md-6">
		      						<div class="f-14 font-weight-bold black mb-1">Weak Playbook</div>
		      						<div class="f-14 brownish-grey">Need Investigation <i class="fal fa-info-circle soft-blue"></i></div>
		      					</div>
				  			</div>
				  			<div class="row py-3">
				  				<div class="col-md-6 fw-500">Disposition</div>
				  			</div>
				  			
				  			<div class="row">
		  					<table class="table table-striped pt-3">
								  <thead>
								    <tr>
								      <th class="f-14" scope="col">Lead Names</th>
								      <th class="f-14" scope="col">Follow-Ups </th>
								      <th class="f-14" scope="col">Talk Ratio</th>
								      <th class="f-14" scope="col">Connected Call</th>
								    </tr>
								  </thead>
								  <tbody>
								  
								  <%for(int i=0;i<10;i++){ %>
								    <tr>
								      <td class="f-14 py-4">Massive Dynamic Pvt. Ltd.</td>
								      <td class="f-14 py-4">45</td>
								      <td class="f-14 py-4">20%</td>
								      <td class="f-14 py-4">03</td>
								    </tr>
								    <%}%>
								   </tbody>
							  </table>
				  			</div>
				  		</div>
				  			
				  		<div class="col-md-3 cream_white p-3 ">
				  			<div class="f-16 fw-500 black">Comments</div>
				  			
				  			<%for(int i=0;i<3;i++){ %>
				  			<div class="f-12 pt-4 brown-grey">June 22, 2019</div>
				  			<div class="f-14 greyish-brown fw-500 mb-2">Lawrence Lynch</div>
				  			<div class="f-14 blue-black border-bottom-dashed-separation pb-4">Cras eget elementum arcu, vel malesuada felis. Nulla fringilla viverra justo a imperdiet. Etiam vitae tempor enim, sed aliquet ante. Maecenas eu vehicula diam.</div>
				  			<%} %>
				  		</div>				  		
				  	</div>				  	
				 
				  	<!-- end of agent detail content -->
				  
				  </div>
				</div>
			</div>
		</div>
<!-- start of leave task modal -->
		<div class="modal fade" id="leaveTaskModal" tabindex="-1" role="dialog" aria-labelledby="leaveTaskModalTitle" aria-hidden="true">
		  <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
		    <div class="modal-content">
		      <div class="d-flex pt-3 justify-content-end">
		        <div class="col-md-1	">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			          <span aria-hidden="true">&times;</span>
			        </button>
		        </div>
		      </div>
		      <div class="modal-body">
		        
		        <div class="row  pt-4 justify-content-center">
		        	<div class="font-weight-bold greyish-brown f-18">Do you wanna exit this task?</div>
		        </div>
		        <div class="row p-4 justify-content-center">
		        	<div class="bblack f-14">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</div>
		        </div>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn theme_color bg-transparent font-weight-bold" data-dismiss="modal">Cancel</button>
        		<button type="button" class="btn rounded-0 istar-btn-primary" data-dismiss="modal" style="width: 140px;">LEAVE</button>
		      </div>
		    </div>
		  </div>
		</div>
		<!-- end of leave task modal -->

</div>
</main>

<script src="<%=baseURL%>assets/js/jquery-3.4.1.min.js"></script>
<script src="<%=baseURL%>assets/js/popper.min.js"></script>
<script src="<%=baseURL%>assets/js/bootstrap.min.js"></script>
<script src="<%=baseURL%>assets/js/bootstrap-datepicker.min.js"></script>
<script src="<%=baseURL%>assets/js/bootstrap-datepicker.min.js"></script>
<script src="<%=baseURL%>assets/js/salesken.js"></script>
<script src="<%=baseURL%>assets/js/jquery.rateyo.min.js"></script>

<script>
	$( document ).ready(function() {
		$('#task_datepicker').datepicker({autoclose:true});
		$('.salesken.navbar-nav>li').removeClass('active');

		/* start of rating bar js code */
		$(".rateYo").each(function(index) {
			console.log(typeof $(this).attr('data-rating'))
			$(this).rateYo({
				rating: $(this).attr('data-rating'),
				spacing: "0px",
				    starWidth: "18px",
				    readOnly: true,
				    ratedFill: "#f79c0d",
				    normalFill: "#dddddd",
				'starSvg': '<svg xmlns="http://www.w3.org/2000/svg"  viewBox="0 0 24 24">     <defs>         <style>             .cls-1{fill:none}.cls-2{clip-path:url(#clip-path)}      </style>         <clipPath id="clip-path">             <path d="M0 0h24v24H0z" class="cls-1"/>         </clipPath>     </defs>     <g id="Component" class="cls-2">         <path id="Rectangle_936" d="M0 0h24v24H0z" class="cls-1" data-name="Rectangle 936"/>         <path id="Path_59" d="M965.57 1814.81a.846.846 0 0 1-.461-.136l-4.78-3.1-4.78 3.1a.848.848 0 0 1-1.277-.942l1.5-5.3-4.467-3.776a.848.848 0 0 1 .487-1.494l5.359-.385 2.412-5.276a.848.848 0 0 1 1.543 0l2.412 5.276 5.359.385a.848.848 0 0 1 .487 1.494l-4.468 3.776 1.5 5.3a.848.848 0 0 1-.816 1.078zm-5.241-5.092a.847.847 0 0 1 .461.136l3.353 2.172-1.034-3.664a.848.848 0 0 1 .269-.878l3.294-2.785-3.783-.272a.848.848 0 0 1-.711-.493l-1.849-4.046-1.849 4.046a.848.848 0 0 1-.711.493l-3.783.272 3.294 2.785a.848.848 0 0 1 .269.878l-1.034 3.664 3.353-2.172a.847.847 0 0 1 .461-.136z" class="cls-3" data-name="Path 59" transform="translate(-948 -1794)"/>     </g> </svg> '
			});
		});
		/* end of rating bar js code */
		
		 $.get(location.origin+'/tabcontent/leadCallTaskModal.jsp', function( data ) {
        
			var tabid= $('#taskdetail-tab-list>.nav-link').attr('href').replace('#','')
        	$('#'+tabid).html(data);
    		});
	    
	    $('#taskdetail-tab-list>.nav-link').on('show.bs.tab', function (e) {
	    	var tabid= $(e.target).attr('href').replace('#','');
	    	 // newly activated tab
			var url=location.origin;
			
	    	switch($(e.target).data('task_type')){
	    	case 'call':
		    	  url=url+ '/tabcontent/userCallTaskModal.jsp';
		    	  break;
	    	case 'email':
	    		url=url+ '/tabcontent/leadEmailTaskModal.jsp';
		    	  break;
	    	case 'webinar':
	    		url=url+ '/tabcontent/leadWebinarTaskModal.jsp';
		    	  break;
		    default: url=url+ '/tabcontent/leadCallTaskModal.jsp';
	    			 break;
	    	}
	    	
	    	$.get(url, function( data ) {
	        	//console.log(data);
	        	//console.log(selectedTab);

	        	$('#'+tabid).html(data);
	    		//  alert( "Load was performed." );
	    		});
	    	  console.log($(e.target).data('task_type')) // newly activated tab
		    
	    	  //close popover on tab change
	    	 
	    	  $('.popover').popover('hide');

	    	});
	    
	    $('.nav-tabs>.nav-item').on('show.bs.tab', function (e) {
	    	  $('.popover').popover('hide');
  		});
	});
	function showCalendar(){
		$('#task_datepicker').datepicker('show')
	}
</script>
</body>
</html>