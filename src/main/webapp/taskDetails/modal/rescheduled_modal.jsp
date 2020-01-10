<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
	
%>
<div class="modal fade" id="rescheduleCenter" tabindex="-1"
			role="dialog" aria-labelledby="rescheduleCenterTitle"
			aria-hidden="true" data-backdrop="static" >
			<div class="modal-dialog modal-lg modal-dialog-centered"
				role="document">
				<div class="modal-content rounded-0">
					<div
						class="modal-header shadow-bottom pt-20 pb-20  pl-30 pr-30 p-0">
						<h5 class="modal-title greyish-brown f-18 font-weight-bold mb-0">Reschedule
							Task</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<img src="<%=baseURL%>assets/image/close.svg" alt="taskicon"
								class="rounded-circle hw-24 task-icon">
						</button>
					</div>
					<div class="modal-body p-0">
					<div class="f-18 font-weight-bold  pl-30 pr-30 pt-30  greyish-brown pb-10">Opentech Pvt. Ltd.</div>
						<div class="row   theme_dashed_border_bottom ml-30 mr-30 m-0 pb-20">
							<div class="col-md-4 border-right-separation p-0">
								<div class="f-14 brownish-grey">Contact Person</div>
								<div class="f-16 black fw-500">Deann Harper</div>
							</div>
							<div class="col-md-4 border-right-separation">
								<div class="f-14 brownish-grey">Agent</div>
								<div class="f-16 black fw-500">Bradley Obrien</div>
							</div>
							<div class="col-md-4 ">
								<div class="f-14 brownish-grey">Date & Time</div>
								<div class="f-16 black fw-500">June 12, 19 &nbsp;&nbsp;&nbsp;
									11:00 AM</div>
							</div>
						</div>
						
						
						
						<div class="row m-0   pl-30 pr-30 pt-20  pb-20">
									<div class="col-md-6 p-0 pr-7_5">
										<div class="f-14 fw-500 pb-10 black">Date</div>
										
										<div class="input-group position-relative  ">
											<img src="<%=baseURL%>assets/image/calendar.svg" alt="" class="h-20 event_date"> <input id="reschedule_date" name="event_date" value="10/30/2019" class="brown-grey pl-2 f-14 removefocus w-100 istar-form-control h-35 is-valid" placeholder="Select here" aria-invalid="false">
										</div>
									</div>
									<div class="col-md-6 p-0 pl-7_5">
										<div class="f-14 fw-500 pb-10 black">Time</div>
										
										<div class="input-group position-relative  ">
											<img src="<%=baseURL%>assets/image/alarm.svg" alt="" class="h-20 event_date"> <input id="reschedule_time" name="event_date" class=" brown-grey pl-2 f-14 removefocus timepicker w-100 istar-form-control h-35 hasWickedpicker" type="text" placeholder="Select here" onkeypress="return false;" aria-showingpicker="false" tabindex="0">
										</div>
									</div>
								</div>
						<div class="row m-0  pl-30 pr-30">
							<div class="col-md-12 p-0 pb-30">
								<div class="f-14 fw-500 pb-10 black" >Reason</div>
								<textarea class="w-100 custom-modal-textarea p-0 pt-10 pl-10 brown-grey" rows="7" placeholder="Type here"></textarea>
							</div>
						</div>
					
					</div>

					<div
						class="modal-footer p-0 pt-30 pb-30 border-top-task_list ">
						<button type="submit"
							class="btn theme_color f-14 font-weight-bold m-0 pr-20"
							id="reset_schedule_task">Reset</button>
						<button type="button"
							class="btn big_button rounded-0 f-14 font-weight-bold m-0 mr-30" style="width:140px;"
							id="create_schedule_task">SUBMIT</button>
					</div>
				</div>
			</div>
		</div>
		