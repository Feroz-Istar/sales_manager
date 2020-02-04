<%@page import="com.NeedsConcernDetails"%>
<%@page import="org.apache.commons.io.IOUtils"%>
<%@page import="com.google.gson.GsonBuilder"%>
<%@page import="com.google.gson.Gson"%>
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";

	String needsconcerndetails = IOUtils.toString(request.getReader());
	Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm:ss").create();
	NeedsConcernDetails needsconcernDetails = gson.fromJson(needsconcerndetails, NeedsConcernDetails.class);
%>

<div class="nav-link rounded-0 p-0  theme_solid_border_bottom" data-id="<%=needsconcernDetails.getId() %>" data-tasktype="<%=needsconcernDetails.getTaskType() %>" id="needconcernDetail_<%=needsconcernDetails.getId()%>-tabs" data-toggle="pill" href="#needconcernDetail_<%=needsconcernDetails.getId()%>" role="tab"
		aria-controls="needconcernDetail_<%=needsconcernDetails.getId()%>" aria-selected="true">


		<div class="row align-items-center m-0 pr-20 pl-20 pt-20">
			<div class="col-md-8 p-0">
				<div class="d-flex flex-row ">
					<div class="f-16 font-weight-bold pr-10 theme_color">$ 500</div>
					<div class=" border-right-separation  my-1"></div>
					<div class="pl-10 f-12 align-self-center signal-analytical font-weight-bold">Analytical</div>
				</div>
				<div class="f-16 fw-500  black text-truncate" data-toggle="tooltip" data-placement="bottom" title="Globex Corporation. Inc."><%=needsconcernDetails.getName() %></div>
				<div class="f-12 brown-grey">Initiated at 11:00 PM</div>
			</div>
			<div class="col-md-4 p-0">
				<div class="d-flex flex-row align-items-center justify-content-end">
					<img src="<%=needsconcernDetails.getImage() %>" alt="taskicon" class="rounded-circle hw-30 task-icon" /> <img src="<%=baseURL%>assets/image/37.jpg" data-toggle="tooltip" data-placement="bottom"
						title="Agent name" class="rounded-circle hw-40 task-image" alt="task-image" />
				</div>
			</div>
		</div>

	</div>

