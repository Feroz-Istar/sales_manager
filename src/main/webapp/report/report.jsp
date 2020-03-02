<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
	String usertabs[] = { "All Users", "Sales Team", "Product Team", "Tech Team" };
%>


<div class="row grey-white-bg align-items-center theme_solid_border_bottom m-0 pl-40 pr-40 pt-10 pb-10">
	<div class="col-md-6 col-12 d-flex align-items-center p-0">
		<div class="display-1 black f-20 border-right-separation pr-20 fw-500">Reports</div>
		<div class=" f-12 brown-grey pl-20">Dashboard</div>
		<i class="fas fa-chevron-circle-right f-12 brown-grey pl-2 pr-2"></i>
		<div class="f-12 brown-grey">Report</div>
		<i class="fas fa-chevron-circle-right f-12 brown-grey pl-2 pr-2"></i>
		<div class=" f-12 brown-grey  fw-500" id="breadcrumb">Task</div>
	</div>
</div>
<div class="row m-0">
	<div class="col-md-12 bg-white p-0">
		<ul class="nav nav-tabs nav-mytabs pl-40 pt-10 d-flex align-items-end" id="reportTab" role="tablist">
			<li class="nav-item"><a class="nav-item nav-link active" id="task-tab" data-toggle="tab" href="#task" role="tab" aria-controls="task" aria-selected="true">Playbook Insights</a></li>
			<li class="nav-item"><a class="nav-item nav-link" id="users-tab" data-toggle="tab" href="#users" role="tab" aria-controls="users" aria-selected="false">Users</a></li>
			<li class="nav-item"><a class="nav-item nav-link" id="customer-tab" data-toggle="tab" href="#customer" role="tab" aria-controls="customer" aria-selected="false">Customer</a></li>
			<li class="nav-item"><a class="nav-item nav-link" id="time_analysis-tab" data-toggle="tab" href="#time_analysis" role="tab" aria-controls="time_analysis" aria-selected="false">Timeline Analysis</a></li>
			<li class="nav-item"><a class="nav-item nav-link" id="adherence-tab" data-toggle="tab" href="#adherence" role="tab" aria-controls="adherence" aria-selected="false">Adherence</a></li>
			<li class="nav-item"><a class="nav-item nav-link" id="roi_calculator-tab" data-toggle="tab" href="#roi_calculator" role="tab" aria-controls="roi_calculator" aria-selected="false">ROI Calculator</a></li>
			<li class="nav-item"><a class="nav-item nav-link" id="custom_report-tab" data-toggle="tab" href="#custom_report" role="tab" aria-controls="custom_report" aria-selected="false">Custom Report</a></li>
		</ul>
		<div class="tab-content p-0 mytab-content" id="reportTabContent">
			<div class="tab-pane fade show active" id="task" role="tabpanel" aria-labelledby="task-tab">
				<!-- start of Task tab  content -->
				<div class="row align-items-center  theme_solid_border_bottom m-0 pl-40 pr-40" id="playbook-insight-filter">
					<jsp:include page="filters/task_content_filter.jsp"></jsp:include>
					<div class="row m-0 pl-40 pr-40" id="playbook-insight-content"></div>
					<!-- end of Task tab  content -->
				</div>
				<div class="tab-pane fade" id="users" role="tabpanel" aria-labelledby="users-tab">
					<!-- start of user tab content-->
					<jsp:include page="filters/user_tab_filter.jsp"></jsp:include>
					<div class="row shadow-bottom theme_dotted_border_bottom  pt-25 pb-25 m-0" id="user_tab_summarize_content"></div>
					<div class="row cream_white m-0" id="user_tab_detait_content"></div>
					<!-- end of user tab content -->
				</div>
				<div class="tab-pane fade minh-700" id="customer" role="tabpanel" aria-labelledby="customer-tab">
					<!-- start of customer tab content-->
					<div class="row align-items-center theme_solid_border_bottom m-0">
						<div class="col-md-3 text-result-found p-0 pt-15 pb-15 pl-40">
							<strong class="number-of-results">04</strong> Results Found
						</div>
					</div>
					<div class="row m-0 border-bottom-dashed-separation ml-40 mr-40" id="customer_tab_content"></div>
					<!-- end of customer tab content -->
				</div>
				<div class="tab-pane fade" id="time_analysis" role="tabpanel" aria-labelledby="time_analysis-tab">
					<!-- start of time analysis tab content -->
					<div class="card border-0 card-shadow-bottom" id="time_analysis_card"></div>
					<!-- start of overall analysis -->
					<jsp:include page="filters/timelineAnalysis_tab_filter.jsp"></jsp:include>
					<span id="overall_analysis"></span>
				</div>
				<!-- end of overall analysis -->
				<!-- start of Comparative Analysis -->
				<div class="comparative_analysis" id="comparative_analysis"></div>
				<!-- end of Comparative analysis -->
				<!-- end of time analysis content -->
			</div>
			<div class="tab-pane fade" id="adherence" role="tabpanel" aria-labelledby="time_analysis-tab">
				<!-- start of adherence tab content -->
				<div class="card border-0 card-shadow-bottom" id="adherence_card"></div>
				<jsp:include page="filters/adherence_filter.jsp"></jsp:include>
				<div class="adherence_tab_content_div"></div>
				<!-- end of adherence content -->
			</div>
			<div class="tab-pane fade minh-700" id="roi_calculator" role="tabpanel" aria-labelledby="roi_calculator-tab">
				<!-- start of roi_calculator tab content-->
				<div class="row align-items-center theme_solid_border_bottom m-0 pl-40 pr-40 pt-15 pb-15">
					<div class="col-md-3 text-result-found p-0">
						<strong class="number-of-results">04</strong> Results Found
					</div>
				</div>
				<div class="row cream_white m-0 theme_solid_border_bottom" id="roi_calculator_card"></div>
				<div class="row m-0 border-bottom-dashed-separation ml-40 mr-40 " id="roi_calculator_tab_content"></div>
				<!-- end of roi_calculator tab content -->
			</div>
			<div class="tab-pane fade" id="custom_report" role="tabpanel" aria-labelledby="custom_report">
				<!-- start of custom_report tab content-->
				<div class="row justify-content-center pt-20 pb-20 shadow-bottom theme_solid_border_bottom m-0">
					<div class="col-md-6 p-0">
						<div class="input-group">
							<input id="individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14	" type="search" placeholder="Search here" style="border-right: none !important; height: 35px;">
							<div class="input-group-append">
								<button class="btn theme_bg border_theme removefocus border_except_left px-4 d-flex justify-content-center align-items-center f-12 text-white font-weight-bold" type="button" style="height: 35px;">
									<i class="fa fa-search f-16 mr-2 text-white"></i> SEARCH
								</button>
							</div>
						</div>
					</div>
				</div>
				<div class="before-search" style="display: none">
					<div class="row cream_white m-0 theme_solid_border_bottom pt-10 pb-10 pr-40 pl-40">
						<button class="theme_solid_border bg-white brown-grey rounded f-12 mr-10 " id="2bhk">2 BHK Flats</button>
						<button class="theme_solid_border bg-white brown-grey rounded f-12 mr-10 search-filter" id="badWord">Bad Words</button>
						<button class="theme_solid_border bg-white brown-grey rounded f-12 mr-10 search-filter" id="expensiveFlat">Expensive Flats</button>
					</div>
					<div class="d-flex flex-column justify-content-center align-items-center pt-115 minh-500">
						<img src="<%=baseURL%>assets/image/custom-report.svg" alt="custom report" class="pb-20" height="111.3" width="119.7">
						<div class="f-16 fw-500 black ">Make a custom report</div>
						<div class="f-12 brownish-grey">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</div>
					</div>
				</div>
				<div class="after-search  " id="after_search_custom_report"></div>
				<!-- end of custom_report tab content -->
			</div>
		</div>
	</div>
</div>

<script src="<%=baseURL%>assets/js/report/report.js"></script>
<script src="<%=baseURL%>assets/js/report/playbookInsights/playbookInsights.js"></script>
<script src="<%=baseURL%>assets/js/report/user/user.js"></script>
<script src="<%=baseURL%>assets/js/report/customer/customer.js"></script>
<script src="<%=baseURL%>assets/js/report/timelineAnalysis/timelineAnalysis.js"></script>
<script src="<%=baseURL%>assets/js/report/adherence/adherence.js"></script>
<script src="<%=baseURL%>assets/js/report/ROIcalculator/ROIcalculator.js"></script>
<script src="<%=baseURL%>assets/js/report/customReport/customReport.js"></script>