<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Salesken - Create task</title>
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
<link rel="stylesheet" href="<%=baseURL%>assets/css/createTask.css">
<link href="<%=baseURL%>assets/css/bootstrap-datepicker3.min.css?xsww"
	rel="stylesheet">
<link rel="stylesheet" href="<%=baseURL%>assets/css/all.css">
<link rel="stylesheet"
	href="<%=baseURL%>assets/css/salesken_style_media_query.css">

</head>
<body data-base-url="<%=baseURL%>" onload="load()">
	<jsp:include page="../navbar/nav.jsp"></jsp:include>

	<main role="main">
	<div class="container-fluid salesken_container">
	
		<div class="row grey-white-bg align-items-center theme_solid_border_bottom justify-content-between m-0 pl-40 pt-10 pb-10 pr-40	">
			<div class="col-md-6 col-12 d-flex align-items-center p-0">
				<i class="fas fa-arrow-left black f-20 cursor-pointer pr-20" data-toggle="modal" data-target="#leaveTaskConfirmation"></i>
				<div
					class="display-1 black f-20 border-right-separation fw-500 pr-20">Accenture Consulting Inc.</div>
				<div class=" f-12 brown-grey pl-20 pr-10">Dashboard</div>
				<i class="fas fa-chevron-circle-right pr-10 f-12 brown-grey"></i>
				<div class=" f-12 brown-grey fw-500  " id="breadcrumb">Accenture Consulting Inc.</div>
			</div>
		</div>
		
			<div class="row bg-white m-0 ">
			
				<div class="col-md-11 p-0" id="crm_closed">
						<jsp:include page="../popover/joinClosedCRM.jsp"></jsp:include> 
						<%-- <jsp:include page="../popover/joinTaskCRM.jsp"></jsp:include>--%>
				</div>
			<div class="float-right col-md-1 p-0 z-9" id="calldropleft">
						<div class=" dropleft" >
													<button type="button"
														class="btn btn-secondary dropdown-toggle"
														data-toggle="dropdown" aria-haspopup="true"
														aria-expanded="false" style="display:none" id="connected_call_task_content">Dropleft</button>
													<div class="dropdown-menu upcoming_task_content m-0 connected_call_task_content" aria-labelledby="connected_call_task_content">
														<!-- Dropdown menu links -->
													</div>
												</div>
												<ul
													class="list-group shadow d-flex flex-column h-100  taskpopup">
													
													
													<li class="notesdropdown list-group-item p-0 py-3">
														<div
															class=" d-flex flex-column justify-content-center align-items-center minh-50 " data-dropdown_id="connected_call_task_content"
															>
															<img src="<%=baseURL%>assets/image/notes.svg" alt="notes" />
															<div class="f-12 pt-1 greyish-brown">Notes</div>
															
														</div>
													</li>
													<li class="chatdropdown list-group-item  p-0 py-3 " >
														<div
															class="  d-flex flex-column justify-content-center align-items-center minh-50" data-dropdown_id="connected_call_task_content"
															>
															<img src="<%=baseURL%>assets/image/chat.svg" alt="presentation"/>
															<div class="f-12 pt-1 greyish-brown">Chat</div>
															
														</div>
													</li>
													<li class="crmdropdown list-group-item p-0 py-3" id="join_crm" onclick="openCRM()" >
														<div class=" d-flex flex-column justify-content-center align-items-center minh-50" >
															<img src="<%=baseURL%>assets/image/crm.svg" alt="crm" />
															<div class="f-12 pt-1 greyish-brown">CRM</div>
															
														</div>
													</li>
													


													<li class=" flex-grow list-group-item d-flex flex-column justify-content-center align-items-center minh-100" style="height: calc(100% - 80px);"></li>


												</ul>
				</div>
			
		</div>
	
	
	<!-- start of leave task modal -->
	<div class="modal fade" id="leaveTaskConfirmation" tabindex="-1" role="dialog" aria-labelledby="leaveTaskConfirmationTitle" aria-hidden="true">
	  <div class="modal-dialog modal-dialog-centered modal-lg	" role="document">
	    <div class="modal-content  rounded-0">
	    <div class="row justify-content-end m-0 pt-25 pr-25">
			<button type="button" class="col-md-1 col-1 close" data-dismiss="modal" aria-label="Close">
				<img src="<%=baseURL%>assets/image/close.svg" alt="close" class="float-right">
			</button>
		</div>
	       <div class="modal-body">
	       		<div class="row m-0 pl-30 pr-30 align-items-center">
	       			<div class="col-md-4 p-0 border-right-dashed-separation pb-15 pt-15 ">
	       				<img src="<%=baseURL%>assets/image/leave-task.svg">
	       			</div>
	       			<div class="col-md-8 p-0 pl-30">
	       				<div class="fw-500 f-20 black">Do you wanna exit this task ?</div>
	       				<div class="f-16 brownish-grey">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ornare eget velit at porttitor</div>
	       			</div>
	       		</div>
	       		
	      </div>
	      <div class="modal-footer border-0 p-0 pl-30 pr-30 pb-30">
			<button type="button" class="btn theme_color f-14 font-weight-bold" data-dismiss="modal">Cancel</button>
			<button type="button" class="btn big_button f-14 font-weight-bold"
				 id="leave-task"  onclick="window.location.href = 'dashboard.jsp'">LEAVE</button>
		</div>
	     </div>
	  </div>
	</div>
	<!-- end of leave task modal -->
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	<script src="<%=baseURL%>assets/js/jquery-3.4.1.min.js"></script>
		<script src="<%=baseURL%>assets/js/popper.min.js"></script>
		<script src="<%=baseURL%>assets/js/bootstrap.min.js"></script>
		<script src="<%=baseURL%>assets/js/bootstrap-datepicker.min.js"></script>
		<script src="<%=baseURL%>assets/js/createTask.js"></script>
		<script src="<%=baseURL%>assets/js/salesken.js"></script>
		<script>
			$(document).ready(function() {
				$('.salesken.navbar-nav>li').removeClass('active');				
			});
			
			
			function openCRM(){
				$('#join_crm').addClass('show');
				var url = location.origin + '/popover/joinTaskCRM.jsp';
				$.get(url, function(data) {
					$('#crm_closed').html(data);
				});
			}
			
			function closeCRM(event){
				if (event.isTrusted){
					$('#join_crm').removeClass('show');
					var url = location.origin + '/popover/joinClosedCRM.jsp';
					$.get(url, function(data) {
						$('#crm_closed').html(data);
					});
				}
				
			}
			
		
			
		</script>
		</div>
	</main>
	</body>
</html>
	