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
<title>Lead Detail</title>
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
	SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
	SimpleDateFormat incoming = new SimpleDateFormat("dd-MM-yyyy");
	String incomingDate = request.getParameter("var") != null
			? request.getParameter("var")
			: sdf.format(new Date());
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
	<div class="container-fluid salesken_container mb-5">
		<div
			class="row grey-white-bg align-items-center py-3 border-bottom-separation">
			<div class="col-md-6 col-12 d-flex align-items-center mb-4 mb-md-0">
				<i class="fas fa-arrow-left black f-20 pr-3 cursor-pointer"
					onclick="window.location.href = 'report.jsp'"></i>
				<div class="display-1 black f-20 border-right-separation pr-3  fw-500">Accenture
					Consulting Inc.</div>
				<div class="pl-3 pr-2 f-12 brown-grey ">Path</div>
				<i class="fas fa-chevron-circle-right pr-2 f-12 brown-grey"></i>
				<div class=" f-12 brown-grey fw-500 " id="breadcrumb">Current Page</div>
			</div>
		</div>
		<div class="row bg-white pl-3">
			<div class="col-md-12">
				<ul class="nav nav-tabs nav-mytabs pt-2 " id="myTab" role="tablist">
					<li class="nav-item"><a class="nav-link active"
						id="taskDetails-tab" data-toggle="tab" href="#taskDetails"
						role="tab" aria-controls="taskDetails" aria-selected="true">Task
							Details</a></li>
					<li class="nav-item"><a class="nav-link" id="leadDetails-tab"
						data-toggle="tab" href="#leadDetails" role="tab"
						aria-controls="leadDetails" aria-selected="false">Lead Details</a>
					</li>
				</ul>
				<div class="tab-content" id="myTabContent">
					<div class="tab-pane fade show active" id="taskDetails"
						role="tabpanel" aria-labelledby="taskDetails-tab">
						<!-- start of task detail content -->
						<div
							class="row align-items-center  border-bottom-separation  pt-3 pb-3">
							<div class="col-md-12 text-result-found	">
								<strong class="number-of-results">04</strong> Results Found
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
											<div class="col-md-3">
												<div class="d-flex flex-row align-items-center">
													<img src="<%=baseURL%>assets/image/calltask.svg"
														class="rounded-circle hw-30 task-icon"> <img
														src="<%=baseURL%>assets/image/37.jpg"
														class="rounded-circle hw-40 task-image">
												</div>
											</div>
											<div class="col-md-9">
												<p class="soft-blue f-12 font-weight-bold mb-1">Confident</p>
												<h1 class="black f-16 fw-500 mb-1">Marry Vasquez</h1>
												<p class="brown-grey f-12 d-flex align-items-center mb-1">
													<i class="tangerine fas fa-circle mr-1"
														style="font-size: 8px;"></i>Ongoing
												</p>
												<p class="brown-grey f-12">June 26, 2019</p>
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


					<div class="tab-pane fade" id="leadDetails" role="tabpanel"
						aria-labelledby="agentDetails-tab">

						<div class="row align-items-center py-4 shadow-bottom">
							<div class="col-md-2 col-4">
								<div class="f-24 font-weight-bold blue-black">$ 8562</div>
								<div class="f-14 brown-grey">Deal Value</div>
							</div>
							<div class="col-md-2 col-4">
								<div class="f-24 font-weight-bold blue-black">85%</div>
								<div class="f-14 brown-grey">Confident</div>
							</div>
							<div class="col-md-2 col-4">
								<div class="f-24 font-weight-bold blue-black">65%</div>
								<div class="f-14 brown-grey">Tentative</div>
							</div>
							<div class="col-md-2 col-4">
								<div class="f-24 font-weight-bold blue-black">Stage 02</div>
								<div class="f-14 brown-grey">Current Stage</div>
							</div>
							<div class="col-md-4 col-12">
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
										<div class="brownish-grey f-14">Authorized</div>
									</div>
									<div class="col-md-3 text-center">
										<i class="fas fa-times-circle pastel-red"></i>
										<div class="brownish-grey f-14">Urgency</div>
									</div>



								</div>
							</div>
						</div>
						
						<div class="row">
							<div class="col-md-8">
								<div class="d-flex">
								 <div class="mr-auto  black f-16 fw-500">Information</div>
  								<div class="p-2 bd-highlight f-22">
  									<img src="<%=baseURL%>assets/image/edit.svg" class="">
								</div>
								</div>
								<div class="d-flex mb-3">
									<div class="d-flex flex-column ">
										<div class="mr-5 black f-14 font-weight-bold">Robert
											Wolken</div>
									<div class="brownish-grey f-14 ">CEO</div>
									</div>
									<div class="d-flex flex-column ">
									<div class="black f-14 font-weight-bold">Johnni Owens</div>
									<div class="brownish-grey f-14 ">Manager</div>

									</div>
								</div>
								<h4 class="black f-14 mb-2 font-weight-bold">About Company</h4>
								<p class="blue-black f-14 ">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. </p>
								<p class="black f-14 font-weight-bold mb-2">Contact Us</p>
								<p class="blue-black f-14 mb-1">+91 989 989 8787    &nbsp; &nbsp; |&nbsp;&nbsp;       080 6565 5656 23</p>
								<p class="blue-black f-14 ">www.openthech.com</p>
								<p class="blue-black f-14" style="max-width:200px;">2nd Floor “Makam Plaza” 63/1 Above Kotak Bank, 18th Cross Rd, Malleshwaram, Bengaluru, Karnataka 560055</p>								
								
								<div class="border-bottom-dashed-separation mb-3"></div>
								
								<div class="d-flex">
								 	<div class="mr-auto  black f-16 fw-500">CRM Fields</div>
  									<div class="p-2 bd-highlight f-22">
  										<img src="<%=baseURL%>assets/image/edit.svg" class="">
									</div>
								</div>
								
								<%for(int m=0;m<2;m++){ %>
								<div class="d-flex flex-column mb-3">
									<div class="f-14 font-weight-bold black">Question <%= (m+1) %></div>
									<div class="f-14 blue-black">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since.</div>
								</div>
								<%} %>
							</div>
							<div class="col-md-4">
							<%for(int k=0;k<2;k++){ %>
							
							<h4 class="black fw-500 f-16 mb-3">Objections </h4>
							<%for(int l=0;l<2;l++){ %>
							<div class="signal_description border_bottom_1_dashed mb-3">
							
							<p class=" brown-grey f-12 mb-2">June 22, 2019</p>
							<p class="blue-black f-14 ">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. </p>
							</div>
							<%} }%>
							</div>
						
						</div>


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
        		<button type="button" class="btn rounded-0 istar-btn-primary" style="width: 140px;">LEAVE</button>
		      </div>
		    </div>
		  </div>
		</div>
<!-- end of leave task modal -->
	</div>
	</main>


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
	<script src="<%=baseURL%>assets/js/salesken.js"></script>

	<script>


	$( document ).ready(function() {
		$('.salesken.navbar-nav>li').removeClass('active');
			    
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
		    	  url=url+ '/tabcontent/leadCallTaskModal.jsp';
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
		    
	    	  //close share n comment popover on tab change
	    	  if('.taskshare:visible'){
	  			$('.taskshare').popover('hide');
	  			}
	    	  if('.taskcomment:visible'){
		  			$('.taskcomment').popover('hide');
		  			}
	    	  	if($('.notespopup').hasClass('active')){
	  				$('.notespopup').popover('hide');
		  		}
		  		if($('.crmpopover').hasClass('active')){
		  			$('.crmpopover').popover('hide');
		  		}
		  		if($('.cuespopover').hasClass('active')){
		  			$('.cuespopover').popover('hide');
		  		}
		  		if($('.chatpopover').hasClass('active')){
				 	$('.chatpopover').popover('hide');
		  		}
	    	})
	    	
	    	
	    	$('.nav-tabs>.nav-item').on('show.bs.tab', function (e) {
		    	  $('.popover').popover('hide');
	  		});
		
	});
	


	</script>
</body>
</html>