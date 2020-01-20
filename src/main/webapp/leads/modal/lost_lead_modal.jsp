<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>
<!-- start of lost lead modal -->

		<div class="modal fade" id="lostLeadModalCenter" tabindex="-1"
			role="dialog" aria-labelledby="lostLeadModalCenterTitle"
			aria-hidden="true">
			<div class="modal-dialog modal-lg modal-dialog-centered"
				role="document">
				<div class="modal-content rounded-0 p-0 lostleadmodalsize">
					<div class="row shadow-sm m-0 pl-30 pr-30 pt-25 pb-25	">
						<div
							class="col-md-11 col-11 modal-title greyish-brown f-18 font-weight-bold p-0"
							id="lostLeadModalCenterTitle">Lost Lead</div>
						<button type="button" class="col-md-1 col-1 close p-0"
							data-dismiss="modal" aria-label="Close">
							<img src="<%=baseURL%>assets/image/close.svg" alt="close"  class=" float-right">
						</button>
					</div>
					<div class="modal-body p-0 pl-30 pr-30">
					<form id="lostleadmodal">
						<div class="row pt-30 pb-10 m-0">
							<div class="col-md-12 f-18 font-weight-bold greyish-brown text-truncate p-0" title="Zencorporation Pot. Ltd.">
								Zencorporation Pot. Ltd.</div>
						</div>

						<div class="row m-0">
							<div class="col-md-4 border-right-separation p-0">
								<div class="f-14 brownish-grey">Contact Person</div>
								<div class="f-16 fw-500 black text-truncate" title="">Miriam Franklin</div>
							</div>
							<div class="col-md-4 border-right-separation p-0 pl-15">
								<div class="f-14 brownish-grey">Recent Task</div>
								<div class="f-16 fw-500 black">Call</div>
							</div>
							<div class="col-md-4 p-0 pl-15 ">
								<div class="f-14 brownish-grey">Deal Value</div>
								<div class="f-16 fw-500 black">$ 208</div>
							</div>
						</div>

						<div class="row m-0 pt-50 pb-30">
							<div class="col-md-12 p-0">
								<textarea
									class="form-control custom-modal-textarea f-14 brown-grey w-100 p-2"
									id="reasonforlosing" name="reasonforlosing" rows="6" placeholder="Type Reason"></textarea>
							</div>
						</div>
					</form>
					</div>
					<div class="modal-footer p-0 pt-25 pb-25 pl-30 pr-30">
						<button type="button"
							class="btn theme_color f-14 font-weight-bold">Reset</button>
						<button type="button"
							class="btn big_button rounded-0 f-14 font-weight-bold"
							 id="lostleadsubmit">SUBMIT</button>
					</div>
				</div>
			</div>
		</div>

<!-- start of lost lead modal -->

		<div class="modal fade" id="lostLeadModalCenter" tabindex="-1"
			role="dialog" aria-labelledby="lostLeadModalCenterTitle"
			aria-hidden="true">
			<div class="modal-dialog modal-lg modal-dialog-centered"
				role="document">
				<div class="modal-content rounded-0 p-0 lostleadmodalsize">
					<div class="row shadow-sm m-0 pl-30 pr-30 pt-25 pb-25	">
						<div
							class="col-md-11 col-11 modal-title greyish-brown f-18 font-weight-bold p-0"
							id="lostLeadModalCenterTitle">Lost Lead</div>
						<button type="button" class="col-md-1 col-1 close p-0"
							data-dismiss="modal" aria-label="Close">
							<img src="<%=baseURL%>assets/image/close.svg" alt="close"  class=" float-right">
						</button>
					</div>
					<div class="modal-body p-0 pl-30 pr-30">
					<form id="lostleadmodal">
						<div class="row pt-30 pb-10 m-0">
							<div class="col-md-12 f-18 font-weight-bold greyish-brown text-truncate p-0" title="Zencorporation Pot. Ltd.">
								Zencorporation Pot. Ltd.</div>
						</div>

						<div class="row m-0">
							<div class="col-md-4 border-right-separation p-0">
								<div class="f-14 brownish-grey">Contact Person</div>
								<div class="f-16 fw-500 black text-truncate" title="">Miriam Franklin</div>
							</div>
							<div class="col-md-4 border-right-separation p-0 pl-15">
								<div class="f-14 brownish-grey">Recent Task</div>
								<div class="f-16 fw-500 black">Call</div>
							</div>
							<div class="col-md-4 p-0 pl-15 ">
								<div class="f-14 brownish-grey">Deal Value</div>
								<div class="f-16 fw-500 black">$ 208</div>
							</div>
						</div>

						<div class="row m-0 pt-50 pb-30">
							<div class="col-md-12 p-0">
								<textarea
									class="form-control custom-modal-textarea f-14 brown-grey w-100 p-2"
									id="reasonforlosing" name="reasonforlosing" rows="6" placeholder="Type Reason"></textarea>
							</div>
						</div>
					</form>
					</div>
					<div class="modal-footer p-0 pt-25 pb-25 pl-30 pr-30">
						<button type="button"
							class="btn theme_color f-14 font-weight-bold">Reset</button>
						<button type="button"
							class="btn big_button rounded-0 f-14 font-weight-bold"
							 id="lostleadsubmit">SUBMIT</button>
					</div>
				</div>
			</div>
		</div>

		<!-- end of lost lead modal -->
