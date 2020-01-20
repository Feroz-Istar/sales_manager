	<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>
	
						
							<div class="row align-items-center theme_solid_border_bottom m-0 pl-40 pr-40 pt-25 pb-25 ">
								<div class="col-md-2 col p-0">
									<div class="f-14 fw-500 black text-truncate d-inline" data-toggle="tooltip" data-placement="bottom" title="Vehement Capital Partners.">Vehement Capital Partners.</div>
									<div class="f-14 brownish-grey text-truncate d-table" data-toggle="tooltip" data-placement="bottom" title="Miriam Franklin">Miriam Franklin</div>
								</div>
								<div class="col-md-2 col p-0">
									<div class="f-14 greyish-brown text-break">
										infotech@gmail.com <i class="fal fa-info-circle soft-blue f-16"></i>
									</div>
								</div>
								<div class="col-md-2 col p-0">
									<div class="f-14 greyish-brown text-break">
										+91 445 546 6456 <i class="fal fa-info-circle soft-blue f-16"></i>
									</div>
								</div>
								<div class="col-md-2 col p-0 ">
									<div class="d-flex align-items-center">
										<img class="hw-24 mr-10" alt="callicon" src="<%=baseURL%>assets/image/calltask.svg">
										<div class="f-14 greyish-brown text-break">Call&nbsp;&nbsp;-&nbsp;&nbsp;</div>
										<div class="f-12 brown-grey">June 15, 2019 02:45 PM</div>
									</div>
								</div>
								<div class="col-md-4 col-12 p-0 ">
									<div class="row m-0 align-items-center">
										<div class="col-md-11 p-0">
											<div class="row m-0">
												<img class="rounded-circle imgsize-40 mr-10" alt="Lead Image" src="<%=baseURL%>assets/image/11.png">
												<div class="col-md-10 p-0">
													<div class="f-14 greyish-brown text-truncate d-inline" data-toggle="tooltip" data-placement="bottom" title="Stanley Howard">Stanley Howard</div>
													<div class="f-12 brown-grey  text-truncate d-table" data-toggle="tooltip" data-placement="bottom" title="Pipeline - New Sales Pipeline">Pipeline - New Sales Pipeline</div>
												</div>
											</div>
										</div>
										<div class="col-md-1 p-0 text-right">
											<div class="dropdown d-inline dropleft">
												<button class="dropdown-icon-btn p-0 text-right " type="button" id="dropdownMenuButton" data-display="static" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
													<i class="fas fa-ellipsis-v f-12 brown-grey"></i>
												</button>
												<div class="dropdown-menu dropdown-menu-right istar-dropdown-menu arrow-left" style="margin-right: -5px !important; margin-top: -12px !important;" aria-labelledby="dropdownMenuButton">

													<button class="dropdown-item" onclick="openEditModal()">
														<div class="mr-2 dropdown-icon edit"></div>
														Edit
													</button>
													<button class="dropdown-item" href="#" data-toggle="modal" data-target="#deleteModal">
														<div class="mr-2 dropdown-icon delete"></div>
														Delete
													</button>
													<button class="dropdown-item" onclick="window.location.href = '../landing/userDetail.jsp'">
														<div class="mr-2 dropdown-icon details"></div>
														Details
													</button>
												</div>
											</div>

										</div>
									</div>
								</div>
							</div>
					