<%@page import="com.CompletedTask"%>
<%@page import="org.apache.commons.io.IOUtils"%>
<%@page import="com.google.gson.GsonBuilder"%>
<%@page import="com.google.gson.Gson"%>
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
	
	String completedtask = IOUtils.toString(request.getReader());	
	 Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm:ss").create();	
	 CompletedTask completedTask = gson.fromJson(completedtask, CompletedTask.class);
%>
<div class="nav-link  p-0 theme_solid_border_bottom rounded-0"  data-id="<%=completedTask.getId() %>" data-tasktype="<%=completedTask.getTaskType() %>" id="completed_<%=completedTask.getId() %>-tabs" data-toggle="pill" href="#completed_<%=completedTask.getId() %>" role="tab" aria-controls="completed_<%=completedTask.getId() %>"
	aria-selected="true" >
	<div class="row align-items-center m-0 pr-20 pl-20 pt-20">
		<div class="col-md-8 p-0">
			<div class="d-flex flex-row ">
				<div class="f-16 font-weight-bold  pr-10 theme_color">$ 500</div>
				<div class=" border-right-separation  my-1"></div>
				<div class="pl-10 f-12 align-self-center signal-analytical font-weight-bold">Analytical</div>
			</div>
			<div class="f-16 fw-500  black text-truncate" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Globex Corporation. Inc."><%=completedTask.getName() %></div>
			<div class="f-12 brown-grey">Initiated at 11:00 PM</div>
		</div>
		<div class="col-md-4 p-0">
			<div class="d-flex flex-row align-items-center justify-content-end">
				<img src="<%=baseURL%>assets/image/calltask.svg" alt="taskicon" class="rounded-circle hw-30 task-icon"> <img src="<%=baseURL%>assets/image/37.jpg" data-toggle="tooltip"
					data-placement="bottom" title="" class="rounded-circle hw-40 task-image" alt="task-image" data-original-title="Agent name">
			</div>
		</div>
	</div>
</div>


