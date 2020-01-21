<%@page import="com.OngoingTask"%>
<%@page import="org.apache.commons.io.IOUtils"%>
<%@page import="com.google.gson.GsonBuilder"%>
<%@page import="com.google.gson.Gson"%>
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";

	String ongointask = IOUtils.toString(request.getReader());
	Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm:ss").create();
	OngoingTask ongoingTask = gson.fromJson(ongointask, OngoingTask.class);
%>

<div class="tab-pane fade show active" id="ongoing_<%=ongoingTask.getId()%>" role="tabpanel" aria-labelledby="ongoing_<%=ongoingTask.getId()%>-tabs">
	<div class="row minh-650 m-0 ">
		<div class="col-md-11 p-0 pl-45 pr-45">

			<div class="theme_dotted_border_bottom pt-15 pb-20 shadow-bottom  ">
				<div class="row  m-0 pb-10 align-items-center">
					<div class="col-md-6 p-0 ">

						<div class="f-18 font-weight-bold greyish-brown text-truncate d-inline" data-toggle="tooltip" data-placement="bottom" title="Globex Corporation. Inc.">Globex Corporation. Inc.</div>
					</div>
					<div class="col-md-6 p-0 text-right" onclick="window.location.href = 'partials/task_lead_detail.jsp'">
						<div class="f-14 font-weight-bold   dark_theme_color ">
							<span class="cursor-pointer">View More <i class="fas fa-chevron-circle-right"></i></span>
						</div>

					</div>

				</div>
				<div class="row align-items-center m-0">
					<div class="col-md-3 p-0">
						<div class="f-14 brownish-grey">Contact Person</div>
						<div class="f-16 fw-500 black  text-truncate" data-toggle="tooltip" data-placement="bottom" title="Rosemary Garcia">Rosemary Garcia</div>
					</div>
					<div class="col-md-3 p-0 pl-20">
						<div class="f-14 brownish-grey">Agent</div>
						<div class="f-16 fw-500 black  text-truncate" data-toggle="tooltip" data-placement="bottom" title="Marry Vasquez">Marry Vasquez</div>
					</div>

					<div class="col-md-6 p-0 d-flex justify-content-end">

						<button type="button" onclick="window.location.href = 'partials/ongoingJoined.jsp'" class="btn small_button rounded-0 font-weight-bold mr-10 f-12" id="outgoing_join">JOIN NOW</button>
						<button type="button" class="btn small_outline_button font-weight-bold rounded-0 f-12" id="outgoing_listen">LISTEN</button>

					</div>
				</div>
			</div>

			<div class="theme_dashed_border_bottom pb-30 pt-30">
				<div class="row m-0">
					<div class="col-md-3 p-0 border-right-dashed-separation">
						<div class="brownish-grey f-14">Task Type</div>
						<div class="f-16  fw-500 black ">Call</div>
					</div>
					<div class="col-md-3 p-0 border-right-dashed-separation pl-15">
						<div class="brownish-grey f-14">Initiated At</div>
						<div class="f-16  fw-500 black ">11:00 AM</div>
					</div>
					<div class="col-md-3 p-0 border-right-dashed-separation pl-15 ">
						<div class="brownish-grey f-14">Deal Value</div>
						<div class="f-16  fw-500 black ">$500</div>
					</div>
					<div class="col-md-3 p-0 pl-15">
						<div class="brownish-grey f-14">Pipeline Detail</div>
						<div class="f-16  fw-500 black text-truncate" data-toggle="tooltip" data-placement="bottom" title="Stage 02">Stage 02</div>
					</div>
				</div>
			</div>


		</div>



		<div class="col-md-1 p-0">

			<div class="dropleft  ">
				<button type="button" class="btn btn-secondary dropdown-toggle" style="display: none;" id="ongoing_task_content" data-toggle="dropdown" data-display="static" aria-haspopup="true"
					aria-expanded="false">Dropleft</button>
				<div class="dropdown-menu dropdown-menu-right dropdown-menu-lg-left ongoing_task_content p-0 m-0 animated fadeInRightBig" aria-labelledby="ongoing_task_content">
					<!-- Dropdown menu links -->
				</div>
			</div>
			<ul class="list-group shadow d-flex flex-column h-100  taskpopup  disabled-div">


				<li class="notesdropdown list-group-item p-0  pt-10 pb-10">
					<div class=" d-flex flex-column justify-content-center align-items-center minh-80 " data-dropdown_id="ongoing_task_content">
						<img src="<%=baseURL%>assets/image/notes.svg" alt="notes" />
						<div class="f-12 pt-1 greyish-brown">Notes</div>

					</div>
				</li>
				<li class=" cuesdropdown list-group-item p-0  pt-10 pb-10">
					<div class=" d-flex flex-column justify-content-center align-items-center minh-80" data-dropdown_id="ongoing_task_content">
						<img src="<%=baseURL%>assets/image/cues.svg" alt="cues" />
						<div class="f-12 pt-1 greyish-brown">Cues</div>

					</div>
				</li>
				<li class="crmdropdown list-group-item p-0  pt-10 pb-10">
					<div class=" d-flex flex-column justify-content-center align-items-center minh-80" data-dropdown_id="ongoing_task_content">
						<img src="<%=baseURL%>assets/image/crm.svg" alt="crm" />
						<div class="f-12 pt-1 greyish-brown">CRM</div>

					</div>
				</li>
				<li class="chatdropdown list-group-item  p-0 pt-10 pb-10 ">
					<div class="  d-flex flex-column justify-content-center align-items-center minh-80" data-dropdown_id="ongoing_task_content">
						<img src="<%=baseURL%>assets/image/chat.svg" alt="" />
						<div class="f-12 pt-1 greyish-brown">Chat</div>

					</div>
				</li>
				
				<li class="chatdropdown list-group-item  p-0 pt-10 pb-10 ">
					<div class="  d-flex flex-column justify-content-center align-items-center minh-80" data-dropdown_id="ongoing_document_content">
						<img src="<%=baseURL%>assets/image/document.svg" alt="" />
						<div class="f-12 pt-1 greyish-brown">Document</div>

					</div>
				</li>

				<li class=" flex-grow list-group-item d-flex flex-column justify-content-center align-items-center " style="height: calc(100% - 80px);"></li>


			</ul>
		</div>
	</div>

</div>

