<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>

<div class="row m-0 bg-white align-items-center minh-650">
	<div class="col-md-8 p-0 pl-115">
		<div class="f-52 font-weight-bold very-light-pink">Congratulation</div>
		<div class="fw-500 black f-20 pb-30">Account is verified!</div>
		<div class="f-12 brownish-grey">Job Well Done!</div>
	</div>
	<div class="col-md-4 p-0">
		<img src="<%=baseURL%>assets/image/congrats-img.svg">
	</div>
</div>