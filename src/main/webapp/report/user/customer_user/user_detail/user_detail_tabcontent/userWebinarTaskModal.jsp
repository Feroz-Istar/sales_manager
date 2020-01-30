
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>
<div class="row h-100 m-0">
	<div class="col-md-11 p-0">
		<div class="row justify-content-between m-0 pl-45 pr-45 pt-15 pb-10">
			<div class="col-9 p-0 ">
				<div
					class="f-18 font-weight-bold greyish-brown text-truncate d-inline"
					data-toggle="tooltip" data-placement="bottom"
					title="Globex Corporation. Inc.">Globex Corporation. Inc.</div>
			</div>
			<div class="col-3 p-0">
				<div class="d-flex justify-content-end">
					<button class="btn p-0">
						<div style="background-image: url(<%=baseURL%>assets/image/heart.svg); height: 24px; width: 24px;" class="mr-15 fav"></div>
					</button>
					<div class=" dropdown " id="completed_webinar_comment">
						<button class="btn p-0 dropdown-toggle"
							id="completed_webinar_comment" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="true" data-display="static">
							<div style="background-image: url(<%=baseURL%>assets/image/message.svg); height: 24px; width: 24px;" class="mr-15 comment"></div>
						</button>
						<div
							class="dropdown-menu dropdown-menu-right   istar-dropdown-task-menu p-0"
							aria-labelledby="completed_webinar_comment" style="right: -67px;">

							<div class="card p-20 border-0" style="width: 500px;">
								<div class="card-header p-0 border-bottom-0 bg-white">
									<div class="row m-0">
										<div class="col-md-6 p-0 pb-20 fw-500 f-16 black">Comment</div>
										<div class="col-md-6 p-0">
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<img src="<%=baseURL%>assets/image/close.svg" alt="taskicon"
													class="rounded-circle hw-24 task-icon">
											</button>
										</div>
									</div>
								</div>
								<div class="card-body border-0 p-0 pb-20">
									<div class="form-group mb-0">
										<textarea class="form-control rounded-0 brown-grey f-14"
											id="exampleFormControlTextarea1" rows="3"
											placeholder="Type here"></textarea>
									</div>
								</div>
								<div class="card-footer p-0 border-top-0  bg-white">
									<div class="row d-flex justify-content-end m-0">
										<button type="button"
											class="btn join_btn  istar-btn-hover f-12 "
											id="completed_call_reply_submit">Submit</button>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class=" dropdown">
						<button class="btn  p-0 dropdown-toggle" id="completed_webinar_reply"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="true"
							data-display="static">
							<div style="background-image: url(<%=baseURL%>assets/image/reply.svg); height: 24px; width: 24px;" class="mr-15 share"></div>
						</button>
						<div
							class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu p-20  p-0 share-menu"
							aria-labelledby="completed_webinar_reply" style="right: -18px;">

							<div class="input-group position-relative pb-20">
								<img src="<%=baseURL%>assets/image/search.svg"
									alt="edit" class=" searchBox"> <input
									id="completed_webinar_reply_search"
									class="form-control  custom-taskborder brown-grey  f-14 search_height minw-237"
									type="search" placeholder="Search" style="padding-right: 30px">
							</div>
							<div style="height: 370px; overflow-x: hidden; overflow-y: auto;">
								<%
									for (int i = 0; i < 30; i++) {
								%>
								<div class="d-flex align-items-center pb-10 ">
									<input class="istar-checkbox agentcheckbox " data-id="0"
										id="completed_webinar_reply-checkbox<%=i%>" type="checkbox">
									<label class="istar-checkbox-style"
										for="completed_webinar_reply-checkbox<%=i%>"></label> <img
										alt="user-img"
										src="<%=baseURL%>assets/image/11.png"
										class="rounded-circle ml-3 mr-2 hw-40">
									<div>
										<div class="f-14 font-weight-bold greyish-brown">Robert
											Garcia</div>
										<div class="f-12  brownish-grey">Team -02</div>
									</div>
								</div>
								<%
									}
								%>
							</div>
							<button type="button"
								class="btn btn-block big_button rounded-0 font-weight-bold f-12 mt-30"
								id="completed_webinar_reply_submit">Submit</button>

						</div>
					</div>
					<div
						class="f-14 font-weight-bold theme_color cursor-pointer align-self-center"
						onclick="window.location.href = 'task_lead_detail/task_lead_detail.jsp'">
						View More <i class="fas fa-chevron-circle-right ml-1 pr-2"></i>
					</div>
				</div>
			</div>
		</div>

		<div
			class="row  m-0 ml-45 mr-45  pb-20  theme_dotted_border_bottom shadow-bottom  ">

			<div class="col-md-3 p-0">
				<p class="brownish-grey f-14 mb-0">Contact Person</p>
				<p class="black f-16 fw-500 mb-0 text-truncate"
					data-toggle="tooltip" data-placement="bottom"
					title="Globex Corporation">Robert Wolken</p>
			</div>
			<div class="col-md-3 p-0">
				<p class="brownish-grey f-14 mb-0">Agent</p>
				<p class="black f-16 fw-500 mb-0 text-truncate"
					data-toggle="tooltip" data-placement="bottom"
					title="Globex Corporation">Marilyn Fowler</p>
			</div>

		</div>
	
	 <div class="row m-0 pl-45 pr-45 pt-20 ">
         <div class="col p-0">
            <ul
               class="nav nav-tabs nav-mytabs p-0 d-flex align-items-end"
               id="userWebinarTab" role="tablist">
               <li class="nav-item"><a class="nav-item nav-link active"
                  id="userWebinarwhatsright-tab" data-toggle="tab" href="#userWebinarwhatsright"
                  role="tab" aria-controls="userWebinarwhatsright" aria-selected="true">Whats Right?</a></li>
               <li class="nav-item"><a class="nav-item nav-link"
                  id="userWebinarwhatswrong-tab" data-toggle="tab" href="#userWebinarwhatswrong"
                  role="tab" aria-controls="userWebinarwhatswrong" aria-selected="false">Whats Wrong?</a></li>
               <li class="nav-item"><a class="nav-item nav-link"
                  id="userWebinartimeline-tab" data-toggle="tab" href="#userWebinartimeline"
                  role="tab" aria-controls="#userWebinartimeline" aria-selected="false">Timeline</a></li>
               <li class="nav-item"><a class="nav-item nav-link"
                  id="userWebinar_adherence-tab" data-toggle="tab" href="#userWebinar_adherence"
                  role="tab" aria-controls="userWebinar_adherenc" aria-selected="false">Adherence</a></li>
            </ul>
            <div class="tab-content mytab-content "
               id="userWebinarTabContent">
               <div class="tab-pane fade active show 	" id="userWebinarwhatsright" role="tabpanel"
                  aria-labelledby="userWebinarwhatsright-tab">
            
               </div>
               <div class="tab-pane fade " id="userWebinarwhatswrong"
                  role="tabpanel" aria-labelledby="userWebinarwhatswrong-tab">
                 
               </div>
               <div class="tab-pane fade show " id="userWebinartimeline" role="tabpanel"
                  aria-labelledby="userWebinartimeline-tab">
                  <div class="card border-0  p-0 card-shadow-bottom" id="userWebinar_timeline_card">
                     
                  </div>
                   <div class="row m-0 theme_dashed_border_bottom   pt-20 pb-20" id="usertweb_adherence_filter">
                        <div class="col-md-1 p-0 "></div>
                        <div class="col-md-11 d-flex  p-0">
                           <div class="input-group date select_focus custom-calendar mr-10">
                              <input type="text" id="userwebTimeline_datepicker" class="form-control  custom-dateselect" value="12-02-2012" placeholder="Calendar">
                              <div class="input-group-addon" onclick="showCompletedWebTimelineCalendar()">
                                 <img src="<%=baseURL%>/assets/image/calendar.svg" alt="calendar" class="pr-1 hw-24">
                              </div>
                           </div>
                           <div class="istar-dropdown-task select_focus mr-10">
                              <button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="userwebTimeline_persona" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                              <span class="sr-only">Toggle Dropdown</span> <span id="userweb_timeline_drop">All Persona</span> <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
                              </button>
                              <div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="userwebTimeline_persona" id="">
                                 <button class="dropdown-item" type="button" onclick="userweb_timeline_persona(this)" data-id="Persona 1">Persona 1</button>
                                 <button class="dropdown-item" type="button" onclick="userweb_timeline_persona(this)" data-id="Persona 2">Persona 2</button>
                              </div>
                           </div>
                           <div class="istar-dropdown-task select_focus mr-10">
                              <button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="userwebTimeline_success" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                              <span class="sr-only">Toggle Dropdown</span><span id="userweb_timeline_success_drop">Filter by Success</span> <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
                                 class=" float-right">
                              </button>
                              <div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="userwebTimeline_success">
                                 <button class="dropdown-item" type="button" onclick="userweb_timeline_success(this)" data-id="Lead 1">Lead 1</button>
                                 <button class="dropdown-item" type="button" onclick="userweb_timeline_success(this)" data-id="Lead 2"> Lead 2</button>
                              </div>
                           </div>
                           <div class="istar-dropdown-task dropdown select_focus" id="">
                              <button class="istar-dropdown-arrow " data-display="static" id="userwebTimeline_dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                              <span class="sr-only">Toggle Dropdown</span> All Agents <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
                              </button>
                              <div class="dropdown-menu filter-menu dropdown-menu-right istar-dropdown-task-menu  dropdown-menu-lg-right position-absolute px-4" aria-labelledby="completedcall_timeline_dropdown"
                                 style="width: 350px;">
                                 <ul class="dropdown-nav nav nav-tabs nav-mytabs filtertabs pt-2 d-flex align-items-end" id="completedcall_timelineTab" role="tablist">
                                    <li class="nav-item"><a class="nav-link active" id="completedcall_timeline_individual-tab" data-toggle="tab" href="#completedcall_timeline_individual" role="tab"
                                       aria-controls="completedcall_timeline_individual" aria-selected="true">Individual</a></li>
                                    <li class="nav-item"><a class="nav-link" id="completedcall_timeline_team-tab" data-toggle="tab" href="#completedcall_timeline_team" role="tab" aria-controls="completedcall_timeline_team"
                                       aria-selected="false">Team</a></li>
                                 </ul>
                                 <div class="tab-content" id="completedcall_timelineTabContent">
                                    <div class="tab-pane fade show active px-4 py-3" id="completedcall_timeline_individual" role="tabpanel" aria-labelledby="completedcall_timeline_individual-tab">
                                       <div class="input-group py-2">
                                          <input id="completedcall_timeline_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search"
                                             style="border-right: none !important;">
                                          <div class="input-group-append">
                                             <button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
                                             <i class="fa fa-search f-12 brown-grey"></i>
                                             </button>
                                          </div>
                                       </div>
                                       <div class="userWebTimeline-agent-list mb-2" style="overflow-x: hidden; overflow-y: auto;">
                                          
                                       </div>
                                      
                                    </div>
                                    <div class="tab-pane fade px-4 py-3" id="completedcall_timeline_team" role="tabpanel" aria-labelledby="completedcall_timeline_team-tab">
                                       <div class="input-group py-2">
                                          <input id="completedcall_timeline_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search"
                                             style="border-right: none !important;">
                                          <div class="input-group-append">
                                             <button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
                                             <i class="fa fa-search f-12 brown-grey"></i>
                                             </button>
                                          </div>
                                       </div>
                                        <div class="userWebTimeline-team-list mb-2" style="overflow-x: hidden; overflow-y: auto;">
                                          
                                       </div>
                                    </div>
                                 </div>
                                 <div class="w-100 text-center">
                                    <button class="btn  rounded-0 theme_bg text-white f-14 font-weight-bold  mb-3 text-center px-3" style="min-width: 200px;" id="userweb_timeline_team_submit">Submit</button>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>	
                       <div class="row cream_white m-0 theme_solid_border_bottom justify-content-between align-items-center pl-40 pr-40 pt-10 pb-10" id="userwebTimeline_filter_selections">
							<div class="col-md-10 d-flex p-0 filters-inside-selection">
								
							</div>
							<div class="col-md-2 text-right p-0">
								<button type="submit" class="btn theme_color f-14 font-weight-bold p-0" id="userWebTimeline_reset" data-type="userWebTimeline" onclick="resetuserDetailFilters(this)">Reset</button>
							</div>
						</div>
                     <span id="userweb_timeline_section"></span>
               </div>
               <div class="tab-pane fade show " id="userWebinar_adherence" role="tabpanel"
                  aria-labelledby="-tab">
                  <div class="card border-0  p-0 card-shadow-bottom" id="userWebinar_adhere_card">
                     
                  </div>
                   <div class="row m-0 theme_dashed_border_bottom  pt-20 pb-20" id="userweb_adherence_filter">
                     <div class="col-md-1 p-0 "></div>
                     <div class="col-md-11 d-flex justify-content-center p-0">
                        <div class="input-group date custom-calendar mr-10 select_focus">
                           <input type="text" id="userweb_adher_datepicker" class="form-control  custom-dateselect" value="12-02-2012" placeholder="Calendar">
                           <div class="input-group-addon" onclick="showCompletedWebAdherCalendar()">
                              <img src="<%=baseURL%>/assets/image/calendar.svg" alt="calendar" class="pr-1 hw-24">
                           </div>
                        </div>
                        <div class="istar-dropdown-task select_focus mr-10 ">
                           <button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="userwebAdherence_success" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           <span class="sr-only">Toggle Dropdown</span><span id="userweb_adherence_drop">Filter by Success</span> <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
                              class=" float-right">
                           </button>
                           <div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="userwebAdherence_success">
                              <button class="dropdown-item" type="button" onclick="userweb_adherence_success(this)" data-id="Lead 1">Lead 1</button>
                              <button class="dropdown-item" type="button" onclick="userweb_adherence_success(this)" data-id="Lead 2">Lead 2</button>
                           </div>
                        </div>
                        <div class="istar-dropdown-task dropdown select_focus">
                           <button class="istar-dropdown-arrow " data-display="static" id="userwebAdherence_dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           <span class="sr-only">Toggle Dropdown</span> All Agents <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
                           </button>
                           <div class="dropdown-menu filter-menu dropdown-menu-right istar-dropdown-task-menu  dropdown-menu-lg-right position-absolute px-4" aria-labelledby="userwebAdherence_dropdown"
                              style="width: 350px;">
                              <ul class="dropdown-nav nav nav-tabs nav-mytabs filtertabs pt-2 d-flex align-items-end" id="userweb_adherenceTab" role="tablist">
                                 <li class="nav-item"><a class="nav-link active" id="userweb_adherence_individual-tab" data-toggle="tab" href="#userweb_adherence_individual" role="tab"
                                    aria-controls="userweb_adherence_individual" aria-selected="true">Individual</a></li>
                                 <li class="nav-item"><a class="nav-link" id="userweb_adherence_team-tab" data-toggle="tab" href="#userweb_adherence_team" role="tab"
                                    aria-controls="userweb_adherence_team" aria-selected="false">Team</a></li>
                              </ul>
                              <div class="tab-content" id="userweb_adherenceTabContent">
                                 <div class="tab-pane fade show active px-4 py-3" id="userweb_adherence_individual" role="tabpanel" aria-labelledby="userweb_adherence_individual-tab">
                                    <div class="input-group py-2">
                                       <input id="userweb_adherence_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search"
                                          style="border-right: none !important;">
                                       <div class="input-group-append">
                                          <button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
                                          <i class="fa fa-search f-12 brown-grey"></i>
                                          </button>
                                       </div>
                                    </div>
                                    <div class="userWebAdher-agent-list mb-2" style="overflow-x: hidden; overflow-y: auto;"></div>
                                 </div>
                                 <div class="tab-pane fade px-4 py-3" id="userweb_adherence_team" role="tabpanel" aria-labelledby="userweb_adherence_team-tab">
                                    <div class="input-group py-2">
                                       <input id="userweb_adherence_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search"
                                          style="border-right: none !important;">
                                       <div class="input-group-append">
                                          <button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
                                          <i class="fa fa-search f-12 brown-grey"></i>
                                          </button>
                                       </div>
                                    </div>
                                    <div class="userWebAdher-team-list mb-2" style="overflow-x: hidden; overflow-y: auto;"></div>
                                 </div>
                              </div>
                              <div class="w-100 text-center">
                                 <button class="btn  rounded-0 theme_bg text-white f-14 font-weight-bold  mb-3 text-center px-3" style="min-width: 200px;" id="userweb_adherence_team_submit">Submit</button>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="row cream_white m-0 theme_solid_border_bottom justify-content-between align-items-center pl-40 pr-40 pt-10 pb-10" id="userweb_filter_selections" >
                     <div class="col-md-10 d-flex p-0 filters-inside-selection"></div>
                     <div class="col-md-2 text-right p-0">
                        <button type="submit" class="btn theme_color f-14 font-weight-bold p-0" data-type="userWebAdherence" id="userwebAdherence_reset" onclick="resetuserDetailFilters(this)">Reset</button>
                     </div>
                  </div>
                  <span id="userweb_adherence_section"></span>
               </div>
                  </div>
            </div>
         </div>


	</div>



	<div class="col-md-1 p-0">
		<div class=" dropleft">
			<button type="button" class="btn btn-secondary dropdown-toggle"
				data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
				style="display: none" id="completed_webinar_task_content">Dropleft</button>
			<div class="dropdown-menu completed_webinar_task_content m-0"
				aria-labelledby="completed_webinar_task_content">
				<!-- Dropdown menu links -->
			</div>
		</div>
		<ul class="list-group shadow d-flex flex-column h-100  taskpopup">


			<li class="notesdropdown list-group-item p-0 pt-10 pb-10">
				<div class=" d-flex flex-column justify-content-center align-items-center minh-80 "
					data-dropdown_id="completed_webinar_task_content">
					<img src="<%=baseURL%>assets/image/notes.svg" alt="notes" />
					<div class="f-12 pt-1 greyish-brown">Notes</div>

				</div>
			</li>
			<li class=" cuesdropdown list-group-item p-0 pt-10 pb-10">
				<div class=" d-flex flex-column justify-content-center align-items-center minh-80"
					data-dropdown_id="completed_webinar_task_content">
					<img src="<%=baseURL%>assets/image/cues.svg" alt="cues" />
					<div class="f-12 pt-1 greyish-brown">Cues</div>

				</div>
			</li>
			<li class="crmdropdown list-group-item p-0 pt-10 pb-10">
				<div class=" d-flex flex-column justify-content-center align-items-center minh-80"
					data-dropdown_id="completed_webinar_task_content">
					<img src="<%=baseURL%>assets/image/crm.svg" alt="crm" />
					<div class="f-12 pt-1 greyish-brown">CRM</div>

				</div>
			</li>
			<li class="chatdropdown list-group-item  p-0 pt-10 pb-10 ">
				<div class="  d-flex flex-column justify-content-center align-items-center minh-80"
					data-dropdown_id="completed_webinar_task_content">
					<img src="<%=baseURL%>assets/image/chat.svg"
						alt="presentation" />
					<div class="f-12 pt-1 greyish-brown">Chat</div>

				</div>
			</li>


			<li class=" flex-grow list-group-item d-flex flex-column justify-content-center align-items-center minh-100"
				style="height: calc(100% - 80px);"></li>


		</ul>
	</div>
</div>

<script>

$(document).ready(function(){
	loadUserWebWhatsRight();
	loadUserAllTeamFilterTab();
	loadUserAllAgentFilterTab();
	$('#userWebinarTab>li>a').on('shown.bs.tab', function(e) {

		var target = $(e.target).html(); // activated tab
		console.log(target);
		
		switch (target) {
		case "Whats Right?":
			loadUserWebWhatsRight();
			break;
		case "Whats Wrong?":
			loadUserWebWhatsWrong();
			break;
		case "Timeline":
			loadUserWebtaskTimeline();
			break;
		case "Adherence":
			loadUserWebtaskAdherence();
			break;
		default:
			/*Ongoing*/
			loadUserWebWhatsRight();
		}
	});	
});

function  loadUserWebWhatsRight(){
	$('#userWebinar_adhere_card').empty();
	$('#userweb_adherence_section').empty();
	$('#userweb_adherence_section').empty();
	$('#userWebinarwhatswrong').empty();
	$('#userWebinar_timeline_card').empty();
	$('#userweb_timeline_section').empty();
	
	$.get(contextPath+"report/user/customer_user/user_detail/user_detail_tabcontent/user_webinar_task_tab_content/web_user_whatsright_sub_tab_content.jsp", function(data) {
		$('#userWebinarwhatsright').html(data);
	});
}

function  loadUserWebWhatsWrong(){
	$('#userWebinar_adhere_card').empty();
	$('#userweb_adherence_section').empty();
	$('#userWebinarwhatsright').empty();
	$('#userweb_adherence_section').empty();
	$('#userWebinar_timeline_card').empty();
	$('#userweb_timeline_section').empty();
	$.get(contextPath+"report/user/customer_user/user_detail/user_detail_tabcontent/user_webinar_task_tab_content/web_user_whatswrong_sub_tab_content.jsp", function(data) {
		$('#userWebinarwhatswrong').html(data);
	});
}

/*----------------------------------------start of load completed webinar task sub-tab "Timeline" content--------------------------------*/
function userweb_timeline_success(elem){
	var filter = $(elem).text();
	var filter_id = $(elem).data('id');
	console.log(filter);
	$('#userwebTimeline_success').attr('data-id',filter_id);
	$('#userwebTimeline_success').attr('data-name',filter);
	loadUserWebtaskTimeline();
};
function userweb_timeline_persona(elem){
	var filter = $(elem).text();
	var filter_id = $(elem).data('id');
	console.log(filter);
	$('#userwebTimeline_persona').attr('data-id',filter_id);
	$('#userwebTimeline_persona').attr('data-name',filter);
	loadUserWebtaskTimeline();
};
$('#userwebTimeline_datepicker').change(function(){
	$('#userwebTimeline_datepicker').attr('data-id',this.value)
	$('#userwebTimeline_datepicker').attr('data-name',this.value)
	loadUserWebtaskTimeline();
})
function  loadUserWebtaskTimeline(){
	$('#userWebinar_adhere_card').empty();
	$('#userweb_adherence_section').empty();
	$('#userWebinarwhatswrong').empty();
	$('#userWebinarwhatsright').empty();
	$('#userwebTimeline_filter_selections').find('.filters-inside-selection').empty();
	$('#userwebTimeline_filter_selections').hide();
	var filterObj={};
	/*Selection of date filter*/
	var time_value = $('#userwebTimeline_datepicker').attr('data-name');
	var time_value_id = $('#userwebTimeline_datepicker').attr('data-id');
	filterObj.time={};
	addFilterSelections("userwebTimeline","timelinedate",time_value,time_value_id,filterObj.time)
	/*Selection of success filter*/
	var success_value = $('#userwebTimeline_success').attr('data-name');
	var success_id = $('#userwebTimeline_success').attr('data-id');
	filterObj.deal={};
	addFilterSelections("userwebTimeline","success",success_value,success_id,filterObj.deal)
	
	/*Selection of persona filter*/
	var persona_value = $('#userwebTimeline_persona').attr('data-name');
	var persona_id = $('#userwebTimeline_persona').attr('data-id');
	filterObj.deal={};
	addFilterSelections("userwebTimeline","persona",persona_value,persona_id,filterObj.deal)
	
	/*Selection of All Agents->Individual filter*/
	if( $('#userwebTimeline_dropdown').attr('data-agents')!=null){
		var agents = JSON.parse($('#userwebTimeline_dropdown').attr('data-agents'));
		filterObj.agents=[]
		if(agents!=null){
			for(var i=0;i<agents.length;i++){
				var agent_id=agents[i].id;
				var agent_name=agents[i].name;
				var agent={}
				addFilterSelections("userwebTimeline","Timeline_Agents",agent_name,agent_id,agent)
				filterObj.agents.push(agent)
			}
		}
	}
	
	/*Selection of All Agents->Team filter*/
	if( $('#userwebTimeline_dropdown').attr('data-teams')!=null){
		var teams = JSON.parse($('#userwebTimeline_dropdown').attr('data-teams'));
		filterObj.teams=[]
		if(teams!=null){
			for(var i=0;i<teams.length;i++){
				var team_id=teams[i].id;
				var team_name=teams[i].name;
				var team={}
				addFilterSelections("userwebTimeline","Timeline_Teams",team_name,team_id,team)
				filterObj.teams.push(team)
			}
		}
	}
	
	$.get(contextPath+"report/user/customer_user/user_detail/user_detail_tabcontent/user_webinar_task_tab_content/web_user_adhere_card.jsp", function(data) {
		$('#userWebinar_timeline_card').html(data);
	});
	$.get(contextPath+"report/user/customer_user/user_detail/user_detail_tabcontent/user_webinar_task_tab_content/web_user_adherence_sub_tab_content.jsp", function(data) {
		$('#userweb_timeline_section').html(data);
		stopFilterPropagation();
	
	});
	
}

$('#userweb_timeline_team_submit').click(function(e) {
	var agent_array=[];
	var team_array=[];
	
	$('.userWebTimelineagentcheckbox').each(function(){
		if($(this).prop('checked')===true){
			agent_array.push($(this).data('user'));
		}
	});
	$('.userWebTimelineteamcheckbox').each(function(){
		if($(this).prop('checked')===true){
			team_array.push($(this).data('team'));
		}
	});
	
	if(agent_array.length==0 && team_array.length==0){
		alert("Please select atleast one");
	}else{
		$('#userwebTimeline_dropdown').dropdown('hide');
	}
	$('#userwebTimeline_dropdown').attr('data-agents',JSON.stringify(agent_array));
	$('#userwebTimeline_dropdown').attr('data-teams',JSON.stringify(team_array));
	
	$('.userWebTimelineagentcheckbox').each(function(){
		if($(this).prop('checked')===true){
			$(this).prop("checked", false);
		}
	});
	$('.userWebTimelineteamcheckbox').each(function(){
		if($(this).prop('checked')===true){
			$(this).prop("checked", false);
		}
	});
	loadUserWebtaskTimeline()
});

/*----------------------------------------end of load completed webinar task sub-tab "Timeline" content--------------------------------*/

/*----------------------------------------start of load completed webinar task sub-tab "Adherence" content--------------------------------*/

$('#userweb_adher_datepicker').change(function(){
	$('#userweb_adher_datepicker').attr('data-id',this.value)
	$('#userweb_adher_datepicker').attr('data-name',this.value)
	loadUserWebtaskAdherence();
})
function userweb_adherence_success(elem){
	var filter = $(elem).text();
	var filter_id = $(elem).data('id');
	console.log(filter);
	$('#userwebAdherence_success').attr('data-id',filter_id);
	$('#userwebAdherence_success').attr('data-name',filter);
	loadUserWebtaskAdherence();
};
function  loadUserWebtaskAdherence(){
	$('#userWebinarwhatsright').empty();
	$('#userWebinar_timeline_card').empty();
	$('#userweb_timeline_section').empty();
	$('#userWebinarwhatswrong').empty();
	$('#userweb_filter_selections').find('.filters-inside-selection').empty();
	$('#userweb_filter_selections').hide();
	
	var filterObj={};
	
	/*Selection of date filter*/
	var time_value = $('#userweb_adher_datepicker').attr('data-name');
	var time_value_id = $('#userweb_adher_datepicker').attr('data-id');
	filterObj.time={};
	addFilterSelections("userweb","adherdate",time_value,time_value_id,filterObj.time)
	/*Selection of success filter*/
	var success_value = $('#userwebAdherence_success').attr('data-name');
	var success_id = $('#userwebAdherence_success').attr('data-id');
	filterObj.deal={};
	addFilterSelections("userweb","Adherence_success",success_value,success_id,filterObj.deal)
	//Selection of All Agents->Individual filter
	if( $('#userwebAdherence_dropdown').attr('data-agents')!=null){
		var agents = JSON.parse($('#userwebAdherence_dropdown').attr('data-agents'));
		filterObj.agents=[]
		if(agents!=null){
			for(var i=0;i<agents.length;i++){
				var agent_id=agents[i].id;
				var agent_name=agents[i].name;
				var agent={}
				addFilterSelections("userweb","Adherence_Agents",agent_name,agent_id,agent)
				filterObj.agents.push(agent)
			}
		}
	}
	
/*	Selection of All Agents->Team filter*/	
	if( $('#userwebAdherence_dropdown').attr('data-teams')!=null){
		var teams = JSON.parse($('#userwebAdherence_dropdown').attr('data-teams'));
		filterObj.teams=[]
		if(teams!=null){
			for(var i=0;i<teams.length;i++){
				var team_id=teams[i].id;
				var team_name=teams[i].name;
				var team={}
				addFilterSelections("userweb","Adherence_Teams",team_name,team_id,team)
				filterObj.teams.push(team)
			}
		}
	}
	
	$.get(contextPath+"report/user/customer_user/user_detail/user_detail_tabcontent/user_webinar_task_tab_content/web_user_adhere_card.jsp", function(data) {
		$('#userWebinar_adhere_card').html(data);
	});
	$.get(contextPath+"report/user/customer_user/user_detail/user_detail_tabcontent/user_webinar_task_tab_content/web_user_adherence_sub_tab_content.jsp", function(data) {
		$('#userweb_adherence_section').html(data);
		stopFilterPropagation();
	});
	
	
}

$('#userweb_adherence_team_submit').click(function(e) {
	var agent_array=[];
	var team_array=[];
	
	$('.userWebAdheragentcheckbox').each(function(){
		if($(this).prop('checked')===true){
			agent_array.push($(this).data('user'));
		}
	});
	$('.userWebAdherteamcheckbox').each(function(){
		if($(this).prop('checked')===true){
			team_array.push($(this).data('team'));
		}
	});
	
	if(agent_array.length==0 && team_array.length==0){
		alert("Please select atleast one");
	}else{
		$('#userwebAdherence_dropdown').dropdown('hide');
	}
	$('#userwebAdherence_dropdown').attr('data-agents',JSON.stringify(agent_array));
	$('#userwebAdherence_dropdown').attr('data-teams',JSON.stringify(team_array));
	
	$('.userWebAdheragentcheckbox').each(function(){
		if($(this).prop('checked')===true){
			$(this).prop("checked", false);
		}
	});
	$('.userWebAdherteamcheckbox').each(function(){
		if($(this).prop('checked')===true){
			$(this).prop("checked", false);
		}
	});
	loadUserWebtaskAdherence()
});

/*----------------------------------------end of load completed webinar task sub-tab "Adherence" content--------------------------------*/

function stopFilterPropagation(){
	$('.filter-menu.dropdown-menu').click(function(e) {
	    e.stopPropagation();
	});
	$('.filtertabs>li>.nav-link').click(function(e) {
		$($(this).attr('href') + '-tab').tab('show')
	});
}

attachTaskRelatedData();
	$(function() {
		$('[data-toggle="tooltip"]').tooltip()
	});
	$('.share-menu.dropdown-menu').click(function(e) {
		e.stopPropagation();
	});
	$('#completed_webinar_reply_submit').click(function(){
		$('#completed_webinar_reply').dropdown('hide');
		$(".share").removeClass('active');
		$('#shareTaskModal').modal('show');
	});
	  $(".fav").click(function(){
		  $( this ).toggleClass( "active" );
		});
	  $(".comment").click(function(){
		  $( this ).toggleClass( "active" );
		});
	  $(".share").click(function(){
		  $( this ).toggleClass( "active" );
		});
	  $('#completed_webinar_comment').on('show.bs.dropdown', function () {
		  $(".comment").addClass('active');
		});
	 $('#completed_webinar_comment').on('hidden.bs.dropdown', function () {
	  		$(".comment").removeClass('active');
		});
	 $('#completed_webinar_reply').on('show.bs.dropdown', function () {
		  $(".share").addClass('active');
		});
	 $('#completed_webinar_reply').on('hidden.bs.dropdown', function () {
		$(".share").removeClass('active');
		});
	 
	 
	 function showCompletedWebAdherCalendar() {
			$('#userweb_adher_datepicker').datepicker('show')
		}

		function showCompletedWebTimelineCalendar() {
			$('#userwebTimeline_datepicker').datepicker('show')
		}

		/*---------------------------*/


		$('#userwebTimeline_datepicker').datepicker({
			autoclose : true,
		})
		$('#userweb_adher_datepicker').datepicker({
			autoclose : true,
		})
</script>




