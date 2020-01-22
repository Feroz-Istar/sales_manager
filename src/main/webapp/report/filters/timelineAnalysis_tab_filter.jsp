<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>
<div class="overall_analysis">
	<div class="row m-0 theme_dashed_border_bottom ml-40 mr-40 pt-20 pb-20" id="">
		<div class="col-md-4 p-0 overall_title">
			<h5 class="f-20 fw-500 black">Overall Analysis</h5>
		</div>
		<div class="col-md-8 d-flex justify-content-end p-0">
			<div class="input-group date custom-calendar mr-10">
				<input type="text" id="timeline_datepicker" class="form-control  custom-dateselect" value="12-02-2012" placeholder="Calendar">
				<div class="input-group-addon" onclick="showTimelineCalendar()">
					<img src="<%=baseURL%>/assets/image/calendar.svg" alt="calendar" class="pr-1 hw-24">
				</div>
			</div>
			<div class="istar-dropdown-task select_focus mr-10">
				<button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="timeline_persona" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					<span class="sr-only">Toggle Dropdown</span> <span id="report_timeline_drop">All Persona</span> <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
				</button>
				<div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="report_timeline_persona" id="">
					<button class="dropdown-item" type="button" data-id="23" onclick="report_timeline_persona(this)">Persona 1</button>
					<button class="dropdown-item" type="button" data-id="3" onclick="report_timeline_persona(this)">Persona 2</button>
				</div>
			</div>
			<div class="istar-dropdown-task select_focus mr-10">
				<button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="timeline_success" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					<span class="sr-only">Toggle Dropdown</span><span id="report_timeline_success_drop">Filter by Success</span> <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
				</button>
				<div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="report_timeline_success">
					<button class="dropdown-item" type="button" data-id="1" onclick="report_timeline_success(this)">Lead 1</button>
					<button class="dropdown-item" type="button" data-id="2" onclick="report_timeline_success(this)">Lead 2</button>
				</div>
			</div>
			<div class="istar-dropdown-task dropdown select_focus" id="overall-analysis-filter">
				<button class="istar-dropdown-arrow " data-display="static" id="timeline_dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					<span class="sr-only">Toggle Dropdown</span> All Agents <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
				</button>
				<div class="dropdown-menu filter-menu dropdown-menu-right istar-dropdown-task-menu  dropdown-menu-lg-right position-absolute px-4" aria-labelledby="overallAnalysis_dropdown" style="width: 350px;">
					<ul class="dropdown-nav nav nav-tabs nav-mytabs filtertabs pt-2 d-flex align-items-end" id="overallAnalysisTab" role="tablist">
						<li class="nav-item"><a class="nav-link active" id="overallAnalysis_individual-tab" data-toggle="tab" href="#overallAnalysis_individual" role="tab" aria-controls="overallAnalysis_individual" aria-selected="true">Individual</a></li>
						<li class="nav-item"><a class="nav-link" id="overallAnalysis_team-tab" data-toggle="tab" href="#overallAnalysis_team" role="tab" aria-controls="overallAnalysis_team" aria-selected="false">Team</a></li>
					</ul>
					<div class="tab-content" id="overallAnalysisTabContent">
						<div class="tab-pane fade show active px-4 py-3" id="overallAnalysis_individual" role="tabpanel" aria-labelledby="overallAnalysis_individual-tab">
							<div class="input-group py-2">
								<input id="overallAnalysis_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
								<div class="input-group-append">
									<button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
										<i class="fa fa-search f-12 brown-grey"></i>
									</button>
								</div>
							</div>
							<div class="timeline-agent-list mb-2" style="overflow-x: hidden; overflow-y: auto;">
							</div>
						</div>
						<div class="tab-pane fade px-4 py-3" id="overallAnalysis_team" role="tabpanel" aria-labelledby="overallAnalysis_team-tab">
							<div class="input-group py-2">
								<input id="overallAnalysis_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
								<div class="input-group-append">
									<button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
										<i class="fa fa-search f-12 brown-grey"></i>
									</button>
								</div>
							</div>
							<div class="timeline-team-list mb-2" style="overflow-x: hidden; overflow-y: auto;">
								
							</div>
						</div>
					</div>
					<div class="w-100 text-center">
						<button class="btn  rounded-0 theme_bg text-white f-14 font-weight-bold  mb-3 text-center px-3" style="min-width: 200px;" id="overallAnalysis_team_submit">Submit</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row cream_white m-0 theme_solid_border_bottom justify-content-between align-items-center pl-40 pr-40 pt-10 pb-10" id="timeline_filter">
		<div class="col-md-10 d-flex p-0 filters-inside-selection">
		</div>
		<div class="col-md-2 text-right p-0">
			<button type="submit" class="btn theme_color f-14 font-weight-bold p-0" id="overall_analysis_reset" data-type="timeline" onclick="resetFilters(this)">Reset</button>
		</div>
	</div>