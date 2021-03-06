	
<%
         String url = request.getRequestURL().toString();
         String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
         		+ request.getContextPath() + "/";
         %>

		<div class="row grey-white-bg align-items-center  theme_solid_border_bottom  m-0 pl-40 pr-40 pt-10 pb-10">
			<div class="col-md-6 col-12 d-flex align-items-center  p-0">
				<div class="display-1 black f-20 border-right-separation pr-20 fw-500">Task Details</div>
				<div class=" f-12 brown-grey pl-20 ">Task Detail</div>
				<i class="fas fa-chevron-circle-right pl-2 pr-2 f-12 brown-grey "></i>
				<div class=" f-12 brown-grey fw-500 " id="breadcrumb">Ongoing</div>
			</div>
			<div class="col-md-6 col-12 d-flex justify-content-md-end p-0">
				<div class="input-group position-relative mr-2 search_width">
					<img src="<%=baseURL%>assets/image/search.svg" alt="edit" class=" searchBox"> <input id="taskdetail_search"
						class="form-control  custom-taskborder brown-grey  f-14 search_height custom-result-selects" type="search" placeholder="Search" style="padding-right: 30px">
				</div>
				<div class="dropdown  ">
					<button class="btn small_button rounded-0 f-12 dropdown-toggle font-weight-bold " id="task_types" data-toggle="dropdown" aria-haspopup="true" data-display="static" aria-expanded="false">
						<span class="sr-only">Toggle Dropdown</span>NEW TASK <img src="<%=baseURL%>assets/image/toggle_white.svg" alt="call" class="h-17 text-white ">
					</button>
					<div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="ongoing_activity">
						<button class="dropdown-item" type="button" onclick="window.location.href = '../dashboard/partials/dashboardCreateTask.jsp'">
							<img src="<%=baseURL%>assets/image/calltask.svg" alt="call" class="task-dropdown"> Call Task
						</button>
						<button class="dropdown-item" type="button">
							<img src="<%=baseURL%>assets/image/emailtask.svg" alt="email" class="task-dropdown"> Email Task
						</button>
						<button class="dropdown-item" type="button">
							<img src="<%=baseURL%>assets/image/webinartask.svg" alt="webinar" class="task-dropdown"> Webinar Task
						</button>
						<button class="dropdown-item" type="button">
							<img src="<%=baseURL%>assets/image/presentation.svg" alt="" class="task-dropdown"> Presentation
						</button>
					</div>
				</div>
			</div>
		</div>
		<div class="row m-0">
			<div class="col-md-12 bg-white p-0 ">
				<ul class="nav nav-tabs nav-mytabs pl-40 pt-20 d-flex align-items-end" id="mainTask-tabs" role="tablist">
					<li class="nav-item rounded-0"><a class="nav-item nav-link show active" id="nav-ongoing-tab" data-toggle="tab" href="#nav-ongoing" role="tab" aria-controls="nav-ongoing" aria-selected="true">Ongoing</a></li>
					<li class="nav-item rounded-0"><a class="nav-item nav-link" id="nav-upcoming-tab" data-toggle="tab" href="#nav-upcoming" role="tab" aria-controls="nav-upcoming" aria-selected="false">Upcoming</a></li>
					<li class="nav-item rounded-0"><a class="nav-item nav-link" id="nav-completed-tab" data-toggle="tab" href="#nav-completed" role="tab" aria-controls="nav-completed" aria-selected="false">Completed</a>
					</li>
				</ul>
				<div class="tab-content mytab-content p-0" id="nav-tasktabsContent">
					<!-- start of main ongoing tab content -->
					<div class="tab-pane fade show active" id="nav-ongoing" role="tabpanel" aria-labelledby="nav-ongoing-tab">
						<div class="row align-items-center  theme_solid_border_bottom pl-40 pr-40 pt-15 pb-15  m-0">
							<jsp:include page="partials/ongoing_filters.jsp"></jsp:include>
						</div>
						<div class="row cream_white m-0 theme_solid_border_bottom justify-content-between align-items-center pl-40 pr-40 pt-10 pb-10" id="ongoing_filter_selections">
							<div class="col-md-10 d-flex p-0 filters-inside-selection">
								
							</div>
							<div class="col-md-2 text-right p-0">
								<button type="submit" class="btn theme_color f-14 font-weight-bold p-0" id="ongoing_reset" data-type="ongoing" onclick="resetFilters(this)">Reset</button>
							</div>
						</div>
						<div class="row very-light-pink-grey-bg m-0 " id="ongoing_tab_content_row" style="min-height:590px">
								<div class="col-md-12 p-0  " id="ongoing_no_data " style="display:none">
									<div class="d-flex justify-content-center h-100 align-items-center">
										<div class=" d-flex flex-column text-center">
											<img src="<%=baseURL%>assets/image/timer.svg" alt="lost" class="pb-25 pt-25">
											<div class="f-20 fw-500 brownish-grey">No data yet</div>
											<div class="f-14 brown-grey">Update the PersonaCharacteristics</div>
										</div>
									</div>
								</div>
						<!-- 	start of ongoing tab   -->
						<div class="col-md-3 p-0 border-right pl-20">
							<div class="nav flex-column nav-pills taskdetail-tab-list" id="ongoing_tab" role="tablist" aria-orientation="vertical"></div> 
							</div> 
						<!--  end of ongoing tab    -->
						<!-- start of ongoing tab  content  -->
 							<div class="col-md-9 bg-white p-0 position-relative" id=""> 
								<div class="tab-content h-100" id="ongoing_tab_content"></div>
 							</div>
<!-- 							end of ongoing tab  content -->
						</div>
					</div>
					<!-- end of main ongoing tab  -->
					<!-- start of main upcoming tab-->
					<div class="tab-pane fade" id="nav-upcoming" role="tabpanel" aria-labelledby="nav-upcoming-tab">
						<div class="row align-items-center  theme_solid_border_bottom  pl-40 pr-40 pt-15 pb-15  m-0" id="upcoming-results-found">
							<jsp:include page="partials/upcoming_filters.jsp"></jsp:include>
						</div>
						<div class="row cream_white m-0 theme_solid_border_bottom justify-content-between align-items-center pl-40 pr-40 pt-10 pb-10" id="upcoming_filter_selections">
							<div class="col-md-10 d-flex p-0 filters-inside-selection">
								<button class="theme_solid_border bg-white brown-grey rounded f-12 position-relative search-filter">
									Filter 1 <i class="fas fa-times-circle brown-grey f-14 cross-btn"></i>
								</button>
							</div>
							<div class="col-md-2 text-right p-0">
								<button type="submit" class="btn theme_color f-14 font-weight-bold p-0" data-type="upcoming" id="upcoming_reset" onclick="resetFilters(this)">Reset</button>
							</div>
						</div>
						<div class="row very-light-pink-grey-bg m-0" id="upcoming_tab_content_row">
						<div class="col-md-12 p-0  " id="upcoming_no_data " style="display:none">
									<div class="d-flex justify-content-center h-100 align-items-center">
										<div class=" d-flex flex-column text-center">
											<img src="<%=baseURL%>assets/image/timer.svg" alt="lost" class="pb-25 pt-25">
											<div class="f-20 fw-500 brownish-grey">No data yet</div>
											<div class="f-14 brown-grey">Update the PersonaCharacteristics</div>
										</div>
									</div>
								</div>
							<!-- start of upcoming tab   -->
							<div class="col-md-3 p-0 border-right pl-20" id="">
								<div class="nav flex-column nav-pills  taskdetail-tab-list" id="upcoming_tab" role="tablist" aria-orientation="vertical"></div>
							</div>
							<!-- end of upcoming tab   -->
							<div class="col-md-9 bg-white p-0">
								<div class="tab-content h-100" id="upcoming_tab_content"></div>
							</div>
							<!-- start of upcoming tab content  -->
						</div>
					</div>
					<!-- end of main upcoming tab  -->
					<!-- start of main completed tab -->
					<div class="tab-pane fade" id="nav-completed" role="tabpanel" aria-labelledby="nav-completed-tab">
						<div class="row align-items-center  theme_solid_border_bottom  pl-40 pr-40 pt-15 pb-15  m-0">
							<jsp:include page="partials/completed_filters.jsp"></jsp:include>
						</div>
						<div class="row cream_white m-0 theme_solid_border_bottom justify-content-between align-items-center pl-40 pr-40 pt-10 pb-10" id="completed_filter_selections">
							<div class="col-md-10 d-flex p-0 filters-inside-selection">
								<button class="theme_solid_border bg-white brown-grey rounded f-12 position-relative search-filter">
									Filter 1 <i class="fas fa-times-circle brown-grey f-14 cross-btn"></i>
								</button>
							</div>
							<div class="col-md-2 text-right p-0">
								<button type="submit" class="btn theme_color f-14 font-weight-bold p-0" data-type="completed" id="completed_reset" onclick="resetFilters(this)">Reset</button>
							</div>
						</div>
						<div class="row very-light-pink-grey-bg m-0" id="completed_tab_content_row">
							<div class="col-md-12 p-0  " id="completed_no_data " style="display:none">
									<div class="d-flex justify-content-center h-100 align-items-center">
										<div class=" d-flex flex-column text-center">
											<img src="<%=baseURL%>assets/image/timer.svg" alt="lost" class="pb-25 pt-25">
											<div class="f-20 fw-500 brownish-grey">No data yet</div>
											<div class="f-14 brown-grey">Update the PersonaCharacteristics</div>
										</div>
									</div>
								</div>
							<!-- start of completed tab  -->
							<div class="col-md-3 p-0 border-right pl-20" id="">
								<div class="nav flex-column nav-pills taskdetail-tab-list" id="completed_tab" role="tablist" aria-orientation="vertical"></div>
							</div>
							<!-- end of completed tab  -->
							<!-- start of completed tab content  -->
							<div class="col-md-9 bg-white p-0">
								<div class="tab-content h-100 " id="completed_tab_content"></div>
							</div>
							<!-- end of completed tab content  -->
						</div>
					</div>
					<!-- end of main completed tab -->
				</div>
			</div>
		<!--start of Task Reschedule modal -->
		<jsp:include page="modal/rescheduled_modal.jsp"></jsp:include>
		<!--start of Task Reschedule modal -->
		<!-- start of share task modal -->
		<jsp:include page="modal/share_task_modal.jsp"></jsp:include>
		<!-- end of share task modal -->
		<script src="<%=baseURL%>assets/js/taskdetail/taskDetails.js"></script>
		<script src="<%=baseURL%>assets/js/taskdetail/ongoing/ongoing.js"></script>
		<script src="<%=baseURL%>assets/js/taskdetail/upcoming/upcoming.js"></script>
		<script src="<%=baseURL%>assets/js/taskdetail/completed/completed.js"></script>
		

