<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>
							<div class="col-md-3 col_bordering4 p-0 m-0 d-md-flex align-items-center objections cursor-pointer minh-200" >
							<div class=" w-100 d-flex align-items-center">
								<div class="col-md-8 p-0 pl-15">
								<div class="font-weight-bold f-42 greyish-brown"> 05</div>
								<div class="greyish-brown f-14 fw-500">Objections</div>
								</div>
								<div class="col-md-4  p-0 m-0 pr-15 ">
								<img src="<%=baseURL%>assets/image/objection.svg" width=" 93.8" height=" 87.2" class="mt-30 mb-30">
								</div>
								</div>
							</div>
							<div class="col-md-3 col_bordering4 p-0 m-0 d-md-flex align-items-center cursor-pointer minh-200"  onclick="window.location.href = 'customerfeedback.jsp'" >
							<div class=" w-100 d-flex align-items-center">
								<div class="col-md-8 p-0 pl-15">
								<div class="font-weight-bold f-42 greyish-brown"> 05</div>
								<div class="greyish-brown f-14 fw-500">Feedback</div>
								</div>
								<div class="col-md-4  p-0 m-0 pr-15 ">
								<img src="<%=baseURL%>assets/image/objection.svg" width=" 93.8" height=" 87.2" class="mt-30 mb-30">
								</div>
								</div>
							</div>
							<div class="col-md-3 col_bordering4 p-0 m-0 d-md-flex align-items-center cursor-pointer minh-200"  onclick="window.location.href = 'customerNeedsConcern.jsp'" >
							<div class=" w-100 d-flex align-items-center">
								<div class="col-md-8 p-0 pl-15">
								<div class="font-weight-bold f-42 greyish-brown"> 05</div>
								<div class="greyish-brown f-14 fw-500">Need & Concern</div>
								</div>
								<div class="col-md-4  p-0 m-0 pr-15 ">
								<img src="<%=baseURL%>assets/image/objection.svg" width=" 93.8" height=" 87.2" class="mt-30 mb-30">
								</div>
								</div>
							</div>
							<div class="col-md-3 col_bordering4 p-0 m-0 d-md-flex align-items-center objections cursor-pointer minh-200" >
							<div class=" w-100 d-flex align-items-center">
								<div class="col-md-8 p-0 pl-15">
								<div class="font-weight-bold f-42 greyish-brown"> 05</div>
								<div class="greyish-brown f-14 fw-500">Attributes</div>
								</div>
								<div class="col-md-4  p-0 m-0 pr-15 ">
								<img src="<%=baseURL%>assets/image/objection.svg" width=" 93.8" height=" 87.2" class="mt-30 mb-30">
								</div>
								</div>
							</div>
							
							