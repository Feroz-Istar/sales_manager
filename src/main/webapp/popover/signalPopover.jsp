<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>

<div class="row">
<div class="col-md-10 p-0 f-16 black fw-500"> Introduction Break-up</div>
<div class="col-md-2 p-0">
<img alt="" src="<%=baseURL %>assets/image/cross.svg">
<div class="theme_dotted_border_bottom pb-15">
<div class=" greyish-brown f-18 font-weight-bold">30%</div>
<div class="brownish-grey f-12">Hello Sir, I am calling from United Tech, Is it good time to speak ?</div>
</div>
</div>
</div>
<script>

</script>