<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>

<div class="col-md-6 p-0">
		      						<div class="f-12 font-weight-bold brownish-grey mb-1 d-flex align-items-center">Strong  <i class="fal fa-info-circle soft-blue f-16 pl-1"></i></div>
		      						<img src="<%=baseURL %>assets/image/introduction_signal.svg" class="pr-2 pb-2">
										<img src="<%=baseURL %>assets/image/softSkill_signal.svg" class="pr-2 pb-2">
										<img src="<%=baseURL %>assets/image/nxt_step_signal.svg" class="pr-2 pb-2">
										<img src="<%=baseURL %>assets/image/solution_signal.svg" class="pr-2 pb-2">
										<img src="<%=baseURL %>assets/image/softSkill_signal.svg" class="pr-2 pb-2">
										<img src="<%=baseURL %>assets/image/nxt_step_signal.svg" class="pr-2 pb-2">
										<img src="<%=baseURL %>assets/image/solution_signal.svg" class="pr-2 pb-2">
		      					</div>
		      					<div class="col-md-6 p-0">
		      						<div class="f-12 font-weight-bold brownish-grey mb-1 d-flex align-items-center">Weak <i class="fal fa-info-circle soft-blue f-16 pl-1"></i></div>
		      						<img src="<%=baseURL %>assets/image/introduction_signal.svg" class="pr-2 pb-2">
										<img src="<%=baseURL %>assets/image/softSkill_signal.svg" class="pr-2 pb-2">
										<img src="<%=baseURL %>assets/image/nxt_step_signal.svg" class="pr-2 pb-2">
										<img src="<%=baseURL %>assets/image/solution_signal.svg" class="pr-2 pb-2">
										<img src="<%=baseURL %>assets/image/softSkill_signal.svg" class="pr-2 pb-2">
										<img src="<%=baseURL %>assets/image/nxt_step_signal.svg" class="pr-2 pb-2">
										<img src="<%=baseURL %>assets/image/solution_signal.svg" class="pr-2 pb-2">
		      					</div>