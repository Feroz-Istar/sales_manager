<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>

<div class="row cream-white m-0 theme_solid_border_bottom justify-content-between align-items-center pl-40 pr-40 pt-10 pb-10">
									<div class="col-md-6 d-flex p-0">
										<div class="text-result-found theme_solid_border_right_1px pr-15">
											<strong class="number-of-results">04</strong> Results Found
										</div>
										<div class=" pl-15">
											<button class="theme_solid_border bg-white brown-grey rounded f-12 position-relative search-filter">2 BHK Flats
											<i class="fas fa-times-circle brown-grey f-14 cross-btn"></i>
											</button>
										</div>
									</div>
									
									<div class="col-md-2 text-right p-0">
										<button type="submit" class="btn theme_color f-12 font-weight-bold ">Reset</button>
										<button type="button" class="btn small_outline_button font-weight-bold rounded-0 f-12" id="save" onclick="save()">SAVE</button>
									</div>
								</div>
								
								<div class="row minh-500 m-0">
									<div class="col-md-10 shadow-right pl-40 pr-40">
										<%for(int i=0;i<2;i++){ %>
										<div class="row m-0">
											<div class="col-md-10 p-0">
												<div class="d-flex pb-15 pt-30">
													<img src="<%=baseURL%>assets/image/calltask.svg" height="22px" width="22px" class="mr-10"> 
													<div class="align-self-center theme_solid_border_right_1px black f-14 pr-20">Call Task</div>
													<div class="f-16 fw-500 greyish-brown pl-20">Accenture Consulting Inc.</div>
												</div>
												
												<div class="f-14 blue-black pb-15">Sed tempus odio eget lacus mattis scelerisque <span class="bg-light-pink fw-500"> 2 Bhk</span> pellentesque pharetra elit non fringilla. Sed in libero diam. Pellentesque sem quam...</div>
												<p class=" brown-grey f-12 m-0 pb-30 border_bottom_1_dashed">June 22, 2019 &nbsp;&nbsp; 02:45 PM</p>
											</div>
										</div>
										
										
										<%} %>
									
									</div>
									<div class="col-md-2 pt-20 pb-20 p-0">
										<div class="fw-500 f-16 greyish-brown pl-40 pr-40">Filters</div>
										<div class="d-flex  pt-30 pl-40 pr-40">
												<label for="agent-radio" class="istar-radio-btn">
	                                            	<input type="radio" name="radio-button" id="agent-radio">
	                                             	<span class="istar-radio-btn-style"></span>
	                                             	<span class="fw-500 f-14 greyish-brown">Agents</span>
	                                         	</label>	
												<label for="lead-radio" class="ml-3 istar-radio-btn">
	                                            	<input type="radio" name="radio-button" id="lead-radio">
	                                             	<span class="istar-radio-btn-style"></span>
	                                             	<span class="fw-500 f-14 greyish-brown">Leads</span>
	                                         	</label>	
										</div>
										
										<div class="input-group date custom-calendar ml-40 mr-40 mt-20">
											<input type="text" id="lead_qualified_datepicker"
												class="form-control  custom-dateselect" value="12-02-2012" placeholder="Calendar">
											<div class="input-group-addon px-1"
												onclick="showqualifiedCalendar()">
												<img src="<%=baseURL%>/assets/image/calendar.svg" alt="calendar" class="h-20"/>
											</div>
										</div>
										
										
									
										<div class="d-inline-block istar-dropdown-task select_focus ml-40 mr-40 mt-20">
											<button class="istar-dropdown-arrow dropdown-toggle" data-display="static"
												id="custom_report_activity" data-toggle="dropdown" aria-haspopup="true"
												aria-expanded="false">
												<span class="sr-only">Toggle Dropdown</span> Filter by
												Activities 
												<img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
														class=" float-right">
											</button>
											<div
												class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="custom_report_activity">
												<button class="dropdown-item" type="button">
													<img src="<%=baseURL%>assets/image/calltask.svg" alt="call"
														class="task-dropdown"> Call Task
												</button>
												<button class="dropdown-item" type="button">
													<img src="<%=baseURL%>assets/image/emailtask.svg" alt="email"
														class="task-dropdown"> Email Task
												</button>
												<button class="dropdown-item" type="button">
													<img src="<%=baseURL%>assets/image/webinartask.svg" alt="webinar"
														class="task-dropdown"> Webinar Task
												</button>
												<button class="dropdown-item" type="button">
													<img src="<%=baseURL%>assets/image/presentation.svg" alt="presentation"
														class="task-dropdown"> Presentation
												</button>
											</div>
		
										</div>
										
										<div class="d-inline-block istar-dropdown-task select_focus ml-40 mr-40 mt-20">
											<button class="istar-dropdown-arrow dropdown-toggle" data-display="static"
												id="custom_report_stage" data-toggle="dropdown" aria-haspopup="true"
												aria-expanded="false">
												<span class="sr-only">Toggle Dropdown</span>Filter by Stages
												<img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
														class=" float-right">
											</button>
											<div
												class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="custom_report_stage">
												<button class="dropdown-item" type="button">
													 Stage 1
												</button>
												<button class="dropdown-item" type="button">
													stage 2
												</button>
											</div>
										</div>
	
										<div class="d-inline-block istar-dropdown-task select_focus ml-40 mr-40 mt-20">
											<button class="istar-dropdown-arrow dropdown-toggle" data-display="static"
												id="custom_report_persona" data-toggle="dropdown" aria-haspopup="true"
												aria-expanded="false">
												<span class="sr-only">Toggle Dropdown</span>Filter by Persona
												<img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
														class=" float-right">
											</button>
											<div
												class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="custom_report_persona">
												<button class="dropdown-item" type="button">
													 Persona 1
												</button>
												<button class="dropdown-item" type="button">
													Persona 2
												</button>
											</div>
										</div>

										<div class="d-inline-block istar-dropdown-task select_focus ml-40 mr-40 mt-20">
											<button class="istar-dropdown-arrow dropdown-toggle" data-display="static"
												id="custom_report_product" data-toggle="dropdown" aria-haspopup="true"
												aria-expanded="false">
												<span class="sr-only">Toggle Dropdown</span>Filter by Product
												<img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
														class=" float-right">
											</button>
											<div
												class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="custom_report_product">
												<button class="dropdown-item" type="button">
													 Product 1
												</button>
												<button class="dropdown-item" type="button">
													Product 2
												</button>
											</div>
										</div>

										<button type="button" class="btn small_outline_button font-weight-bold rounded-0 f-12 ml-40 mr-40 mt-30 width-100" id="custom_filter_apply" onclick="apply_filter()"
											>APPLY</button>

									</div>
								</div>
								