<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>
<div class="card-body p-0 pt-20 pb-20	">
								<div class="d-flex"	>
								<%for(int i=0;i<5;i++){ %>
									<div class="pl-40">
										<div class="f-14 fw-500 greyish-brown pb-10">Pipeline Stage 0<%=i+1 %></div>
										<div class="d-flex">
											<img src="<%=baseURL %>assets/image/calltask.svg" class="hw-40 mr-10">
											<img src="<%=baseURL %>assets/image/calltask.svg" class="hw-40 mr-10">
										</div>
									</div>
								<%} %>
								</div>

							</div>
