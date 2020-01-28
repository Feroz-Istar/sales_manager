<%@page import="com.NoFollowUpCall"%>
<%@page import="org.apache.commons.io.IOUtils"%>
<%@page import="com.google.gson.GsonBuilder"%>
<%@page import="com.google.gson.Gson"%>
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
	
	String nofollowupreport = IOUtils.toString(request.getReader());	
	 Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm:ss").create();	
	 NoFollowUpCall nofollowupReport = gson.fromJson(nofollowupreport, NoFollowUpCall.class);
%>

<div class="nav-link rounded-0 p-0 theme_solid_border_bottom" data-id="<%=nofollowupReport.getId()%>" id="no_followup_call_<%=nofollowupReport.getId()%>-tabs" data-toggle="pill" href="#no_followup_call_<%=nofollowupReport.getId()%>" role="tab" aria-controls="no_followup_call_<%=nofollowupReport.getId()%>" aria-selected="true"
	data-tasktype="<%=nofollowupReport.getTaskType() %>">
	<div class="row align-items-center m-0 p-20 minh-100">
		<div class="col-md-2 p-0">
			<div class="d-flex flex-row align-items-center">
				<img src="<%=nofollowupReport.getImage() %>" alt="callicon" class="rounded-circle hw-30 task-icon"> <img src="<%=baseURL%>assets/image/37.jpg" title="Agent Name" alt="user-img"
					class="rounded-circle hw-40 task-image">
			</div>
		</div>
		<div class="col-md-10 pl-15 p-0">
			<p class="soft-blue f-12 font-weight-bold m-0">Confident</p>
			<h1 class="black f-16 fw-500 m-0 text-truncate" title="Robert Wolken">Marry Vasquez</h1>
			<p class="brown-grey f-12 m-0">June 26, 2019</p>
		</div>
	</div>
</div>