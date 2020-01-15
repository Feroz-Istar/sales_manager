
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>
<div class="tab-pane fade show active px-4 py-3" id="upcoming_individual" role="tabpanel" aria-labelledby="upcoming_individual-tab">
	<div class="input-group py-2">
		<input id="upcoming_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
		<div class="input-group-append">
			<button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
				<i class="fa fa-search f-12 brown-grey"></i>
			</button>
		</div>
	</div>
	<div class="upcoming_agent_list mb-2" style="overflow-x: hidden; overflow-y: auto;"></div>


</div>

<div class="tab-pane fade px-4 py-3" id="upcoming_team" role="tabpanel" aria-labelledby="upcoming_team-tab">

	<div class="input-group py-2">
		<input id="qualified_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
		<div class="input-group-append">
			<button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
				<i class="fa fa-search f-12 brown-grey"></i>
			</button>
		</div>
	</div>

	<div class="upcoming-team-list mb-2" style="overflow-x: hidden; overflow-y: auto;">
		<%
			for (int j = 0; j < 20; j++) {
		%>
		<div class="d-flex align-items-center pt-3">
			<input class="istar-checkbox upcomingteamcheckbox" data-id="<%=j%>" id="upcoming_team-checkbox<%=j%>" type="checkbox"> <label class="istar-checkbox-style" for="upcoming_team-checkbox<%=j%>"></label>
			<div class="f-12 ml-2 brownish-grey">
				Team -0<%=j%></div>
		</div>
		<%
			}
		%>
	</div>



</div>