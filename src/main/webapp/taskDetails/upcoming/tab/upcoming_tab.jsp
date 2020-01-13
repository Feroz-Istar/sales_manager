
<%@page import="com.UpcomingTask"%>
<%@page import="org.apache.commons.io.IOUtils"%>
<%@page import="com.google.gson.GsonBuilder"%>
<%@page import="com.google.gson.Gson"%>
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
	
	String upcomingtask = IOUtils.toString(request.getReader());	
	 Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm:ss").create();	
	 UpcomingTask upcomingTask = gson.fromJson(upcomingtask, UpcomingTask.class);
%>


<div class="nav-link p-0 rounded-0 theme_solid_border_bottom " data-id="<%=upcomingTask.getId() %>" id="upcoming_<%=upcomingTask.getId()%>-tabs" data-toggle="pill" href="#upcoming_<%=upcomingTask.getId()%>" role="tab" aria-controls="upcoming_<%=upcomingTask.getId()%>" aria-selected="true">


	<div class="row align-items-center 	p-20 p-0 m-0">
		<div class="col-md-8 p-0">
			<div class="f-16 greyish-brown ">11:00 AM</div>
			<div class="f-16 fw-500 black text-truncate" data-toggle="tooltip" data-placement="bottom" title="Opentech Pvt. Ltd."><%=upcomingTask.getName() %></div>
			<div class="f-12 brown-grey">$ 500 Deal Value</div>
		</div>
		<div class="col-md-4 p-0">
			<div class="d-flex flex-row align-items-center justify-content-end">
				<img src="<%=baseURL%>assets/image/calltask.svg" alt="task-icon" class="rounded-circle hw-30 task-icon" /> <img src="<%=baseURL%>assets/image/37.jpg" alt="task-image" data-toggle="tooltip"
					data-placement="bottom" title="Agent Name" class="rounded-circle hw-40 task-image" />
			</div>
		</div>
	</div>

</div>


