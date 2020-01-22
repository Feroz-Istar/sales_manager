
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>

<div class="col-md-3 text-result-found p-0">
	<strong class="number-of-results">04</strong> Result Found
</div>
<div class="col-md-9 d-md-flex justify-content-end p-0">
	<div class="istar-dropdown-task select_focus mr-10 mt-10 mb-10">
		<button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="task_activity" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			<span class="sr-only">Toggle Dropdown</span><span id="report_activity_drop">All activities</span> <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
		</button>
		<div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="task_activity">
			<button class="dropdown-item" type="button" onclick=" report_activity_dropdown(this)" data-id="1">
				<img src="<%=baseURL%>assets/image/calltask.svg" alt="call" class="task-dropdown"> Call Task
			</button>
			<button class="dropdown-item" type="button" onclick=" report_activity_dropdown(this)" data-id="2">
				<img src="<%=baseURL%>assets/image/emailtask.svg" alt="email" class="task-dropdown"> Email Task
			</button>
			<button class="dropdown-item" type="button" onclick=" report_activity_dropdown(this)" data-id="3">
				<img src="<%=baseURL%>assets/image/webinartask.svg" alt="webinar" class="task-dropdown"> Webinar Task
			</button>
			<button class="dropdown-item" type="button" onclick=" report_activity_dropdown(this)" data-id="4">
				<img src="<%=baseURL%>assets/image/presentation.svg" alt="presentation" class="task-dropdown"> Presentation
			</button>
		</div>
	</div>
	<div class="istar-dropdown-task dropdown mt-10 mb-10 select_focus" id="playbook-insight-filter">
		<button class="istar-dropdown-arrow " data-display="static" id="insight_dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			<span class="sr-only">Toggle Dropdown</span> All Agents <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
		</button>
		<div class="dropdown-menu filter-menu dropdown-menu-right istar-dropdown-task-menu  dropdown-menu-lg-right position-absolute px-4" aria-labelledby="insight_dropdown" style="width: 350px;">
			<ul class="dropdown-nav nav nav-tabs nav-mytabs filtertabs pt-2 d-flex align-items-end" id="insightTab" role="tablist">
				<li class="nav-item"><a class="nav-link active" id="insight_individual-tab" data-toggle="tab" href="#insight_individual" role="tab" aria-controls="insight_individual" aria-selected="true">Individual</a></li>
				<li class="nav-item"><a class="nav-link" id="insight_team-tab" data-toggle="tab" href="#insight_team" role="tab" aria-controls="insight_team" aria-selected="false">Team</a></li>
			</ul>
			<div class="tab-content" id="insightTabContent">
				<div class="tab-pane fade show active px-4 py-3" id="insight_individual" role="tabpanel" aria-labelledby="insight_individual-tab">
					<div class="input-group py-2">
						<input id="insight_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
						<div class="input-group-append">
							<button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
								<i class="fa fa-search f-12 brown-grey"></i>
							</button>
						</div>
					</div>
					<div class="insight-agent-list mb-2" style="overflow-x: hidden; overflow-y: auto;"></div>
				</div>
				<div class="tab-pane fade px-4 py-3" id="insight_team" role="tabpanel" aria-labelledby="insight_team-tab">
					<div class="input-group py-2">
						<input id="insight_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
						<div class="input-group-append">
							<button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
								<i class="fa fa-search f-12 brown-grey"></i>
							</button>
						</div>
					</div>
					<div class="mb-2 insight-team-list" style="overflow-x: hidden; overflow-y: auto;"></div>
				</div>
			</div>
			<div class="w-100 text-center">
				<button class="btn  rounded-0 theme_bg text-white f-14 font-weight-bold  mb-3 text-center px-3" style="min-width: 200px;" id="insight_team_submit">Submit</button>
			</div>
		</div>
	</div>
</div>
</div>
<div class="row cream_white m-0 theme_solid_border_bottom justify-content-between align-items-center pl-40 pr-40 pt-10 pb-10" id="insight_filter">
	<div class="col-md-10 d-flex p-0 filters-inside-selection"></div>
	<div class="col-md-2 text-right p-0">
		<button type="submit" class="btn theme_color f-14 font-weight-bold p-0" id="playbook_reset" data-type="insight" onclick="resetFilters(this)">Reset</button>
	</div>
</div>
