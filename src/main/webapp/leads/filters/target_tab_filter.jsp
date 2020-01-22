<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%
         String url = request.getRequestURL().toString();
         String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
         		+ request.getContextPath() + "/";
         %>
<div class="row align-items-center bg-white m-0 theme_solid_border_bottom" id="target-selection">
	<div class="col-md-3 text-result-found p-0 pl-40 ">
		<strong class="target-number-of-results ">504</strong> Result Found
	</div>
	<div class="col-md-9 d-md-flex justify-content-end p-0 mt-10 mb-10 pr-40">
		<div class="istar-dropdown-task select_focus mr-10 select_focus">
			<button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="targetSourceType" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				<span class="sr-only">Toggle Dropdown</span>All Source type<img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
			</button>
			<div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="targetSourceType">
				<button class="dropdown-item" type="button" onclick="target_sourcetype_dropdown(this)" data-id="1000">1000</button>
				<button class="dropdown-item" type="button" onclick="target_sourcetype_dropdown(this)" data-id="2000">2000</button>
			</div>
		</div>
		<div class="istar-dropdown-task select_focus mr-10 select_focus">
			<button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="target_activity" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				<span class="sr-only">Toggle Dropdown</span> All Activities <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
			</button>
			<div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="target_activity">
				<button class="dropdown-item" type="button" onclick="target_activity_dropdown(this)" data-id="Call Task">
					<img src="<%=baseURL%>assets/image/calltask.svg" alt="call" class="task-dropdown"> Call Task
				</button>
				<button class="dropdown-item" type="button" onclick="target_activity_dropdown(this)" data-id="Email Task">
					<img src="<%=baseURL%>assets/image/emailtask.svg" alt="email" class="task-dropdown"> Email Task
				</button>
				<button class="dropdown-item" type="button" onclick="target_activity_dropdown(this)" data-id="Webinar Task">
					<img src="<%=baseURL%>assets/image/webinartask.svg" alt="webinar" class="task-dropdown"> Webinar Task
				</button>
				<button class="dropdown-item" type="button" onclick="target_activity_dropdown(this)" data-id="Presentation">
					<img src="<%=baseURL%>assets/image/presentation.svg" alt="presentation" class="task-dropdown"> Presentation
				</button>
			</div>
		</div>
		<div class="istar-dropdown-task dropdown select_focus" id="target-filter">
			<button class="istar-dropdown-arrow " data-display="static" id="target_dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				<span class="sr-only">Toggle Dropdown</span> All Agents <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
			</button>
			<div class="dropdown-menu filter-menu dropdown-menu-right istar-dropdown-task-menu  dropdown-menu-lg-right position-absolute px-4" aria-labelledby="target_dropdown" style="width: 350px;">
				<ul class="dropdown-nav nav nav-tabs nav-mytabs filtertabs pt-2 d-flex align-items-end" id="targetTab" role="tablist">
					<li class="nav-item"><a class="nav-item nav-link active" id="target_individual-tab" data-toggle="tab" href="#target_individual" role="tab" aria-controls="target_individual" aria-selected="true">Individual</a></li>
					<li class="nav-item"><a class="nav-item nav-link" id="target_team-tab" data-toggle="tab" href="#target_team" role="tab" aria-controls="target_team" aria-selected="false">Team</a></li>
				</ul>
				<div class="tab-content" id="targetTab-tabContent">
					<div class="tab-pane fade show active px-4 py-3" id="target_individual" role="tabpanel" aria-labelledby="target_individual-tab">
						<div class="input-group py-2">
							<input id="target_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
							<div class="input-group-append">
								<button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
									<i class="fa fa-search f-12 brown-grey"></i>
								</button>
							</div>
						</div>
						<div class="target-agent-list mb-2" style="overflow-x: hidden; overflow-y: auto;"></div>
					</div>
					<div class="tab-pane fade px-4 py-3" id="target_team" role="tabpanel" aria-labelledby="target_team-tab">
						<div class="input-group py-2">
							<input id="target_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
							<div class="input-group-append">
								<button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
									<i class="fa fa-search f-12 brown-grey"></i>
								</button>
							</div>
						</div>
						<div class="mb-2 target-team-list" style="overflow-x: hidden; overflow-y: auto;"></div>
					</div>
				</div>
				<div class="w-100 text-center">
					<button class="btn  rounded-0 theme_bg text-white f-14 font-weight-bold mb-3 text-center px-3" style="min-width: 200px;" id="target_team_submit">Submit</button>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="row cream_white m-0 theme_solid_border_bottom justify-content-between align-items-center pl-40 pr-40 pt-10 pb-10" id="target_filter">
	<div class="col-md-10 d-flex p-0 filters-inside-selection"></div>
	<div class="col-md-2 text-right p-0">
		<button type="submit" class="btn theme_color f-14 font-weight-bold p-0" id="target_reset" data-type="target" onclick="resetFilters(this)">Reset</button>
	</div>
</div>