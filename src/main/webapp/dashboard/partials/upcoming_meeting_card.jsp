<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>
<div class="card rounded-0 shadow mb-10" id="">
<div class="card-body p-0 border_bottom_1_dashed ml-20 mr-20">
								<div class="row m-0 pb-10 pt-20">
									<div class="col-md-6 p-0 d-flex col-6 " style="left: -5px;">
										<img class="hw-24 mr-1" alt="task" src="<%=baseURL%>assets/image/task.svg">
										<div class="f-16 brownish-grey " style="line-height: 28px;">Call Task</div>

									</div>
									<div class="col-md-6 p-0 d-flex col-6">
										<img class="hw-24 mr-1" src="<%=baseURL%>assets/image/alarm.svg" alt="alarm">
										<div class="f-16 brownish-grey" style="line-height: 28px;">12:30 PM</div>
									</div>
								</div>
								<h5 class="mb-0 f-18 text-truncate font-weight-bold greyish-brown " title="Accenture">Accenture Consulting Inc.</h5>
								<div class="f-16 brownish-grey text-truncate" title="Robert Wolken">Robert Wolken</div>
								<div class="f-12 brown-grey pb-20 ">Manager</div>
							</div>

							<div class="card-footer p-20 cream_white border-0">
								<p class="brownish-grey f-16 pb-25 m-0">Louella sent an request for Meeting!</p>
								<button type="button" class="btn join_btn istar-btn-hover f-12 mr-2">ACCEPT</button>
								<button type="button" class="btn listen_btn f-12  small_outline_button font-weight-bold greyish-brown">REJECT</button>
							</div></div>