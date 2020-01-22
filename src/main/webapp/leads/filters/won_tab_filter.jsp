<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%
         String url = request.getRequestURL().toString();
         String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
         		+ request.getContextPath() + "/";
         %>
<div class="row align-items-center theme_solid_border_bottom m-0" id="won-selection">
	<div class="col-md-2 text-result-found font_text_result	pl-40 p-0">
		<strong class="won-number-of-results">03</strong> Result Found
	</div>
	<div class="col-md-10 d-md-flex justify-content-end p-0 mt-10 mb-10 pr-40">
		<div class="input-group date custom-calendar mr-10">
			<input type="text" id="won_datepicker" placeholder="Calendar" class="form-control  custom-dateselect" value="12-02-2012">
			<div class="input-group-addon px-1" onclick="showwonCalendar()">
				<img src="<%=baseURL%>/assets/image/calendar.svg" />
			</div>
		</div>
		<div class="istar-dropdown-task select_focus mr-10 select_focus">
			<button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="won_causes" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				<span class="sr-only">Toggle Dropdown</span>All Causes <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
			</button>
			<div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="won_causes">
				<button class="dropdown-item" type="button" onclick="won_cause_dropdown(this)" data-id="reason 1">reason 1</button>
				<button class="dropdown-item" type="button" onclick="won_cause_dropdown(this)" data-id="reason 2">reason 2</button>
			</div>
		</div>
		<div class="istar-dropdown-task select_focus mr-10 select_focus">
			<button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="won_deal_value" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				<span class="sr-only">Toggle Dropdown</span>All Deal Value <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
			</button>
			<div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="won_deal_value">
				<button class="dropdown-item" type="button" onclick="won_deal_dropdown(this)" data-id="1000">$1000</button>
				<button class="dropdown-item" type="button" onclick="won_deal_dropdown(this)" data-id="5000">$5000</button>
			</div>
		</div>
		<div class="istar-dropdown-task select_focus mr-10 select_focus">
			<button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="won_stage" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				<span class="sr-only">Toggle Dropdown</span>All Stages <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
			</button>
			<div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="won_stage">
				<button class="dropdown-item" type="button" onclick="won_stage_dropdown(this)" data-id="Stage 1">Stage 1</button>
				<button class="dropdown-item" type="button" onclick="won_stage_dropdown(this)" data-id="Stage 2">Stage 2</button>
			</div>
		</div>
		<div class="istar-dropdown-task select_focus mr-10 select_focus">
			<button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="wonSourceType" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				<span class="sr-only">Toggle Dropdown</span>All Source Type <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
			</button>
			<div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="wonSourceType">
				<button class="dropdown-item" type="button" onclick="won_sourcetype_dropdown(this)" data-id="Manual">Manual</button>
				<button class="dropdown-item" type="button" onclick="won_sourcetype_dropdown(this)" data-id="Offline">Offline</button>
				<button class="dropdown-item" type="button" onclick="won_sourcetype_dropdown(this)" data-id="Outbound">Outbound</button>
			</div>
		</div>
		<div class="istar-dropdown-task dropdown select_focus select_focus" id="won-filter">
			<button class="istar-dropdown-arrow " data-display="static" id="won_dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				<span class="sr-only">Toggle Dropdown</span> All Agents <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
			</button>
			<div class="dropdown-menu filter-menu dropdown-menu-right istar-dropdown-task-menu  dropdown-menu-lg-right position-absolute px-4" aria-labelledby="won_dropdown" style="width: 350px;">
				<ul class="dropdown-nav nav nav-tabs nav-mytabs filtertabs pt-2 d-flex align-items-end" id="wonTab" role="tablist">
					<li class="nav-item"><a class="nav-link active" id="won_individual-tab" data-toggle="tab" href="#won_individual" role="tab" aria-controls="won_individual" aria-selected="true">Individual</a></li>
					<li class="nav-item"><a class="nav-link" id="won_team-tab" data-toggle="tab" href="#won_team" role="tab" aria-controls="won_team" aria-selected="false">Team</a></li>
				</ul>
				<div class="tab-content" id="wonTabContent">
					<div class="tab-pane fade show active px-4 py-3" id="won_individual" role="tabpanel" aria-labelledby="won_individual-tab">
						<div class="input-group py-2">
							<input id="won_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
							<div class="input-group-append">
								<button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
									<i class="fa fa-search f-12 brown-grey"></i>
								</button>
							</div>
						</div>
						<div class="won-agent-list mb-2" style="overflow-x: hidden; overflow-y: auto;"></div>
					</div>
					<div class="tab-pane fade px-4 py-3" id="won_team" role="tabpanel" aria-labelledby="won_team-tab">
						<div class="input-group py-2">
							<input id="won_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
							<div class="input-group-append">
								<button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
									<i class="fa fa-search f-12 brown-grey"></i>
								</button>
							</div>
						</div>
						<div class="won-team-list mb-2" style="overflow-x: hidden; overflow-y: auto;"></div>
					</div>
				</div>
				<div class="w-100 text-center">
					<button class="btn  rounded-0 theme_bg text-white f-14 font-weight-bold  mb-3 text-center px-3" style="min-width: 200px;" id="won_team_submit">Submit</button>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="row cream_white m-0 theme_solid_border_bottom justify-content-between align-items-center pl-40 pr-40 pt-10 pb-10" id="won_filter">
	<div class="col-md-10 d-flex p-0 filters-inside-selection"></div>
	<div class="col-md-2 text-right p-0">
		<button type="submit" class="btn theme_color f-14 font-weight-bold p-0" id="won_reset" data-type="won" onclick="resetFilters(this)">Reset</button>
	</div>
</div>