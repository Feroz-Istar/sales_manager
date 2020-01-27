<%
   String url = request.getRequestURL().toString();
   String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
   		+ request.getContextPath() + "/";
   %>
<div class="row h-100 m-0">
   <div class="col-md-11 p-0">
      <div class="row justify-content-between m-0 pl-45 pr-45 pt-15 pb-10">
         <div class="col-md-6 p-0 ">
            <div class="f-18 font-weight-bold greyish-brown text-truncate d-inline" data-toggle="tooltip" data-placement="bottom" title=""
               data-original-title="Webinar Task">Webinar Task</div>
         </div>
         <div class="col-6 p-0">
            <div class="d-flex justify-content-end">
               <button class="btn p-0">
                  <div style="background-image: url(<%=baseURL%>assets/image/heart.svg); height: 24px; width: 24px;" class="mr-15 fav"></div>
               </button>
               <div class=" dropdown ">
                  <button class="btn p-0 dropdown-toggle"
                     id="lead_webinar_comment" data-toggle="dropdown"
                     aria-haspopup="true" aria-expanded="true" data-display="static">
                     <div style="background-image: url(<%=baseURL%>assets/image/message.svg); height: 24px; width: 24px;" class="mr-15 comment"></div>
                  </button>
                  <div
                     class="dropdown-menu dropdown-menu-right   istar-dropdown-task-menu p-0"
                     aria-labelledby="lead_webinar_comment" style="right: -67px;">
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
                                 id="lead_webinar_comment_submit">Submit</button>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class=" dropdown">
                  <button class="btn  p-0 dropdown-toggle" id="lead_webinar_reply"
                     data-toggle="dropdown" aria-haspopup="true" aria-expanded="true"
                     data-display="static">
                     <div style="background-image: url(<%=baseURL%>assets/image/reply.svg); height: 24px; width: 24px;" class="mr-15 share"></div>
                  </button>
                  <div
                     class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu p-20  p-0 share-menu"
                     aria-labelledby="lead_webinar_reply" style="right: -18px;">
                     <div class="input-group position-relative pb-20">
                        <img src="<%=baseURL%>assets/image/search.svg"
                           alt="edit" class=" searchBox"> <input
                           id="lead_webinar_reply_search"
                           class="form-control  custom-taskborder brown-grey  f-14 search_height minw-237"
                           type="search" placeholder="Search" style="padding-right: 30px">
                     </div>
                     <div style="height: 370px; overflow-x: hidden; overflow-y: auto;">
                        <%
                           for (int i = 0; i < 30; i++) {
                           %>
                        <div class="d-flex align-items-center pb-10 ">
                           <input class="istar-checkbox agentcheckbox " data-id="0"
                              id="lead_webinar_reply-checkbox<%=i%>" type="checkbox">
                           <label class="istar-checkbox-style"
                              for="lead_webinar_reply-checkbox<%=i%>"></label> <img
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
                        id="lead_webinar_reply_submit"  data-toggle="modal" data-target="#shareTaskModal">Submit</button>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <div
         class="row  m-0 ml-45 mr-45  pb-20  theme_dotted_border_bottom shadow-bottom  ">
         <div class="col-md-3 p-0">
            <p class="brownish-grey f-14 mb-0 border-right-dashed-separation">Initiated At</p>
            <p class="black f-16 fw-500 mb-0 text-truncate"
               data-toggle="tooltip" data-placement="bottom"
               title="Globex Corporation">11:00 AM</p>
         </div>
         <div class="col-md-3 p-0 pl-15" >
            <p class="brownish-grey f-14 mb-0 border-right-dashed-separation">Pipeline Detail</p>
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
         <!-- <div class="col-md-3 d-flex justify-content-end p-0">
            <button type="button" class="btn small_outline_button rounded-0  f-12 font-weight-bold  " data-toggle="modal" data-target="#leaveTaskModal">LEAVE TASK</button>
            </div> -->
      </div>
      <div class="row m-0 pl-45 pr-45 pt-20 ">
         <div class="col p-0">
            <ul
               class="nav nav-tabs nav-mytabs p-0 d-flex align-items-end"
               id="leadWebinarTab" role="tablist">
               <li class="nav-item"><a class="nav-item nav-link active"
                  id="leadwebinarwhatsright-tab" data-toggle="tab" href="#leadwebinarwhatsright"
                  role="tab" aria-controls="leadwebinarwhatsright" aria-selected="true">Whats Right?</a></li>
               <li class="nav-item"><a class="nav-item nav-link"
                  id="leadwebinarwhatswrong-tab" data-toggle="tab" href="#leadwebinarwhatswrong"
                  role="tab" aria-controls="leadwebinarwhatswrong" aria-selected="false">Whats Wrong?</a></li>
               <li class="nav-item"><a class="nav-item nav-link"
                  id="leadwebinartimeline-tab" data-toggle="tab" href="#leadwebinartimeline"
                  role="tab" aria-controls="#leadwebinartimeline" aria-selected="false">Timeline</a></li>
               <li class="nav-item"><a class="nav-item nav-link"
                  id="leadwebinar_adherence-tab" data-toggle="tab" href="#leadwebinar_adherence"
                  role="tab" aria-controls="leadwebinar_adherenc" aria-selected="false">Adherence</a></li>
            </ul>
            <div class="tab-content p-0 pt-20 mytab-content "
               id="leadWebinarTabContent">
               <div class="tab-pane fade active show 	" id="leadwebinarwhatsright" role="tabpanel"
                  aria-labelledby="leadwebinarwhatsright-tab">
                  
               </div>
               <div class="tab-pane fade " id="leadwebinarwhatswrong"
                  role="tabpanel" aria-labelledby="leadwebinarwhatswrong-tab">
                  
               </div>
               <div class="tab-pane fade " id="leadwebinartimeline" role="tabpanel"
                  aria-labelledby="leadwebinartimeline-tab">
                   <div class="card border-0 p-0 card-shadow-bottom" id="leadwebinar_timeline_card">
                   
                  </div>
                  <div class="row m-0 theme_dashed_border_bottom   pt-20 pb-20" id="">
                     <div class="col-md-1 p-0 "></div>
                     <div class="col-md-11 d-flex  p-0">
                        <div class="input-group date custom-calendar mr-10">
                           <input type="text" id="leadwebTimeline_datepicker" class="form-control  custom-dateselect" value="12-02-2012" placeholder="Calendar">
                           <div class="input-group-addon" onclick="showLeadWebTimelineCalendar()">
                              <img src="<%=baseURL%>/assets/image/calendar.svg" alt="calendar" class="pr-1 hw-24">
                           </div>
                        </div>
                        <div class="istar-dropdown-task select_focus mr-10">
                           <button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="leadwebTimeline_persona" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           <span class="sr-only">Toggle Dropdown</span> <span id="leadwebinar_timeline_drop">All Persona</span> <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
                           </button>
                           <div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="leadwebTimeline_persona" id="">
                              <button class="dropdown-item" type="button" onclick="leadweb_timeline_persona(this)" data-id="Persona 1">Persona 1</button>
                              <button class="dropdown-item" type="button" onclick="leadweb_timeline_persona(this)" data-id="Persona 2">Persona 2</button>
                           </div>
                        </div>
                        <div class="istar-dropdown-task select_focus mr-10">
                           <button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="leadwebTimeline_success" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           <span class="sr-only">Toggle Dropdown</span><span id="leadwebinar_timeline_success_drop">Filter by Success</span> <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
                              class=" float-right">
                           </button>
                           <div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="leadwebTimeline_success">
                              <button class="dropdown-item" type="button" onclick="leadweb_timeline_success(this)" data-id="Lead 1">Lead 1</button>
                              <button class="dropdown-item" type="button" onclick="leadweb_timeline_success(this)" data-id="Lead 2">Lead 2</button>
                           </div>
                        </div>
                        <div class="istar-dropdown-task dropdown select_focus" id="">
                           <button class="istar-dropdown-arrow " data-display="static" id="leadwebTimeline_dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           <span class="sr-only">Toggle Dropdown</span> All Agents <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
                           </button>
                           <div class="dropdown-menu filter-menu dropdown-menu-right istar-dropdown-task-menu  dropdown-menu-lg-right position-absolute px-4" aria-labelledby="leadwebTimeline_dropdown"
                              style="width: 350px;">
                              <ul class="dropdown-nav nav nav-tabs nav-mytabs filtertabs pt-2 d-flex align-items-end" id="leadwebinar_timelineTab" role="tablist">
                                 <li class="nav-item"><a class="nav-link active" id="leadwebinar_timeline_individual-tab" data-toggle="tab" href="#leadwebinar_timeline_individual" role="tab"
                                    aria-controls="leadwebinar_timeline_individual" aria-selected="true">Individual</a></li>
                                 <li class="nav-item"><a class="nav-link" id="leadwebinar_timeline_team-tab" data-toggle="tab" href="#leadwebinar_timeline_team" role="tab" aria-controls="leadwebinar_timeline_team"
                                    aria-selected="false">Team</a></li>
                              </ul>
                              <div class="tab-content" id="leadwebinar_timelineTab">
                                 <div class="tab-pane fade show active px-4 py-3" id="leadwebinar_timeline_individual" role="tabpanel" aria-labelledby="leadwebinar_timeline_individual-tab">
                                    <div class="input-group py-2">
                                       <input id="leadwebinar_timeline_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search"
                                          style="border-right: none !important;">
                                       <div class="input-group-append">
                                          <button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
                                          <i class="fa fa-search f-12 brown-grey"></i>
                                          </button>
                                       </div>
                                    </div>
                                    <div class="leadWebTimeline-agent-list mb-2" style="overflow-x: hidden; overflow-y: auto;">
                                      
                                    </div>
                                 </div>
                                 <div class="tab-pane fade px-4 py-3" id="leadwebinar_timeline_team" role="tabpanel" aria-labelledby="leadwebinar_timeline_team-tab">
                                    <div class="input-group py-2">
                                       <input id="leadwebinar_timeline_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search"
                                          style="border-right: none !important;">
                                       <div class="input-group-append">
                                          <button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
                                          <i class="fa fa-search f-12 brown-grey"></i>
                                          </button>
                                       </div>
                                    </div>
                                    <div class="leadWebTimeline-team-list mb-2" style="overflow-x: hidden; overflow-y: auto;">
                                       
                                    </div>
                                 </div>
                              </div>
                              <div class="w-100 text-center">
                                 <button class="btn  rounded-0 theme_bg text-white f-14 font-weight-bold  mb-3 text-center px-3" style="min-width: 200px;" id="leadweb_timeline_team_submit">Submit</button>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="row cream_white m-0 theme_solid_border_bottom justify-content-between align-items-center pl-40 pr-40 pt-10 pb-10" id="leadwebTimeline_filter_selections" style="">
							<div class="col-md-10 d-flex p-0 filters-inside-selection"></div>
							<div class="col-md-2 text-right p-0">
								<button type="submit" class="btn theme_color f-14 font-weight-bold p-0" id="completedWebTimeline_reset" data-type="completedWebTimeline" onclick="resetFilters(this)">Reset</button>
							</div>
						</div>
                  <span id="leadwebinartimeline_section"></span>
               </div>
               <div class="tab-pane fade " id="leadwebinar_adherence" role="tabpanel"
                  aria-labelledby="-tab">
                 <div class="card border-0 card-shadow-bottom" id="web_lead_adhere_card">
                 </div>
                 <div class="row m-0 theme_dashed_border_bottom  pt-20 pb-20" id="leadwebinar_adherence_filter">
                     <div class="col-md-1 p-0 "> </div>
                     <div class="col-md-11 d-flex justify-content-center p-0">
                        <div class="input-group date custom-calendar mr-10">
                           <input type="text" id="leadweb_adher_datepicker" class="form-control  custom-dateselect"
                              value="12-02-2012" placeholder="Calendar">
                           <div class="input-group-addon" onclick="showLeadWebAdherCalendar()">
                              <img src ="<%=baseURL%>/assets/image/calendar.svg"  alt="calendar" class="pr-1 hw-24">
                           </div>
                        </div>
                        <div class="istar-dropdown-task select_focus mr-10">
                           <button class="istar-dropdown-arrow dropdown-toggle" data-display="static"
                              id="leadwebAdherence_success" data-toggle="dropdown" aria-haspopup="true"
                              aria-expanded="false">
                           <span class="sr-only">Toggle Dropdown</span ><span id="leadwebinar_adherence_drop">Filter by Success</span>
                           <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
                              class=" float-right">
                           </button>
                           <div
                              class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="leadwebAdherence_success">
                              <button class="dropdown-item" type="button" onclick="leadweb_adherence_success(this)" data-id="leadwebinar 1">leadwebinar 1</button>
                              <button class="dropdown-item" type="button" onclick="leadweb_adherence_success(this)" data-id="leadwebinar 2">leadwebinar 2</button>
                           </div>
                        </div>
                        <div class="istar-dropdown-task dropdown select_focus" id="">
                           <button class="istar-dropdown-arrow " data-display="static"
                              id="leadwebAdherence_dropdown" data-toggle="dropdown" aria-haspopup="true"
                              aria-expanded="false">
                           <span class="sr-only">Toggle Dropdown</span> All Agents <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
                              class=" float-right">
                           </button>
                           <div class="dropdown-menu filter-menu dropdown-menu-right istar-dropdown-task-menu  dropdown-menu-lg-right position-absolute px-4"
                              aria-labelledby="leadwebAdherence_dropdown" style="width: 350px; ">
                              <ul class="dropdown-nav nav nav-tabs nav-mytabs filtertabs pt-2 d-flex align-items-end" id="leadwebinar_adherenceTab" role="tablist">
                                 <li class="nav-item">
                                    <a class="nav-link active" id="leadwebinar_adherence_individual-tab" data-toggle="tab" href="#leadwebinar_adherence_individual" role="tab" aria-controls="leadwebinar_adherence_individual" aria-selected="true">Individual</a>
                                 </li>
                                 <li class="nav-item">
                                    <a class="nav-link" id="leadwebinar_adherence_team-tab" data-toggle="tab" href="#leadwebinar_adherence_team" role="tab" aria-controls="leadwebinar_adherence_team" aria-selected="false">Team</a>
                                 </li>
                              </ul>
                              <div class="tab-content" id="leadwebinar_adherenceTabContent">
                                 <div class="tab-pane fade show active px-4 py-3" id="leadwebinar_adherence_individual" role="tabpanel" aria-labelledby="leadwebinar_adherence_individual-tab">
                                    <div class="input-group py-2">
                                       <input id="leadwebinar_adherence_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
                                       <div class="input-group-append">
                                          <button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
                                          <i class="fa fa-search f-12 brown-grey"></i>
                                          </button>
                                       </div>
                                    </div>
                                    <div class="leadWebAdher-agent-list  mb-2"  style=" overflow-x: hidden; overflow-y:auto;">	</div>
                                 </div>
                                 <div class="tab-pane fade px-4 py-3" id="leadwebinar_adherence_team" role="tabpanel" aria-labelledby="leadwebinar_adherence_team-tab">
                                    <div class="input-group py-2">
                                       <input id="leadwebinar_adherence_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
                                       <div class="input-group-append">
                                          <button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
                                          <i class="fa fa-search f-12 brown-grey"></i>
                                          </button>
                                       </div>
                                    </div>
                                    <div class="leadWebAdher-team-list mb-2" style="overflow-x: hidden; overflow-y:auto;"></div>
                                 </div>
                              </div>
                              <div class="w-100 text-center">
                                 <button class="btn  rounded-0 theme_bg text-white f-14 font-weight-bold  mb-3 text-center px-3" style="min-width:200px;" id="leadweb_adherence_team_submit">Submit</button>
                              </div>
                           </div>
                        </div>
                     </div>	
                  </div>
                  <div class="row cream_white m-0 theme_solid_border_bottom justify-content-between align-items-center pl-40 pr-40 pt-10 pb-10" id="leadweb_filter_selections" style="">
                     <div class="col-md-10 d-flex p-0 filters-inside-selection"></div>
                     <div class="col-md-2 text-right p-0">
                        <button type="submit" class="btn theme_color f-14 font-weight-bold p-0" data-type="leadWebAdherence" id="leadwebAdherence_reset" onclick="resetFilters(this)">Reset</button>
                     </div>
                  </div>
                 <span id="leadwebinar_adherence_section"></span>
               </div>
                  </div>
            </div>
         </div>
      </div>
  
   <div class="col-md-1 p-0">
      <div class=" dropleft">
         <button type="button" class="btn btn-secondary dropdown-toggle"
            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
            style="display: none" id="leadwebinar_webinar_task_content">Dropleft</button>
         <div class="dropdown-menu leadwebinar_webinar_task_content"
            aria-labelledby="leadwebinar_webinar_task_content">
            <!-- Dropdown menu links -->
         </div>
      </div>
      <ul class="list-group shadow d-flex flex-column h-100  taskpopup">
         <li class="notesdropdown list-group-item p-0 pt-10 pb-10">
            <div
               class=" d-flex flex-column justify-content-center align-items-center minh-80 "
               data-dropdown_id="leadwebinar_webinar_task_content">
               <img src="<%=baseURL%>assets/image/notes.svg" alt="notes" />
               <div class="f-12 pt-1 greyish-brown">Notes</div>
            </div>
         </li>
         <li class=" cuesdropdown list-group-item p-0 pt-10 pb-10">
            <div
               class=" d-flex flex-column justify-content-center align-items-center minh-80"
               data-dropdown_id="leadwebinar_webinar_task_content">
               <img src="<%=baseURL%>assets/image/cues.svg" alt="cues" />
               <div class="f-12 pt-1 greyish-brown">Cues</div>
            </div>
         </li>
         <li class="crmdropdown list-group-item p-0 pt-10 pb-10">
            <div
               class=" d-flex flex-column justify-content-center align-items-center minh-80"
               data-dropdown_id="leadwebinar_webinar_task_content">
               <img src="<%=baseURL%>assets/image/crm.svg" alt="crm" />
               <div class="f-12 pt-1 greyish-brown">CRM</div>
            </div>
         </li>
         <li class="chatdropdown list-group-item  p-0 pt-10 pb-10 ">
            <div
               class="  d-flex flex-column justify-content-center align-items-center minh-80"
               data-dropdown_id="leadwebinar_webinar_task_content">
               <img src="<%=baseURL%>assets/image/chat.svg"
                  alt="presentation" />
               <div class="f-12 pt-1 greyish-brown">Chat</div>
            </div>
         </li>
         <li class="chatdropdown list-group-item  p-0 pt-10 pb-10 ">
            <div
               class="  d-flex flex-column justify-content-center align-items-center minh-80"
               data-dropdown_id="leadwebinar_webinar_task_content">
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
<script src="<%=baseURL%>assets/js/taskdetail/task_lead_detail/lead_webinar_task_modal.js"></script>