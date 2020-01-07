<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
	
%>

<div class="modal fade" id="resolvecardmodal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true"  data-backdrop="static">
				<div class="modal-dialog modal-lg modal-dialog-centered " role="document">
					<div class="modal-content rounded-0 ">
						<div class="modal-header shadow-bottom	p-0">
							<div class="row w-100 m-0 pt-25 pb-25 pl-30 pr-30">
								<div class="col-md-11 p-0 col-11 modal-title greyish-brown f-18 font-weight-bold " id="createresolveModalCenterTitle">Objection</div>
								<div class="col-md-1 p-0 col-1">
									<button type="button" class="close" data-dismiss="modal" aria-label="Close">
										<img src="<%=baseURL%>assets/image/close.svg" alt="taskicon" class="rounded-circle hw-24 task-icon">
									</button>
								</div>

							</div>
						</div>
						<div class="modal-body p-30"></div>
						<div class="modal-footer pt-30 pb-30 pr-30">
							<button type="button" class="btn  f-14 theme_color bg-transparent font-weight-bold" data-dismiss="modal">Reset</button>

							<button type="button" class="btn big_button rounded-0 f-14 font-weight-bold" id="resolve">RESOLVE</button>
						</div>
					</div>
				</div>
			</div>