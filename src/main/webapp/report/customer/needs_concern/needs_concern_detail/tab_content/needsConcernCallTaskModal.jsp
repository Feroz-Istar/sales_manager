<%
   String url = request.getRequestURL().toString();
   String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
   		+ request.getContextPath() + "/";
   %>
<style></style>
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
               <div class=" dropdown " id="completed_call_comment">
                  <button class="btn p-0 dropdown-toggle"
                     id="completed_call_comment" data-toggle="dropdown"
                     aria-haspopup="true" aria-expanded="true" data-display="static">
                     <div style="background-image: url(<%=baseURL%>assets/image/message.svg); height: 24px; width: 24px;" class="mr-15 comment"></div>
                  </button>
                  <div
                     class="dropdown-menu dropdown-menu-right   istar-dropdown-task-menu p-0"
                     aria-labelledby="completed_call_comment" style="right: -67px;">
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
               <div class=" dropdown" id="completed_call_reply">
                  <button class="btn  p-0 dropdown-toggle" id="completed_call_reply"
                     data-toggle="dropdown" aria-haspopup="true" aria-expanded="true"
                     data-display="static">
                     <div style="background-image: url(<%=baseURL%>assets/image/reply.svg); height: 24px; width: 24px;" class="mr-15 share"></div>
                  </button>
                  <div
                     class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu p-20  p-0"
                     aria-labelledby="completed_call_reply" style="right: -18px;">
                     <div class="input-group position-relative pb-20">
                        <img src="<%=baseURL %>assets/image/search.svg"
                           alt="edit" class=" searchBox"> <input
                           id="completed_call_reply_search"
                           class="form-control  custom-taskborder brown-grey  f-14 search_height minw-237"
                           type="search" placeholder="Search" style="padding-right: 30px">
                     </div>
                     <div style="height: 370px; overflow-x: hidden; overflow-y: auto;">
                        <%
                           for (int i = 0; i < 30; i++) {
                           %>
                        <div class="d-flex align-items-center pb-10 ">
                           <input class="istar-checkbox agentcheckbox " data-id="0"
                              id="completed_call_reply-checkbox<%=i%>" type="checkbox">
                           <label class="istar-checkbox-style"
                              for="completed_call_reply-checkbox<%=i%>"></label> <img
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
                        id="completed_call_reply_submit" data-toggle="modal" data-target="#shareTaskModal"	>Submit</button>
                  </div>
               </div>
               <div
                  class="f-14 font-weight-bold dark_theme_color cursor-pointer align-self-center"
                  onclick="window.location.href = 'task_lead_detail.jsp'">
                  View More <i class="fas fa-chevron-circle-right ml-1 "></i>
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
         <div class="col-md-3 p-0 pl-15 border-right-dashed-separation">
            <p class="brownish-grey f-14 mb-0">Pipeline Detail</p>
            <p class="black f-16 fw-500 mb-0 text-truncate"
               data-toggle="tooltip" data-placement="bottom"
               title="Globex Corporation">Stage 02</p>
         </div>
         <div class="col-md-3 p-0 pl-15 ">
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
               id="needsConcernDetailCallReport" role="tablist">
               <li class="nav-item"><a class="nav-item nav-link active"
                  id="needsConcernDetailcall_whatsright-tab" data-toggle="tab" href="#needsConcernDetailcall_whatsright"
                  role="tab" aria-controls="needsConcernDetailcall_whatsright" aria-selected="true">Whats Right?</a></li>
               <li class="nav-item"><a class="nav-item nav-link"
                  id="needsConcernDetailcall_whatswrong-tab" data-toggle="tab" href="#needsConcernDetailcall_whatswrong"
                  role="tab" aria-controls="needsConcernDetailcall_whatswrong" aria-selected="false">Whats Wrong?</a></li>
               <li class="nav-item"><a class="nav-item nav-link" id="needsConcernDetailcall_timeline-tab"  style="min-width:132px;"
                  data-toggle="tab" href="#needsConcernDetailcall_timeline" role="tab" aria-controls="needsConcernDetailcall_timeline"
                  aria-selected="false">Timeline</a></li>
               <li class="nav-item"><a class="nav-item nav-link" id="needsConcernDetailcall_adherence-tab"  style="min-width:132px;"
                  data-toggle="tab" href="#needsConcernDetailcall_adherence" role="tab" aria-controls="needsConcernDetailcall_adherence"
                  aria-selected="false">Adherence</a></li>
            </ul>
            <div class="tab-content mytab-content pt-40"
               id="needsConcernDetailCallReportTabContent">
               <div class="tab-pane fade show active" id="needsConcernDetailcall_whatsright" role="tabpanel" aria-labelledby="needsConcernDetailcall_whatsright-tab"></div>
               <div class="tab-pane fade show" id="needsConcernDetailcall_whatswrong" role="tabpanel" aria-labelledby="needsConcernDetailcall_whatswrong-tab"></div>
               <div class="tab-pane fade  show" id="needsConcernDetailcall_timeline" role="tabpanel" aria-labelledby="needsConcernDetailcall_timeline-tab">
                  <div class="card border-0 card-shadow-bottom" id="needsConcernDetailTimeline_card">
                  </div>
                  <div class="row m-0 theme_dashed_border_bottom   pt-20 pb-20" id="">
                     <div class="col-md-1 p-0 "></div>
                     <div class="col-md-11 d-flex  p-0">
                        <div class="input-group date custom-calendar mr-10">
                           <input type="text" id="needsConcernDetailcallTimeline_datepicker" class="form-control  custom-dateselect" value="12-02-2012" placeholder="Calendar">
                           <div class="input-group-addon" onclick="showNofollowupCallTimelineCalendar()">
                              <img src="<%=baseURL%>/assets/image/calendar.svg" alt="calendar" class="pr-1 hw-24">
                           </div>
                        </div>
                        <div class="istar-dropdown-task select_focus mr-10">
                           <button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="needsConcernDetailcallTimeline_persona" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           <span class="sr-only">Toggle Dropdown</span> <span id="needsConcernDetailcall_timeline_drop">All Persona</span> <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
                           </button>
                           <div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="needsConcernDetailTimeline_persona" id="">
                              <button class="dropdown-item" type="button" onclick="needsConcernDetailcall_timeline_persona(this)" data-id="Persona 1">Persona 1</button>
                              <button class="dropdown-item" type="button" onclick="needsConcernDetailcall_timeline_persona(this)" data-id="Persona 2">Persona 2</button>
                           </div>
                        </div>
                        <div class="istar-dropdown-task select_focus mr-10">
                           <button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="needsConcernDetailcallTimeline_success" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           <span class="sr-only">Toggle Dropdown</span><span id="needsConcernDetailcall_timeline_success_drop">Filter by Success</span> <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
                              class=" float-right">
                           </button>
                           <div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="needsConcernDetailcall_timeline_success">
                              <button class="dropdown-item" type="button" onclick="needsConcernDetailcall_timeline_success(this)" data-id="Lead 1">Lead 1</button>
                              <button class="dropdown-item" type="button" onclick="needsConcernDetailcall_timeline_success(this) " data-id="Lead 2">Lead 2</button>
                           </div>
                        </div>
                       <div class="istar-dropdown-task dropdown select_focus" id="">
                           <button class="istar-dropdown-arrow " data-display="static" id="needsConcernDetailcallTimeline_dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           <span class="sr-only">Toggle Dropdown</span> All Agents <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
                           </button>
                           <div class="dropdown-menu filter-menu dropdown-menu-right istar-dropdown-task-menu  dropdown-menu-lg-right position-absolute px-4" aria-labelledby="needsConcernDetailcallTimeline_dropdown"
                              style="width: 350px;">
                              <ul class="dropdown-nav nav nav-tabs nav-mytabs filtertabs pt-2 d-flex align-items-end" id="needsConcernDetailcall_timelineTab" role="tablist">
                                 <li class="nav-item"><a class="nav-link active" id="needsConcernDetailcall_timeline_individual-tab" data-toggle="tab" href="#needsConcernDetailcall_timeline_individual" role="tab"
                                    aria-controls="needsConcernDetailcall_timeline_individual" aria-selected="true">Individual</a></li>
                                 <li class="nav-item"><a class="nav-link" id="needsConcernDetailcall_timeline_team-tab" data-toggle="tab" href="#needsConcernDetailcall_timeline_team" role="tab" aria-controls="needsConcernDetailcall_timeline_team"
                                    aria-selected="false">Team</a></li>
                              </ul>
                              <div class="tab-content" id="needsConcernDetailcall_timelineTabContent">
                                 <div class="tab-pane fade show active px-4 py-3" id="needsConcernDetailcall_timeline_individual" role="tabpanel" aria-labelledby="needsConcernDetailcall_timeline_individual-tab">
                                    <div class="input-group py-2">
                                       <input id="needsConcernDetailcall_timeline_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search"
                                          style="border-right: none !important;">
                                       <div class="input-group-append">
                                          <button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
                                          <i class="fa fa-search f-12 brown-grey"></i>
                                          </button>
                                       </div>
                                    </div>
                                    <div class="needsConcernDetailCallTimeline-agent-list mb-2" style="overflow-x: hidden; overflow-y: auto;"></div>
                                 </div>
                                 <div class="tab-pane fade px-4 py-3" id="needsConcernDetailcall_timeline_team" role="tabpanel" aria-labelledby="needsConcernDetailcall_timeline_team-tab">
                                    <div class="input-group py-2">
                                       <input id="needsConcernDetailcall_timeline_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search"
                                          style="border-right: none !important;">
                                       <div class="input-group-append">
                                          <button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
                                          <i class="fa fa-search f-12 brown-grey"></i>
                                          </button>
                                       </div>
                                    </div>
                                    <div class="needsConcernDetailCallTimeline-team-list mb-2" style="overflow-x: hidden; overflow-y: auto;"></div>
                                 </div>
                              </div>
                              <div class="w-100 text-center">
                                 <button class="btn  rounded-0 theme_bg text-white f-14 font-weight-bold  mb-3 text-center px-3" style="min-width: 200px;" id="needsConcernDetailcall_timeline_team_submit">Submit</button>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="row cream_white m-0 theme_solid_border_bottom justify-content-between align-items-center pl-40 pr-40 pt-10 pb-10" id="needsConcernDetailcallTimeline_filter_selections" style="">
                     <div class="col-md-10 d-flex p-0 filters-inside-selection"></div>
                     <div class="col-md-2 text-right p-0">
                        <button type="submit" class="btn theme_color f-14 font-weight-bold p-0" data-type="needsConcernDetailCallTimeline" id="needsConcernDetailCallTimeline_reset" onclick="resetNeedConcernDetailsFilters(this)">Reset</button>
                     </div>
                  </div>
                  <span id="needsConcernDetail_timeline_section"></span>
               </div>
               <div class="tab-pane fade show " id="needsConcernDetailcall_adherence" role="tabpanel"
                  aria-labelledby="needsConcernDetailcall_adherence-tab">
                  <div class="card border-0 card-shadow-bottom" id="needsConcernDetailcall_adherence_card">
                  </div>
                  <div class="row m-0 theme_dashed_border_bottom   pt-20 pb-20" id="">
                     <div class="col-md-1 p-0 "></div>
                     <div class="col-md-11 d-flex justify-content-center  p-0">
                        <div class="input-group date custom-calendar mr-10">
                           <input type="text" id="needsConcernDetailcall_adher_datepicker" class="form-control  custom-dateselect" value="12-02-2012" placeholder="Calendar">
                           <div class="input-group-addon" onclick="showNofollowupCallAdhereCalendar()">
                              <img src="<%=baseURL%>/assets/image/calendar.svg" alt="calendar" class="pr-1 hw-24">
                           </div>
                        </div>
                        <div class="istar-dropdown-task select_focus mr-10">
                           <button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="needsConcernDetailcallAdherence_success" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           <span class="sr-only">Toggle Dropdown</span><span id="needsConcernDetailcall_adhere_success_drop">Filter by Success</span> <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
                              class=" float-right">
                           </button>
                           <div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="needsConcernDetailcallAdherence_success">
                              <button class="dropdown-item" type="button" onclick="needsConcernDetailcall_adherence_success(this)" data-id="Lead 1">Lead 1</button>
                              <button class="dropdown-item" type="button" onclick="needsConcernDetailcall_adherence_success(this) " data-id="Lead 2">Lead 2</button>
                           </div>
                        </div>
                        <div class="istar-dropdown-task dropdown select_focus" id="">
                           <button class="istar-dropdown-arrow " data-display="static" id="needsConcernDetailcallAdherence_dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           <span class="sr-only">Toggle Dropdown</span> All Agents <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
                           </button>
                           <div class="dropdown-menu filter-menu dropdown-menu-right istar-dropdown-task-menu  dropdown-menu-lg-right position-absolute px-4" aria-labelledby="needsConcernDetailcallAdherence_dropdown"
                              style="width: 350px;">
                              <ul class="dropdown-nav nav nav-tabs nav-mytabs filtertabs pt-2 d-flex align-items-end" id="needsConcernDetailcall_adhereTab" role="tablist">
                                 <li class="nav-item"><a class="nav-link active" id="needsConcernDetailcall_adhere_individual-tab" data-toggle="tab" href="#needsConcernDetailcall_adhere_individual" role="tab"
                                    aria-controls="needsConcernDetailcall_adhere_individual" aria-selected="true">Individual</a></li>
                                 <li class="nav-item"><a class="nav-link" id="needsConcernDetailcall_adhere_team-tab" data-toggle="tab" href="#needsConcernDetailcall_adhere_team" role="tab" aria-controls="needsConcernDetailcall_adhere_team"
                                    aria-selected="false">Team</a></li>
                              </ul>
                              <div class="tab-content" id="needsConcernDetailcall_adhereTabContent">
                                 <div class="tab-pane fade show active px-4 py-3" id="needsConcernDetailcall_adhere_individual" role="tabpanel" aria-labelledby="needsConcernDetailcall_adhere_individual-tab">
                                    <div class="input-group py-2">
                                       <input id="needsConcernDetailcall_adhere_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search"
                                          style="border-right: none !important;">
                                       <div class="input-group-append">
                                          <button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
                                          <i class="fa fa-search f-12 brown-grey"></i>
                                          </button>
                                       </div>
                                    </div>
                                    <div class="needsConcernDetailCallAdhere-agent-list mb-2" style="overflow-x: hidden; overflow-y: auto;"></div>
                                 </div>
                                 <div class="tab-pane fade px-4 py-3" id="needsConcernDetailcall_adhere_team" role="tabpanel" aria-labelledby="needsConcernDetailcall_adhere_team-tab">
                                    <div class="input-group py-2">
                                       <input id="needsConcernDetailcall_adhere_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search"
                                          style="border-right: none !important;">
                                       <div class="input-group-append">
                                          <button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
                                          <i class="fa fa-search f-12 brown-grey"></i>
                                          </button>
                                       </div>
                                    </div>
                                    <div class="needsConcernDetailCallAdhere-team-list mb-2" style="overflow-x: hidden; overflow-y: auto;"></div>
                                 </div>
                              </div>
                              <div class="w-100 text-center">
                                 <button class="btn  rounded-0 theme_bg text-white f-14 font-weight-bold  mb-3 text-center px-3" style="min-width: 200px;" id="needsConcernDetailcall_adherence_team_submit">Submit</button>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="row cream_white m-0 theme_solid_border_bottom justify-content-between align-items-center pl-40 pr-40 pt-10 pb-10" id="needsConcernDetailcall_filter_selections" style="">
                     <div class="col-md-10 d-flex p-0 filters-inside-selection"></div>
                     <div class="col-md-2 text-right p-0">
                        <button type="submit" class="btn theme_color f-14 font-weight-bold p-0" data-type="needsConcernDetailCallAdherence" id="needsConcernDetailCallAdherence_reset" onclick="resetNeedConcernDetailsFilters(this)">Reset</button>
                     </div>
                  </div>
                  <span id="needsConcernDetail_adhere_section"></span>
               </div>
            </div>
         </div>
      </div>
   </div>
   <div class="col-md-1 p-0">
      <div class=" dropleft">
         <button type="button" class="btn btn-secondary dropdown-toggle"
            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
            style="display: none" id="completed_call_task_content">Dropleft</button>
         <div class="dropdown-menu completed_call_task_content m-0"
            aria-labelledby="completed_call_task_content">
            <!-- Dropdown menu links -->
         </div>
      </div>
      <ul class="list-group shadow d-flex flex-column h-100  taskpopup">
         <li class="notesdropdown list-group-item p-0 pt-10 pb-10">
            <div
               class=" d-flex flex-column justify-content-center align-items-center minh-80 "
               data-dropdown_id="completed_call_task_content">
               <img src="<%=baseURL%>assets/image/notes.svg" alt="notes" />
               <div class="f-12 pt-1 greyish-brown">Notes</div>
            </div>
         </li>
         <li class=" cuesdropdown list-group-item p-0 pt-10 pb-10">
            <div
               class=" d-flex flex-column justify-content-center align-items-center minh-80"
               data-dropdown_id="completed_call_task_content">
               <img src="<%=baseURL%>assets/image/cues.svg" alt="cues" />
               <div class="f-12 pt-1 greyish-brown">Cues</div>
            </div>
         </li>
         <li class="crmdropdown list-group-item p-0 pt-10 pb-10">
            <div
               class=" d-flex flex-column justify-content-center align-items-center minh-80"
               data-dropdown_id="completed_call_task_content">
               <img src="<%=baseURL%>assets/image/crm.svg" alt="crm" />
               <div class="f-12 pt-1 greyish-brown">CRM</div>
            </div>
         </li>
         <li class="chatdropdown list-group-item  p-0 pt-10 pb-10 ">
            <div
               class="  d-flex flex-column justify-content-center align-items-center minh-80"
               data-dropdown_id="completed_call_task_content">
               <img src="<%=baseURL%>assets/image/chat.svg"
                  alt="chat" />
               <div class="f-12 pt-1 greyish-brown">Chat</div>
            </div>
         </li>
         <li
            class=" flex-grow list-group-item d-flex flex-column justify-content-center align-items-center minh-100"
            style="height: calc(100% - 80px);"></li>
      </ul>
   </div>
</div>
<script>
   attachTaskRelatedData();
   $(function () {
   	  $('[data-toggle="tooltip"]').tooltip()
   	});
   $('.share-menu.dropdown-menu').click(function(e) {
   	e.stopPropagation();
   });
   
   $('#completed_call_reply_submit').click(function(){
   	$('#completed_call_reply').dropdown('hide');
   	$('#shareTaskModal').modal('show');
   	$(".share").removeClass('active');
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
     $('#completed_call_comment').on('show.bs.dropdown', function () {
   	  $(".comment").addClass('active');
   	});
    $('#completed_call_comment').on('hidden.bs.dropdown', function () {
     		$(".comment").removeClass('active');
   	});
    $('#completed_call_reply').on('show.bs.dropdown', function () {
   	  $(".share").addClass('active');
   	});
    $('#completed_call_reply').on('hidden.bs.dropdown', function () {
   	 $(".share").removeClass('active');
   	});
    $(document).ready(function(){
    loadNeedsConcernDetailCallRight();
    loadNeedsConcernDetailAgentFilterTab();
    loadNeedsConcernDetailAllTeamFilterTab();
   
    $('#needsConcernDetailCallReport>li>a').on('shown.bs.tab', function(e) {
   		var target = $(e.target).html(); // activated tab
   		console.log(target);
   		switch (target) {
   		case "Whats Right?":
   			loadNeedsConcernDetailCallRight();
   			break;
   		case "Whats Wrong?":
   			loadNeedsConcernDetailCallWrong();
   			break;
   		case "Timeline":
   			loadNeedsConcernDetailCallTimeline();
   			break;
   		case "Adherence":
   			loadNeedsConcernDetailCallAdherence();
   			break;
   		default:
   			
   			loadNeedsConcernDetailCallRight();
   		}
   	});				
    })
    /*----------------------------------------start of load needsConcernDetail call task sub-tab "right" content--------------------------------*/
    function  loadNeedsConcernDetailCallRight(){
    	$('#needsConcernDetailcall_whatswrong').empty();
    	$('#needsConcernDetailTimeline_card').empty()
    	$('#needsConcernDetail_timeline_section').empty()
    	   $('#needsConcernDetailcall_adherence_card').empty()
    		$('#needsConcernDetail_adhere_section').empty()
    	$.get(contextPath+"report/customer/needs_concern/needs_concern_detail/tab_content/callsub_tab_content/needs_concern_call_right_report.jsp", function(data) {
    		$('#needsConcernDetailcall_whatsright').html(data);
    	});
   
    }
    /*----------------------------------------end of load needsConcernDetail call task sub-tab "right" content--------------------------------*/
   /*----------------------------------------start of load needsConcernDetail call task sub-tab "Wrong" content--------------------------------*/
    function  loadNeedsConcernDetailCallWrong(){
    $('#needsConcernDetailcall_whatsright').empty();
    $('#needsConcernDetailTimeline_card').empty()
	$('#needsConcernDetail_timeline_section').empty()
	   $('#needsConcernDetailcall_adherence_card').empty()
		$('#needsConcernDetail_adhere_section').empty()
    	$.get(contextPath+"report/customer/needs_concern/needs_concern_detail/tab_content/callsub_tab_content/needs_concern_call_right_report.jsp", function(data) {
    		$('#needsConcernDetailcall_whatswrong').html(data);
    	});
    }
    /*----------------------------------------end of load needsConcernDetail call task sub-tab "Wrong" content--------------------------------*/
    
    /*----------------------------------------start of load needsConcernDetail call task sub-tab "Timeline" content--------------------------------*/
   function needsConcernDetailcall_timeline_success(elem){
   var filter = $(elem).text();
   var filter_id = $(elem).data('id');
   console.log(filter);
   $('#needsConcernDetailcallTimeline_success').attr('data-id',filter_id);
   $('#needsConcernDetailcallTimeline_success').attr('data-name',filter);
   loadNeedsConcernDetailCallTimeline();
   };
   function needsConcernDetailcall_timeline_persona(elem){
   var filter = $(elem).text();
   var filter_id = $(elem).data('id');
   console.log(filter);
   $('#needsConcernDetailcallTimeline_persona').attr('data-id',filter_id);
   $('#needsConcernDetailcallTimeline_persona').attr('data-name',filter);
   loadNeedsConcernDetailCallTimeline();
   };
   $('#needsConcernDetailcallTimeline_datepicker').change(function(){
   $('#needsConcernDetailcallTimeline_datepicker').attr('data-id',this.value)
   $('#needsConcernDetailcallTimeline_datepicker').attr('data-name',this.value)
   loadNeedsConcernDetailCallTimeline();
   })
    function  loadNeedsConcernDetailCallTimeline(){
	   $('#needsConcernDetailcall_whatsright').empty()
	    $('#needsConcernDetailcall_whatswrong').empty()
	   $('#needsConcernDetailcall_adherence_card').empty()
		$('#needsConcernDetail_adhere_section').empty()
   $('#needsConcernDetailcallTimeline_filter_selections').find('.filters-inside-selection').empty();
   $('#needsConcernDetailcallTimeline_filter_selections').hide();
    
    	var filterObj={};
    	
    	/*Selection of date filter*/
    	var time_value = $('#needsConcernDetailcallTimeline_datepicker').attr('data-name');
    	var time_value_id = $('#needsConcernDetailcallTimeline_datepicker').attr('data-id');
    	filterObj.time={};
    	addFilterSelections("needsConcernDetailcallTimeline","timelinedate",time_value,time_value_id,filterObj.time)
    	/*Selection of success filter*/
    	var success_value = $('#needsConcernDetailcallTimeline_success').attr('data-name');
    	var success_id = $('#needsConcernDetailcallTimeline_success').attr('data-id');
    	filterObj.deal={};
    	addFilterSelections("needsConcernDetailcallTimeline","success",success_value,success_id,filterObj.deal)
    	
    	/*Selection of persona filter*/
    	var persona_value = $('#needsConcernDetailcallTimeline_persona').attr('data-name');
    	var persona_id = $('#needsConcernDetailcallTimeline_persona').attr('data-id');
    	filterObj.deal={};
    	addFilterSelections("needsConcernDetailcallTimeline","persona",persona_value,persona_id,filterObj.deal)
    	
    	/*Selection of All Agents->Individual filter*/
    	if( $('#needsConcernDetailcallTimeline_dropdown').attr('data-agents')!=null){
    		var agents = JSON.parse($('#needsConcernDetailcallTimeline_dropdown').attr('data-agents'));
    		filterObj.agents=[]
    		if(agents!=null){
    			for(var i=0;i<agents.length;i++){
    				var agent_id=agents[i].id;
    				var agent_name=agents[i].name;
    				var agent={}
    				addFilterSelections("needsConcernDetailcallTimeline","Timeline_Agents",agent_name,agent_id,agent)
    				filterObj.agents.push(agent)
    			}
    		}
    	}
    	
    	/*Selection of All Agents->Team filter*/
    	if( $('#needsConcernDetailcallTimeline_dropdown').attr('data-teams')!=null){
    		var teams = JSON.parse($('#needsConcernDetailcallTimeline_dropdown').attr('data-teams'));
    		filterObj.teams=[]
    		if(teams!=null){
    			for(var i=0;i<teams.length;i++){
    				var team_id=teams[i].id;
    				var team_name=teams[i].name;
    				var team={}
    				addFilterSelections("needsConcernDetailcallTimeline","Timeline_Teams",team_name,team_id,team)
    				filterObj.teams.push(team)
    			}
    		}
    	}
    	
   	 $.get(contextPath+"report/customer/needs_concern/needs_concern_detail/tab_content/callsub_tab_content/needs_concern_timeline_card.jsp", function(data) {
   			$('#needsConcernDetailTimeline_card').html(data);
   		});
   		
   		$.get(contextPath+"report/customer/needs_concern/needs_concern_detail/tab_content/callsub_tab_content/needs_concern_timeline_content.jsp", function(data) {
   			$('#needsConcernDetail_timeline_section').html(data);
   			stopFilterPropagation();
   		});
    };
    
    $('#needsConcernDetailcall_timeline_team_submit').click(function(e) {
    	var agent_array=[];
    	var team_array=[];
    	
    	$('.needsConcernDetailCallTimelineagentcheckbox').each(function(){
    		if($(this).prop('checked')===true){
    			agent_array.push($(this).data('user'));
    		}
    	});
    	$('.needsConcernDetailCallTimelineteamcheckbox').each(function(){
    		if($(this).prop('checked')===true){
    			team_array.push($(this).data('team'));
    		}
    	});
    	
    	if(agent_array.length==0 && team_array.length==0){
    		alert("Please select atleast one");
    	}else{
    		$('#needsConcernDetailcallTimeline_dropdown').dropdown('hide');
    	}
    	$('#needsConcernDetailcallTimeline_dropdown').attr('data-agents',JSON.stringify(agent_array));
    	$('#needsConcernDetailcallTimeline_dropdown').attr('data-teams',JSON.stringify(team_array));
    	
    	$('.needsConcernDetailCallTimelineagentcheckbox').each(function(){
    		if($(this).prop('checked')===true){
    			$(this).prop("checked", false);
    		}
    	});
    	$('.needsConcernDetailCallTimelineteamcheckbox').each(function(){
    		if($(this).prop('checked')===true){
    			$(this).prop("checked", false);
    		}
    	});
    	loadNeedsConcernDetailCallTimeline()
    });

    /*----------------------------------------end of load needsConcernDetail call task sub-tab "Timeline" content--------------------------------*/
    
    /*----------------------------------------start of load needsConcernDetail call task sub-tab "Adherence" content--------------------------------*/
     function needsConcernDetailcall_adherence_success(elem){
   var filter = $(elem).text();
   var filter_id = $(elem).data('id');
   console.log(filter);
   $('#needsConcernDetailcallAdherence_success').attr('data-id',filter_id);
   $('#needsConcernDetailcallAdherence_success').attr('data-name',filter);
   loadNeedsConcernDetailCallAdherence();
   };
   
   $('#needsConcernDetailcall_adher_datepicker').change(function(dateText) {
	   $('#needsConcernDetailcall_adher_datepicker').attr('data-id',this.value)
	   $('#needsConcernDetailcall_adher_datepicker').attr('data-name',this.value)
	   loadNeedsConcernDetailCallAdherence();
	   });
   
    	function  loadNeedsConcernDetailCallAdherence(){
    		$('#needsConcernDetailcall_whatsright').empty()
    	    $('#needsConcernDetailcall_whatswrong').empty()
    		$('#needsConcernDetailTimeline_card').empty()
    		$('#needsConcernDetail_timeline_section').empty()
    		$('#needsConcernDetailcall_filter_selections').find('.filters-inside-selection').empty();
    	$('#needsConcernDetailcall_filter_selections').hide();
    		var filterObj={}
    		
    		/*Selection of date filter*/
    		var time_value = $('#needsConcernDetailcall_adher_datepicker').attr('data-name');
    		var time_value_id = $('#needsConcernDetailcall_adher_datepicker').attr('data-id');
    		filterObj.time={};
    		addFilterSelections("needsConcernDetailcall","adherdate",time_value,time_value_id,filterObj.time);
    		/*Selection of success filter*/
    		var success_value = $('#needsConcernDetailcallAdherence_success').attr('data-name');
    		var success_id = $('#needsConcernDetailcallAdherence_success').attr('data-id');
    		filterObj.deal={};
    		addFilterSelections("needsConcernDetailcall","Adherence_success",success_value,success_id,filterObj.deal)
    		
    		/*Selection of All Agents->Individual filter*/
    		if( $('#needsConcernDetailcallAdherence_dropdown').attr('data-agents')!=null){
    			var agents = JSON.parse($('#needsConcernDetailcallAdherence_dropdown').attr('data-agents'));
    			filterObj.agents=[]
    			if(agents!=null){
    				for(var i=0;i<agents.length;i++){
    					var agent_id=agents[i].id;
    					var agent_name=agents[i].name;
    					var agent={}
    					addFilterSelections("needsConcernDetailcall","Adherence_Agents",agent_name,agent_id,agent)
    					filterObj.agents.push(agent)
    				}
    			}
    		}
    		
    		/*Selection of All Agents->Team filter*/
    		if( $('#needsConcernDetailcallAdherence_dropdown').attr('data-teams')!=null){
    			var teams = JSON.parse($('#needsConcernDetailcallAdherence_dropdown').attr('data-teams'));
    			filterObj.teams=[]
    			if(teams!=null){
    				for(var i=0;i<teams.length;i++){
    					var team_id=teams[i].id;
    					var team_name=teams[i].name;
    					var team={}
    					addFilterSelections("needsConcernDetailcall","Adherence_Teams",team_name,team_id,team)
    					filterObj.teams.push(team)
    				}
    			}
    		}
   
    		
    		$.get(contextPath+"report/customer/needs_concern/needs_concern_detail/tab_content/callsub_tab_content/needs_concern_adherence_call_card.jsp", function(data) {
    			$('#needsConcernDetailcall_adherence_card').html(data);
    		
    		});
    		$.get(contextPath+"report/customer/needs_concern/needs_concern_detail/tab_content/callsub_tab_content/needs_concern_adherence_content.jsp", function(data) {
    			$('#needsConcernDetail_adhere_section').html(data);
    			stopFilterPropagation();
    		});
    }
    
    	$('#needsConcernDetailcall_adherence_team_submit').click(function(e) {
    		var agent_array=[];
    		var team_array=[];
    		
    		$('.needsConcernDetailCallAdhereagentcheckbox').each(function(){
    			if($(this).prop('checked')===true){
    				agent_array.push($(this).data('user'));
    			}
    		});
    		$('.needsConcernDetailCallAdhereteamcheckbox').each(function(){
    			if($(this).prop('checked')===true){
    				team_array.push($(this).data('team'));
    			}
    		});
    		
    		if(agent_array.length==0 && team_array.length==0){
    			alert("Please select atleast one");
    		}else{
    			$('#needsConcernDetailcallAdherence_dropdown').dropdown('hide');
    		}
    		$('#needsConcernDetailcallAdherence_dropdown').attr('data-agents',JSON.stringify(agent_array));
    		$('#needsConcernDetailcallAdherence_dropdown').attr('data-teams',JSON.stringify(team_array));
    		
    		$('.needsConcernDetailCallAdhereagentcheckbox').each(function(){
    			if($(this).prop('checked')===true){
    				$(this).prop("checked", false);
    			}
    		});
    		$('.needsConcernDetailCallAdhereteamcheckbox').each(function(){
    			if($(this).prop('checked')===true){
    				$(this).prop("checked", false);
    			}
    		});
    		loadNeedsConcernDetailCallAdherence()
    	});
    
    /*----------------------------------------end of load needsConcernDetail call task sub-tab "Adherence" content--------------------------------*/
  
    function showNofollowupCallTimelineCalendar(){
   $('#needsConcernDetailcallTimeline_datepicker').datepicker('show')
    }
   function showNofollowupCallAdhereCalendar(){
   $('#needsConcernDetailcall_adher_datepicker').datepicker('show')
    }
   $('#needsConcernDetailcallTimeline_datepicker').datepicker({
   autoclose : true,
   })
   $('#needsConcernDetailcall_adher_datepicker').datepicker({
   autoclose : true,
   })
   
   function stopFilterPropagation(){
   $('.filter-menu.dropdown-menu').click(function(e) {
     e.stopPropagation();
   });
   $('.filtertabs>li>.nav-link').click(function(e) {
   $($(this).attr('href') + '-tab').tab('show')
   });
   }
</script>