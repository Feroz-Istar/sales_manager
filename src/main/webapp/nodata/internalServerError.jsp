<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>

<div class="row m-0 bg-white align-items-center minh-650">
	<div class="col-md-8 p-0 pl-115">
		<div class="f-52 font-weight-bold rosy-pink">500</div>
		<div class="fw-500 black f-20 pb-50">Internal Server Error...</div>
		<div class="f-12 brownish-grey">The server encountered an error & was unable to complete your request. Please contact the <br>server administrator for more information.  &nbsp; &nbsp;
			<span class="theme_color font-weight-bold cursor-pointer">Click here</span>
		</div>
	</div>
	<div class="col-md-4 p-0">
		<img src="<%=baseURL%>assets/image/server-error.svg">
	</div>
</div>