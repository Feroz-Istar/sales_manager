
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>
<div class="col-md-2 p-0 text-result-found	font_text_result">
	<strong class="number-of-results">04</strong> Results Found
</div>
<div class="col-md-10 p-0 d-md-flex justify-content-end filter-dropdown-list-catch ">
	<div class="input-group date custom-calendar">
		<input type="text" id="completed_datepicker" placeholder="Calendar" class="form-control  custom-dateselect" value="12-02-2012">
		<div class="input-group-addon" onclick="showcompletedCalendar()">
			<img src="<%=baseURL%>/assets/image/calendar.svg" class="pr-1 hw-24" alt="calendar">
		</div>
	</div>
	<div class="istar-dropdown-task select_focus mr-10">
		<button class="istar-dropdown-arrow dropdown-toggle" id="completed_stage" data-toggle="dropdown" data-display="static" aria-haspopup="true" aria-expanded="false">
			<span class="sr-only">Toggle Dropdown</span> <span id="completed_stage_drop">All Stages </span><img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
		</button>
		<div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="completed_stage">
			<button class="dropdown-item" type="button" data-id="1" onclick="completed_stage_dropdown(this)">Stage 1</button>
			<button class="dropdown-item" type="button" data-id="4" onclick="completed_stage_dropdown(this)">stage 2</button>
		</div>
	</div>
	<div class="istar-dropdown-task mr-2 custom-taskborder select_focus">
		<button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="completed_activity" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			<span class="sr-only">Toggle Dropdown</span> <span id="completed_activity_drop">All Activities</span> <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
		</button>
		<div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="completed_activity">
			<button class="dropdown-item" type="button" data-id="1" data-display="static" onclick="completed_activity_dropdown(this)">
				<img src="<%=baseURL%>assets/image/calltask.svg" alt="call" class="task-dropdown"> Call Task
			</button>
			<button class="dropdown-item" type="button" data-id="2" onclick="completed_activity_dropdown(this)">
				<img src="<%=baseURL%>assets/image/emailtask.svg" alt="email" class="task-dropdown"> Email Task
			</button>
			<button class="dropdown-item" type="button" data-id="3" onclick="completed_activity_dropdown(this)">
				<img src="<%=baseURL%>assets/image/webinartask.svg" alt="webinar" class="task-dropdown"> Webinar Task
			</button>
			<button class="dropdown-item" type="button" data-id="4" onclick="completed_activity_dropdown(this)">
				<img src="<%=baseURL%>assets/image/presentation.svg" alt="" class="task-dropdown"> Presentation
			</button>
		</div>
	</div>
	<div class="istar-dropdown-task select_focus mr-10">
		<button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="completed_status" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			<span class="sr-only">Toggle Dropdown</span><span id="completed_status_drop">All Status</span> <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
		</button>
		<div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="completed_status">
			<button class="dropdown-item" type="button" data-id="69" onclick="completed_status_dropown(this)">Ongoing</button>
			<button class="dropdown-item" type="button" data-id="1" onclick="completed_status_dropown(this)">Completed</button>
		</div>
	</div>
	<div class="istar-dropdown-task dropdown select_focus" id="completed-filter">
		<button class="istar-dropdown-arrow " data-display="static" id="completed_dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			<span class="sr-only">Toggle Dropdown</span> All Agents <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
		</button>
		<div class="dropdown-menu filter-menu dropdown-menu-right istar-dropdown-task-menu  dropdown-menu-lg-right position-absolute px-4" aria-labelledby="completed_dropdown" style="width: 350px;height:660px">
			<ul class="dropdown-nav nav nav-tabs nav-mytabs filtertabs pt-2 d-flex align-items-end" id="completedTab" role="tablist">
				<li class="nav-item"><a class="nav-link active" id="completed_individual-tab" data-toggle="tab" href="#completed_individual" role="tab" aria-controls="completed_individual" aria-selected="true">Individual</a></li>
				<li class="nav-item"><a class="nav-link" id="completed_team-tab" data-toggle="tab" href="#completed_team" role="tab" aria-controls="completed_team" aria-selected="false">Team</a></li>
			</ul>
			<div class="tab-content" id="completedTabContent">
				<div class="tab-pane fade show active px-4 py-3" id="completed_individual" role="tabpanel" aria-labelledby="completed_individual-tab">
					<div class="input-group py-2">
						<input id="completed_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
						<div class="input-group-append">
							<button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
								<i class="fa fa-search f-12 brown-grey"></i>
							</button>
						</div>
					</div>

					<div class="completed-agent-list mb-2" style="overflow-x: hidden; overflow-y: auto;"></div>


				</div>

				<div class="tab-pane fade px-4 py-3" id="completed_team" role="tabpanel" aria-labelledby="completed_team-tab">

					<div class="input-group py-2">
						<input id="completed_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
						<div class="input-group-append">
							<button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
								<i class="fa fa-search f-12 brown-grey"></i>
							</button>
						</div>
					</div>

					<div class="mb-2 completed-team-list" style="overflow-x: hidden; overflow-y: auto;"></div>



				</div>
			</div>
			<div class="w-100 text-center">
				<button class="btn  rounded-0 theme_bg text-white f-14 font-weight-bold  mb-3 text-center px-3" style="min-width: 200px;" id="completed_team_submit">Submit</button>
			</div>
		</div>
	</div>
</div>