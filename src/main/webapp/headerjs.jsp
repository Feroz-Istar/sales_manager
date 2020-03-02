    
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>
<script src="<%=baseURL%>assets/js/jquery-3.4.1.min.js"></script>
<script src="<%=baseURL%>assets/js/popper.min.js"></script>
<script src="<%=baseURL%>assets/js/bootstrap.min.js"></script>
<script src="<%=baseURL%>assets/js/bootstrap-datepicker.min.js"></script>
<script src="<%=baseURL%>assets/js/jquery.bootpag.js"></script>
<script src="<%=baseURL%>assets/js/alertify.min.js"></script>
<script src="<%=baseURL%>assets/js/twilio.js"></script>
<script src="<%=baseURL%>assets/js/salesken.js"></script>
<script src="<%=baseURL%>assets/js/highcharts.js"></script>
<script src="<%=baseURL%>assets/js/exporting.js"></script>
<script src="<%=baseURL%>assets/js/jquery.rateyo.min.js"></script>
<script src="<%=baseURL%>assets/js/wickedpicker.min.js"></script>
<script src="<%=baseURL%>assets/js/summernote-bs4.js"></script>
<script src="<%=baseURL%>assets/js/bootstrap-select.min.js"></script>
<script src="<%=baseURL%>assets/js/main_dashboard.js"></script>
<script src="<%=baseURL%>assets/js/multiselect.js"></script>
<script src="<%=baseURL%>assets/js/jquery.validate.min.js"></script>
<script src="<%=baseURL%>assets/js/pagination.min.js"></script>
<script src="<%=baseURL%>assets/js/dropzone.min.js"></script>