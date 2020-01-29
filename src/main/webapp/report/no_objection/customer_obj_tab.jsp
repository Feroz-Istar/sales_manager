<%@page import="com.CustomerObjection"%>
<%@page import="org.apache.commons.io.IOUtils"%>
<%@page import="com.google.gson.GsonBuilder"%>
<%@page import="com.google.gson.Gson"%>
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
	
	String customerobjection = IOUtils.toString(request.getReader());	
	 Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm:ss").create();	
	 CustomerObjection customerObj = gson.fromJson(customerobjection, CustomerObjection.class);
%>
<a class="nav-link p-0 pt-20 pb-20  text-truncate  theme_solid_border_bottom" data-id="<%=customerObj.getId()%>" title="Stage 01" id="customer_objection<%=customerObj.getId()%>-tabs" data-toggle="pill"
	href="#customer_objection<%=customerObj.getId()%>" role="tab" aria-controls="customer_objection<%=customerObj.getId()%>" aria-selected="true">
	<div class="row m-0 ">
		<div class="col-3 p-0 col objection_count f-42 font-weight-bold pl-20 greyish-brown">1<%=customerObj.getCount()%></div>
		<div class="col-9 p-0 col d-flex align-items-center objection_text fw-500 f-14 pl-40 pr-20">
			<p class="mb-0 blue-black">It is too expensive</p>
		</div>
	</div>
</a>