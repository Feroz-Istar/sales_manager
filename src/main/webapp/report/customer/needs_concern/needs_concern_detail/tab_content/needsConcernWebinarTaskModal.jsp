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
               <div class=" dropdown" id="playbook_webinar_comment">
                  <button class="btn p-0 dropdown-toggle"
                     id="playbook_webinar_comment" data-toggle="dropdown"
                     aria-haspopup="true" aria-expanded="true" data-display="static">
                     <div style="background-image: url(<%=baseURL%>assets/image/message.svg); height: 24px; width: 24px;" class="mr-15 comment"></div>
                  </button>
                  <div
                     class="dropdown-menu dropdown-menu-right filter-menu position-absolute p-0"
                     aria-labelledby="playbook_webinar_comment">
                     <div class="tab-content border-0" id="myTabContent">
                        <div class="tab-pane fade pt-25 pl-20 pr-20   active show"
                           id="playbook_webinar_comment" role="tabpanel"
                           aria-labelledby="playbook_webinar_comment-tab"
                           style="box-shadow: 0 10px 40px 0 rgba(0, 0, 0, 0.25);">
                           <div class="card rounded-0 border-0" style="width: 500px">
                              <div class="card-header p-0 border-bottom-0 bg-white">
                                 <div class="row m-0">
                                    <div class="col-md-6 p-0 pb-20 fw-500 f-16 black">Comment</div>
                                    <div class="col-md-6 p-0">
                                       <button type="button" class="close" data-dismiss="modal"
                                          aria-label="Close">
                                       <img src="<%=baseURL%>assets/image/close.svg"
                                          alt="taskicon" class="rounded-circle hw-24 task-icon">
                                       </button>
                                    </div>
                                 </div>
                              </div>
                              <div class="card-body p-0 pb-20">
                                 <div class="form-group mb-0">
                                    <textarea class="form-control rounded-0"
                                       id="exampleFormControlTextarea1" rows="3"></textarea>
                                 </div>
                              </div>
                              <div class="card-footer p-0 border-top-0 pb-20 bg-white">
                                 <div class="row d-flex justify-content-end m-0">
                                    <button type="button"
                                       class="btn join_btn  istar-btn-hover f-12 "
                                       id="playbook_webinar_reply_submit">Submit</button>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class=" dropdown" id="playbook_webinar_reply">
                  <button class="btn  p-0 dropdown-toggle" id="playbook_webinar_reply"
                     data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" data-display="static">
                     <div style="background-image: url(<%=baseURL%>assets/image/reply.svg); height: 24px; width: 24px;" class="mr-15 share"></div>
                  </button>
                  <div
                     class="dropdown-menu dropdown-menu-right filter-menu position-absolute p-0"
                     aria-labelledby="playbook_webinar_reply">
                     <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade pb-25 pl-20 pr-20 pt-20 active show"
                           id="playbook_webinar_reply" role="tabpanel"
                           aria-labelledby="playbook_webinar_reply-tab"
                           style="width: 280px; height: 516px; box-shadow: 0 10px 40px 0 rgba(0, 0, 0, 0.25);">
                           <div class="input-group position-relative pb-20">
                              <img src="<%=baseURL %>assets/image/search.svg"
                                 alt="edit" class=" searchBox"> <input
                                 id="playbook_webinar_reply_search"
                                 class="form-control  custom-taskborder brown-grey  f-14 search_height custom-result-selects"
                                 type="search" placeholder="Search"
                                 style="padding-right: 30px">
                           </div>
                           <div
                              style="height: 370px; overflow-x: hidden; overflow-y: auto;">
                              <%
                                 for (int i = 0; i < 30; i++) {
                                 %>
                              <div class="d-flex align-items-center pb-10 ">
                                 <input class="istar-checkbox agentcheckbox " data-id="0"
                                    id="playbook_webinar_reply-checkbox<%=i%>" type="checkbox">
                                 <label class="istar-checkbox-style"
                                    for="playbook_webinar_reply-checkbox<%=i%>"></label> <img
                                    alt="user-img"
                                    src="<%=baseURL %>assets/image/11.png"
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
                              class="btn btn-block big_button rounded-0 font-weight-bold f-12 mt-25"
                              id="playbook_webinar_reply_submit"  data-toggle="modal" data-target="#shareTaskModal">Submit</button>
                        </div>
                     </div>
                  </div>
               </div>
               <div
                  class="f-14 font-weight-bold theme_color cursor-pointer align-self-center"
                  onclick="window.location.href = 'task_lead_detail.jsp'">
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
            <ul class="nav nav-tabs nav-mytabs p-0 d-flex align-items-end" id="needsConcernDetailWebinarTab" role="tablist">
               <li class="nav-item"><a class="nav-item nav-link active" id="needsConcernDetailWebinarwhatsright-tab" data-toggle="tab" href="#needsConcernDetailWebinarwhatsright" role="tab"
                  aria-controls="needsConcernDetailWebinarwhatsright" aria-selected="true">Whats Right?</a></li>
               <li class="nav-item"><a class="nav-item nav-link" id="needsConcernDetailWebinarwhatswrong-tab" data-toggle="tab" href="#needsConcernDetailWebinarwhatswrong" role="tab"
                  aria-controls="needsConcernDetailWebinarwhatswrong" aria-selected="false">Whats Wrong?</a></li>
               <li class="nav-item"><a class="nav-item nav-link" id="needsConcernDetailWebinartimeline-tab" data-toggle="tab" href="#needsConcernDetailWebinartimeline" role="tab" aria-controls="#needsConcernDetailWebinartimeline"
                  aria-selected="false">Timeline</a></li>
               <li class="nav-item"><a class="nav-item nav-link" id="needsConcernDetailWebinar_adherence-tab" data-toggle="tab" href="#needsConcernDetailWebinar_adherence" role="tab"
                  aria-controls="needsConcernDetailWebinar_adherenc" aria-selected="false">Adherence</a></li>
            </ul>
            <div class="tab-content mytab-content p-0 pt-20"
               id="needsConcernDetailWebinarTabContent">
               <div class="tab-pane fade active show 	" id="needsConcernDetailWebinarwhatsright" role="tabpanel"
                  aria-labelledby="needsConcernDetailWebinarwhatsright-tab">
               </div>
               <div class="tab-pane fade " id="needsConcernDetailWebinarwhatswrong"
                  role="tabpanel" aria-labelledby="needsConcernDetailWebinarwhatswrong-tab">
               </div>
               <div class="tab-pane fade show " id="needsConcernDetailWebinartimeline" role="tabpanel"
                  aria-labelledby="needsConcernDetailWebinartimeline-tab">
                  <div class="card border-0  p-0 card-shadow-bottom" id="needsConcernDetailWebinar_timeline_card">
                  </div>
                  <div class="row m-0 theme_dashed_border_bottom   pt-20 pb-20" id="">
                     <div class="col-md-1 p-0 "></div>
                     <div class="col-md-11 d-flex  p-0">
                        <div class="input-group date select_focus custom-calendar mr-10">
                           <input type="text" id="needsConcernDetailwebTimeline_datepicker" class="form-control  custom-dateselect" value="12-02-2012" placeholder="Calendar">
                           <div class="input-group-addon" onclick="showneedsConcernDetailWebTimelineCalendar()">
                              <img src="<%=baseURL%>/assets/image/calendar.svg" alt="calendar" class="pr-1 hw-24">
                           </div>
                        </div>
                        <div class="istar-dropdown-task select_focus mr-10">
                           <button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="needsConcernDetailwebTimeline_persona" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           <span class="sr-only">Toggle Dropdown</span> <span id="needsConcernDetailweb_timeline_drop">All Persona</span> <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
                           </button>
                           <div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="needsConcernDetailwebTimeline_persona" id="">
                              <button class="dropdown-item" type="button" onclick="needsConcernDetailweb_timeline_persona(this)" data-id="Persona 1">Persona 1</button>
                              <button class="dropdown-item" type="button" onclick="needsConcernDetailweb_timeline_persona(this)" data-id="Persona 2">Persona 2</button>
                           </div>
                        </div>
                        <div class="istar-dropdown-task select_focus mr-10">
                           <button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="needsConcernDetailwebTimeline_success" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           <span class="sr-only">Toggle Dropdown</span><span id="needsConcernDetailweb_timeline_success_drop">Filter by Success</span> <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
                              class=" float-right">
                           </button>
                           <div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="needsConcernDetailwebTimeline_success">
                              <button class="dropdown-item" type="button" onclick="needsConcernDetailweb_timeline_success(this)" data-id="Lead 1">Lead 1</button>
                              <button class="dropdown-item" type="button" onclick="needsConcernDetailweb_timeline_success(this)" data-id="Lead 2"> Lead 2</button>
                           </div>
                        </div>
                        <div class="istar-dropdown-task dropdown select_focus" id="">
                           <button class="istar-dropdown-arrow " data-display="static" id="needsConcernDetailwebTimeline_dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           <span class="sr-only">Toggle Dropdown</span> All Agents <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
                           </button>
                           <div class="dropdown-menu filter-menu dropdown-menu-right istar-dropdown-task-menu  dropdown-menu-lg-right position-absolute px-4" aria-labelledby="needsConcernDetailwebTimeline_dropdown"
                              style="width: 350px;">
                              <ul class="dropdown-nav nav nav-tabs nav-mytabs filtertabs pt-2 d-flex align-items-end" id="needsConcernDetailweb_timelineTab" role="tablist">
                                 <li class="nav-item"><a class="nav-link active" id="needsConcernDetailweb_timeline_individual-tab" data-toggle="tab" href="#needsConcernDetailweb_timeline_individual" role="tab"
                                    aria-controls="needsConcernDetailweb_timeline_individual" aria-selected="true">Individual</a></li>
                                 <li class="nav-item"><a class="nav-link" id="needsConcernDetailweb_timeline_team-tab" data-toggle="tab" href="#needsConcernDetailweb_timeline_team" role="tab" aria-controls="needsConcernDetailweb_timeline_team"
                                    aria-selected="false">Team</a></li>
                              </ul>
                              <div class="tab-content" id="needsConcernDetailweb_timelineTabContent">
                                 <div class="tab-pane fade show active px-4 py-3" id="needsConcernDetailweb_timeline_individual" role="tabpanel" aria-labelledby="needsConcernDetailweb_timeline_individual-tab">
                                    <div class="input-group py-2">
                                       <input id="needsConcernDetailweb_timeline_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search"
                                          style="border-right: none !important;">
                                       <div class="input-group-append">
                                          <button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
                                          <i class="fa fa-search f-12 brown-grey"></i>
                                          </button>
                                       </div>
                                    </div>
                                    <div class="needsConcernDetailWebTimeline-agent-list mb-2" style="overflow-x: hidden; overflow-y: auto;">
                                    </div>
                                 </div>
                                 <div class="tab-pane fade px-4 py-3" id="needsConcernDetailweb_timeline_team" role="tabpanel" aria-labelledby="needsConcernDetailweb_timeline_team-tab">
                                    <div class="input-group py-2">
                                       <input id="needsConcernDetailweb_timeline_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search"
                                          style="border-right: none !important;">
                                       <div class="input-group-append">
                                          <button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
                                          <i class="fa fa-search f-12 brown-grey"></i>
                                          </button>
                                       </div>
                                    </div>
                                    <div class="needsConcernDetailWebTimeline-team-list mb-2" style="overflow-x: hidden; overflow-y: auto;">
                                    </div>
                                 </div>
                              </div>
                              <div class="w-100 text-center">
                                 <button class="btn  rounded-0 theme_bg text-white f-14 font-weight-bold  mb-3 text-center px-3" style="min-width: 200px;" id="needsConcernDetailweb_timeline_team_submit">Submit</button>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="row cream_white m-0 theme_solid_border_bottom justify-content-between align-items-center pl-40 pr-40 pt-10 pb-10" id="needsConcernDetailwebTimeline_filter_selections">
                     <div class="col-md-10 d-flex p-0 filters-inside-selection">
                     </div>
                     <div class="col-md-2 text-right p-0">
                        <button type="submit" class="btn theme_color f-14 font-weight-bold p-0" id="needsConcernDetailWebTimeline_reset" data-type="needsConcernDetailWebTimeline" onclick="resetNeedConcernDetailsFilters(this)">Reset</button>
                     </div>
                  </div>
                  <span id="needsConcernDetailweb_timeline_section"></span>
               </div>
               <div class="tab-pane fade show " id="needsConcernDetailWebinar_adherence" role="tabpanel"
                  aria-labelledby="-tab">
                  <div class="card border-0  p-0 card-shadow-bottom" id="needsConcernDetailWebinar_adhere_card">
                  </div>
                  <div class="row m-0 theme_dashed_border_bottom  pt-20 pb-20" id="needsConcernDetailweb_adherence_filter">
                     <div class="col-md-1 p-0 "></div>
                     <div class="col-md-11 d-flex justify-content-center p-0">
                        <div class="input-group date custom-calendar mr-10 select_focus">
                           <input type="text" id="needsConcernDetailweb_adher_datepicker" class="form-control  custom-dateselect" value="12-02-2012" placeholder="Calendar">
                           <div class="input-group-addon" onclick="showneedsConcernDetailWebAdherCalendar()">
                              <img src="<%=baseURL%>/assets/image/calendar.svg" alt="calendar" class="pr-1 hw-24">
                           </div>
                        </div>
                        <div class="istar-dropdown-task select_focus mr-10 ">
                           <button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="needsConcernDetailwebAdherence_success" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           <span class="sr-only">Toggle Dropdown</span><span id="needsConcernDetailweb_adherence_drop">Filter by Success</span> <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
                              class=" float-right">
                           </button>
                           <div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="needsConcernDetailwebAdherence_success">
                              <button class="dropdown-item" type="button" onclick="needsConcernDetailweb_adherence_success(this)" data-id="Lead 1">Lead 1</button>
                              <button class="dropdown-item" type="button" onclick="needsConcernDetailweb_adherence_success(this)" data-id="Lead 2">Lead 2</button>
                           </div>
                        </div>
                        <div class="istar-dropdown-task dropdown select_focus">
                           <button class="istar-dropdown-arrow " data-display="static" id="needsConcernDetailwebAdherence_dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           <span class="sr-only">Toggle Dropdown</span> All Agents <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
                           </button>
                           <div class="dropdown-menu filter-menu dropdown-menu-right istar-dropdown-task-menu  dropdown-menu-lg-right position-absolute px-4" aria-labelledby="needsConcernDetailwebAdherence_dropdown"
                              style="width: 350px;">
                              <ul class="dropdown-nav nav nav-tabs nav-mytabs filtertabs pt-2 d-flex align-items-end" id="needsConcernDetailweb_adherenceTab" role="tablist">
                                 <li class="nav-item"><a class="nav-link active" id="needsConcernDetailweb_adherence_individual-tab" data-toggle="tab" href="#needsConcernDetailweb_adherence_individual" role="tab"
                                    aria-controls="needsConcernDetailweb_adherence_individual" aria-selected="true">Individual</a></li>
                                 <li class="nav-item"><a class="nav-link" id="needsConcernDetailweb_adherence_team-tab" data-toggle="tab" href="#needsConcernDetailweb_adherence_team" role="tab"
                                    aria-controls="needsConcernDetailweb_adherence_team" aria-selected="false">Team</a></li>
                              </ul>
                              <div class="tab-content" id="needsConcernDetailweb_adherenceTabContent">
                                 <div class="tab-pane fade show active px-4 py-3" id="needsConcernDetailweb_adherence_individual" role="tabpanel" aria-labelledby="needsConcernDetailweb_adherence_individual-tab">
                                    <div class="input-group py-2">
                                       <input id="needsConcernDetailweb_adherence_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search"
                                          style="border-right: none !important;">
                                       <div class="input-group-append">
                                          <button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
                                          <i class="fa fa-search f-12 brown-grey"></i>
                                          </button>
                                       </div>
                                    </div>
                                    <div class="needsConcernDetailWebAdher-agent-list mb-2" style="overflow-x: hidden; overflow-y: auto;"></div>
                                 </div>
                                 <div class="tab-pane fade px-4 py-3" id="needsConcernDetailweb_adherence_team" role="tabpanel" aria-labelledby="needsConcernDetailweb_adherence_team-tab">
                                    <div class="input-group py-2">
                                       <input id="needsConcernDetailweb_adherence_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search"
                                          style="border-right: none !important;">
                                       <div class="input-group-append">
                                          <button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
                                          <i class="fa fa-search f-12 brown-grey"></i>
                                          </button>
                                       </div>
                                    </div>
                                    <div class="needsConcernDetailWebAdher-team-list mb-2" style="overflow-x: hidden; overflow-y: auto;"></div>
                                 </div>
                              </div>
                              <div class="w-100 text-center">
                                 <button class="btn  rounded-0 theme_bg text-white f-14 font-weight-bold  mb-3 text-center px-3" style="min-width: 200px;" id="needsConcernDetailweb_adherence_team_submit">Submit</button>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="row cream_white m-0 theme_solid_border_bottom justify-content-between align-items-center pl-40 pr-40 pt-10 pb-10" id="needsConcernDetailweb_filter_selections" >
                     <div class="col-md-10 d-flex p-0 filters-inside-selection"></div>
                     <div class="col-md-2 text-right p-0">
                        <button type="submit" class="btn theme_color f-14 font-weight-bold p-0" data-type="needsConcernDetailWebAdherence" id="needsConcernDetailwebAdherence_reset" onclick="resetNeedConcernDetailsFilters(this)">Reset</button>
                     </div>
                  </div>
                  <span id="needsConcernDetailweb_adherence_section"></span>
               </div>
            </div>
         </div>
      </div>
   </div>
   <div class="col-md-1 p-0">
      <div class=" dropleft">
         <button type="button" class="btn btn-secondary dropdown-toggle"
            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
            style="display: none" id="needsConcernDetail_webinar_task_content">Dropleft</button>
         <div class="dropdown-menu needsConcernDetail_webinar_task_content m-0"
            aria-labelledby="needsConcernDetail_webinar_task_content">
            <!-- Dropdown menu links -->
         </div>
      </div>
      <ul class="list-group shadow d-flex flex-column h-100  taskpopup">
         <li class="notesdropdown list-group-item p-0 pt-10 pb-10">
            <div
               class=" d-flex flex-column justify-content-center align-items-center minh-80 "
               data-dropdown_id="needsConcernDetail_webinar_task_content">
               <img src="<%=baseURL%>assets/image/notes.svg" alt="notes" />
               <div class="f-12 pt-1 greyish-brown">Notes</div>
            </div>
         </li>
         <li class=" cuesdropdown list-group-item p-0 pt-10 pb-10">
            <div
               class=" d-flex flex-column justify-content-center align-items-center minh-80"
               data-dropdown_id="needsConcernDetail_webinar_task_content">
               <img src="<%=baseURL%>assets/image/cues.svg" alt="cues" />
               <div class="f-12 pt-1 greyish-brown">Cues</div>
            </div>
         </li>
         <li class="crmdropdown list-group-item p-0 pt-10 pb-10">
            <div
               class=" d-flex flex-column justify-content-center align-items-center minh-80"
               data-dropdown_id="needsConcernDetail_webinar_task_content">
               <img src="<%=baseURL%>assets/image/crm.svg" alt="crm" />
               <div class="f-12 pt-1 greyish-brown">CRM</div>
            </div>
         </li>
         <li class="chatdropdown list-group-item  p-0 pt-10 pb-10 ">
            <div
               class="  d-flex flex-column justify-content-center align-items-center minh-80"
               data-dropdown_id="needsConcernDetail_webinar_task_content">
               <img src="<%=baseURL%>assets/image/chat.svg"
                  alt="presentation" />
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
   $(function() {
   	$('[data-toggle="tooltip"]').tooltip()
   });
   $('.share-menu.dropdown-menu').click(function(e) {
   	e.stopPropagation();
   });
   
   $('#playbook_webinar_reply_submit').click(function(){
   	$('#playbook_webinar_reply').dropdown('hide');
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
     $('#playbook_webinar_comment').on('show.bs.dropdown', function () {
   	  $(".comment").addClass('active');
   	});
    $('#playbook_webinar_comment').on('hidden.bs.dropdown', function () {
     		$(".comment").removeClass('active');
   	});
    $('#playbook_webinar_reply').on('show.bs.dropdown', function () {
   	  $(".share").addClass('active');
   	});
    $('#playbook_webinar_reply').on('hidden.bs.dropdown', function () {
   	 $(".share").removeClass('active');
   	});
    
    
    $(document).ready(function(){
    	loadWebWhatsRight();
    	loadNeedsConcernDetailAgentFilterTab();
        loadNeedsConcernDetailAllTeamFilterTab();
    	$('#needsConcernDetailWebinarTab>li>a').on('shown.bs.tab', function(e) {

    		var target = $(e.target).html(); // activated tab
    		console.log(target);
    		
    		switch (target) {
    		case "Whats Right?":
    			loadWebWhatsRight();
    			break;
    		case "Whats Wrong?":
    			loadWebWhatsWrong();
    			break;
    		case "Timeline":
    			loadNeedConcernWebtaskTimeline();
    			break;
    		case "Adherence":
    			loadNeedConcernWebtaskAdherence();
    			break;
    		default:
    			/*Ongoing*/
    			loadWebWhatsRight();
    		}
    	});	
    });
    
    
    function  loadWebWhatsRight(){
    	$('#needsConcernDetailWebinar_adhere_card').empty();
    	$('#needsConcernDetailweb_adherence_section').empty();
    	$('#needsConcernDetailweb_adherence_section').empty();
    	$('#needsConcernDetailWebinarwhatswrong').empty();
    	$('#needsConcernDetailWebinar_timeline_card').empty();
    	$('#needsConcernDetailweb_timeline_section').empty();
    	
    	$.get(contextPath+"report/customer/needs_concern/needs_concern_detail/tab_content/websub_tab_content/web_needsconcern_right_report.jsp", function(data) {
    		$('#needsConcernDetailWebinarwhatsright').html(data);
    	});
    }

    function  loadWebWhatsWrong(){
    	$('#needsConcernDetailWebinar_adhere_card').empty();
    	$('#needsConcernDetailweb_adherence_section').empty();
    	$('#needsConcernDetailWebinarwhatsright').empty();
    	$('#needsConcernDetailweb_adherence_section').empty();
    	$('#needsConcernDetailWebinar_timeline_card').empty();
    	$('#needsConcernDetailweb_timeline_section').empty();
    	$.get(contextPath+"report/customer/needs_concern/needs_concern_detail/tab_content/websub_tab_content/web_needsconcern_wrong_report.jsp", function(data) {
    		$('#needsConcernDetailWebinarwhatswrong').html(data);
    	});
    }

    /*----------------------------------------start of load needsConcernDetail webinar task sub-tab "Timeline" content--------------------------------*/
    function needsConcernDetailweb_timeline_success(elem){
    	var filter = $(elem).text();
    	var filter_id = $(elem).data('id');
    	console.log(filter);
    	$('#needsConcernDetailwebTimeline_success').attr('data-id',filter_id);
    	$('#needsConcernDetailwebTimeline_success').attr('data-name',filter);
    	loadNeedConcernWebtaskTimeline();
    };
    function needsConcernDetailweb_timeline_persona(elem){
    	var filter = $(elem).text();
    	var filter_id = $(elem).data('id');
    	console.log(filter);
    	$('#needsConcernDetailwebTimeline_persona').attr('data-id',filter_id);
    	$('#needsConcernDetailwebTimeline_persona').attr('data-name',filter);
    	loadNeedConcernWebtaskTimeline();
    };
    $('#needsConcernDetailwebTimeline_datepicker').change(function(){
    	$('#needsConcernDetailwebTimeline_datepicker').attr('data-id',this.value)
    	$('#needsConcernDetailwebTimeline_datepicker').attr('data-name',this.value)
    	loadNeedConcernWebtaskTimeline();
    })
    function  loadNeedConcernWebtaskTimeline(){
    	$('#needsConcernDetailWebinar_adhere_card').empty();
    	$('#needsConcernDetailweb_adherence_section').empty();
    	$('#needsConcernDetailWebinarwhatswrong').empty();
    	$('#needsConcernDetailWebinarwhatsright').empty();
    	$('#needsConcernDetailwebTimeline_filter_selections').find('.filters-inside-selection').empty();
    	$('#needsConcernDetailwebTimeline_filter_selections').hide();
    	var filterObj={};
    	/*Selection of date filter*/
    	var time_value = $('#needsConcernDetailwebTimeline_datepicker').attr('data-name');
    	var time_value_id = $('#needsConcernDetailwebTimeline_datepicker').attr('data-id');
    	filterObj.time={};
    	addFilterSelections("needsConcernDetailwebTimeline","timelinedate",time_value,time_value_id,filterObj.time)
    	/*Selection of success filter*/
    	var success_value = $('#needsConcernDetailwebTimeline_success').attr('data-name');
    	var success_id = $('#needsConcernDetailwebTimeline_success').attr('data-id');
    	filterObj.deal={};
    	addFilterSelections("needsConcernDetailwebTimeline","success",success_value,success_id,filterObj.deal)
    	
    	/*Selection of persona filter*/
    	var persona_value = $('#needsConcernDetailwebTimeline_persona').attr('data-name');
    	var persona_id = $('#needsConcernDetailwebTimeline_persona').attr('data-id');
    	filterObj.deal={};
    	addFilterSelections("needsConcernDetailwebTimeline","persona",persona_value,persona_id,filterObj.deal)
    	
    	/*Selection of All Agents->Individual filter*/
    	if( $('#needsConcernDetailwebTimeline_dropdown').attr('data-agents')!=null){
    		var agents = JSON.parse($('#needsConcernDetailwebTimeline_dropdown').attr('data-agents'));
    		filterObj.agents=[]
    		if(agents!=null){
    			for(var i=0;i<agents.length;i++){
    				var agent_id=agents[i].id;
    				var agent_name=agents[i].name;
    				var agent={}
    				addFilterSelections("needsConcernDetailwebTimeline","Timeline_Agents",agent_name,agent_id,agent)
    				filterObj.agents.push(agent)
    			}
    		}
    	}
    	
    	/*Selection of All Agents->Team filter*/
    	if( $('#needsConcernDetailwebTimeline_dropdown').attr('data-teams')!=null){
    		var teams = JSON.parse($('#needsConcernDetailwebTimeline_dropdown').attr('data-teams'));
    		filterObj.teams=[]
    		if(teams!=null){
    			for(var i=0;i<teams.length;i++){
    				var team_id=teams[i].id;
    				var team_name=teams[i].name;
    				var team={}
    				addFilterSelections("needsConcernDetailwebTimeline","Timeline_Teams",team_name,team_id,team)
    				filterObj.teams.push(team)
    			}
    		}
    	}
    	
    	$.get(contextPath+"report/customer/needs_concern/needs_concern_detail/tab_content/websub_tab_content/web_needsconcern_timeline_card.jsp", function(data) {
    		$('#needsConcernDetailWebinar_timeline_card').html(data);
    	});
    	$.get(contextPath+"report/customer/needs_concern/needs_concern_detail/tab_content/websub_tab_content/web_needsconcern_timeline_content.jsp", function(data) {
    		$('#needsConcernDetailweb_timeline_section').html(data);
    		stopFilterPropagation();
    	
    	});
    	
    }

    $('#needsConcernDetailweb_timeline_team_submit').click(function(e) {
    	var agent_array=[];
    	var team_array=[];
    	
    	$('.needsConcernDetailWebTimelineagentcheckbox').each(function(){
    		if($(this).prop('checked')===true){
    			agent_array.push($(this).data('user'));
    		}
    	});
    	$('.needsConcernDetailWebTimelineteamcheckbox').each(function(){
    		if($(this).prop('checked')===true){
    			team_array.push($(this).data('team'));
    		}
    	});
    	
    	if(agent_array.length==0 && team_array.length==0){
    		alert("Please select atleast one");
    	}else{
    		$('#needsConcernDetailwebTimeline_dropdown').dropdown('hide');
    	}
    	$('#needsConcernDetailwebTimeline_dropdown').attr('data-agents',JSON.stringify(agent_array));
    	$('#needsConcernDetailwebTimeline_dropdown').attr('data-teams',JSON.stringify(team_array));
    	
    	$('.needsConcernDetailWebTimelineagentcheckbox').each(function(){
    		if($(this).prop('checked')===true){
    			$(this).prop("checked", false);
    		}
    	});
    	$('.needsConcernDetailWebTimelineteamcheckbox').each(function(){
    		if($(this).prop('checked')===true){
    			$(this).prop("checked", false);
    		}
    	});
    	loadNeedConcernWebtaskTimeline()
    });
 
    /*----------------------------------------end of load needsConcernDetail webinar task sub-tab "Timeline" content--------------------------------*/
    
    /*----------------------------------------start of load needsConcernDetail webinar task sub-tab "Adherence" content--------------------------------*/

$('#needsConcernDetailweb_adher_datepicker').change(function(){
	$('#needsConcernDetailweb_adher_datepicker').attr('data-id',this.value)
	$('#needsConcernDetailweb_adher_datepicker').attr('data-name',this.value)
	loadNeedConcernWebtaskAdherence();
})
function needsConcernDetailweb_adherence_success(elem){
	var filter = $(elem).text();
	var filter_id = $(elem).data('id');
	console.log(filter);
	$('#needsConcernDetailwebAdherence_success').attr('data-id',filter_id);
	$('#needsConcernDetailwebAdherence_success').attr('data-name',filter);
	loadNeedConcernWebtaskAdherence();
};
function  loadNeedConcernWebtaskAdherence(){
	$('#needsConcernDetailWebinarwhatsright').empty();
	$('#needsConcernDetailWebinar_timeline_card').empty();
	$('#needsConcernDetailweb_timeline_section').empty();
	$('#needsConcernDetailWebinarwhatswrong').empty();
	$('#needsConcernDetailweb_filter_selections').find('.filters-inside-selection').empty();
	$('#needsConcernDetailweb_filter_selections').hide();
	
	var filterObj={};
	
	/*Selection of date filter*/
	var time_value = $('#needsConcernDetailweb_adher_datepicker').attr('data-name');
	var time_value_id = $('#needsConcernDetailweb_adher_datepicker').attr('data-id');
	filterObj.time={};
	addFilterSelections("needsConcernDetailweb","adherdate",time_value,time_value_id,filterObj.time)
	/*Selection of success filter*/
	var success_value = $('#needsConcernDetailwebAdherence_success').attr('data-name');
	var success_id = $('#needsConcernDetailwebAdherence_success').attr('data-id');
	filterObj.deal={};
	addFilterSelections("needsConcernDetailweb","Adherence_success",success_value,success_id,filterObj.deal)
	//Selection of All Agents->Individual filter
	if( $('#needsConcernDetailwebAdherence_dropdown').attr('data-agents')!=null){
		var agents = JSON.parse($('#needsConcernDetailwebAdherence_dropdown').attr('data-agents'));
		filterObj.agents=[]
		if(agents!=null){
			for(var i=0;i<agents.length;i++){
				var agent_id=agents[i].id;
				var agent_name=agents[i].name;
				var agent={}
				addFilterSelections("needsConcernDetailweb","Adherence_Agents",agent_name,agent_id,agent)
				filterObj.agents.push(agent)
			}
		}
	}
	
/*	Selection of All Agents->Team filter*/	
	if( $('#needsConcernDetailwebAdherence_dropdown').attr('data-teams')!=null){
		var teams = JSON.parse($('#needsConcernDetailwebAdherence_dropdown').attr('data-teams'));
		filterObj.teams=[]
		if(teams!=null){
			for(var i=0;i<teams.length;i++){
				var team_id=teams[i].id;
				var team_name=teams[i].name;
				var team={}
				addFilterSelections("needsConcernDetailweb","Adherence_Teams",team_name,team_id,team)
				filterObj.teams.push(team)
			}
		}
	}
	
	$.get(contextPath+"report/customer/needs_concern/needs_concern_detail/tab_content/websub_tab_content/web_needsconcern_adherence_card.jsp", function(data) {
		$('#needsConcernDetailWebinar_adhere_card').html(data);
	});
	$.get(contextPath+"report/customer/needs_concern/needs_concern_detail/tab_content/websub_tab_content/web_needsconcern_adherence_content.jsp", function(data) {
		$('#needsConcernDetailweb_adherence_section').html(data);
		stopFilterPropagation();
	});
	
	
}

$('#needsConcernDetailweb_adherence_team_submit').click(function(e) {
	var agent_array=[];
	var team_array=[];
	
	$('.needsConcernDetailWebAdheragentcheckbox').each(function(){
		if($(this).prop('checked')===true){
			agent_array.push($(this).data('user'));
		}
	});
	$('.needsConcernDetailWebAdherteamcheckbox').each(function(){
		if($(this).prop('checked')===true){
			team_array.push($(this).data('team'));
		}
	});
	
	if(agent_array.length==0 && team_array.length==0){
		alert("Please select atleast one");
	}else{
		$('#needsConcernDetailwebAdherence_dropdown').dropdown('hide');
	}
	$('#needsConcernDetailwebAdherence_dropdown').attr('data-agents',JSON.stringify(agent_array));
	$('#needsConcernDetailwebAdherence_dropdown').attr('data-teams',JSON.stringify(team_array));
	
	$('.needsConcernDetailWebAdheragentcheckbox').each(function(){
		if($(this).prop('checked')===true){
			$(this).prop("checked", false);
		}
	});
	$('.needsConcernDetailWebAdherteamcheckbox').each(function(){
		if($(this).prop('checked')===true){
			$(this).prop("checked", false);
		}
	});
	loadNeedConcernWebtaskAdherence()
});

/*----------------------------------------end of load needsConcernDetail webinar task sub-tab "Adherence" content--------------------------------*/

    function showneedsConcernDetailWebTimelineCalendar(){
    	   $('#needsConcernDetailwebTimeline_datepicker').datepicker('show')
    }
    $('#needsConcernDetailwebTimeline_datepicker').datepicker({
    	   autoclose : true,
    	   })
     
    function showneedsConcernDetailWebAdherCalendar(){
        	   $('#needsConcernDetailweb_adher_datepicker').datepicker('show')
        }
    $('#needsConcernDetailweb_adher_datepicker').datepicker({
 	   autoclose : true,
 	   })
  
</script>