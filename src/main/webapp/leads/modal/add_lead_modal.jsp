<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>

<div class="modal fade" id="addLeadModalCenter" tabindex="-1"
			role="dialog" aria-labelledby="addLeadModalCenterTitle"
			aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered  modal-xl  "
				role="document">
				<div class="modal-content rounded-0 p-0 addleadmodalsize">

					<div class="modal-body p-0" id="lostLeadModalCenterTitle">

						<div class="row shadow-bottom bottom_border_1px p-0 m-0  pt-25 pb-25 ml-25 mr-25">
							<div class="col-md-11 leadmodal p-0">
								<ul class="nav nav-pills p-0" id="pills-tab" role="tablist">
									<li class="nav-item"><a class="nav-link p-0 active"
										id="pills-upload-tab" data-toggle="pill" href="#pills-upload"
										role="tab" aria-controls="pills-upload" aria-selected="true">
											<div class="d-flex align-items-center flex-row bd-highlight">
												<div class="bd-highlight pr-10 d-flex align-items-center">
													<div class="circle ">01</div>
												</div>
												<div class="bd-highlight pr-10 align-self-center tabtitle">Upload
													Lead List</div>
												<div class="bd-highlight d-flex pr-10">
													<img src="<%=baseURL%>assets/image/arrow_right.svg" alt="arrow-right">
												</div>
											</div>
									</a></li>
									<li class="nav-item "><a class="nav-link disabled p-0"
										id="pills-preview-tab" data-toggle="pill"
										href="#pills-preview" role="tab" aria-controls="pills-preview"
										aria-selected="false">
											<div class="d-flex align-items-center flex-row bd-highlight">
												<div class="bd-highlight pr-10 d-flex align-items-center">
													<div class="circle">02</div>
												</div>
												<div class="bd-highlight pr-10 align-self-center tabtitle">Preview</div>

											</div>
									</a></li>
								</ul>
							</div>
							<button type="button" class="col-md-1 col-1 close p-0 text-right"
								data-dismiss="modal" aria-label="Close">
								<img src="<%=baseURL%>assets/image/close.svg" alt="close">
							</button>
						</div>

						<div class="tab-content" id="pills-tabContent">
							<div class="tab-pane fade show active" id="pills-upload"
								role="tabpanel" aria-labelledby="pills-upload-tab">
								<!-- start of upload lead content -->
								
								

								<div class="row justify-content-center dropzonediv m-0 pt-90 pb-90">
									<div class="col-md-9 cream_white upload-lead-box p-0  ml-130 mr-130"
										style="border: 1px dashed #cccccc;">
										<div
											class="d-flex flex-row align-items-center text-center upload-lead-box">
											<div class="col-md-5 p-0" id="previews">
												<img src="<%=baseURL%>assets/image/xlsdoc.svg" alt="xmlicon"
													class="doc-image-size">
											</div>
											<div class="col-md-6 p-0">
												<div class="f-16 fw-500 greyish-brown pb-5">Drag
													or Drop a Documents</div>
												<div class="f-14 brown-grey pb-5">We support only excel
													file up to 100 mb.</div>
												<div class="f-16 font-weight-bold pb-5 theme_color browse cursor-pointer">Browse</div>
											</div>
										</div>
									</div>
								</div>



								<!-- end of upload lead content -->
							</div>



							<div class="tab-pane fade leadpreview_container" id="pills-preview" role="tabpanel"
								aria-labelledby="pills-preview-tab">

									<div class="row m-0 pl-30 pt-30 pb-10 align-items-center bottom_border_1px">
										<div class="col-md-3 p-0 black f-14 font-weight-bold">Lead Name</div>
										<div class="col-md-3 p-0 black f-14 font-weight-bold p-0">Email ID</div>
										<div class="col-md-3 p-0 black f-14 font-weight-bold p-0">Contact No.</div>
									</div>
								
										<%for(int i=0;i<20;i++){ %>
										
										<div class="row m-0 pl-30 leadpreview pt-20 pb-20 bottom_border_1px align-items-center">
										<div class="col-md-3 p-0 greyish-brown f-14">Stanley Howard</div>
										<div class="col-md-3 p-0 greyish-brown f-14 p-0">stanley@gmail.com</div>
										<div class="col-md-3 p-0 greyish-brown f-14">+91 445 546 6456</div>
										<div class="col-md-3 p-0 greyish-brown f-14">
											<div class="d-flex justify-content-end pr-60">
													<button class="hw-30 border-0 bg-transparent">
														<img src="<%=baseURL%>assets/image/edit.svg" alt="edit"
													srcset="" class="mr-2 h-17">
													</button>
													<button class="hw-30  border-0 bg-transparent">
														<img src="<%=baseURL%>assets/image/delete.svg" alt="delete"
													srcset="" class="mr-2 h-17">
													</button>

												</div>
										</div>
										
									</div>
										<%} %>
								</div>



						</div>

					</div>

					<div class="modal-footer p-0 ml-25 mr-25 pt-20 pb-20">
						<button class="btn modal-prev-btn f-14 font-weight-bold rounded-0 theme_color" style="display:none" >Back</button>
						<button class="btn leadsubmit f-14 big_button font-weight-bold rounded-0  " style="display:none" >SUBMIT	</button>

						<button class="btn f-14 font-weight-bold continue big_button rounded-0" disabled>CONTINUE</button>

					</div>


				</div>
			</div>
		</div>