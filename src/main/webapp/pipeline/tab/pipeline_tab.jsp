<%@page import="com.Pipeline"%>
<%@page import="org.apache.commons.io.IOUtils"%>
<%@page import="com.google.gson.GsonBuilder"%>
<%@page import="com.google.gson.Gson"%>
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
	
	String pipelinedetails = IOUtils.toString(request.getReader());	
	 Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm:ss").create();	
	 Pipeline pipelineDetails = gson.fromJson(pipelinedetails, Pipeline.class);
%>
					<a 
						class="nav-link pt-15 pb-15 pl-20 pr-20  text-truncate"
						title="Stage 0<%=pipelineDetails.getId()%>"  data-id="<%=pipelineDetails.getId() %>" id="stage-<%=pipelineDetails.getId()%>-tab" data-toggle="pill"
						href="#stage-<%=pipelineDetails.getId()%>" role="tab" aria-controls="stage-<%=pipelineDetails.getId()%>"
						aria-selected="true">Stage 0<%=pipelineDetails.getId()%>
					</a>
				