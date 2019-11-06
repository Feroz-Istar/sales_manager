<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%><div class="f-18 font-weight-bold  pl-30 pr-30 pt-30  greyish-brown pb-10">Opentech Pvt. Ltd.</div>
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
						
						<script>
						$('#reschedule_date').datepicker({autoclose:true})

						var options = { now: "12:35", //hh:mm 24 hour format only, defaults to current time 
								twentyFour: false, //Display 24 hour format, defaults to false 
								upArrow: 'wickedpicker__controls__control-up', //The up arrow class selector to use, for custom CSS 
								downArrow: 'wickedpicker__controls__control-down', //The down arrow class selector to use, for custom CSS 
								close: 'wickedpicker__close', //The close class selector to use, for custom CSS 
								hoverState: 'hover-state', //The hover state class to use, for custom CSS 
								title: 'Time', //The Wickedpicker's title, 
								showSeconds: false, //Whether or not to show seconds, 
								secondsInterval: 1, //Change interval for seconds, defaults to 1 , 
								minutesInterval: 1, //Change interval for minutes, defaults to 1 
								beforeShow: null, //A function to be called before the Wickedpicker is shown 
								show: null, //A function to be called when the Wickedpicker is shown 
								clearable: false, //Make the picker's input clearable (has clickable "x") };
						}
						$('#reschedule_time').wickedpicker(options);
						
						
						</script>