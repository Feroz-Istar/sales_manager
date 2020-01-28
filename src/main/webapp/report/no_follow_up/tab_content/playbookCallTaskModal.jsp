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
               id="nofollowupCallReport" role="tablist">
               <li class="nav-item"><a class="nav-item nav-link active"
                  id="nofollowupcall_whatsright-tab" data-toggle="tab" href="#nofollowupcall_whatsright"
                  role="tab" aria-controls="nofollowupcall_whatsright" aria-selected="true">Whats Right?</a></li>
               <li class="nav-item"><a class="nav-item nav-link"
                  id="nofollowupcall_whatswrong-tab" data-toggle="tab" href="#nofollowupcall_whatswrong"
                  role="tab" aria-controls="nofollowupcall_whatswrong" aria-selected="false">Whats Wrong?</a></li>
               <li class="nav-item"><a class="nav-item nav-link" id="nofollowupcall_timeline-tab"  style="min-width:132px;"
                  data-toggle="tab" href="#nofollowupcall_timeline" role="tab" aria-controls="nofollowupcall_timeline"
                  aria-selected="false">Timeline</a></li>
               <li class="nav-item"><a class="nav-item nav-link" id="nofollowupcall_adherence-tab"  style="min-width:132px;"
                  data-toggle="tab" href="#nofollowupcall_adherence" role="tab" aria-controls="nofollowupcall_adherence"
                  aria-selected="false">Adherence</a></li>
            </ul>
            <div class="tab-content mytab-content pt-40"
               id="nofollowupCallReportTabContent">
               <div class="tab-pane fade show active" id="nofollowupcall_whatsright" role="tabpanel" aria-labelledby="nofollowupcall_whatsright-tab"></div>
               <div class="tab-pane fade show" id="nofollowupcall_whatswrong" role="tabpanel" aria-labelledby="nofollowupcall_whatswrong-tab"></div>
               <div class="tab-pane fade  show" id="nofollowupcall_timeline" role="tabpanel" aria-labelledby="nofollowupcall_timeline-tab">
                  <div class="card border-0 card-shadow-bottom" id="nofollowupTimeline_card">
                  </div>
                  <div class="row m-0 theme_dashed_border_bottom   pt-20 pb-20" id="">
                     <div class="col-md-1 p-0 "></div>
                     <div class="col-md-11 d-flex  p-0">
                        <div class="input-group date custom-calendar mr-10">
                           <input type="text" id="nofollowupcallTimeline_datepicker" class="form-control  custom-dateselect" value="12-02-2012" placeholder="Calendar">
                           <div class="input-group-addon" onclick="showNofollowupCallTimelineCalendar()">
                              <img src="<%=baseURL%>/assets/image/calendar.svg" alt="calendar" class="pr-1 hw-24">
                           </div>
                        </div>
                        <div class="istar-dropdown-task select_focus mr-10">
                           <button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="nofollowupcallTimeline_persona" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           <span class="sr-only">Toggle Dropdown</span> <span id="nofollowupcall_timeline_drop">All Persona</span> <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
                           </button>
                           <div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="nofollowupTimeline_persona" id="">
                              <button class="dropdown-item" type="button" onclick="nofollowupcall_timeline_persona(this)" data-id="Persona 1">Persona 1</button>
                              <button class="dropdown-item" type="button" onclick="nofollowupcall_timeline_persona(this)" data-id="Persona 2">Persona 2</button>
                           </div>
                        </div>
                        <div class="istar-dropdown-task select_focus mr-10">
                           <button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="nofollowupcallTimeline_success" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           <span class="sr-only">Toggle Dropdown</span><span id="nofollowupcall_timeline_success_drop">Filter by Success</span> <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
                              class=" float-right">
                           </button>
                           <div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="nofollowupcall_timeline_success">
                              <button class="dropdown-item" type="button" onclick="nofollowupcall_timeline_success(this)" data-id="Lead 1">Lead 1</button>
                              <button class="dropdown-item" type="button" onclick="nofollowupcall_timeline_success(this) " data-id="Lead 2">Lead 2</button>
                           </div>
                        </div>
                       <div class="istar-dropdown-task dropdown select_focus" id="">
                           <button class="istar-dropdown-arrow " data-display="static" id="nofollowupcallTimeline_dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           <span class="sr-only">Toggle Dropdown</span> All Agents <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
                           </button>
                           <div class="dropdown-menu filter-menu dropdown-menu-right istar-dropdown-task-menu  dropdown-menu-lg-right position-absolute px-4" aria-labelledby="nofollowupcallTimeline_dropdown"
                              style="width: 350px;">
                              <ul class="dropdown-nav nav nav-tabs nav-mytabs filtertabs pt-2 d-flex align-items-end" id="nofollowupcall_timelineTab" role="tablist">
                                 <li class="nav-item"><a class="nav-link active" id="nofollowupcall_timeline_individual-tab" data-toggle="tab" href="#nofollowupcall_timeline_individual" role="tab"
                                    aria-controls="nofollowupcall_timeline_individual" aria-selected="true">Individual</a></li>
                                 <li class="nav-item"><a class="nav-link" id="nofollowupcall_timeline_team-tab" data-toggle="tab" href="#nofollowupcall_timeline_team" role="tab" aria-controls="nofollowupcall_timeline_team"
                                    aria-selected="false">Team</a></li>
                              </ul>
                              <div class="tab-content" id="nofollowupcall_timelineTabContent">
                                 <div class="tab-pane fade show active px-4 py-3" id="nofollowupcall_timeline_individual" role="tabpanel" aria-labelledby="nofollowupcall_timeline_individual-tab">
                                    <div class="input-group py-2">
                                       <input id="nofollowupcall_timeline_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search"
                                          style="border-right: none !important;">
                                       <div class="input-group-append">
                                          <button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
                                          <i class="fa fa-search f-12 brown-grey"></i>
                                          </button>
                                       </div>
                                    </div>
                                    <div class="nofollowupCallTimeline-agent-list mb-2" style="overflow-x: hidden; overflow-y: auto;"></div>
                                 </div>
                                 <div class="tab-pane fade px-4 py-3" id="nofollowupcall_timeline_team" role="tabpanel" aria-labelledby="nofollowupcall_timeline_team-tab">
                                    <div class="input-group py-2">
                                       <input id="nofollowupcall_timeline_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search"
                                          style="border-right: none !important;">
                                       <div class="input-group-append">
                                          <button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
                                          <i class="fa fa-search f-12 brown-grey"></i>
                                          </button>
                                       </div>
                                    </div>
                                    <div class="nofollowupCallTimeline-team-list mb-2" style="overflow-x: hidden; overflow-y: auto;"></div>
                                 </div>
                              </div>
                              <div class="w-100 text-center">
                                 <button class="btn  rounded-0 theme_bg text-white f-14 font-weight-bold  mb-3 text-center px-3" style="min-width: 200px;" id="nofollowupcall_timeline_team_submit">Submit</button>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="row cream_white m-0 theme_solid_border_bottom justify-content-between align-items-center pl-40 pr-40 pt-10 pb-10" id="nofollowupcallTimeline_filter_selections" style="">
                     <div class="col-md-10 d-flex p-0 filters-inside-selection"></div>
                     <div class="col-md-2 text-right p-0">
                        <button type="submit" class="btn theme_color f-14 font-weight-bold p-0" data-type="nofollowupCallTimeline" id="nofollowupCallTimeline_reset" onclick="resetReportFilters(this)">Reset</button>
                     </div>
                  </div>
                  <span id="nofollowup_timeline_section"></span>
               </div>
               <div class="tab-pane fade show " id="nofollowupcall_adherence" role="tabpanel"
                  aria-labelledby="nofollowupcall_adherence-tab">
                  <div class="card border-0 card-shadow-bottom" id="nofollowupcall_adherence_card">
                  </div>
                  <div class="row m-0 theme_dashed_border_bottom   pt-20 pb-20" id="">
                     <div class="col-md-1 p-0 "></div>
                     <div class="col-md-11 d-flex justify-content-center  p-0">
                        <div class="input-group date custom-calendar mr-10">
                           <input type="text" id="nofollowupcall_adher_datepicker" class="form-control  custom-dateselect" value="12-02-2012" placeholder="Calendar">
                           <div class="input-group-addon" onclick="showNofollowupCallAdhereCalendar()">
                              <img src="<%=baseURL%>/assets/image/calendar.svg" alt="calendar" class="pr-1 hw-24">
                           </div>
                        </div>
                        <div class="istar-dropdown-task select_focus mr-10">
                           <button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="nofollowupcallAdherence_success" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           <span class="sr-only">Toggle Dropdown</span><span id="nofollowupcall_adhere_success_drop">Filter by Success</span> <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
                              class=" float-right">
                           </button>
                           <div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="nofollowupcallAdherence_success">
                              <button class="dropdown-item" type="button" onclick="nofollowupcall_adherence_success(this)" data-id="Lead 1">Lead 1</button>
                              <button class="dropdown-item" type="button" onclick="nofollowupcall_adherence_success(this) " data-id="Lead 2">Lead 2</button>
                           </div>
                        </div>
                        <div class="istar-dropdown-task dropdown select_focus" id="">
                           <button class="istar-dropdown-arrow " data-display="static" id="nofollowupcallAdherence_dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           <span class="sr-only">Toggle Dropdown</span> All Agents <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
                           </button>
                           <div class="dropdown-menu filter-menu dropdown-menu-right istar-dropdown-task-menu  dropdown-menu-lg-right position-absolute px-4" aria-labelledby="nofollowupcallAdherence_dropdown"
                              style="width: 350px;">
                              <ul class="dropdown-nav nav nav-tabs nav-mytabs filtertabs pt-2 d-flex align-items-end" id="nofollowupcall_adhereTab" role="tablist">
                                 <li class="nav-item"><a class="nav-link active" id="nofollowupcall_adhere_individual-tab" data-toggle="tab" href="#nofollowupcall_adhere_individual" role="tab"
                                    aria-controls="nofollowupcall_adhere_individual" aria-selected="true">Individual</a></li>
                                 <li class="nav-item"><a class="nav-link" id="nofollowupcall_adhere_team-tab" data-toggle="tab" href="#nofollowupcall_adhere_team" role="tab" aria-controls="nofollowupcall_adhere_team"
                                    aria-selected="false">Team</a></li>
                              </ul>
                              <div class="tab-content" id="nofollowupcall_adhereTabContent">
                                 <div class="tab-pane fade show active px-4 py-3" id="nofollowupcall_adhere_individual" role="tabpanel" aria-labelledby="nofollowupcall_adhere_individual-tab">
                                    <div class="input-group py-2">
                                       <input id="nofollowupcall_adhere_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search"
                                          style="border-right: none !important;">
                                       <div class="input-group-append">
                                          <button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
                                          <i class="fa fa-search f-12 brown-grey"></i>
                                          </button>
                                       </div>
                                    </div>
                                    <div class="nofollowupCallAdhere-agent-list mb-2" style="overflow-x: hidden; overflow-y: auto;"></div>
                                 </div>
                                 <div class="tab-pane fade px-4 py-3" id="nofollowupcall_adhere_team" role="tabpanel" aria-labelledby="nofollowupcall_adhere_team-tab">
                                    <div class="input-group py-2">
                                       <input id="nofollowupcall_adhere_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search"
                                          style="border-right: none !important;">
                                       <div class="input-group-append">
                                          <button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
                                          <i class="fa fa-search f-12 brown-grey"></i>
                                          </button>
                                       </div>
                                    </div>
                                    <div class="nofollowupCallAdhere-team-list mb-2" style="overflow-x: hidden; overflow-y: auto;"></div>
                                 </div>
                              </div>
                              <div class="w-100 text-center">
                                 <button class="btn  rounded-0 theme_bg text-white f-14 font-weight-bold  mb-3 text-center px-3" style="min-width: 200px;" id="nofollowupcall_adherence_team_submit">Submit</button>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="row cream_white m-0 theme_solid_border_bottom justify-content-between align-items-center pl-40 pr-40 pt-10 pb-10" id="nofollowupcall_filter_selections" style="">
                     <div class="col-md-10 d-flex p-0 filters-inside-selection"></div>
                     <div class="col-md-2 text-right p-0">
                        <button type="submit" class="btn theme_color f-14 font-weight-bold p-0" data-type="nofollowupCallAdherence" id="nofollowupCallAdherence_reset" onclick="resetReportFilters(this)">Reset</button>
                     </div>
                  </div>
                  <span id="nofollowup_adhere_section"></span>
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
    loadNoFollowUpCallRight();
    loadReportAllAgentFilterTab();
    loadReportAllTeamFilterTab();
   
    $('#nofollowupCallReport>li>a').on('shown.bs.tab', function(e) {
   		var target = $(e.target).html(); // activated tab
   		console.log(target);
   		switch (target) {
   		case "Whats Right?":
   			loadNoFollowUpCallRight();
   			break;
   		case "Whats Wrong?":
   			loadNoFollowUpCallWrong();
   			break;
   		case "Timeline":
   			loadNoFollowUpCallTimeline();
   			break;
   		case "Adherence":
   			loadNoFollowUpCallAdherence();
   			break;
   		default:
   			
   			loadNoFollowUpCallRight();
   		}
   	});				
    })
    /*----------------------------------------start of load nofollowup call task sub-tab "right" content--------------------------------*/
    function  loadNoFollowUpCallRight(){
    	$('#nofollowupcall_whatswrong').empty();
    	$('#completedcall_timeline_section').empty();
    	$('#completedcall_adherence_section').empty();
    	$.get(contextPath+"report/no_follow_up/tab_content/callsub_tab_content/nofollowup_call_right_report.jsp", function(data) {
    		$('#nofollowupcall_whatsright').html(data);
    	});
   
    }
    /*----------------------------------------end of load nofollowup call task sub-tab "right" content--------------------------------*/
   /*----------------------------------------start of load nofollowup call task sub-tab "Wrong" content--------------------------------*/
    function  loadNoFollowUpCallWrong(){
    $('#nofollowupcall_whatsright').empty();
    	$('#completedcall_timeline_section').empty();
    	$('#completedcall_adherence_section').empty();
    	$.get(contextPath+"report/no_follow_up/tab_content/callsub_tab_content/nofollowup_call_right_report.jsp", function(data) {
    		$('#nofollowupcall_whatswrong').html(data);
    	});
    }
    /*----------------------------------------end of load nofollowup call task sub-tab "Wrong" content--------------------------------*/
    
    /*----------------------------------------start of load nofollowup call task sub-tab "Timeline" content--------------------------------*/
   function nofollowupcall_timeline_success(elem){
   var filter = $(elem).text();
   var filter_id = $(elem).data('id');
   console.log(filter);
   $('#nofollowupcallTimeline_success').attr('data-id',filter_id);
   $('#nofollowupcallTimeline_success').attr('data-name',filter);
   loadNoFollowUpCallTimeline();
   };
   function nofollowupcall_timeline_persona(elem){
   var filter = $(elem).text();
   var filter_id = $(elem).data('id');
   console.log(filter);
   $('#nofollowupcallTimeline_persona').attr('data-id',filter_id);
   $('#nofollowupcallTimeline_persona').attr('data-name',filter);
   loadNoFollowUpCallTimeline();
   };
   $('#nofollowupcallTimeline_datepicker').change(function(){
   $('#nofollowupcallTimeline_datepicker').attr('data-id',this.value)
   $('#nofollowupcallTimeline_datepicker').attr('data-name',this.value)
   loadNoFollowUpCallTimeline();
   })
    function  loadNoFollowUpCallTimeline(){
   
   $('#nofollowupcallTimeline_filter_selections').find('.filters-inside-selection').empty();
   $('#nofollowupcallTimeline_filter_selections').hide();
    
    	var filterObj={};
    	
    	/*Selection of date filter*/
    	var time_value = $('#nofollowupcallTimeline_datepicker').attr('data-name');
    	var time_value_id = $('#nofollowupcallTimeline_datepicker').attr('data-id');
    	filterObj.time={};
    	addFilterSelections("nofollowupcallTimeline","timelinedate",time_value,time_value_id,filterObj.time)
    	/*Selection of success filter*/
    	var success_value = $('#nofollowupcallTimeline_success').attr('data-name');
    	var success_id = $('#nofollowupcallTimeline_success').attr('data-id');
    	filterObj.deal={};
    	addFilterSelections("nofollowupcallTimeline","success",success_value,success_id,filterObj.deal)
    	
    	/*Selection of persona filter*/
    	var persona_value = $('#nofollowupcallTimeline_persona').attr('data-name');
    	var persona_id = $('#nofollowupcallTimeline_persona').attr('data-id');
    	filterObj.deal={};
    	addFilterSelections("nofollowupcallTimeline","persona",persona_value,persona_id,filterObj.deal)
    	
    	/*Selection of All Agents->Individual filter*/
    	if( $('#nofollowupcallTimeline_dropdown').attr('data-agents')!=null){
    		var agents = JSON.parse($('#nofollowupcallTimeline_dropdown').attr('data-agents'));
    		filterObj.agents=[]
    		if(agents!=null){
    			for(var i=0;i<agents.length;i++){
    				var agent_id=agents[i].id;
    				var agent_name=agents[i].name;
    				var agent={}
    				addFilterSelections("nofollowupcallTimeline","Timeline_Agents",agent_name,agent_id,agent)
    				filterObj.agents.push(agent)
    			}
    		}
    	}
    	
    	/*Selection of All Agents->Team filter*/
    	if( $('#nofollowupcallTimeline_dropdown').attr('data-teams')!=null){
    		var teams = JSON.parse($('#nofollowupcallTimeline_dropdown').attr('data-teams'));
    		filterObj.teams=[]
    		if(teams!=null){
    			for(var i=0;i<teams.length;i++){
    				var team_id=teams[i].id;
    				var team_name=teams[i].name;
    				var team={}
    				addFilterSelections("nofollowupcallTimeline","Timeline_Teams",team_name,team_id,team)
    				filterObj.teams.push(team)
    			}
    		}
    	}
    	
   	 $.get(contextPath+"report/no_follow_up/tab_content/callsub_tab_content/nofollowup_timeline_card.jsp", function(data) {
   			$('#nofollowupTimeline_card').html(data);
   		});
   		
   		$.get(contextPath+"report/no_follow_up/tab_content/callsub_tab_content/nofollowup_timeline_content.jsp", function(data) {
   			$('#nofollowup_timeline_section').html(data);
   			stopFilterPropagation();
   		});
    };
    
    $('#nofollowupcall_timeline_team_submit').click(function(e) {
    	var agent_array=[];
    	var team_array=[];
    	
    	$('.nofollowupCallTimelineagentcheckbox').each(function(){
    		if($(this).prop('checked')===true){
    			agent_array.push($(this).data('user'));
    		}
    	});
    	$('.nofollowupCallTimelineteamcheckbox').each(function(){
    		if($(this).prop('checked')===true){
    			team_array.push($(this).data('team'));
    		}
    	});
    	
    	if(agent_array.length==0 && team_array.length==0){
    		alert("Please select atleast one");
    	}else{
    		$('#nofollowupcallTimeline_dropdown').dropdown('hide');
    	}
    	$('#nofollowupcallTimeline_dropdown').attr('data-agents',JSON.stringify(agent_array));
    	$('#nofollowupcallTimeline_dropdown').attr('data-teams',JSON.stringify(team_array));
    	
    	$('.nofollowupCallTimelineagentcheckbox').each(function(){
    		if($(this).prop('checked')===true){
    			$(this).prop("checked", false);
    		}
    	});
    	$('.nofollowupCallTimelineteamcheckbox').each(function(){
    		if($(this).prop('checked')===true){
    			$(this).prop("checked", false);
    		}
    	});
    	loadNoFollowUpCallTimeline()
    });

    /*----------------------------------------end of load nofollowup call task sub-tab "Timeline" content--------------------------------*/
    
    /*----------------------------------------start of load nofollowup call task sub-tab "Adherence" content--------------------------------*/
     function nofollowupcall_adherence_success(elem){
   var filter = $(elem).text();
   var filter_id = $(elem).data('id');
   console.log(filter);
   $('#nofollowupcallAdherence_success').attr('data-id',filter_id);
   $('#nofollowupcallAdherence_success').attr('data-name',filter);
   loadNoFollowUpCallAdherence();
   };
   
   $('#nofollowupcall_adher_datepicker').change(function(dateText) {
	   $('#nofollowupcall_adher_datepicker').attr('data-id',this.value)
	   $('#nofollowupcall_adher_datepicker').attr('data-name',this.value)
	   loadNoFollowUpCallAdherence();
	   });
   
    	function  loadNoFollowUpCallAdherence(){
    		$('#nofollowupcall_filter_selections').find('.filters-inside-selection').empty();
    	$('#nofollowupcall_filter_selections').hide();
    		var filterObj={}
    		
    		/*Selection of date filter*/
    		var time_value = $('#nofollowupcall_adher_datepicker').attr('data-name');
    		var time_value_id = $('#nofollowupcall_adher_datepicker').attr('data-id');
    		filterObj.time={};
    		addFilterSelections("nofollowupcall","adherdate",time_value,time_value_id,filterObj.time);
    		/*Selection of success filter*/
    		var success_value = $('#nofollowupcallAdherence_success').attr('data-name');
    		var success_id = $('#nofollowupcallAdherence_success').attr('data-id');
    		filterObj.deal={};
    		addFilterSelections("nofollowupcall","Adherence_success",success_value,success_id,filterObj.deal)
    		
    		/*Selection of All Agents->Individual filter*/
    		if( $('#nofollowupcallAdherence_dropdown').attr('data-agents')!=null){
    			var agents = JSON.parse($('#nofollowupcallAdherence_dropdown').attr('data-agents'));
    			filterObj.agents=[]
    			if(agents!=null){
    				for(var i=0;i<agents.length;i++){
    					var agent_id=agents[i].id;
    					var agent_name=agents[i].name;
    					var agent={}
    					addFilterSelections("nofollowupcall","Adherence_Agents",agent_name,agent_id,agent)
    					filterObj.agents.push(agent)
    				}
    			}
    		}
    		
    		/*Selection of All Agents->Team filter*/
    		if( $('#nofollowupcallAdherence_dropdown').attr('data-teams')!=null){
    			var teams = JSON.parse($('#nofollowupcallAdherence_dropdown').attr('data-teams'));
    			filterObj.teams=[]
    			if(teams!=null){
    				for(var i=0;i<teams.length;i++){
    					var team_id=teams[i].id;
    					var team_name=teams[i].name;
    					var team={}
    					addFilterSelections("nofollowupcall","Adherence_Teams",team_name,team_id,team)
    					filterObj.teams.push(team)
    				}
    			}
    		}
   
    		
    		$.get(contextPath+"report/no_follow_up/tab_content/callsub_tab_content/nofollowup_adherence_call_card.jsp", function(data) {
    			$('#nofollowupcall_adherence_card').html(data);
    		
    		});
    		$.get(contextPath+"report/no_follow_up/tab_content/callsub_tab_content/nofollowup_adherence_content.jsp", function(data) {
    			$('#nofollowup_adhere_section').html(data);
    			stopFilterPropagation();
    		});
    }
    
    	$('#nofollowupcall_adherence_team_submit').click(function(e) {
    		var agent_array=[];
    		var team_array=[];
    		
    		$('.nofollowupCallAdhereagentcheckbox').each(function(){
    			if($(this).prop('checked')===true){
    				agent_array.push($(this).data('user'));
    			}
    		});
    		$('.nofollowupCallAdhereteamcheckbox').each(function(){
    			if($(this).prop('checked')===true){
    				team_array.push($(this).data('team'));
    			}
    		});
    		
    		if(agent_array.length==0 && team_array.length==0){
    			alert("Please select atleast one");
    		}else{
    			$('#nofollowupcallAdherence_dropdown').dropdown('hide');
    		}
    		$('#nofollowupcallAdherence_dropdown').attr('data-agents',JSON.stringify(agent_array));
    		$('#nofollowupcallAdherence_dropdown').attr('data-teams',JSON.stringify(team_array));
    		
    		$('.nofollowupCallAdhereagentcheckbox').each(function(){
    			if($(this).prop('checked')===true){
    				$(this).prop("checked", false);
    			}
    		});
    		$('.nofollowupCallAdhereteamcheckbox').each(function(){
    			if($(this).prop('checked')===true){
    				$(this).prop("checked", false);
    			}
    		});
    		loadNoFollowUpCallAdherence()
    	});
    
    /*----------------------------------------end of load nofollowup call task sub-tab "Adherence" content--------------------------------*/
  
    function showNofollowupCallTimelineCalendar(){
   $('#nofollowupcallTimeline_datepicker').datepicker('show')
    }
   function showNofollowupCallAdhereCalendar(){
   $('#nofollowupcall_adher_datepicker').datepicker('show')
    }
   $('#nofollowupcallTimeline_datepicker').datepicker({
   autoclose : true,
   })
   $('#nofollowupcall_adher_datepicker').datepicker({
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