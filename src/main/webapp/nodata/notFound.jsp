<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>

<div class="row m-0 h-100 bg-white align-items-center">
	<div class="col-md-7 p-0 pl-115">
		<div class="f-52 font-weight-bold rosy-pink">404</div>
		<div class="fw-500 black f-20">Oops! Looks like we've lost our path...</div>
		<div class="f-12 brownish-grey">The page you are looking for doesn't exist or has been moved.<br>Please check back later</div>
	</div>
	<div class="col-md-5 p-0">
		<img src="<%=baseURL%>assets/image/not-found.svg">
	</div>
</div>