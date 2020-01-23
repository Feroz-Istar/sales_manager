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
                                 id="completed_call_comment_submit">Submit</button>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class=" dropdown">
                  <button class="btn  p-0 dropdown-toggle" id="completed_call_reply"
                     data-toggle="dropdown" aria-haspopup="true" aria-expanded="true"
                     data-display="static">
                     <div style="background-image: url(<%=baseURL%>assets/image/reply.svg); height: 24px; width: 24px;" class="mr-15 share"></div>
                  </button>
                  <div
                     class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu p-20  p-0 share-menu"
                     aria-labelledby="completed_call_reply" style="right: -18px;">
                     <div class="input-group position-relative pb-20">
                        <img src="<%=baseURL%>assets/image/search.svg"
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
                        id="completed_call_reply_submit" onclick="openShareTaskModal()">Submit</button>
                  </div>
               </div>
               <div
                  class="f-14 font-weight-bold dark_theme_color cursor-pointer align-self-center"
                  onclick="window.location.href = 'task_lead_detail/task_lead_detail.jsp'">
                  View More <i class="fas fa-chevron-circle-right ml-1 "></i>
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
               id="completedCallTab" role="tablist">
               <li class="nav-item"><a class="nav-item nav-link active"
                  id="completedcall_whatsright-tab" data-toggle="tab" href="#completedcall_whatsright"
                  role="tab" aria-controls="completedcall_whatsright" aria-selected="true">Whats Right?</a></li>
               <li class="nav-item"><a class="nav-item nav-link"
                  id="completedcall_whatswrong-tab" data-toggle="tab" href="#completedcall_whatswrong"
                  role="tab" aria-controls="completedcall_whatswrong" aria-selected="false">Whats Wrong?</a></li>
               <li class="nav-item"><a class="nav-item nav-link"
                  id="completedcall_timeline-tab" data-toggle="tab" href="#completedcall_timeline"
                  role="tab" aria-controls="#completedcall_timeline" aria-selected="false">Timeline</a></li>
               <li class="nav-item"><a class="nav-item nav-link"
                  id="completedcall_adherenc-tab" data-toggle="tab" href="#completedcall_adherence"
                  role="tab" aria-controls="completedcall_adherenc" aria-selected="false">Adherence</a></li>
            </ul>
            <div class="tab-content mytab-content p-0 pt-20"
               id="completedCallTabContent">
               <div class="tab-pane fade show active" id="completedcall_whatsright" role="tabpanel"
                  aria-labelledby="completedcall_whatsright-tab">
               </div>
               <div class="tab-pane fade " id="completedcall_whatswrong"
                  role="tabpanel" aria-labelledby="completedcall_whatswrong-tab">
               </div>
               <div class="tab-pane fade show " id="completedcall_timeline" role="tabpanel" aria-labelledby="completedcall_timeline-tab">
               </div>
               <div class="tab-pane fade show " id="completedcall_adherence" role="tabpanel" aria-labelledby="completedcall_adherence-tab">
                  <div class="card border-0 card-shadow-bottom" id="adherence_sub_tab_card">
                  </div>
                  <div class="row m-0 theme_dashed_border_bottom  pt-20 pb-20" id="completedcall_adherence_filter">
                     <div class="col-md-1 p-0 "></div>
                     <div class="col-md-11 d-flex justify-content-center p-0">
                        <div class="input-group date custom-calendar mr-10 select_focus">
                           <input type="text" id="completedcall_adher_datepicker" class="form-control  custom-dateselect" value="12-02-2012" placeholder="Calendar">
                           <div class="input-group-addon" onclick="showCompletedCallAdherCalendar()">
                              <img src="<%=baseURL%>/assets/image/calendar.svg" alt="calendar" class="pr-1 hw-24">
                           </div>
                        </div>
                        <div class="istar-dropdown-task select_focus mr-10 select_focus">
                           <button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="completedcallAdherence_success" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           <span class="sr-only">Toggle Dropdown</span><span id="completedcall_adherence_drop">Filter by Success</span> <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
                              class=" float-right">
                           </button>
                           <div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="completedcall_adherence_success">
                              <button class="dropdown-item" type="button" onclick="completedcall_adherence_success(this)" data-id="Lead 1">Lead 1</button>
                              <button class="dropdown-item" type="button" onclick="completedcall_adherence_success(this)" data-id="Lead 2">Lead 2</button>
                           </div>
                        </div>
                        <div class="istar-dropdown-task dropdown select_focus" id="">
                           <button class="istar-dropdown-arrow " data-display="static" id="completedcall_adherence_dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           <span class="sr-only">Toggle Dropdown</span> All Agents <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
                           </button>
                           <div class="dropdown-menu filter-menu dropdown-menu-right istar-dropdown-task-menu  dropdown-menu-lg-right position-absolute px-4" aria-labelledby="completedcall_adherence_dropdown"
                              style="width: 350px;">
                              <ul class="dropdown-nav nav nav-tabs nav-mytabs filtertabs pt-2 d-flex align-items-end" id="completedcall_adherenceTab" role="tablist">
                                 <li class="nav-item"><a class="nav-link active" id="completedcall_adherence_individual-tab" data-toggle="tab" href="#completedcall_adherence_individual" role="tab"
                                    aria-controls="completedcall_adherence_individual" aria-selected="true">Individual</a></li>
                                 <li class="nav-item"><a class="nav-link" id="completedcall_adherence_team-tab" data-toggle="tab" href="#completedcall_adherence_team" role="tab"
                                    aria-controls="completedcall_adherence_team" aria-selected="false">Team</a></li>
                              </ul>
                              <div class="tab-content" id="completedcall_adherenceTabContent">
                                 <div class="tab-pane fade show active px-4 py-3" id="completedcall_adherence_individual" role="tabpanel" aria-labelledby="completedcall_adherence_individual-tab">
                                    <div class="input-group py-2">
                                       <input id="completedcall_adherence_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search"
                                          style="border-right: none !important;">
                                       <div class="input-group-append">
                                          <button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
                                          <i class="fa fa-search f-12 brown-grey"></i>
                                          </button>
                                       </div>
                                    </div>
                                    <div class="agent-team-list mb-2" style="overflow-x: hidden; overflow-y: auto;">
                                       <%
                                          for (int i = 0; i < 20; i++) {
                                          %>
                                       <div class="d-flex align-items-center pt-3">
                                          <input class="istar-checkbox completedcall_adherenceagentcheckbox" data-id="<%=i%>" id="completedcall_adherence_associate-checkbox<%=i%>" type="checkbox"> <label
                                             class="istar-checkbox-style" for="completedcall_adherence_associate-checkbox<%=i%>"></label> <img alt="Lead Image" title="Lead Name" src="<%=baseURL%>/assets/image/11.png"
                                             class="rounded-circle ml-3 mr-2 hw-40">
                                          <div>
                                             <div class="f-14 font-weight-bold greyish-brown text-truncate" title="Robert Garcia">Robert Garcia</div>
                                             <div class="f-12  brownish-grey text-truncate" title="team">Team -02</div>
                                          </div>
                                       </div>
                                       <%
                                          }
                                          %>
                                    </div>
                                 </div>
                                 <div class="tab-pane fade px-4 py-3" id="completedcall_adherence_team" role="tabpanel" aria-labelledby="completedcall_adherence_team-tab">
                                    <div class="input-group py-2">
                                       <input id="completedcall_adherence_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search"
                                          style="border-right: none !important;">
                                       <div class="input-group-append">
                                          <button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
                                          <i class="fa fa-search f-12 brown-grey"></i>
                                          </button>
                                       </div>
                                    </div>
                                    <div class="agent-team-list mb-2" style="overflow-x: hidden; overflow-y: auto;">
                                       <%
                                          for (int j = 0; j < 20; j++) {
                                          %>
                                       <div class="d-flex align-items-center pt-3">
                                          <input class="istar-checkbox completedcall_adherenceteamcheckbox" data-id="<%=j%>" id="completedcall_adherence_team-checkbox<%=j%>" type="checkbox"> <label
                                             class="istar-checkbox-style" for="completedcall_adherence_team-checkbox<%=j%>"></label>
                                          <div class="f-12 ml-2 brownish-grey">
                                             Team -0<%=j%>
                                          </div>
                                       </div>
                                       <%
                                          }
                                          %>
                                    </div>
                                 </div>
                              </div>
                              <div class="w-100 text-center">
                                 <button class="btn  rounded-0 theme_bg text-white f-14 font-weight-bold  mb-3 text-center px-3" style="min-width: 200px;" id="completedcall_adherence_team_submit">Submit</button>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="row cream_white m-0 theme_solid_border_bottom justify-content-between align-items-center pl-40 pr-40 pt-10 pb-10" id="completedcall_filter_selections">
                     <div class="col-md-10 d-flex p-0 filters-inside-selection"></div>
                     <div class="col-md-2 text-right p-0">
                        <button type="submit" class="btn theme_color f-14 font-weight-bold p-0" data-type="completedCallAdherence" id="completedCallAdherence_reset" onclick="resetFilters(this)">Reset</button>
                     </div>
                  </div>
                  <span id="completedcall_adherence_section"></span>
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
         <li class=" cuesdropdown list-group-item p-0  pt-10 pb-10">
            <div
               class=" d-flex flex-column justify-content-center align-items-center minh-80"
               data-dropdown_id="completed_call_task_content">
               <img src="<%=baseURL%>assets/image/cues.svg" alt="cues" />
               <div class="f-12 pt-1 greyish-brown">Cues</div>
            </div>
         </li>
         <li class="crmdropdown list-group-item p-0  pt-10 pb-10">
            <div
               class=" d-flex flex-column justify-content-center align-items-center minh-80"
               data-dropdown_id="completed_call_task_content">
               <img src="<%=baseURL%>assets/image/crm.svg" alt="crm" />
               <div class="f-12 pt-1 greyish-brown">CRM</div>
            </div>
         </li>
         <li class="chatdropdown list-group-item  p-0  pt-10 pb-10 ">
            <div
               class="  d-flex flex-column justify-content-center align-items-center minh-80"
               data-dropdown_id="completed_call_task_content">
               <img src="<%=baseURL%>assets/image/chat.svg"
                  alt="presentation" />
               <div class="f-12 pt-1 greyish-brown">Chat</div>
            </div>
         </li>
         <li class="chatdropdown list-group-item  p-0 pt-10 pb-10 ">
            <div class="  d-flex flex-column justify-content-center align-items-center minh-80" >
               <img src="<%=baseURL%>/assets/image/document.svg" alt="">
               <div class="f-12 pt-1 greyish-brown">Document</div>
            </div>
         </li>
         <li
            class=" flex-grow list-group-item d-flex flex-column justify-content-center align-items-center minh-100"
            style="height: calc(100% - 80px);"></li>
      </ul>
   </div>
</div>
<script src="<%=baseURL%>assets/js/taskdetail/completed/completed_call.js"></script>
<script></script>