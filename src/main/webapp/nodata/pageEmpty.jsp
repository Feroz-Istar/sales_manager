<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>

<div class="row m-0 bg-white align-items-center minh-650">
	<div class="col-md-8 p-0 pl-115">
		<div class="f-52 font-weight-bold rosy-pink">Oops</div>
		<div class="fw-500 black f-20 pb-30">Seems like this page is empty!</div>
		<div class="f-12 brownish-grey">It's not you. It's us. Give it another try...</div>
	</div>
	<div class="col-md-4 p-0">
		<img src="<%=baseURL%>assets/image/page-empty.svg">
	</div>
</div>