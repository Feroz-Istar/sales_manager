<%
   String url = request.getRequestURL().toString();
   String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
   		+ request.getContextPath() + "/";
   %>
<div class="row h-100 m-0">
   <div class="col-md-11 p-0">
      <div class="row justify-content-between m-0 pl-45 pr-45 pt-15 pb-10">
         <div class="col-md-6 p-0 ">
            <div
               class="f-18 font-weight-bold greyish-brown text-truncate d-inline"
               data-toggle="tooltip" data-placement="bottom" title=""
               data-original-title="Call Task">Call Task</div>
         </div>
         <div class="col-6 p-0">
            <div class="d-flex justify-content-end">
               <button class="btn p-0">
                  <div style="background-image: url(<%=baseURL%>assets/image/heart.svg); height: 24px; width: 24px;" class="mr-15 fav"></div>
               </button>
               <div class=" dropdown ">
                  <button class="btn p-0 dropdown-toggle"
                     id="user_call_comment" data-toggle="dropdown"
                     aria-haspopup="true" aria-expanded="true" data-display="static">
                     <div style="background-image: url(<%=baseURL%>assets/image/message.svg); height: 24px; width: 24px;" class="mr-15 comment"></div>
                  </button>
                  <div
                     class="dropdown-menu dropdown-menu-right   istar-dropdown-task-menu p-0"
                     aria-labelledby="user_call_comment" style="right: -67px;">
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
                                 id="user_call_comment_submit">Submit</button>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class=" dropdown">
                  <button class="btn  p-0 dropdown-toggle" id="user_call_reply"
                     data-toggle="dropdown" aria-haspopup="true" aria-expanded="true"
                     data-display="static">
                     <div style="background-image: url(<%=baseURL%>assets/image/reply.svg); height: 24px; width: 24px;" class="mr-15 share"></div>
                  </button>
                  <div
                     class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu p-20  p-0 share-menu"
                     aria-labelledby="user_call_reply" style="right: -18px;">
                     <div class="input-group position-relative pb-20">
                        <img src="<%=baseURL%>assets/image/search.svg"
                           alt="edit" class=" searchBox"> <input
                           id="user_call_reply_search"
                           class="form-control  custom-taskborder brown-grey  f-14 search_height minw-237"
                           type="search" placeholder="Search" style="padding-right: 30px">
                     </div>
                     <div style="height: 370px; overflow-x: hidden; overflow-y: auto;">
                        <%
                           for (int i = 0; i < 30; i++) {
                           %>
                        <div class="d-flex align-items-center pb-10 ">
                           <input class="istar-checkbox agentcheckbox " data-id="0"
                              id="user_call_reply-checkbox<%=i%>" type="checkbox">
                           <label class="istar-checkbox-style"
                              for="user_call_reply-checkbox<%=i%>"></label> <img
                              alt="user-img"
                              src="<%=baseURL%>assets/image/11.png"
                              class="rounded-circle ml-3 mr-2 hw-40">
                           <div>
                              <div class="f-14 font-weight-bold greyish-brown">Robert
                                 Garcia
                              </div>
                              <div class="f-12  brownish-grey">Team -02</div>
                           </div>
                        </div>
                        <%
                           }
                           %>
                     </div>
                     <button type="button"
                        class="btn btn-block big_button rounded-0 font-weight-bold f-12 mt-30"
                        id="user_call_reply_submit"  data-toggle="modal" data-target="#shareTaskModal">Submit</button>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <div
         class="row  m-0 ml-45 mr-45  pb-20  theme_dotted_border_bottom shadow-bottom  ">
         <div class="col-md-3 p-0 border-right-dashed-separation">
            <p class="brownish-grey f-14 mb-0">Initiated At</p>
            <p class="black f-16 fw-500 mb-0 text-truncate"
               data-toggle="tooltip" data-placement="bottom"
               title="Globex Corporation">11:00 AM</p>
         </div>
         <div class="col-md-3 p-0 border-right-dashed-separation pl-15">
            <p class="brownish-grey f-14 mb-0">Pipeline Detail</p>
            <p class="black f-16 fw-500 mb-0 text-truncate"
               data-toggle="tooltip" data-placement="bottom"
               title="Globex Corporation">Stage 02</p>
         </div>
         <div class="col-md-3 p-0 pl-15">
            <p class="brownish-grey f-14 mb-0">Contact Person</p>
            <p class="black f-16 fw-500 mb-0 text-truncate"
               data-toggle="tooltip" data-placement="bottom"
               title="Globex Corporation">Robert Wolken</p>
         </div>
      </div>
      <div class="row m-0 pl-45 pr-45 pt-20 ">
         <div class="col p-0">
            <ul
               class="nav nav-tabs nav-mytabs p-0 d-flex align-items-end"
               id="userTab" role="tablist">
               <li class="nav-item"><a class="nav-item nav-link active"
                  id="userwhatsright-tab" data-toggle="tab" href="#userwhatsright"
                  role="tab" aria-controls="userwhatsright" aria-selected="true">Whats Right?</a></li>
               <li class="nav-item"><a class="nav-item nav-link"
                  id="userwhatswrong-tab" data-toggle="tab" href="#userwhatswrong"
                  role="tab" aria-controls="userwhatswrong" aria-selected="false">Whats Wrong?</a></li>
               <li class="nav-item"><a class="nav-item nav-link"
                  id="usercall_timeline-tab" data-toggle="tab" href="#usercall_timeline"
                  role="tab" aria-controls="usercall_timeline" aria-selected="false">Timeline</a></li>
               <li class="nav-item"><a class="nav-item nav-link"
                  id="useradherence-tab" data-toggle="tab" href="#user_adherence"
                  role="tab" aria-controls="user_adherenc" aria-selected="false">Adherence</a></li>
            </ul>
            <div class="tab-content mytab-content p-0 pt-20"
               id="userTabContent">
              
               <div class="tab-pane fade show active " id="userwhatsright" role="tabpanel"
                  aria-labelledby="userwhatsright-tab">
                 
               </div>
                <div class="tab-pane fade " id="userwhatswrong"
                  role="tabpanel" aria-labelledby="userwhatswrong-tab">
                 
               </div>
               <div class="tab-pane fade  " id="usercall_timeline" role="tabpanel" aria-labelledby="usercall_timeline-tab">
	               <div class="card border-0 card-shadow-bottom" id="user_timeline_card">
	              
	               </div>
	               <div class="row m-0 theme_dashed_border_bottom   pt-20 pb-20" id="usercall_timeline_filter">
                     <div class="col-md-1 p-0 "></div>
                     <div class="col-md-11 d-flex  p-0">
                        <div class="input-group date custom-calendar mr-10">
                           <input type="text" id="usercallTimeline_datepicker" class="form-control  custom-dateselect" value="12-02-2012" placeholder="Calendar">
                           <div class="input-group-addon" onclick="showUserCallTimelineCalendar()">
                              <img src="<%=baseURL%>/assets/image/calendar.svg" alt="calendar" class="pr-1 hw-24">
                           </div>
                        </div>
                        <div class="istar-dropdown-task select_focus mr-10">
                           <button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="usercallTimeline_persona" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           <span class="sr-only">Toggle Dropdown</span> <span id="user_timeline_drop">All Persona</span> <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
                           </button>
                           <div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="usercallTimeline_persona" id="">
                              <button class="dropdown-item" type="button" onclick="usercall_timeline_persona(this)" data-id="Persona 1">Persona 1</button>
                              <button class="dropdown-item" type="button" onclick="usercall_timeline_persona(this)" data-id="Persona 2">Persona 2</button>
                           </div>
                           
                        </div>
                        <div class="istar-dropdown-task select_focus mr-10 ">
                           <button class="istar-dropdown-arrow dropdown-toggle " data-display="static" id="usercallTimeline_success" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           <span class="sr-only">Toggle Dropdown</span><span id="user_timeline_success_drop">Filter by Success</span> <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
                              class=" float-right">
                           </button>
                           <div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="usercallTimeline_success">
                              <button class="dropdown-item" type="button" onclick="usercall_timeline_success(this)" data-id="Lead 1">Lead 1</button>
                              <button class="dropdown-item" type="button" onclick="usercall_timeline_success(this)" data-id="Lead 2">Lead 2</button>
                           </div>
                        </div>
                        <div class="istar-dropdown-task dropdown select_focus" id="">
                           <button class="istar-dropdown-arrow " data-display="static" id="usercallTimeline_dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           <span class="sr-only">Toggle Dropdown</span> All Agents <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
                           </button>
                           <div class="dropdown-menu filter-menu dropdown-menu-right istar-dropdown-task-menu  dropdown-menu-lg-right position-absolute px-4" aria-labelledby="usercallTimeline_dropdown"
                              style="width: 350px;">
                              <ul class="dropdown-nav nav nav-tabs nav-mytabs filtertabs pt-2 d-flex align-items-end" id="user_timelineTab" role="tablist">
                                 <li class="nav-item"><a class="nav-link active" id="user_timeline_individual-tab" data-toggle="tab" href="#user_timeline_individual" role="tab"
                                    aria-controls="user_timeline_individual" aria-selected="true">Individual</a></li>
                                 <li class="nav-item"><a class="nav-link" id="user_timeline_team-tab" data-toggle="tab" href="#user_timeline_team" role="tab" aria-controls="user_timeline_team"
                                    aria-selected="false">Team</a></li>
                              </ul>
                              <div class="tab-content" id="user_timelineTabContent">
                                 <div class="tab-pane fade show active px-4 py-3" id="user_timeline_individual" role="tabpanel" aria-labelledby="user_timeline_individual-tab">
                                    <div class="input-group py-2">
                                       <input id="user_timeline_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search"
                                          style="border-right: none !important;">
                                       <div class="input-group-append">
                                          <button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
                                          <i class="fa fa-search f-12 brown-grey"></i>
                                          </button>
                                       </div>
                                    </div>
                                    <div class="userCallTimeline-agent-list mb-2" style="overflow-x: hidden; overflow-y: auto;"></div>
                                 </div>
                                 <div class="tab-pane fade px-4 py-3" id="user_timeline_team" role="tabpanel" aria-labelledby="user_timeline_team-tab">
                                    <div class="input-group py-2">
                                       <input id="user_timeline_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search"
                                          style="border-right: none !important;">
                                       <div class="input-group-append">
                                          <button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
                                          <i class="fa fa-search f-12 brown-grey"></i>
                                          </button>
                                       </div>
                                    </div>
                                    <div class="userCallTimeline-team-list mb-2" style="overflow-x: hidden; overflow-y: auto;"></div>
                                 </div>
                              </div>
                              <div class="w-100 text-center">
                                 <button class="btn  rounded-0 theme_bg text-white f-14 font-weight-bold  mb-3 text-center px-3" style="min-width: 200px;" id="usercall_timeline_team_submit">Submit</button>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="row cream_white m-0 theme_solid_border_bottom justify-content-between align-items-center pl-40 pr-40 pt-10 pb-10" id="usercallTimeline_filter_selections" style="">
                     <div class="col-md-10 d-flex p-0 filters-inside-selection"></div>
                     <div class="col-md-2 text-right p-0">
                        <button type="submit" class="btn theme_color f-14 font-weight-bold p-0" data-type="userCallTimeline" id="userCallTimeline_reset" onclick="resetuserDetailFilters(this)">Reset</button>
                     </div>
                  </div>
	               <span id="user_timeline_section"></span>
              
               </div>
               <div class="tab-pane fade  " id="user_adherence" role="tabpanel" aria-labelledby="user_adherence-tab">
                  <div class="card border-0 card-shadow-bottom" id="user_adhere_card">
              
               </div>
                 <div class="row m-0 theme_dashed_border_bottom  pt-20 pb-20" id="user_adherence_filter">
                     <div class="col-md-1 p-0 "> </div>
                     <div class="col-md-11 d-flex justify-content-center p-0">
                        <div class="input-group date custom-calendar mr-10">
                           <input type="text" id="usercall_adher_datepicker" class="form-control  custom-dateselect"
                              value="12-02-2012" placeholder="Calendar">
                           <div class="input-group-addon" onclick="showUserAdhereCalendar()">
                              <img src ="<%=baseURL%>/assets/image/calendar.svg"  alt="calendar" class="pr-1 hw-24">
                           </div>
                        </div>
                        <div class="istar-dropdown-task select_focus mr-10">
                           <button class="istar-dropdown-arrow dropdown-toggle" data-display="static"
                              id="usercallAdherence_success" data-toggle="dropdown" aria-haspopup="true"
                              aria-expanded="false">
                           <span class="sr-only">Toggle Dropdown</span ><span id="user_adherence_drop">Filter by Success</span>
                           <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
                              class=" float-right">
                           </button>
                           <div
                              class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="usercallAdherence_success">
                              <button class="dropdown-item" type="button" onclick="usercall_adherence_success(this)" data-id="Lead 1">Lead 1</button>
                              <button class="dropdown-item" type="button" onclick="usercall_adherence_success(this)" data-id="Lead 2">Lead 2</button>
                           </div>
                        </div>
                        <div class="istar-dropdown-task dropdown select_focus" id="">
                           <button class="istar-dropdown-arrow " data-display="static"
                              id="usercallAdherence_dropdown" data-toggle="dropdown" aria-haspopup="true"
                              aria-expanded="false">
                           <span class="sr-only">Toggle Dropdown</span> All Agents <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
                              class=" float-right">
                           </button>
                           <div class="dropdown-menu filter-menu dropdown-menu-right istar-dropdown-task-menu  dropdown-menu-lg-right position-absolute px-4"
                              aria-labelledby="usercallAdherence_dropdown" style="width: 350px; ">
                              <ul class="dropdown-nav nav nav-tabs nav-mytabs filtertabs pt-2 d-flex align-items-end" id="user_adherenceTab" role="tablist">
                                 <li class="nav-item">
                                    <a class="nav-link active" id="user_adherence_individual-tab" data-toggle="tab" href="#user_adherence_individual" role="tab" aria-controls="user_adherence_individual" aria-selected="true">Individual</a>
                                 </li>
                                 <li class="nav-item">
                                    <a class="nav-link" id="user_adherence_team-tab" data-toggle="tab" href="#user_adherence_team" role="tab" aria-controls="user_adherence_team" aria-selected="false">Team</a>
                                 </li>
                              </ul>
                              <div class="tab-content" id="user_adherenceTabContent">
                                 <div class="tab-pane fade show active px-4 py-3" id="user_adherence_individual" role="tabpanel" aria-labelledby="user_adherence_individual-tab">
                                    <div class="input-group py-2">
                                       <input id="user_adherence_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
                                       <div class="input-group-append">
                                          <button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
                                          <i class="fa fa-search f-12 brown-grey"></i>
                                          </button>
                                       </div>
                                    </div>
                                    <div class="userCallAdher-agent-list mb-2"  style=" overflow-x: hidden; overflow-y:auto;"></div>
                                 </div>
                                 <div class="tab-pane fade px-4 py-3" id="user_adherence_team" role="tabpanel" aria-labelledby="user_adherence_team-tab">
                                    <div class="input-group py-2">
                                       <input id="user_adherence_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
                                       <div class="input-group-append">
                                          <button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
                                          <i class="fa fa-search f-12 brown-grey"></i>
                                          </button>
                                       </div>
                                    </div>
                                    <div class="userCallAdher-team-list mb-2" style="overflow-x: hidden; overflow-y:auto;"></div>
                                 </div>
                              </div>
                              <div class="w-100 text-center">
                                 <button class="btn  rounded-0 theme_bg text-white f-14 font-weight-bold  mb-3 text-center px-3" style="min-width:200px;" id="usercall_adherence_team_submit">Submit</button>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="row cream_white m-0 theme_solid_border_bottom justify-content-between align-items-center pl-40 pr-40 pt-10 pb-10" id="usercall_filter_selections" style="">
                     <div class="col-md-10 d-flex p-0 filters-inside-selection"></div>
                     <div class="col-md-2 text-right p-0">
                        <button type="submit" class="btn theme_color f-14 font-weight-bold p-0" data-type="userCallAdherence" id="userCallAdherence_reset" onclick="resetuserDetailFilters(this)">Reset</button>
                     </div>
                  </div>
               <span id="user_adherence_section"></span>
            </div>
         </div>
      </div>
   </div>
   </div>
   <div class="col-md-1 p-0">
      <div class=" dropleft">
         <button type="button" class="btn btn-secondary dropdown-toggle"
            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
            style="display: none" id="user_call_task_content">Dropleft</button>
         <div class="dropdown-menu user_call_task_content m-0"
            aria-labelledby="user_call_task_content">
            <!-- Dropdown menu links -->
         </div>
      </div>
      <ul class="list-group shadow d-flex flex-column h-100  taskpopup">
         <li class="notesdropdown list-group-item p-0 pt-10 pb-10">
            <div
               class=" d-flex flex-column justify-content-center align-items-center minh-80 "
               data-dropdown_id="user_call_task_content">
               <img src="<%=baseURL%>assets/image/notes.svg" alt="notes" />
               <div class="f-12 pt-1 greyish-brown">Notes</div>
            </div>
         </li>
         <li class=" cuesdropdown list-group-item p-0 pt-10 pb-10">
            <div
               class=" d-flex flex-column justify-content-center align-items-center minh-80"
               data-dropdown_id="user_call_task_content">
               <img src="<%=baseURL%>assets/image/cues.svg" alt="cues" />
               <div class="f-12 pt-1 greyish-brown">Cues</div>
            </div>
         </li>
         <li class="crmdropdown list-group-item p-0 pt-10 pb-10">
            <div
               class=" d-flex flex-column justify-content-center align-items-center minh-80"
               data-dropdown_id="user_call_task_content">
               <img src="<%=baseURL%>assets/image/crm.svg" alt="crm" />
               <div class="f-12 pt-1 greyish-brown">CRM</div>
            </div>
         </li>
         <li class="chatdropdown list-group-item  p-0 pt-10 pb-10 ">
            <div
               class="  d-flex flex-column justify-content-center align-items-center minh-80"
               data-dropdown_id="user_call_task_content">
               <img src="<%=baseURL%>assets/image/chat.svg"
                  alt="presentation" />
               <div class="f-12 pt-1 greyish-brown">Chat</div>
            </div>
         </li>
          <li class="chatdropdown list-group-item  p-0 pt-10 pb-10 ">
            <div
               class="  d-flex flex-column justify-content-center align-items-center minh-80"
               data-dropdown_id="user_webinar_task_content">
               <img src="<%=baseURL%>assets/image/document.svg"
                  alt="presentation" />
               <div class="f-12 pt-1 greyish-brown">Document</div>
            </div>
         </li>
         <li
            class=" flex-grow list-group-item d-flex flex-column justify-content-center align-items-center minh-100"
            style="height: calc(100% - 80px);"></li>
      </ul>
   </div>
</div>

<script>
$( document ).ready(function() {
	
	loadUserAllTeamFilterTab();
	loadUserAllAgentFilterTab();
});

$('#userTab>li>a').on('shown.bs.tab', function(e) {

	var target = $(e.target).html(); // activated tab
	console.log(target);
	
	switch (target) {
	case "Whats Right?":
		loadUserWhatsRight();
		break;
	case "Whats Wrong?":
		loadUserWhatsWrong();
		break;
	case "Timeline":
		loadUsertaskTimeline();
		break;
	case "Adherence":
		loadUsertaskAdherence();
		break;
	default:
		/*Ongoing*/
		loadUserWhatsRight();
	}
});

function  loadUserWhatsRight(){

	
	$.get(contextPath+"report/user/customer_user/user_detail/user_detail_tabcontent/user_call_task_tab_content/user_whatsright_sub_tab_content.jsp", function(data) {
		console.log(data)
		$('#userwhatsright').html(data);
	});
}

function  loadUserWhatsWrong(){
	
	$.get(contextPath+"report/user/customer_user/user_detail/user_detail_tabcontent/user_call_task_tab_content/user_whatswrong_sub_tab_content.jsp", function(data) {
		$('#userwhatswrong').html(data);
	});
}
/*----------------------------------------start of load user call task sub-tab "Timeline" content--------------------------------*/
function usercall_timeline_success(elem){
	var filter = $(elem).text();
	var filter_id = $(elem).data('id');
	console.log(filter);
	$('#usercallTimeline_success').attr('data-id',filter_id);
	$('#usercallTimeline_success').attr('data-name',filter);
	loadUsertaskTimeline();
};
function usercall_timeline_persona(elem){
	var filter = $(elem).text();
	var filter_id = $(elem).data('id');
	console.log(filter);
	$('#usercallTimeline_persona').attr('data-id',filter_id);
	$('#usercallTimeline_persona').attr('data-name',filter);
	loadUsertaskTimeline();
};

$('#usercallTimeline_datepicker').change(function(){
	$('#usercallTimeline_datepicker').attr('data-id',this.value)
	$('#usercallTimeline_datepicker').attr('data-name',this.value)
	loadUsertaskTimeline();
})
function  loadUsertaskTimeline(){
	$('#userwhatswrong').empty();
	$('#userwhatsright').empty();
	$('#user_adherence_section').empty();
	$('#user_adhere_card').empty();
	$('#usercallTimeline_filter_selections').find('.filters-inside-selection').empty();
	$('#usercallTimeline_filter_selections').hide();
	$.get(contextPath+"report/user/customer_user/user_detail/user_detail_tabcontent/user_call_task_tab_content/user_timeline_card.jsp", function(data) {
		$('#user_timeline_card').html(data);
	});
	$.get(contextPath+"report/user/customer_user/user_detail/user_detail_tabcontent/user_call_task_tab_content/user_timeline_sub_tab_content.jsp", function(data) {
		$('#user_timeline_section').html(data);
		stopFilterPropagation();
	});
	
	var filterObj={};
	/*Selection of date filter*/
	var time_value = $('#usercallTimeline_datepicker').attr('data-name');
	var time_value_id = $('#usercallTimeline_datepicker').attr('data-id');
	filterObj.time={};
	addFilterSelections("usercallTimeline","timelinedate",time_value,time_value_id,filterObj.time)
	/*Selection of persona filter*/
	var persona_value = $('#usercallTimeline_persona').attr('data-name');
	var persona_id = $('#usercallTimeline_persona').attr('data-id');
	filterObj.deal={};
	addFilterSelections("usercallTimeline","persona",persona_value,persona_id,filterObj.deal)
	/*Selection of success filter*/
	var success_value = $('#usercallTimeline_success').attr('data-name');
	var success_id = $('#usercallTimeline_success').attr('data-id');
	filterObj.deal={};
	addFilterSelections("usercallTimeline","success",success_value,success_id,filterObj.deal)
	
	/*Selection of All Agents->Individual filter*/
	if( $('#usercallTimeline_dropdown').attr('data-agents')!=null){
		var agents = JSON.parse($('#usercallTimeline_dropdown').attr('data-agents'));
		filterObj.agents=[]
		if(agents!=null){
			for(var i=0;i<agents.length;i++){
				var agent_id=agents[i].id;
				var agent_name=agents[i].name;
				var agent={}
				addFilterSelections("usercallTimeline","Timeline_Agents",agent_name,agent_id,agent)
				filterObj.agents.push(agent)
			}
		}
	}
	
	/*Selection of All Agents->Team filter*/
	if( $('#usercallTimeline_dropdown').attr('data-teams')!=null){
		var teams = JSON.parse($('#usercallTimeline_dropdown').attr('data-teams'));
		filterObj.teams=[]
		if(teams!=null){
			for(var i=0;i<teams.length;i++){
				var team_id=teams[i].id;
				var team_name=teams[i].name;
				var team={}
				addFilterSelections("usercallTimeline","Timeline_Teams",team_name,team_id,team)
				filterObj.teams.push(team)
			}
		}
	}
	
	
}

$('#usercall_timeline_team_submit').click(function(e) {
	var agent_array=[];
	var team_array=[];
	
	$('.userCallTimelineagentcheckbox').each(function(){
		if($(this).prop('checked')===true){
			agent_array.push($(this).data('user'));
		}
	});
	$('.userCallTimelineteamcheckbox').each(function(){
		if($(this).prop('checked')===true){
			team_array.push($(this).data('team'));
		}
	});
	
	if(agent_array.length==0 && team_array.length==0){
		alert("Please select atleast one");
	}else{
		$('#usercallTimeline_dropdown').dropdown('hide');
	}
	$('#usercallTimeline_dropdown').attr('data-agents',JSON.stringify(agent_array));
	$('#usercallTimeline_dropdown').attr('data-teams',JSON.stringify(team_array));
	
	$('.userCallTimelineagentcheckbox').each(function(){
		if($(this).prop('checked')===true){
			$(this).prop("checked", false);
		}
	});
	$('.userCallTimelineteamcheckbox').each(function(){
		if($(this).prop('checked')===true){
			$(this).prop("checked", false);
		}
	});
	loadUsertaskTimeline()
});
/*----------------------------------------end of load user call task sub-tab "Timeline" content--------------------------------*/
  /*----------------------------------------start of load user call task sub-tab "Adherence" content--------------------------------*/
 $('#usercall_adher_datepicker').change(function(){
		$('#usercall_adher_datepicker').attr('data-id',this.value)
		$('#usercall_adher_datepicker').attr('data-name',this.value)
		loadUsertaskAdherence();
	})

	function usercall_adherence_success(elem){
		var filter = $(elem).text();
		var filter_id = $(elem).data('id');
		console.log(filter);
		$('#usercallAdherence_success').attr('data-id',filter_id);
		$('#usercallAdherence_success').attr('data-name',filter);
		loadUsertaskAdherence();
	};

	function  loadUsertaskAdherence(){
		$('#userwhatsright').empty();
		$('#user_timeline_section').empty();
		$('#user_timeline_card').empty();
		$('#userwhatswrong').empty();
		$('#usercall_filter_selections').find('.filters-inside-selection').empty();
		$('#usercall_filter_selections').hide();
		
		$.get(contextPath+"report/user/customer_user/user_detail/user_detail_tabcontent/user_call_task_tab_content/user_adhere_card.jsp", function(data) {
			$('#user_adhere_card').html(data);
		});
		$.get(contextPath+"report/user/customer_user/user_detail/user_detail_tabcontent/user_call_task_tab_content/user_adherence_sub_tab_content.jsp", function(data) {
			$('#user_adherence_section').html(data);
			stopFilterPropagation();
		});
		
		var filterObj={};
		/*Selection of date filter*/
		var time_value = $('#usercall_adher_datepicker').attr('data-name');
		var time_value_id = $('#usercall_adher_datepicker').attr('data-id');
		filterObj.time={};
		addFilterSelections("usercall","adherdate",time_value,time_value_id,filterObj.time)
		
		/*Selection of success filter*/
		var success_value = $('#usercallAdherence_success').attr('data-name');
		var success_id = $('#usercallAdherence_success').attr('data-id');
		filterObj.deal={};
		addFilterSelections("usercall","Adherence_success",success_value,success_id,filterObj.deal)
		
		/*Selection of All Agents->Individual filter*/
		if( $('#usercallAdherence_dropdown').attr('data-agents')!=null){
			var agents = JSON.parse($('#usercallAdherence_dropdown').attr('data-agents'));
			filterObj.agents=[]
			if(agents!=null){
				for(var i=0;i<agents.length;i++){
					var agent_id=agents[i].id;
					var agent_name=agents[i].name;
					var agent={}
					addFilterSelections("usercall","Adherence_Agents",agent_name,agent_id,agent)
					filterObj.agents.push(agent)
				}
			}
		}
		
		/*Selection of All Agents->Team filter*/
		if( $('#usercallAdherence_dropdown').attr('data-teams')!=null){
			var teams = JSON.parse($('#usercallAdherence_dropdown').attr('data-teams'));
			filterObj.teams=[]
			if(teams!=null){
				for(var i=0;i<teams.length;i++){
					var team_id=teams[i].id;
					var team_name=teams[i].name;
					var team={}
					addFilterSelections("usercall","Adherence_Teams",team_name,team_id,team)
					filterObj.teams.push(team)
				}
			}
		}
		
	}


	$('#usercall_adherence_team_submit').click(function(e) {
		var agent_array=[];
		var team_array=[];
		
		$('.userCallAdheragentcheckbox').each(function(){
			if($(this).prop('checked')===true){
				agent_array.push($(this).data('user'));
			}
		});
		$('.userCallAdherteamcheckbox').each(function(){
			if($(this).prop('checked')===true){
				team_array.push($(this).data('team'));
			}
		});
		
		if(agent_array.length==0 && team_array.length==0){
			alert("Please select atleast one");
		}else{
			$('#usercallAdherence_dropdown').dropdown('hide');
		}
		$('#usercallAdherence_dropdown').attr('data-agents',JSON.stringify(agent_array));
		$('#usercallAdherence_dropdown').attr('data-teams',JSON.stringify(team_array));
		
		$('.userCallAdheragentcheckbox').each(function(){
			if($(this).prop('checked')===true){
				$(this).prop("checked", false);
			}
		});
		$('.userCallAdherteamcheckbox').each(function(){
			if($(this).prop('checked')===true){
				$(this).prop("checked", false);
			}
		});
		loadUsertaskAdherence()
	});
/*----------------------------------------end of load user call task sub-tab "Adherence" content--------------------------------*/

function stopFilterPropagation(){
	$('.filter-menu.dropdown-menu').click(function(e) {
	    e.stopPropagation();
	});
	$('.filtertabs>li>.nav-link').click(function(e) {
		$($(this).attr('href') + '-tab').tab('show')
	});
}

function showUserAdhereCalendar(){
	$('#usercall_adher_datepicker').datepicker('show');	
}
$('#usercall_adher_datepicker').datepicker({
	autoclose : true,
})
function showUserCallTimelineCalendar(){
	$('#usercallTimeline_datepicker').datepicker('show');	
}
$('#usercallTimeline_datepicker').datepicker({
	autoclose : true,
})
</script>