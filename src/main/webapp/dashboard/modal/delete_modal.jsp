<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
	
%>
<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="deleteModalTitle" aria-hidden="true"  data-backdrop="static">
				<div class="modal-dialog modal-dialog-centered modal-lg	" role="document">
					<div class="modal-content  rounded-0">
						<div class="row justify-content-end m-0 pt-25 pr-25">
							<button type="button" class="col-md-1 col-1 close" data-dismiss="modal" aria-label="Close">
								<img src="<%=baseURL%>assets/image/close.svg" alt="close" class="float-right">
							</button>
						</div>
						<div class="modal-body">
							<div class="row m-0 pl-30 pr-30 align-items-center">
								<div class="col-md-4 p-0 border-right-dashed-separation pb-15 pt-15 ">
									<img src="<%=baseURL%>assets/image/delete-img.svg">
								</div>
								<div class="col-md-8 p-0 pl-30">
									<div class="fw-500 f-20 black">You wanna really delete it ?</div>
									<div class="f-16 brownish-grey">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ornare eget velit at porttitor</div>
								</div>
							</div>
						</div>
						<div class="modal-footer border-0 p-0 pl-30 pr-30 pb-30">
							<button type="button" class="btn theme_color f-14 font-weight-bold" data-dismiss="modal">Cancel</button>
							<button type="button" class="btn big_button rounded-0 f-14 font-weight-bold" id="leave-task" data-dismiss="modal">DELETE</button>
						</div>
					</div>
				</div>
			</div>