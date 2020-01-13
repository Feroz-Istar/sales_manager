

<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>


	<div class="col-md-12 p-0 h-100 ">
	<div class="d-flex justify-content-center h-100 align-items-center">
	<div class=" d-flex flex-column text-center">
		<img src="<%=baseURL%>assets/image/timer.svg" alt="lost" class="pb-25 pt-25">
		<div class="f-20 fw-500 brownish-grey">No data yet</div>
		<div class="f-14 brown-grey">Update the PersonaCharacteristics</div>
		</div>
	</div>
	</div>
	