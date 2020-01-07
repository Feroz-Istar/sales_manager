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
<div class="modal fade" id="createEventModalCenter" tabindex="-1" role="dialog" aria-labelledby="createEventModalCenterTitle" aria-hidden="true"  data-backdrop="static" >
				<div class="modal-dialog modal-lg modal-dialog-centered" role="document">
					<div class="modal-content rounded-0 ">
						<div class="modal-header shadow-bottom pt-25 pb-25  pl-30 pr-30 ">
							<h5 class="modal-title greyish-brown f-18 font-weight-bold mb-0">Create an Event</h5>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<img src="<%=baseURL%>assets/image/close.svg" alt="taskicon" class="rounded-circle hw-24 task-icon">
							</button>
						</div>
						<div class="modal-body p-0 pr-30 pl-30">
				<div class=" alert alert-danger rounded-0  brownish-grey border-0 m-0" tabindex="1" role="alert" id="create_event_alert" style="display:none">
					<em id="alert-message" class=" f-12  brownish-grey fw-300">404 not found</em><img src="<%=baseURL%>assets/image/theme_info_red.svg" alt="info" class="">
				</div>
				<form action="" id="createTaskFrom" class="mb-0	">
								<fieldset>
									<div class="row pt-20 m-0">
							
							<div class="col-md-6 p-0 pr-7_5">
											<label class="f-14 fw-500 pb-10 m-0">Add Title</label> <input type="text" class="custom-modal-input w-100 form-control f-14 istar-form-control" name="eventTitle" id="eventTitle"
												aria-describedby="eventTitle" placeholder="Type here" />
										</div>
										<div class="col-md-6 p-0 pl-7_5">
											<label class="f-14 fw-500 pb-10 m-0">Type</label>
										<input type="hidden" id="event_type" name="event_type" />
											<div class="dropdown istar-dropdown">
												<button class="custom-modal-input select_focus w-100 pl-2 d-flex h-35" style="justify-content: space-between;" id="eventType" data-toggle="dropdown" aria-haspopup="true"
													data-display="static" aria-expanded="false">
													<span id="">Select here</span><i class="fas fa-chevron-down very-light-pink f-12 align-self-center"></i>
												</button>
													<div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu w-100" id="scheduleTaskType">
													<button class="dropdown-item" type="button" onclick="create_event_changecontent(this)">
														<img src="<%=baseURL%>assets/image/calltask.svg" alt="call" class="task-dropdown"> Call Task
													</button>
													<button class="dropdown-item" type="button" onclick="create_event_changecontent(this)">
														<img src="<%=baseURL%>assets/image/emailtask.svg" alt="email" class="task-dropdown"> Email Task
													</button>
													<button class="dropdown-item" type="button" onclick="create_event_changecontent(this)">
														<img src="<%=baseURL%>assets/image/webinartask.svg" alt="webinar" class="task-dropdown"> Webinar Task
													</button>
													<button class="dropdown-item" type="button" onclick="create_event_changecontent(this)">
														<img src="<%=baseURL%>assets/image/presentation.svg" alt="presentation" class="task-dropdown"> Presentation
													</button>
												</div>
											</div>
										</div>
									</div>
									<div class="row m-0 pt-20">
										<div class="col-md-6 p-0 pr-7_5">
											<label class="f-14 fw-500 pb-10 m-0">Date</label>
								
											<div class="input-group position-relative  ">
												<img src="<%=baseURL%>assets/image/calendar.svg" alt="" class=" event_date align-self-center h-20"> <input id="event_date" name="event_date" value="<%=today_date%>"
													class=" pl-2 f-14  removefocus w-100 istar-form-control h-35" placeholder="Select here">
											</div>
										</div>
										<div class="col-md-6 p-0 pl-7_5">
											<label class="f-14 fw-500 pb-10 m-0">Time</label>
									
											<div class="input-group position-relative  ">
												<img src="<%=baseURL%>assets/image/alarm.svg" alt="" class="event_date  align-self-center h-20"> <input id="timepicker" name="event_time"
													class=" pl-2 f-14  removefocus timepicker w-100 istar-form-control h-35" type="text" placeholder="Select here">
											</div>
										</div>
									</div>
									<div class="row m-0 pt-20">
										<div class="col-md-12 p-0">
											<label class="f-14 fw-500 pb-10 m-0">Add Guest</label> <input type="text" class="custom-modal-input w-100 form-control f-14 istar-form-control" id="addGuest" name="addGuest"
												aria-describedby="addGuest" placeholder="Select here">
										</div>
									</div>

									<div class="row m-0 pt-20 pb-30">
										<div class="col-md-12 p-0">
											<label class="f-14 fw-500 pb-10 m-0">Description</label>
											<textarea class="custom-modal-textarea w-100 istar-form-control form-control" placeholder="Type here" id="eventdescription" name="eventdescription" rows="6"></textarea>
										</div>
									</div>
								</fieldset>
							</form>
						</div>
						<div class="modal-footer p-0 pt-30 pb-30 pl-30	pr-30">
							<button type="submit" class="btn theme_color f-14 font-weight-bold m-0 pr-20" onclick="create_event_reset()">Reset All</button>
							<button type="button" class="btn big_button rounded-0 f-14 font-weight-bold m-0" id="create"  >CREATE</button>
						</div>
					</div>
				</div>
			</div>