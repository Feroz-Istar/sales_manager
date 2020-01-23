<%@page import="com.google.gson.Gson"%>
<%@page import="com.UpcomingTask"%>
<%@page import="org.apache.commons.io.IOUtils"%>
<%@page import="com.google.gson.GsonBuilder"%>
<%@page import="com.google.gson.Gson"%>
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
	
	String upcomingtask = IOUtils.toString(request.getReader());	
	 Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm:ss").create();	
	 UpcomingTask upcomingTask = gson.fromJson(upcomingtask, UpcomingTask.class);
%>
<div class="tab-pane fade show active" id="upcoming_<%=upcomingTask.getId()%>" role="tabpanel" aria-labelledby="upcoming_<%=upcomingTask.getId()%>-tabs">
	<div class="row m-0 ">
		<div class="col-md-11 p-0  pl-45 pr-45">

			<div class="shadow-bottom  theme_dotted_border_bottom pt-15  pb-20">
				<div class="row justify-content-between m-0 pb-10">
					<div class="col-md-6 p-0">
						<div class=" f-18 font-weight-bold greyish-brown text-truncate d-inline" data-toggle="tooltip" data-placement="bottom" title="Opentech Pvt. Ltd.">Opentech Pvt. Ltd.</div>
					</div>
					<div class="col-md-6 p-0">
						<div class=" f-14 font-weight-bold d-flex justify-content-end align-items-center dark_theme_color " onclick="window.location.href = 'task_lead_detail/task_lead_detail.jsp'">
							<span class="cursor-pointer">View More <i class="fas fa-chevron-circle-right ml-1 "></i></span>
						</div>
					</div>
				</div>
				<div class="row align-items-center  m-0">
					<div class="col-md-3 p-0">
						<div class="f-14 brownish-grey">Contact Person</div>
						<div class="f-16 fw-500 black text-truncate" data-toggle="tooltip" data-placement="bottom" title="Deann Harper">Deann Harper</div>
					</div>
					<div class="col-md-3 p-0 pl-40">
						<div class="f-14 brownish-grey">Agent</div>
						<div class="f-16  fw-500 black text-truncate" data-toggle="tooltip" data-placement="bottom" title="Bradley Obrien">Bradley Obrien</div>
					</div>
					<div class="col-md-6 p-0 d-flex justify-content-end">

						<button type="button" class="btn small_outline_button rounded-0 f-12 font-weight-bold" id="upcomimg_reschedule" onclick="rescheduledModal()">RESCHEDULE</button>
					</div>
				</div>
			</div>




			<div class="theme_dashed_border_bottom pb-30 pt-30">
				<div class="row m-0">
					<div class="col-md-3 p-0 border-right-dashed-separation ">
						<div class="brownish-grey f-14">Task Type</div>
						<div class="f-16  fw-500 black">Call</div>
					</div>
					<div class="col-md-3 p-0 border-right-dashed-separation pl-15">
						<div class="brownish-grey f-14">Timing</div>
						<div class="f-16  fw-500 black">11:00 AM</div>
					</div>
					<div class="col-md-3 p-0 border-right-dashed-separation pl-15">
						<div class="brownish-grey f-14">Deal Value</div>
						<div class="f-16  fw-500 black">$500</div>
					</div>
					<div class="col-md-3 p-0 pl-15">
						<div class="brownish-grey f-14">Pipeline Detail</div>
						<div class="f-16  fw-500 black text-truncate" data-toggle="tooltip" data-placement="bottom" title="Stage 02">Stage 02</div>
					</div>
				</div>
			</div>

			<div class="d-flex flex-column justify-content-center align-items-center pt-45 ">
				<img src="<%=baseURL%>assets/image/timer.svg" alt="clock" class="mb-20 time-img-size">
				<div class="f-16 fw-500 black ">Few minutes left !</div>
				<div class="f-12 brownish-grey">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</div>
			</div>

		</div>
<div class="col-md-1 p-0">
			<div class=" dropleft">
				<button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="display: none" id="upcoming_task_content">Dropleft</button>
				<div class="dropdown-menu upcoming_task_content m-0" aria-labelledby="upcoming_task_content">
					<!-- Dropdown menu links -->
				</div>
			</div>
			<ul class="list-group shadow d-flex flex-column h-100  taskpopup disabled-div	">


				<li class="notesdropdown list-group-item p-0  pt-10 pb-10">
					<div class=" d-flex flex-column justify-content-center align-items-center minh-80 " data-dropdown_id="upcoming_task_content">
						<img src="<%=baseURL%>assets/image/notes.svg" alt="notes" />
						<div class="f-12 pt-1 greyish-brown">Notes</div>

					</div>
				</li>
				<li class=" cuesdropdown list-group-item p-0  pt-10 pb-10">
					<div class=" d-flex flex-column justify-content-center align-items-center minh-80" data-dropdown_id="upcoming_task_content">
						<img src="<%=baseURL%>assets/image/cues.svg" alt="cues" />
						<div class="f-12 pt-1 greyish-brown">Cues</div>

					</div>
				</li>
				<li class="crmdropdown list-group-item p-0  pt-10 pb-10">
					<div class=" d-flex flex-column justify-content-center align-items-center minh-80" data-dropdown_id="upcoming_task_content">
						<img src="<%=baseURL%>assets/image/crm.svg" alt="crm" />
						<div class="f-12 pt-1 greyish-brown">CRM</div>

					</div>
				</li>
				<li class="chatdropdown list-group-item  p-0  pt-10 pb-10 ">
					<div class="  d-flex flex-column justify-content-center align-items-center minh-80" data-dropdown_id="upcoming_task_content">
						<img src="<%=baseURL%>assets/image/chat.svg" alt="" />
						<div class="f-12 pt-1 greyish-brown">Chat</div>

					</div>
				</li>
					<li class="chatdropdown list-group-item  p-0  pt-10 pb-10 ">
					<div class="  d-flex flex-column justify-content-center align-items-center minh-80" data-dropdown_id="upcoming_task_content">
						<img src="<%=baseURL%>assets/image/document.svg" alt="" />
						<div class="f-12 pt-1 greyish-brown">Document</div>

					</div>
				</li>	

				<li class=" flex-grow list-group-item d-flex flex-column justify-content-center align-items-center minh-100" style="height: calc(100% - 80px);"></li>


			</ul>
		</div>
	</div>

</div>

