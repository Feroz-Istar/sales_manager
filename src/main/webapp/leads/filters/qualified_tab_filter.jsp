<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%
         String url = request.getRequestURL().toString();
         String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
         		+ request.getContextPath() + "/";
         %>
<div class="row align-items-center theme_solid_border_bottom m-0" id="qualified-selection">
	<div class="col-md-3 text-result-found p-0 pl-40 ">
		<strong class="qualified-number-of-results">03</strong> Result Found
	</div>
	<div class="col-md-9 d-md-flex justify-content-end p-0 mt-10 mb-10 pr-40 ">
		<div class="input-group date custom-calendar mr-10">
			<input type="text" id="qualified_datepicker" placeholder="Calendar" class="form-control  custom-dateselect" value="12-02-2012">
			<div class="input-group-addon px-1" onclick="showqualifiedCalendar()">
				<img src="<%=baseURL%>/assets/image/calendar.svg" alt="calendar" />
			</div>
		</div>
		<div class="istar-dropdown-task select_focus mr-10 select_focus">
			<button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="qualified_deal_value" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				<span class="sr-only">Toggle Dropdown</span>All Deal Value <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
			</button>
			<div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" data-display="static" aria-labelledby="qualified_deal_value">
				<button class="dropdown-item" type="button" onclick="qualified_deal_dropdown(this)" data-id="1000">$1000</button>
				<button class="dropdown-item" type="button" onclick="qualified_deal_dropdown(this)" data-id="2000">$5000</button>
			</div>
		</div>
		<div class="istar-dropdown-task select_focus mr-10 select_focus">
			<button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="qualified_stage" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				<span class="sr-only">Toggle Dropdown</span>All Stages <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
			</button>
			<div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" data-display="static" aria-labelledby="qualified_stage">
				<button class="dropdown-item" type="button" onclick="qualified_stage_dropdown(this)" data-id="Stage 1">Stage 1</button>
				<button class="dropdown-item" type="button" onclick="qualified_stage_dropdown(this)" data-id="Stage 2">stage 2</button>
			</div>
		</div>
		<div class="istar-dropdown-task select_focus mr-10 select_focus">
			<button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="qualifiedSourceType" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				<span class="sr-only">Toggle Dropdown</span>All Source Type <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
			</button>
			<div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="qualifiedSourceType">
				<button class="dropdown-item" type="button" onclick="qualified_sourcetype_dropdown(this)" data-id="Manual">Manual</button>
				<button class="dropdown-item" type="button" onclick="qualified_sourcetype_dropdown(this)" data-id="Offline">Offline</button>
				<button class="dropdown-item" type="button" onclick="qualified_sourcetype_dropdown(this)" data-id="Outbound">Outbound</button>
			</div>
		</div>
		<div class="istar-dropdown-task dropdown select_focus select_focus" id="qualified-filter">
			<button class="istar-dropdown-arrow " data-display="static" id="qualified_dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				<span class="sr-only">Toggle Dropdown</span>All Agents <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
			</button>
			<div class="dropdown-menu filter-menu dropdown-menu-right istar-dropdown-task-menu  dropdown-menu-lg-right position-absolute px-4" aria-labelledby="qualified_dropdown" style="width: 350px;">
				<ul class="dropdown-nav nav nav-tabs nav-mytabs filtertabs pt-2 d-flex align-items-end" id="qualifiedTab" role="tablist">
					<li class="nav-item"><a class="nav-link active" id="qualified_individual-tab" data-toggle="tab" href="#qualified_individual" role="tab" aria-controls="qualified_individual" aria-selected="true">Individual</a></li>
					<li class="nav-item"><a class="nav-link" id="qualified_team-tab" data-toggle="tab" href="#qualified_team" role="tab" aria-controls="qualified_team" aria-selected="false">Team</a></li>
				</ul>
				<div class="tab-content" id="myTabContent">
					<div class="tab-pane fade show active px-4 py-3" id="qualified_individual" role="tabpanel" aria-labelledby="qualified_individual-tab">
						<div class="input-group py-2">
							<input id="qualified_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
							<div class="input-group-append">
								<button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
									<i class="fa fa-search f-12 brown-grey"></i>
								</button>
							</div>
						</div>
						<div class="qualified-agent-list mb-2" style="overflow-x: hidden; overflow-y: auto;"></div>
					</div>
					<div class="tab-pane fade px-4 py-3" id="qualified_team" role="tabpanel" aria-labelledby="qualified_team-tab">
						<div class="input-group py-2">
							<input id="qualified_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
							<div class="input-group-append">
								<button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
									<i class="fa fa-search f-12 brown-grey"></i>
								</button>
							</div>
						</div>
						<div class="qualified-team-list mb-2" style="overflow-x: hidden; overflow-y: auto;"></div>
					</div>
				</div>
				<div class="w-100 text-center">
					<button class="btn  rounded-0 theme_bg text-white f-14 font-weight-bold mb-3 text-center px-3" style="min-width: 200px;" id="qualified_team_submit">Submit</button>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="row cream_white m-0 theme_solid_border_bottom justify-content-between align-items-center pl-40 pr-40 pt-10 pb-10" id="qualified_filter">
	<div class="col-md-10 d-flex p-0 filters-inside-selection"></div>
	<div class="col-md-2 text-right p-0">
		<button type="submit" class="btn theme_color f-14 font-weight-bold p-0" id="qualified_reset" data-type="qualified" onclick="resetFilters(this)">Reset</button>
	</div>
</div>