<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>

<div class="modal fade" id="editLeadModalCenter" tabindex="-1" role="dialog" aria-labelledby="editLeadModalCenterTitle" aria-hidden="true">
		  <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
		    <div class="modal-content rounded-0 eventmodalsize">
		    	<div class="row shadow-sm pt-25 pb-25 pl-30 pr-30 m-0" > 
					<div class="col-md-11 col-11 modal-title greyish-brown f-18 font-weight-bold p-0" id="editLeadModalCenterTitle">Edit Detail </div>
					<button type="button" class="col-md-1 col-1 text-right close p-0" data-dismiss="modal" aria-label="Close">
						<img src="<%=baseURL%>assets/image/close.svg" alt="close">
					</button>
				</div>
		      <div class="modal-body p-0 p-30">
		      <form id="updateLeadForm">
		       	<div class="row m-0 pb-20">
		       		<div class="col-md-6 p-0 pr-15">
		       			<div class="f-14 fw-500 pb-10">Lead Name</div>
		       			<input type="text" class="custom-modal-input w-100 form-control f-14" id="company_name" name="company_name" aria-describedby="company_name" placeholder="Type here">
		       		</div>
		       		<div class="col-md-6 p-0">
		       			<div class="f-14 fw-500 pb-10">Web Address</div>
		       			<input type="text" class="custom-modal-input w-100 form-control f-14" id="website" name="website" aria-describedby="website" placeholder="Type here">
		       		</div>
		       	</div>
		    	<div class="row m-0 pb-20">
		       		<div class="col-md-6 p-0 pr-15">
		       			<div class="f-14 fw-500 pb-10">Contact Number</div>
		       			<div class="custom-modal-input w-100 f-14 d-flex justify-content-between">
		       				<div class="col-md-11 p-0 d-flex align-items-center" id="number-list">
		       					<button type="button"  class="theme_solid_border bg-white brown-grey rounded f-12 position-relative search-filter ml-10">+91 445 546 6456 &nbsp;&nbsp;
									<i class="fas fa-times-circle brown-grey f-14 cross-btn"></i>
								</button>
		       				</div>
		       				<div class="col-md-1 p-0 d-flex align-items-center">
		       					<div class=" dropdown " id="add_number_dropdown">
		       					<button type="button" class="btn p-0" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" data-display="static">
								 	<i class="fal fa-plus theme_color f-16"></i>
								</button>
				       				<div class="dropdown-menu dropdown-menu-right add-number istar-dropdown-task-menu p-0"
										aria-labelledby="add_number_dropdown" style="right: -67px;">
										<div class="card pl-10 pr-10 pt-5 pb-5 border-0" style="width: 200px;">
											<div class="d-flex align-items-center">
												<input type="number" class="custom-modal-input w-100 form-control f-14" id="contact-number" name="contact-number" aria-describedby="contact-number" placeholder="Type here">
												<button type="button" class="btn theme_color f-14 font-weight-bold pr-0" id="addContactNumber">Add</button>
											</div>
										</div>
									</div>
								</div>
							</div>
		       			</div>
		       			
		       		</div>
		       		<div class="col-md-6 p-0">
		       			<div class="f-14 fw-500 pb-10">Email</div>
		       			<input type="text" class="custom-modal-input w-100 form-control f-14" id="email" name="email" aria-describedby="email" placeholder="Type here">
		       		</div>
		       	</div>
		       	<div class="row m-0 pb-20" id="contact-person-row">
		      	 	<div class="col-md-6 p-0">
		       			<div class="f-14 fw-500 pb-10">Contact Person</div>
		       		</div>
		       		<div class="col-md-6 p-0">
		       			<button type="button" id="add-scp" class="btn f-12 theme_color font-weight-bold float-right pb-10 p-0">Add More</button>
		       		</div>
		       		<div class="col-md-6 p-0  pr-15">
		       			<input type="text" class="custom-modal-input w-100 form-control f-14" id="contact_person_name" name="contact_person_name" aria-describedby="contact_person_name" placeholder="Type here">
		       		</div>
		       		<div class="col-md-6 p-0">
		       			<input type="text" class="custom-modal-input w-100 form-control f-14" id="designation" name="designation" aria-describedby="designation" placeholder="Type here">
		       		</div>
		       		
		       	</div>
		       	<div class="row m-0 pb-20">
					<div class="col-md-12 p-0">
						<div class="f-14 fw-500  pb-10">Address</div>
						<textarea class="custom-modal-textarea w-100" id="address" name="address" rows="3"></textarea>
					</div>
				</div>
				<div class="row m-0  ">
					<div class="col-md-12 p-0">
						<div class="f-14 fw-500  pb-10">About Company</div>
						<textarea class="custom-modal-textarea w-100" id="aboutcompany" name="aboutcompany" rows="3"></textarea>
					</div>
				</div>
				
				
				</form>
		      </div>
		      <div class="modal-footer">
		       		<button type="button" class="btn theme_color f-14 font-weight-bold">Reset All</button>
					<button type="button" class="btn big_button rounded-0 f-14 font-weight-bold" id="updateLead"  data-dismiss="modal">SUBMIT</button>
		      </div>
		    </div>
		  </div>
		</div>