
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";

	
%>
<div class="col-md-4 d-flex align-items-center col_bordering minh-200 p-0 cursor-pointer" onclick="window.location.href = '../landing/customerNoFollowUp.jsp'">
	<div class="row w-100 m-0">
		<div class="col-md-8 p-0 pl-20 pr-20 align-self-center">
			<div>
				<div class="font-weight-bold f-30 black">04</div>
				<div class="greyish-brown f-16 fw-500">No Follow - Ups</div>

				<div class="brownish-grey f-12">Next Steps/Follow up Action was not done in the calls</div>
			</div>
		</div>
		<div class="col-md-4 p-0 pr-20 text-center">
			<img src="<%=baseURL%>assets/image/report-no-followup.svg" width="144.5" height="126.9" class="mt-40 mb-40">
		</div>
	</div>
</div>
