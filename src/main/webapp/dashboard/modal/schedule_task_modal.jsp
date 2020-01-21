<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>

<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
	SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
	SimpleDateFormat incoming = new SimpleDateFormat("dd-MM-yyyy");
	String incomingDate = request.getParameter("var") != null
			? request.getParameter("var")
			: sdf.format(new Date());
	String today_date = sdf.format(new Date());
	int size = 0;
%>
<div class="modal fade" id="scheduleTaskModalCenter" tabindex="-1" role="dialog" aria-labelledby="scheduleTaskModalCenterTitle" aria-hidden="true" data-backdrop="static">
				<div class="modal-dialog modal-lg modal-dialog-centered" role="document">
					<div class="modal-content  rounded-0 ">
						<div class="modal-header pt-20 pb-20 pl-30 pr-30 shadow-bottom">
							<h5 class="modal-title greyish-brown f-18 font-weight-bold mb-0">Schedule Task</h5>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<img src="<%=baseURL%>assets/image/close.svg" alt="taskicon" class="rounded-circle hw-24 task-icon">
							</button>
						</div>
						<div class="modal-body  p-0 pl-30 pr-30">
						<div class=" alert alert-danger rounded-0  brownish-grey border-0 m-0" tabindex="1" role="alert" id="scheduled_task_alert" style="display:none">
					<em id="alert-message" class=" f-12  brownish-grey fw-300">404 not found</em><img src="<%=baseURL%>assets/image/theme_info_red.svg" alt="info" class="">
				</div>
							<form id="scheduletaskform" class="mb-0">
								<fieldset>
									<div class="row  pt-30 m-0">
										<div class="col-md-12 istar-dropdown p-0">
											<label class="f-14 fw-500 pb-10 black m-0">Lead Name</label>
								

<select name="basic" multiple="multiple" class="3col active" id="leadname">
        <option value="AL">Alabama</option>
        <option value="AK">Alaska</option>
        <option value="AZ">Arizona</option>
        <option value="AR">Arkansas</option>
        <option value="CA">California</option>
        <option value="CO">Colorado</option>
        <option value="CT">Connecticut</option>
        <option value="DE">Delaware</option>
        <option value="FL">Florida</option>
        <option value="GA">Georgia</option>
  </select>
										</div>

									</div>

									<div class="row  pt-20 m-0">
										<div class="col-md-6  p-0 pr-7_5">
											<label class="f-14 fw-500 pb-10 black m-0">Task Type</label>
											<input type="hidden" id="scheduled_task_type" name="scheduled_task_type" value="Call Task"/>
											<div class="dropdown istar-dropdown">
												<button class="custom-modal-input w-100 pl-2 d-flex " style="justify-content: space-between;" id="" data-toggle="dropdown" aria-haspopup="true" data-display="static"
													aria-expanded="false">
													 <span id="activity">Call Task</span> <i class="fas fa-chevron-down very-light-pink f-12 align-self-center"></i>
												</button>
												<div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu w-100" id="scheduleTaskType">
													<button class="dropdown-item" type="button" onclick="scheduled_task_type_changecontent(this)">
														<img src="<%=baseURL%>assets/image/calltask.svg" alt="call" class="task-dropdown"> Call Task
													</button>
													<button class="dropdown-item" type="button" onclick="scheduled_task_type_changecontent(this)">
														<img src="<%=baseURL%>assets/image/emailtask.svg" alt="email" class="task-dropdown"> Email Task
													</button>
													<button class="dropdown-item" type="button" onclick="scheduled_task_type_changecontent(this)">
														<img src="<%=baseURL%>assets/image/webinartask.svg" alt="webinar" class="task-dropdown"> Webinar Task
													</button>
													<button class="dropdown-item" type="button" onclick="scheduled_task_type_changecontent(this)">
														<img src="<%=baseURL%>assets/image/presentation.svg" alt="presentation" class="task-dropdown"> Presentation
													</button>
												</div>
											</div>
										</div>
										<div class="col-md-6 p-0 pl-7_5">
											<label class="f-14 fw-500 pb-10 black m-0">Task By</label>
											<input type="hidden" id="scheduled_task_by" name="scheduled_task_by" value=""/>
											<div class="dropdown istar-dropdown">
												<button class="custom-modal-input w-100 pl-2 d-flex h-35" style="justify-content: space-between;" id="" data-toggle="dropdown" aria-haspopup="true" data-display="static"
													aria-expanded="false">
													<span id="task_by">Select here</span> <i class="fas fa-chevron-down very-light-pink f-12 align-self-center"></i>
												</button>
												<div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu w-100" id="task_by">
													<button class="dropdown-item" type="button"  onclick="scheduled_task_changecontent(this)">Agent 1</button>
													<button class="dropdown-item" type="button" onclick="scheduled_task_changecontent(this)">Agent 2</button>
													<button class="dropdown-item" type="button" onclick="scheduled_task_changecontent(this)">Agent 3</button>
													<button class="dropdown-item" type="button" onclick="scheduled_task_changecontent(this)">Agent 4</button>
												</div>
											</div>
										</div>
									</div>
									<div class="row  pt-20 m-0 pb-30">
										<div class="col-md-6 p-0 pr-7_5">
											<label class="f-14 fw-500 pb-10 black m-0">Date</label>
											<div class="custom-modal-input w-100 d-flex mr-2 h-35">
												<input class="f-14 border-0 removefocus w-100 pl-2 brown-grey custom_calendar" placeholder="Select here" id="schedule_task_date" value="<%=today_date%>" name="schedule_task_date"> <img
													src="<%=baseURL%>assets/image/calendar.svg" alt="date" class="pr-2 align-self-center h-20">
											</div>
										</div>
										<div class="col-md-6 p-0 pl-7_5">
											<label class="f-14 fw-500 pb-10 black m-0">Time</label>
											<div class="custom-modal-input w-100 d-flex mr-2 h-35">
												<input class="f-14 border-0 removefocus w-100 pl-2 brown-grey" placeholder="Select here" id="schedule_task_time" name="schedule_task_time"> <img src="<%=baseURL%>assets/image/alarm.svg" alt="alarm"
													class="pr-2 align-self-center h-20">
											</div>
										</div>
									</div>
								</fieldset>
							</form>
						</div>
						<div class="modal-footer p-0 pt-30 pb-30 pr-30 pl-30">
							<button type="button" class="btn theme_color f-14 font-weight-bold" onclick="scheduled_task_reset()">Reset</button>

							<button type="button" class="btn big_button modal-submit-btn rounded-0 f-14 font-weight-bold" id="schedule" onclick="scheduled_task_submit()" >SCHEDULE</button>

						</div>
					</div>
				</div>
			</div>

			<!-- end of schedule task modal -->
			
			<script>
			
			
			</script>