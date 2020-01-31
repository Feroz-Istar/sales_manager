<%@page import="com.CustomerFeedback"%>
<%@page import="org.apache.commons.io.IOUtils"%>
<%@page import="com.google.gson.GsonBuilder"%>
<%@page import="com.google.gson.Gson"%>
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
	
	String customerfeedback = IOUtils.toString(request.getReader());	
	 Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm:ss").create();	
	 CustomerFeedback customeFeedback = gson.fromJson(customerfeedback, CustomerFeedback.class);
%>

		<a class="nav-link py-3 theme_solid_border_bottom rounded-0 text-truncate"data-id="<%=customeFeedback.getId()%>" title="Stage 01" id="customer_feedback<%=customeFeedback.getId()%>-tabs" data-toggle="pill"
	href="#customer_feedback<%=customeFeedback.getId()%>" role="tab" aria-controls="customer_feedback<%=customeFeedback.getId()%>" aria-selected="true">Products</a>


	