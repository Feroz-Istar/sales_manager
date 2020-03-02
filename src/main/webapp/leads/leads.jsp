<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>


<div class="row grey-white-bg theme_solid_border_bottom align-items-center  m-0 pl-40 pr-40 pt-10 pb-10">
	<div class="col-md-6 col-12 d-flex align-items-center p-0">
		<div class="display-1 black f-20 border-right-separation fw-500 pr-20">Leads</div>
		<div class="f-12 brown-grey pl-20">Dashboard</div>
		<i class="fas fa-chevron-circle-right f-12 brown-grey pl-2 pr-2"></i>
		<div class=" f-12 brown-grey fw-500" id="breadcrumb">Leads</div>
	</div>
	<div class="col-md-6 col-12 d-lg-flex justify-content-md-end p-0">
		<div class="input-group position-relative search_width ">
			<img src="<%=baseURL%>assets/image/search.svg" alt="edit" class=" searchBox"> <input id="leads_search" class="form-control  custom-taskborder brown-grey  f-14 search_height custom-result-selects" type="search" placeholder="Search" style="padding-right: 30px">
		</div>
		<button class="btn small_button rounded-0 f-12 dropdown-toggle font-weight-bold ml-10" data-toggle="modal" data-target="#addLeadModalCenter">UPLOAD NEW</button>
	</div>
</div>
<div class="row m-0">
	<div class="col-md-12 bg-white p-0 pt-10">
		<ul class="nav nav-tabs nav-mytabs ml-40 mr-40 d-flex align-items-end" id="leadsTab" role="tablist">
			<li class="nav-item"><a class="nav-item nav-link active" id="nav-target-tab" data-toggle="tab" href="#nav-target" role="tab" aria-controls="nav-target" aria-selected="true">Target</a></li>
			<li class="nav-item"><a class="nav-item nav-link" id="nav-qualified-tab" data-toggle="tab" href="#nav-qualified" role="tab" aria-controls="nav-qualified" aria-selected="false">Qualified</a></li>
			<li class="nav-item"><a class="nav-item nav-link" id="nav-lost-tab" data-toggle="tab" href="#nav-lost" role="tab" aria-controls="nav-lost" aria-selected="false">Lost Leads</a></li>
			<li class="nav-item"><a class="nav-item nav-link" id="nav-win-tab" data-toggle="tab" href="#nav-win" role="tab" aria-controls="nav-win" aria-selected="false">Won Leads</a></li>
		</ul>
		<div class="tab-content p-0 mytab-content" id="nav-tabContent">
			<div class="tab-pane fade show active" id="nav-target" role="tabpanel" aria-labelledby="nav-target-tab">
				<!-- start of target content -->
				<jsp:include page="filters/target_tab_filter.jsp"></jsp:include>
				<!----------------------------------------------start of target leads card and contents --------------------------------------------------- -->
				<div class="" id="target_tab_contnet_card"></div>
				<div class="" id="target_tab_contnet"></div>
				<!----------------------------------------------end of target leads card and contents --------------------------------------------------- -->
				<div class="row m-0 ">
					<div class="col-md-12 d-flex justify-content-end p-0 target-pagination">
						<div class="page">
							<ul class="salesken pagination m-0  pt-30 pb-40 pr-40 "></ul>
						</div>
					</div>
				</div>
				<!-- end of target content -->
			</div>
			<div class="tab-pane fade" id="nav-qualified" role="tabpanel" aria-labelledby="nav-qualified-tab">
				<!-- start of qualified tab content-->
				<jsp:include page="filters/qualified_tab_filter.jsp"></jsp:include>
				<!----------------------------------------------start of qualified leads card and contents --------------------------------------------------- -->
				<div class="" id="qualified_tab_content_card"></div>
				<div class="" id="qualified_tab_content"></div>
				<!----------------------------------------------end of qualified leads card and contents --------------------------------------------------- -->
				<div class="row m-0">
					<div class="col-md-12  d-flex justify-content-end p-0 qualified-pagination">
						<div class="page">
							<ul class="salesken pagination m-0  pt-30 pb-40 pr-40"></ul>
						</div>
					</div>
				</div>
				<!-- end of qualified tab content -->
			</div>
			<div class="tab-pane fade" id="nav-lost" role="tabpanel" aria-labelledby="nav-lost-tab">
				<!-- start of lost leads tab content-->
				<jsp:include page="filters/lost_tab_filter.jsp"></jsp:include>
				<!-- -----------------------start of lost lead card  and content------------------------------------------------>
				<div id="lost_leads_content_card"></div>
				<div id="lost_leads_content"></div>
				<!-- -----------------------end of lost lead card and content  ------------------------------------------------>
				<div class="row p-0 m-0">
					<div class="col-md-12 d-flex justify-content-end p-0 lost-pagination">
						<div class="page">
							<ul class="salesken pagination m-0 pt-30 pb-40 pr-40"></ul>
						</div>
					</div>
				</div>
				<!-- end of lost leads tab content -->
			</div>
			<div class="tab-pane fade" id="nav-win" role="tabpanel" aria-labelledby="nav-win-tab">
				<!-- start of won leads content -->
				<jsp:include page="filters/won_tab_filter.jsp"></jsp:include>
				<!----------------------------------------------start of won leads card and contents --------------------------------------------------- -->
				<div id="won_lead_content_card"></div>
				<div id="won_lead_content"></div>
				<!----------------------------------------------end of won leads card and contents --------------------------------------------------- -->
				<div class="row  m-0 ">
					<div class="col-md-12  d-flex justify-content-end p-0 won-pagination">
						<div class="page">
							<ul class="salesken pagination  m-0 pt-30 pb-40 pr-40"></ul>
						</div>
					</div>
				</div>
				<!-- end of won leads content -->
			</div>
		</div>
	</div>
</div>
<!-- start of lost lead modal -->
<jsp:include page="modal/lost_lead_modal.jsp"></jsp:include>
<!-- end of lost lead modal -->
<!-- start of add lead modal -->
<jsp:include page="modal/add_lead_modal.jsp"></jsp:include>
<!-- end of add lead modal -->
<!-- start of won lead modal -->
<jsp:include page="modal/won_lead_modal.jsp"></jsp:include>
<!-- end of won lead modal -->
<!-- start of edit lead modal -->
<jsp:include page="modal/edit_lead_modal.jsp"></jsp:include>
<!-- end of edit lead modal -->
<!-- start of delete modal -->
<jsp:include page="modal/delete_modal.jsp"></jsp:include>
<!-- end of delete modal -->
<!-- start of leave task modal -->
<jsp:include page="modal/leave_task_modal.jsp"></jsp:include>
<!-- end of leave task modal -->

<script src="<%=baseURL%>assets/js/leads/lead.js"></script>
<script src="<%=baseURL%>assets/js/leads/lostjs/lost.js"></script>
<script src="<%=baseURL%>assets/js/leads/wonjs/won.js"></script>
<script src="<%=baseURL%>assets/js/leads/qualifiedjs/qualified.js"></script>
<script src="<%=baseURL%>assets/js/leads/targetjs/target.js"></script>
</body>
</html>