<%
         String url = request.getRequestURL().toString();
         String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
         		+ request.getContextPath() + "/";
         %>
<div class="modal fade" id="shareTaskModal" tabindex="-1" role="dialog" aria-labelledby="shareTaskModalTitle" aria-hidden="true">
			<div class="modal-dialog modal-lg modal-dialog-centered" role="document">
				<div class="modal-content rounded-0 ">
					<div class="modal-header shadow-bottom pt-25 pb-25  pl-30 pr-30 ">
						<h5 class="modal-title greyish-brown f-18 font-weight-bold mb-0">Share Task</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<img src="<%=baseURL%>assets/image/close.svg" alt="taskicon" class="rounded-circle hw-24 task-icon">
						</button>
					</div>
					<div class="modal-body p-0 pr-30 pl-30">
						<div class="f-14 greyish-brown pt-30 pb-10">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</div>
						<div class="row m-0 pb-25">
							<%for(int i=0; i<10; i++){ %>
							<button class="btn p-0 position-relative mr-15">
								<img src="<%=baseURL%>assets/image/37.jpg" class="hw-40"> <i class="fas fa-times-circle brown-grey rounded-circle f-14 cross-btn bg-white border-white" style="top: 15px;"></i>
							</button>
							<%} %>
						</div>
						<div class="row m-0 pt-20 pb-30">
							<div class="col-md-12 p-0">
								<textarea class="custom-modal-textarea w-100 istar-form-control form-control" placeholder="Type here" id="eventdescription " name="eventdescription" rows="6"></textarea>
							</div>
						</div>
					</div>
					<div class="modal-footer p-0 pt-30 pb-30 pl-30	pr-30">
						<button type="submit" class="btn theme_color f-14 font-weight-bold m-0 pr-20">Reset</button>
						<button type="button" class="btn big_button rounded-0 f-14 font-weight-bold m-0" id="create" data-dismiss="modal">SUBMIT</button>
					</div>
				</div>
			</div>
		</div>