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
<link rel="stylesheet" href="<%=baseURL%>assets/css/userDetails.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/report.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/jquery.rateyo.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/salesken_style_media_query.css">

</head>
<body data-baseurl="<%=baseURL%>" onload="load()">
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
<jsp:include page="../../../../navbar/nav.jsp"></jsp:include>
<main role="main">
	<div class="container-fluid salesken_container">
	
		<div class="row grey-white-bg align-items-center m-0 theme_solid_border_bottom pl-40 pr-40 pt-10 pb-10">
			<div class="col-md-6 col-12 d-flex align-items-center p-0">
				<i class="fas fa-arrow-left black f-20 cursor-pointer" onclick="window.location.href = '../../../user/customer_user/customerUser.jsp'"></i>
				<div class="display-1 black f-20 border-right-separation pr-20  fw-500 pl-20">Stanley Howard</div>
				<div class="f-12 brown-grey pl-20">Dashboard</div>
				<i class="fas fa-chevron-circle-right pl-2 pr-2 f-12 very-light-pink"></i>
				<div class="f-12 brown-grey">Users</div>
				<i class="fas fa-chevron-circle-right pl-2 pr-2 f-12 very-light-pink"></i>
				<div class=" f-12 brown-grey fw-500 " id="breadcrumb">Stanley Howard</div>
			</div>
			<div class="col-md-6 d-flex align-items-center justify-content-end">
				
					<button type="button" class="istar-btn-icon  previous p-0" style="top: -14px !important; right: 36px;">
		                 <i class="fal fa-chevron-left"></i>
		             </button>
		             <button type="button" class="istar-btn-icon  active next p-0"  style="top: -14px !important; right: -2px;">
		                 <i class="fal fa-chevron-right"></i>
		             </button>
				
				</div>
		</div>
		<div class="row rounded-0 alert alert-success mb-0 font-italic align-items-center m-0 pl-40 pr-40 pt-10 pb-10 d-none" role="alert">
		 <span class="font-weight-bold f-12 mr-2 tea-color">Won Lead: </span> <div class="f-12 brownish-grey d-flex align-items-center">A simple success alert—check it out!<i class="fal fa-info-circle tea-color pl-10 f-16	"></i></div>
		</div>
		<div class="row rounded-0 alert alert-danger mb-0 font-italic align-items-center m-0 pl-40 pr-40 pt-10 pb-10 d-none" role="alert">
		 <span class="font-weight-bold f-12 mr-2 theme_color">Lost Lead: </span> <div class="f-12 brownish-grey d-flex align-items-center">A simple success alert—check it out!<i class="fal fa-info-circle pl-10 theme_color f-16"></i></div>
		</div>
		<div class="row bg-white m-0 pt-20">
			<div class="col-md-12 p-0">
				<ul class="nav nav-tabs nav-mytabs pl-40 pr-40 d-flex align-items-end" id="userDetailTab" role="tablist">
				  <li class="nav-item">
				    <a class="nav-link  nav-item active" id="taskDetails-tab" data-toggle="tab" href="#taskDetails" role="tab" aria-controls="taskDetails" aria-selected="true">Task Details</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link  nav-item" id="agentDetails-tab" data-toggle="tab" href="#agentDetails" role="tab" aria-controls="agentDetails" aria-selected="false">Agent Details</a>
				  </li>
				</ul>
				<div class="tab-content" id="userDetailTabContent">
				  <div class="tab-pane fade show active" id="taskDetails" role="tabpanel" aria-labelledby="taskDetails-tab">
				  	<!-- start of task detail content -->
				  	<div class="row align-items-center  border-bottom-separation m-0 pt-10 pb-10 pl-40 pr-40">
							<div class="col-md-3 text-result-found p-0">
								<strong class="number-of-results">04</strong> Results Found
							</div>
							<div class="col-md-9 d-md-flex justify-content-end p-0 ">
								<div class="input-group date custom-calendar mr-10">
									<input type="text" id="userDetail_datepicker" class="form-control  custom-dateselect"
										value="12-02-2012">
									<div class="input-group-addon" onclick="showUserDetailCalendar()">
										<img src ="<%=baseURL%>/assets/image/calendar.svg" class="pr-1 hw-24" alt="calendar">
									</div>
								</div>	
								<div class="istar-dropdown-task select_focus mr-10">
									<button class="istar-dropdown-arrow dropdown-toggle" data-display="static"
										id="userDetail_stage" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										<span class="sr-only">Toggle Dropdown</span>All Stages
										<img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
												class=" float-right">
									</button>
									<div
										class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="userDetail_stage" data-display="static">
										<button class="dropdown-item" type="button" onclick="userDetail_stage_dropdown(this)" data-id="Stage 1">Stage 1</button>
										<button class="dropdown-item" type="button" onclick="userDetail_stage_dropdown(this)" data-id="Stage 2">Stage 2</button>
									</div>
								</div> 	
								<div class="istar-dropdown-task select_focus mr-10">
									<button
										class="istar-dropdown-arrow dropdown-toggle" data-display="static"
										id="userDetail_activity" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 
										<span class="sr-only">Toggle Dropdown</span>
   										All Activities <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
												class=" float-right">
									</button>
									 <div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="userDetail_activity">
									    <button class="dropdown-item" type="button" onclick="userDetail_activity_dropdown(this)" data-id="Call Task">
									    <img src="<%=baseURL%>assets/image/calltask.svg" class="task-dropdown" alt="call">
									    Call Task</button>
									    <button class="dropdown-item" type="button" onclick="userDetail_activity_dropdown(this)" data-id="Email Task">
									    <img src="<%=baseURL%>assets/image/emailtask.svg" class="task-dropdown" alt="email">
									    Email Task</button>
									    <button class="dropdown-item" type="button" onclick="userDetail_activity_dropdown(this)" data-id=" Webinar Task">
									    <img src="<%=baseURL%>assets/image/webinartask.svg" class="task-dropdown" alt="webinar">
									    Webinar Task
									    </button>
									    <button class="dropdown-item" type="button" onclick="userDetail_activity_dropdown(this)" data-id="Presentation">
									    <img src="<%=baseURL%>assets/image/presentation.svg" class="task-dropdown" alt="presentation">
									    Presentation
									    </button>
									  </div>
									
								</div> 
								<div class="istar-dropdown-task select_focus mr-10">
									<button class="istar-dropdown-arrow dropdown-toggle" data-display="static"
										id="userDetail_status" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										<span class="sr-only">Toggle Dropdown</span>All Status
										<img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
												class=" float-right">
									</button>
									<div
										class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="userDetail_status">
										<button class="dropdown-item" type="button" onclick=" userDetail_status_dropdown(this)" data-id="Status 1">Status 1</button>
										<button class="dropdown-item" type="button" onclick=" userDetail_status_dropdown(this)" data-id="Status 2">Status 2</button>
									</div>
								</div> 	
								<div class="istar-dropdown-task select_focus">
									<button class="istar-dropdown-arrow dropdown-toggle" data-display="static"
										id="userDetail_leads" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										<span class="sr-only">Toggle Dropdown</span>All Leads
										<img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
												class=" float-right">
									</button>
									<div
										class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="userDetail_leads">
										<button class="dropdown-item" type="button" onclick=" userDetail_leads_dropdown(this)" data-id="Lead 1">Lead 1</button>
										<button class="dropdown-item" type="button" onclick=" userDetail_leads_dropdown(this)" data-id="Lead 2">Lead 2</button>
									</div>
								</div> 
							</div>
						</div>
						
					<div class="row cream_white m-0 theme_solid_border_bottom justify-content-between align-items-center pl-40 pr-40 pt-10 pb-10" id="userDetail_filter_selections" style="">
							<div class="col-md-10 d-flex p-0 filters-inside-selection"></div>
							<div class="col-md-2 text-right p-0">
								<button type="submit" class="btn theme_color f-14 font-weight-bold p-0" id="userDetail_reset" data-type="resetUserDetail" onclick="resetuserDetailFilters(this)">Reset</button>
							</div>
						</div>
						
						<div class="row very-light-pink-grey-bg m-0">
							<div class="col-md-3 p-0 pl-20">
								<div class="nav flex-column nav-pills taskdetail-tab-list" id="user_detail-tab"
									role="tablist" aria-orientation="vertical">
									
								</div>
							</div>


							<div class="col-md-9 bg-white p-0">
								<div class="tab-content h-100" id="user_detail-tabTabContent">
							
								</div>
							</div>
						</div>
						
					
						
						
						
						<!-- end of task detail -->
					</div>
						
						
				  <div class="tab-pane fade" id="agentDetails" role="tabpanel" aria-labelledby="agentDetails-tab">
				  	<!-- start of agent detail content -->		
				  	<div class="row m-0 pt-35 pl-40 pr-40" id="agent_details">				
				  		
				  	</div>		
				  	
				  
				  	
				  	<div class="row m-0">
				  		<div class="col-md-8 p-0">
				  			<div class="f-16 fw-500 black pt-30 pl-40 pb-10">	Playbook Stats</div>
				  			<div class="row border-bottom-dashed-separation m-0 pl-40 pr-40 pb-40" id="playbook_status">
				  				
				  			</div>
				  			<div class="row m-0 pt-40 pl-40">
				  				<div class="col-md-6 fw-500 f-16 black p-0">Targeting Activities</div>
				  			</div>
				  			
				  			<div class="row m-0">
				  				<div class="col-md-12 p-0 pl-40 pr-40">
				  				
				  				<ul class="nav nav-tabs saleken pt-20 pb-20 position-relative" id="myTab" role="tablist" style="border: none !important;">
								  <li class="nav-item">
								    <a class="nav-link active border-istar-left-0 " id="days-tab" data-toggle="tab" href="#days" role="tab" aria-controls="days" aria-selected="true">Days</a>
								  </li>
								  <li class="nav-item">
								    <a class="nav-link border-istar-left-0 " id="week-tab" data-toggle="tab" href="#week" role="tab" aria-controls="week" aria-selected="false">Week</a>
								  </li>
								  <li class="nav-item">
								    <a class="nav-link  border-istar-left-0" id="month-tab" data-toggle="tab" href="#month" role="tab" aria-controls="month" aria-selected="false">Month</a>
								  </li>
								</ul>
								<div class="tab-content pb-35" id="myTabContent">
								  <div class="tab-pane fade show active" id="days" role="tabpanel" aria-labelledby="days-tab">
								  	<div id="container" style="height:200px"></div>
								  </div>
								  <div class="tab-pane fade" id="week" role="tabpanel" aria-labelledby="week-tab">...</div>
								  <div class="tab-pane fade" id="month" role="tabpanel" aria-labelledby="month-tab">...</div>
								</div>
				  				
				  				<div class="d-flex position-absolute align-items-center" style="top: 4%; left: 45%;">
				  					<div class="greyish-brown f-14">2nd Week</div>
				  					<button class="btn greyish-black pr-0"><i class="fas fa-chevron-left"></i></button>
				  					<button class="btn brown-grey"><i class="fas fa-chevron-right"></i></button>
				  				</div>
				  				
				  				<div class="d-flex position-absolute" style="top: 8%; left: 71%;">
				  					<div class="hw-15 blue-bg mr-10 rounded"></div> <div class="brownish-grey f-12 mr-15">New Calls</div>
				  					<div class="hw-15 green-bg mr-10 rounded"></div> <div class="brownish-grey f-12 mr-15">Connected Calls</div>
				  					<div class="hw-15 orange-bg mr-10 rounded"></div> <div class="brownish-grey f-12 mr-15">Follow Up</div>
				  				</div>
							   	
							   		
							   		<div class="d-flex pb-60	">
							   			<div class="col-md-3 p-0 border-right-dashed-separation-2px">
							   				<div class="black font-weight-bold f-30">12%</div>
							   				<div class="brownish-grey f-12">Win Rate</div>
							   			</div>
							   			<div class="col-md-3 p-0 border-right-dashed-separation-2px pl-15">
							   				<div class="black font-weight-bold f-30">24%</div>
							   				<div class="brownish-grey f-12">Utilisation </div>
							   			</div>
							   			<div class="col-md-3 p-0 pl-15">
							   				<div class="black font-weight-bold f-30">46% </div>
							   				<div class="brownish-grey f-12">Talk Ratio </div>
							   			</div>
							   			
							   		</div>
							   	
							    </div>
							</div>
							   
							
				  			
				  		</div>
				  			
				  		<div class="col-md-4 cream_white theme_solid_border_left p-0 pl-40 pr-40 pt-30 pb-30 ">
				  			<div class="f-16 fw-500 black">Comments</div>
				  			<div id="comment_section">
				  			
				  			</div>
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
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="<%=baseURL%>assets/js/userDetail.js"></script>

<script>

var contextPath=$('body').data('baseurl');
	$( document ).ready(function() {
		
		userDetailTab();
		
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
				'starSvg': '<svg xmlns="http://www.w3.org/2000/svg"  viewBox="0 0 24 24"><defs> <style>.cls-1{fill:none}.cls-2{clip-path:url(#clip-path)}</style><clipPath id="clip-path">             <path d="M0 0h24v24H0z" class="cls-1"/>         </clipPath>     </defs>     <g id="Component" class="cls-2">         <path id="Rectangle_936" d="M0 0h24v24H0z" class="cls-1" data-name="Rectangle 936"/>         <path id="Path_59" d="M965.57 1814.81a.846.846 0 0 1-.461-.136l-4.78-3.1-4.78 3.1a.848.848 0 0 1-1.277-.942l1.5-5.3-4.467-3.776a.848.848 0 0 1 .487-1.494l5.359-.385 2.412-5.276a.848.848 0 0 1 1.543 0l2.412 5.276 5.359.385a.848.848 0 0 1 .487 1.494l-4.468 3.776 1.5 5.3a.848.848 0 0 1-.816 1.078zm-5.241-5.092a.847.847 0 0 1 .461.136l3.353 2.172-1.034-3.664a.848.848 0 0 1 .269-.878l3.294-2.785-3.783-.272a.848.848 0 0 1-.711-.493l-1.849-4.046-1.849 4.046a.848.848 0 0 1-.711.493l-3.783.272 3.294 2.785a.848.848 0 0 1 .269.878l-1.034 3.664 3.353-2.172a.847.847 0 0 1 .461-.136z" class="cls-3" data-name="Path 59" transform="translate(-948 -1794)"/>     </g> </svg> '
			});
		});
		

		
	});
		/* end of rating bar js code */
		

	///**************************************************
		function userDetailTab(){
			$('#userDetail_filter_selections').find('.filters-inside-selection').empty();
			$('#userDetail_filter_selections').hide();
			
			var filterObj={}
			/*Selection of date filter*/
			var time_value = $('#userDetail_datepicker').attr('data-name');
			var time_value_id = $('#userDetail_datepicker').attr('data-id');
			filterObj.time={};
			addFilterSelections("userDetail","time",time_value,time_value_id,filterObj.time)
			
			
			/*Selection of stage filter*/
			var stage = $('#userDetail_stage').attr('data-name');
			var stage_id = $('#userDetail_stage').attr('data-id');
			filterObj.stage={};
			addFilterSelections("userDetail","stage",stage,stage_id,filterObj.stage)
			
			/*Selection of activity filter*/
			var activity = $('#userDetail_activity').attr('data-name');
			var activity_id = $('#userDetail_activity').attr('data-id');
			filterObj.activity={};
			addFilterSelections("userDetail","activity",activity,activity_id,filterObj.activity)
			
			/*Selection of status filter*/
			var status = $('#userDetail_status').attr('data-name');
			var status_id = $('#userDetail_status').attr('data-id');
			filterObj.status={};
			addFilterSelections("userDetail","status",status,status_id,filterObj.status)
			
			/*Selection of leads filter*/
			var status = $('#userDetail_leads').attr('data-name');
			var status_id = $('#userDetail_leads').attr('data-id');
			filterObj.status={};
			addFilterSelections("userDetail","leads",status,status_id,filterObj.status)
			
		var userDetail_array=[];
			for(var i =0;i<4;i++){
				var userDetail={};
				userDetail.id= i;
				userDetail.name="name"+i;
				switch(i){ 
				case 0:
					userDetail.taskType="SALES_CALL_TASK";
					userDetail.image = contextPath+"assets/image/calltask.svg";
					break;
				case 1:
					userDetail.taskType="SALES_EMAIL_TASK";
					userDetail.image = contextPath+"assets/image/emailtask.svg";
					break;
				case 2:
					userDetail.taskType="SALES_WEBINAR_TASK";
					userDetail.image = contextPath+"assets/image/webinartask.svg";
					break;
				case 3:
					userDetail.taskType="SALES_PRESENTATION_TASK";
					userDetail.image = contextPath+"assets/image/presentation.svg";
					break;
				default:
					userDetail.taskType="SALES_PRESENTATION_TASK";
					userDetail.image = contextPath+"assets/image/call.svg";
				}
				userDetail_array.push(userDetail);
			}
			
			var userDetail_promises = [];
			for(var  userDetail of userDetail_array){
				userDetail_promises.push(fetchuserDetailTab(userDetail));
			}
			$( "#user_detail-tab" ).empty();
			var fetchAllCall = Promise.all(userDetail_promises.map(p => p.catch(error => { console.log(error); return null; })));
			fetchAllCall.then((results) =>{
				for(var userDetailTabHtml of results){
					  $( "#user_detail-tab" ).append( userDetailTabHtml );

				}
				var first_user_detail_id = $($( "#user_detail-tab" ).children()[0]).data('id');
				var user_detail_tasktype= $($( "#user_detail-tab" ).children()[0]).data('tasktype');
				console.log(first_user_detail_id);
				 $('#user_detail_'+first_user_detail_id+'-tabs').tab('show')

				 populateuserdetailTabContent(first_user_detail_id);
				//taskdetail tab change event
				 $('#user_detail-tab').on('shown.bs.tab', function (e) {
					
					 var id =  $(e.target).data('id');
					 var tasktype =  $(e.target).data('tasktype');
					 populateuserdetailTabContent(id,tasktype);
					}); 
			});	
		}
		function populateuserdetailTabContent(first_user_detail_id,userdetail_tasktype){
			var userdetail={};
			userdetail.id= first_user_detail_id;
			userdetail.tasktype=userdetail_tasktype;
			var vv = fetchuserdetailTabContent(userdetail);
			vv.done(function(data){
				$('#user_detail-tabTabContent').empty();
				$('#user_detail-tabTabContent').append(data);
				loadUserWhatsRight();

			});
		}

		function fetchuserDetailTab(userDetail){
			return $.post(contextPath+"report/user/customer_user/user_detail/user_detail_tab.jsp",JSON.stringify(userDetail));
		}	
		function  fetchuserdetailTabContent(userdetail){
			switch(userdetail.tasktype){
			case "SALES_CALL_TASK":
			return $.post(contextPath+"report/user/customer_user/user_detail/user_detail_tabcontent/userCallTaskModal.jsp",JSON.stringify(userdetail));
			case "SALES_EMAIL_TASK":
			return $.post(contextPath+"report/user/customer_user/user_detail/user_detail_tabcontent/userEmailTaskModal.jsp",JSON.stringify(userdetail));
			case "SALES_WEBINAR_TASK":
			return $.post(contextPath+"report/user/customer_user/user_detail/user_detail_tabcontent/userWebinarTaskModal.jsp",JSON.stringify(userdetail));
			default:
				return $.post(contextPath+"report/user/customer_user/user_detail/user_detail_tabcontent/userCallTaskModal.jsp",JSON.stringify(userdetail));
			}

		}
	 
		
		/*	start of filter drop down*/ 
		function userDetail_leads_dropdown(elem){
			var filter = $(elem).text();
			var filter_id = $(elem).data('id');
			$('#userDetail_leads').attr('data-id',filter_id);
			$('#userDetail_leads').attr('data-name',filter);
			userDetailTab();
		};
		function userDetail_stage_dropdown(elem){
			var filter = $(elem).text();
			var filter_id = $(elem).data('id');
			$('#userDetail_stage').attr('data-id',filter_id);
			$('#userDetail_stage').attr('data-name',filter);
			userDetailTab();
		};
		
		function userDetail_activity_dropdown(elem){
			var filter = $(elem).text();
			var filter_id = $(elem).data('id');
			$('#userDetail_activity').attr('data-id',filter_id);
			$('#userDetail_activity').attr('data-name',filter);
			userDetailTab();
			
		};
		function userDetail_status_dropdown(elem){
			var filter = $(elem).text();
			var filter_id = $(elem).data('id');
			$('#userDetail_status').attr('data-id',filter_id);
			$('#userDetail_status').attr('data-name',filter);
			userDetailTab();
			
		};
		
		$('#userDetail_datepicker').change(function(){
			$('#userDetail_datepicker').attr('data-id',this.value)
			$('#userDetail_datepicker').attr('data-name',this.value)
			userDetailTab();
		})
		
		//<---------------GLOBAL FUNCTIONS FOR EACH TAB TO ADD FILTER TAGS
		function getfilterhtml(filter, id, filter_type){
			return '<button class="theme_solid_border bg-white brown-grey rounded f-12 position-relative search-filter ml-10" data-id="'+id+'">'+filter+
					'<i class="fas fa-times-circle brown-grey bg-white rounded-circle f-14 cross-btn" data-type="'+filter_type+'" onclick="removeFilter(this)"></i> </button>'
		}
		function addFilterSelections(tab,filter,name,id,obj){
			
			if(name!="" && name!= undefined && id!="" && id != undefined){
				
				obj.name=name;
				obj.id=id;
				$('#'+tab+'_filter_selections').find('.filters-inside-selection').append(getfilterhtml(name,id,tab+'_'+filter));
				$('#'+tab+'_filter_selections').show();
			}
		}
		//--------------------------------------------->
//<---------------------------RESET FILTERS LOGIC
//common function to reset each tab's filter
function resetuserDetailFilters(button){
	var tab = $(button).data('type');
	switch(tab){
	case "resetUserDetail":
			$('#userDetail_filter_selections').hide();
			$('#userDetailTab+#userDetailTabContent').find('.select_focus').each(function(){
				removeAllDataAttributes($(this).find('.istar-dropdown-arrow.dropdown-toggle'));
			});
			removeAllDataAttributes($("#userDetail_datepicker"));
			userDetailTab();
		break;
	case "userCallTimeline":
		$('#usercallTimeline_filter_selections').hide();
		$('#usercall_timeline_filter').find('.select_focus').each(function(){
			removeAllDataAttributes($(this).find('.istar-dropdown-arrow.dropdown-toggle'));
		});
		removeAllDataAttributes($("#usercallTimeline_datepicker"));
		removeAllDataAttributes($("#usercallTimeline_dropdown"));
		loadUsertaskTimeline();
		break;
	case "userWebTimeline":
		$('#userwebTimeline_filter_selections').hide();
		$('#usertweb_adherence_filter').find('.select_focus').each(function(){
			removeAllDataAttributes($(this).find('.istar-dropdown-arrow.dropdown-toggle'));
		});
		removeAllDataAttributes($("#userwebTimeline_datepicker"));
		removeAllDataAttributes($("#userwebTimeline_dropdown"));
		loadUserWebtaskTimeline();
		break;
	case "userCallAdherence":
		$('#usercall_filter_selections').hide();
		$('#user_adherence_filter').find('.select_focus').each(function(){
			removeAllDataAttributes($(this).find('.istar-dropdown-arrow.dropdown-toggle'));
		});
		removeAllDataAttributes($("#usercall_adher_datepicker"));
		removeAllDataAttributes($("#usercallAdherence_dropdown"));
		loadUsertaskAdherence();
		break;
	case "userWebAdherence":
		$('#userweb_filter_selections').hide();
		$('#userweb_adherence_filter').find('.select_focus').each(function(){
			removeAllDataAttributes($(this).find('.istar-dropdown-arrow.dropdown-toggle'));
		});
		removeAllDataAttributes($("#userweb_adher_datepicker"));
		removeAllDataAttributes($("#userwebAdherence_dropdown"));
		loadUserWebtaskAdherence();
		break;
	}
}
//remove given data attributes from the element given
function removeAllDataAttributes(elem){
		elem.attr('data-id',"");
		elem.attr('data-name',"");
		elem.attr('data-agents',null);
		elem.attr('data-teams',null);
}
//------------------------------------------------------>
function showUserDetailCalendar(){
	$('#userDetail_datepicker').datepicker('show');
}
$('#userDetail_datepicker').datepicker({
	autoclose : true,
})

function removeFilter(button){
		var type = $(button).data('type');
		var tabType=type.split('_')[0];
		var id=$(button).parent().data('id')
		console.log(tabType);
		var filter;
		switch(type){
			case tabType+"_leads":
				filter = $('#'+tabType+'_persona')
				break;
			case tabType+"_stage":
				filter = $('#'+tabType+'_stage')
				break;
			case tabType+"_activity":
				filter = $('#'+tabType+'_activity')
				break;
			case tabType+"_status":
				filter = $('#'+tabType+'_status')
				break;
			case tabType+"_time":
				filter = $('#'+tabType+'_datepicker')
				break;
			case tabType+"_deal":
				filter = $('#'+tabType+'_deal')
				break;
			case tabType+"_Adherence_success":
				filter = $('#'+tabType+'Adherence_success')
				break;
			case tabType+"_success":
				filter = $('#'+tabType+'_success')
				break;
			case tabType+"_persona":
				filter = $('#'+tabType+'_persona')
				break;
			case tabType+"_timelinedate":
				filter = $('#'+tabType+'_datepicker')
				break;
			case tabType+"_adherdate":
				filter = $('#'+tabType+'_adher_datepicker')
				break;
			case tabType+"_agents":
				filter = $('#'+tabType+'_dropdown')
				var agents = JSON.parse($('#'+tabType+'_dropdown').attr('data-agents'));
				agents=agents.filter(function(agent){return agent.id!==id;})
				filter.attr('data-agents',JSON.stringify(agents))
				break;
			case tabType+"_teams":
				filter = $('#'+tabType+'_dropdown')
				var teams = JSON.parse($('#'+tabType+'_dropdown').attr('data-teams'));
				teams=teams.filter(function(team){return team.id!==id;})
				filter.attr('data-teams',JSON.stringify(teams))
				break;
			case tabType+"_Adherence_Agents":
				filter = $('#'+tabType+'Adherence_dropdown')
				var agents = JSON.parse($('#'+tabType+'Adherence_dropdown').attr('data-agents'));
				agents=agents.filter(function(agent){return agent.id!==id;})
				filter.attr('data-agents',JSON.stringify(agents))
				break;
			case tabType+"_Adherence_Teams":
				filter = $('#'+tabType+'Adherence_dropdown')
				var teams = JSON.parse($('#'+tabType+'Adherence_dropdown').attr('data-teams'));
				teams=teams.filter(function(team){return team.id!==id;})
				filter.attr('data-teams',JSON.stringify(teams))
				break;
			case tabType+"_Timeline_Agents":
				filter = $('#'+tabType+'_dropdown')
				var agents = JSON.parse($('#'+tabType+'_dropdown').attr('data-agents'));
				agents=agents.filter(function(agent){return agent.id!==id;})
				filter.attr('data-agents',JSON.stringify(agents))
				break;
			case tabType+"_Timeline_Teams":
				filter = $('#'+tabType+'_dropdown')
				var teams = JSON.parse($('#'+tabType+'_dropdown').attr('data-teams'));
				teams=teams.filter(function(team){return team.id!==id;})
				filter.attr('data-teams',JSON.stringify(teams))
				break;	
		
		}
		filter.attr('data-id',"");
		filter.attr('data-name',"");
		switch(tabType){
			case "userDetail":
				userDetailTab();
				break;
			case "usercall":
				loadUsertaskAdherence();
				break;
			case "userweb":
				loadUserWebtaskAdherence();
				break;
			case "usercallTimeline":
				loadUsertaskTimeline();
				break;
			case "userwebTimeline":
				loadUserWebtaskTimeline();
				break;
			
		}
		
	}
/* ************************************************************	start of sub-tab js  **********************************************************************************/
function  loadUserWhatsRight(){

	
	$.get(contextPath+"report/user/customer_user/user_detail/user_detail_tabcontent/user_call_task_tab_content/user_whatsright_sub_tab_content.jsp", function(data) {
		$('#userwhatsright').html(data);
	});
}

function  loadUserWhatsWrong(){
	
	$.get(contextPath+"taskDetails/task_lead_detail/task_lead_details_content/lead_call_task_tab_content/user_whatswrong_sub_tab_content.jsp", function(data) {
		$('#userwhatswrong').html(data);
	});
}
//<------------------------AGENT TEAM FILTER DROP DOWN POPULATE
//populate agents in all filters
function loadUserAllAgentFilterTab(){
	var userList=[{
		id:1,
		name:"Nice",
		image:contextPath+"/assets/image/11.png",
		teamName:"Team - 01"
	},{
		id:2,
		name:"wassup???",
		image:contextPath+"/assets/image/11.png",
		teamName:"Team - 02"
	},{
		id:6,
		name:"Meet",
		image:contextPath+"/assets/image/11.png",
		teamName:"Team - 03"
	},{
		id:192,
		name:"You",
		image:contextPath+"/assets/image/11.png",
		teamName:"Team - 04"
	}]
	
	populateAgentListDropDown(userList,"userCallAdher")
	populateAgentListDropDown(userList,"userCallTimeline")
	populateAgentListDropDown(userList,"userWebAdher")
	populateAgentListDropDown(userList,"userWebTimeline")
	
}
//populate teams in all filters
function loadUserAllTeamFilterTab(){
	var teamList=[{
		id:1,
		name:"Team - 01"
	},{
		id:12,
		name:"Team - 02"
	},{
		id:62,
		name:"Team - 03"
	},{
		id:162,
		name:"Team - 04"
	}]
	
	populateTeamListDropDown(teamList,"userCallAdher")
	populateTeamListDropDown(teamList,"userCallTimeline")
	populateTeamListDropDown(teamList,"userWebAdher")
	populateTeamListDropDown(teamList,"userWebTimeline")
}
//Common function to populate Agents in Drop down for all tabs
function populateAgentListDropDown(userList,tabName){
	 for(var i=0;i<userList.length;i++){
		 	
			var html='<div class="d-flex align-items-center pt-3">'+
				'<input class="istar-checkbox '+tabName+'agentcheckbox" data-user=\''+JSON.stringify(userList[i])+'\'data-id="'+userList[i].id+'" id="'+tabName+'_associate-checkbox'+userList[i].id+'" type="checkbox">'+
				'<label class="istar-checkbox-style" for="'+tabName+'_associate-checkbox'+userList[i].id+'"></label>'+
				'<img alt="Agent Image" title="Agent Name" src ="'+userList[i].image+'" class="rounded-circle ml-3 mr-2 hw-40"> <div>'+
				'<div class="f-14 font-weight-bold greyish-brown text-truncate" title="'+userList[i].name+'">'+userList[i].name+'</div>'+
				'<div class="f-12  brownish-grey text-truncate" title="team">'+userList[i].teamName+'</div> </div></div>';
			$('.'+tabName+'-agent-list').append(html);
			console.log('.'+tabName+'-agent-list')
		}
}
//Common function to populate Team in Drop down for all tabs
function populateTeamListDropDown(teamList,tabName){
	 for(var i=0;i<teamList.length;i++){
			var html='<div class="d-flex align-items-center pt-3">'+
				'<input class="istar-checkbox '+tabName+'teamcheckbox" data-team=\''+JSON.stringify(teamList[i])+'\' data-id="'+teamList[i].id+'" id="'+tabName+'_team-checkbox'+teamList[i].id+'" type="checkbox">'+
				'<label class="istar-checkbox-style" for="'+tabName+'_team-checkbox'+teamList[i].id+'"></label><div class="f-12 ml-2 brownish-grey">'+teamList[i].name+'</div></div>';
			$('.'+tabName+'-team-list').append(html);
		}
}	
//---------------------------------------------->
/*	end of filter drop down*/ 

	
	$.get(contextPath+"report/user/customer_user/user_detail/agent_detail_tab_content.jsp", function(data) {
		$('#agent_details').html(data);
	});
	$.get(contextPath+"report/user/customer_user/user_detail/agent_playbook_status.jsp", function(data) {
		$('#playbook_status').html(data);
	});
	$.get(contextPath+"report/user/customer_user/user_detail/agent_comments.jsp", function(data) {
		$('#comment_section').html(data);
	});


</script>
</body>
</html>