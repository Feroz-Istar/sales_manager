			<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>
<div class="modal fade" id="changeStageModal" tabindex="-1"
			role="dialog" aria-labelledby="changeStageModalTitle"
			aria-hidden="true">
			<div class="modal-dialog modal-lg modal-dialog-centered"
				role="document">
				<div class="modal-content rounded-0 ">
					<div class="modal-header shadow-bottom pt-25 pb-25  pl-30 pr-30 ">
						<h5 class="modal-title greyish-brown f-18 font-weight-bold mb-0">Change Stage</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<img src="<%=baseURL%>assets/image/close.svg" alt="taskicon"
								class="rounded-circle hw-24 task-icon">
						</button>
					</div>
					<div class="modal-body p-0 pr-30 pl-30">
						<div class="pt-40 greyish-brown font-weight-bold f-18 pb-10">TEK Consulting Inc.</div>
						<div class="row m-0 pb-20 border_bottom_1_dashed">
							<div class="col-md-4 border-right-dashed-separation p-0">
								<div class="f-14 brownish-grey">Contact Person</div>
								<div class="fw-500 f-16 black">Johnni Owens</div>
							</div>
							<div class="col-md-4 border-right-dashed-separation p-0 pl-15">
								<div class="f-14 brownish-grey">Agent</div>
								<div class="fw-500 f-16 black">Raul Woods</div>
							</div>
							<div class="col-md-4 p-0 pl-15">
								<div class="f-14 brownish-grey">Current Stage</div>
								<div class="fw-500 f-16 black">Stage 01</div>
							</div>
						</div>
						
						<div class="row m-0">
							<div class="col-md-12 p-0">
								<div class="fw-500 f-14 black pb-10 pt-20">Stage Type</div>
								<div class="istar-dropdown">
								<button class="custom-modal-input w-100 pl-2 d-flex h-35"
									style="justify-content: space-between;" id="stageType"
									data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="false">Select here <i class="fas fa-chevron-down very-light-pink f-12 align-self-center"></i>
								</button>
								<div
									class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu w-100"
									 aria-labelledby="stageType">
									<button class="dropdown-item" type="button">Stage Type 1</button>
									<button class="dropdown-item" type="button">Stage Type 2</button>
									<button class="dropdown-item" type="button">Stage Type 3</button>
									<button class="dropdown-item" type="button">Stage Type 4</button>
								</div>
								</div>
							</div>
						</div>
						<div class="row pb-40 pt-20 m-0">
							<div class="col-md-12 p-0">
								<div class="fw-500 f-14 black pb-10">Reason</div>
								<textarea class="form-control custom-modal-textarea f-14 brown-grey w-100 p-2"
									id="reasontochangestage" name="reasontochangestage" rows="6" placeholder="Type here"></textarea>
							</div>
						</div>
							
						
					</div>
					<div class="modal-footer p-0 pt-30 pb-30 pl-30	pr-30">
						<button type="submit"
							class="btn theme_color f-14 font-weight-bold m-0 pr-20">Reset</button>
						<button type="button"
							class="btn big_button rounded-0 f-14 font-weight-bold m-0"
							id="create">SUBMIT</button>
					</div>
				</div>
			</div>
		</div>