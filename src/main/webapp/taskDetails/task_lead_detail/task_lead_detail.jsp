<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%><%@ page language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>





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

		<div
			class="row grey-white-bg align-items-center m-0 theme_solid_border_bottom pl-40 pr-40 pt-10 pb-10">
			<div class="col-md-6 col-12 d-flex align-items-center p-0">
				<i class="fas fa-arrow-left black f-20 cursor-pointer"
					onclick="window.location.href = '../taskDetail.jsp'"></i>
				<div
					class="display-1 black f-20 border-right-separation pr-20  fw-500 pl-20">Accenture
					Consulting Inc.</div>
					<div class="f-12 brown-grey pl-20">Task Detail</div>
				<i class="fas fa-chevron-circle-right pl-2 pr-2 f-12 very-light-pink"></i>
				<div class="f-12 brown-grey ">Completed</div>
				<i class="fas fa-chevron-circle-right pl-2 pr-2 f-12 very-light-pink"></i>
				<div class=" f-12 brown-grey fw-500 " id="breadcrumb">Accenture
					Consulting Inc.</div>
			</div>
		</div>
		<div class="row m-0">
			<div class="col-md-12 bg-white p-0 ">
				<ul class="nav nav-tabs nav-mytabs p-0 pl-40 pt-20 d-flex align-items-end"
					id="agent-details" role="tablist">
					<li class="nav-item"><a class="nav-item nav-link active"
						id="agent-detail-tab" data-toggle="tab" href="#agent-detail"
						role="tab" aria-controls="nav-target" aria-selected="true">Task Details</a></li>
					<li class="nav-item"><a class="nav-item nav-link"
						id="lead-detail-tab" data-toggle="tab" href="#lead-detail"
						role="tab" aria-controls="nav-qualified" aria-selected="false">Lead Details</a></li>
				</ul>
				<div class="tab-content p-0 mytab-content"
					id="agent-details-tabContent">
					<div class="tab-pane fade show active" id="agent-detail"
						role="tabpanel" aria-labelledby="agent-detail-tab">
						<!-- start of target content -->

						<!-- start of task detail content -->
						<div
							class="row align-items-center  theme_solid_border_bottom  pl-40 pr-40 pt-15 pb-15  m-0">
							<div class="col-md-3 p-0 text-result-found	">
								<strong class="number-of-results">04</strong> Result Found
							</div>
							
						</div>

						<div class="row very-light-pink-grey-bg m-0">
							<div class="col-md-3 p-0 border-right pl-20">
								<div class="nav flex-column nav-pills taskdetail-tab-list" id="taskdetail-tab-list"
									role="tablist" aria-orientation="vertical">
									
								</div>
							</div>


							<div class="col-md-9 p-0 bg-white">
								<div class="tab-content h-100" id="taskdetail-tab-listContent">
									
								</div>
							</div>
						</div>



						<!-- end of task detail -->
						<!-- end of target content -->
					</div>

					<div class="tab-pane fade" id="lead-detail" role="tabpanel"
						aria-labelledby="lead-detail-tab">

						<!-- start of lead details tab -->
						
						<!-- End of lead details tab -->
					</div>


				</div>

			</div>
		</div>

	</div>


	<script type="text/javascript" src="http://botmonster.com/jquery-bootpag/jquery.bootpag.js"></script>
	<script src="<%=baseURL%>assets/js/taskdetail/task_lead_detail/task_lead_detail.js"></script>
	<script src="<%=baseURL%>assets/js/taskdetail/task_lead_detail/lead_call_task_modal.js"></script>
	<script src="<%=baseURL%>assets/js/taskdetail/task_lead_detail/lead_email_task_modal.js"></script>
	<script src="<%=baseURL%>assets/js/taskdetail/task_lead_detail/lead_webinar_task_modal.js"></script>
