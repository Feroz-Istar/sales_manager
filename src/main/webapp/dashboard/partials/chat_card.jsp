
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>
<div class="card mb-10 rounded-0 shadow" id="">
<div class="card-body p-0 p-20">
								<h6 class=" mb-0 text-muted f-12 fw-300 pb-10">10:30 AM</h6>
								<div class="row align-items-center justify-content-between m-0 pb-15">
									<div class="col-md-9 col-6 p-0 pr-10">
										<p class="card-text greyish-brown f-14 text-trucate" title="Hello Sir, The
									customer is asking about dis">Hello Sir, The customer is asking about discount, please tell me….</p>
									</div>
									<div class="col-md-2 col-6  p-0 ">
										<img class="hw-60 " alt="user" title="UserName" src="<%=baseURL%>assets/image/11.png">

									</div>
								</div>


								<div>
									<button type="button" class="btn join_btn  istar-btn-hover f-12 mr-2">CHAT NOW</button>
								</div>
							</div></div>