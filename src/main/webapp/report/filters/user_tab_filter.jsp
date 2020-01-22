<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>
<div class="row align-items-center  theme_solid_border_bottom m-0 pl-40 pr-40">
	<div class="col-md-3 text-result-found p-0">
		<strong class="number-of-results">04</strong> Results Found
	</div>
	<div class="col-md-9 d-md-flex justify-content-end  p-0 ">
		<div class="input-group date custom-calendar mr-10 mb-10 mt-10">
			<input type="text" id="user_datepicker" class="form-control  custom-dateselect" value="12-02-2012" placeholder="Calendar">
			<div class="input-group-addon" onclick="showCalendar()">
				<img src="<%=baseURL%>/assets/image/calendar.svg" alt="calendar" class="pr-1  hw-24">
			</div>
		</div>
		<div class="istar-dropdown-task select_focus mb-10 mt-10">
			<button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="user_dealvalue" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				<span class="sr-only">Toggle Dropdown</span> <span id="report_user__drop">All Deal Value</span> <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
			</button>
			<div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="report_user_dealvalue" id="report_user_dealvalue_dropdown">
				<button class="dropdown-item" type="button" data-id="1" onclick="report_user_dealvalue(this)">$1000</button>
				<button class="dropdown-item" type="button" data-id="2" onclick="report_user_dealvalue(this)">$5000</button>
			</div>
		</div>
	</div>
</div>
<div class="row cream_white m-0 theme_solid_border_bottom justify-content-between align-items-center pl-40 pr-40 pt-10 pb-10" id="user_filter">
	<div class="col-md-10 d-flex p-0 filters-inside-selection"></div>
	<div class="col-md-2 text-right p-0">
		<button type="submit" class="btn theme_color f-14 font-weight-bold p-0" data-type="user" id="user_reset" onclick="resetFilters(this)">Reset</button>
	</div>
</div>