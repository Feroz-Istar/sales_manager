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

<%for(int i=0 ;i<4;i++) {%>
<div class="tab-pane fade show active pl-0" id="customer_objection<%=customerObj.getId()%>" role="tabpanel" aria-labelledby="customer_objection<%=customerObj.getId()%>-tabs">
                   
                      
                        <div class="row theme_solid_border_bottom align-items-center pt-30 pb-30 pl-40 pr-40  m-0">
                           <div class="col-md-4 p-0">
                              <div class="f-14 black fw-500 text-truncate" title="Accenture Consulting Inc.">Accenture Consulting Inc.</div>
                              <div class="f-14 brownish-grey fw-500">Robert Wolken</div>
                           </div>
                           <div class="col-md-8 p-0">
                              <p class="blue-black f-14 mb-0">Sed tempus odio eget mattis scelerisque.Pellentesque pellentesque pharetra elit non fringilla.Sed in libero diam.pellentesque sem quam,</p>
                           </div>
                        </div>
                   
     </div>
     <%}%>