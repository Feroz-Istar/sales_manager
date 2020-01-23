
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>
   <div class="card-body  p-0 card-shadow-bottom" id="leadwebinar_timeline_card">
                     <div class="card-body p-0  pb-20 theme_solid_border_bottom	">
                        <div class="d-flex flex-row">
                           <div class="d-flex">
                              <div class="pl-40">
                                 <div class="f-14 fw-500 greyish-brown pb-10">Pipeline Stage 01</div>
                                 <div class="d-flex">
                                    <img src="<%=baseURL %>/assets/image/calltask.svg" class="hw-40 mr-10">
                                 </div>
                              </div>
                           </div>
                           <div class="d-flex">
                              <div class="pl-40">
                                 <div class="f-14 fw-500 greyish-brown pb-10">Pipeline Stage 01</div>
                                 <div class="d-flex">
                                    <div class="hw-40 very-light-pink-bg rounded-circle  d-flex align-items-center justify-content-center">
                                       <img src="<%=baseURL %>/assets/image/emailtasktype.svg" alt="email">
                                    </div>
                                    <div class="hw-40 ml-10 very-light-pink-bg rounded-circle  d-flex align-items-center justify-content-center">
                                       <img src="<%=baseURL %>/assets/image/webinartasktype.svg" alt="email">
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <div class="d-flex">
                              <div class="pl-40">
                                 <div class="f-14 fw-500 greyish-brown pb-10">Pipeline Stage 02</div>
                                 <div class="d-flex">
                                    <div class="hw-40 very-light-pink-bg rounded-circle  d-flex align-items-center justify-content-center">
                                       <img src="<%=baseURL %>/assets/image/emailtasktype.svg" alt="email">
                                    </div>
                                    <div class="hw-40 ml-10 very-light-pink-bg rounded-circle  d-flex align-items-center justify-content-center">
                                       <img src="<%=baseURL %>/assets/image/webinartasktype.svg" alt="email">
                                    </div>
                                    <div class="hw-40 ml-10 very-light-pink-bg rounded-circle  d-flex align-items-center justify-content-center">
                                       <img src="<%=baseURL %>/assets/image/call.svg" alt="email">
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="row m-0 theme_dashed_border_bottom   pt-20 pb-20" id="">
                     <div class="col-md-1 p-0 "></div>
                     <div class="col-md-11 d-flex  p-0">
                        <div class="input-group date custom-calendar mr-10">
                           <input type="text" id="leadwebinar_timeline_datepicker" class="form-control  custom-dateselect" value="12-02-2012" placeholder="Calendar">
                           <div class="input-group-addon" onclick="showTimelineCalendar()">
                              <img src="<%=baseURL%>/assets/image/calendar.svg" alt="calendar" class="pr-1 hw-24">
                           </div>
                        </div>
                        <div class="istar-dropdown-task select_focus mr-10">
                           <button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="leadwebinar_timeline_persona" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           <span class="sr-only">Toggle Dropdown</span> <span id="leadwebinar_timeline_drop">All Persona</span> <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
                           </button>
                           <div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="leadwebinar_timeline_persona" id="">
                              <button class="dropdown-item" type="button" onclick="leadwebinar_timeline_persona(this)">Persona 1</button>
                              <button class="dropdown-item" type="button" onclick="leadwebinar_timeline_persona(this)">Persona 2</button>
                           </div>
                        </div>
                        <div class="istar-dropdown-task select_focus mr-10">
                           <button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="leadwebinar_timeline_success" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           <span class="sr-only">Toggle Dropdown</span><span id="leadwebinar_timeline_success_drop">Filter by Success</span> <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
                              class=" float-right">
                           </button>
                           <div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="leadwebinar_timeline_success">
                              <button class="dropdown-item" type="button" onclick="leadwebinar_timeline_success(this)">Lead 1</button>
                              <button class="dropdown-item" type="button" onclick="leadwebinar_timeline_success(this)">Lead 2</button>
                           </div>
                        </div>
                        <div class="istar-dropdown-task dropdown select_focus" id="">
                           <button class="istar-dropdown-arrow " data-display="static" id="leadwebinar_timeline_dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           <span class="sr-only">Toggle Dropdown</span> All Agents <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
                           </button>
                           <div class="dropdown-menu filter-menu dropdown-menu-right istar-dropdown-task-menu  dropdown-menu-lg-right position-absolute px-4" aria-labelledby="leadwebinar_timeline_dropdown"
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
                                    <div class="agent-team-list mb-2" style="overflow-x: hidden; overflow-y: auto;">
                                       <%for(int i=0; i<20;i++){ %>
                                       <div class="d-flex align-items-center pt-3">
                                          <input class="istar-checkbox leadwebinar_timelineagentcheckbox" data-id="<%=i %>" id="leadwebinar_timeline_associate-checkbox<%=i %>" type="checkbox"> <label
                                             class="istar-checkbox-style" for="leadwebinar_timeline_associate-checkbox<%=i %>"></label> <img alt="Lead Image" title="Lead Name" src="<%=baseURL%>/assets/image/11.png"
                                             class="rounded-circle ml-3 mr-2 hw-40">
                                          <div>
                                             <div class="f-14 font-weight-bold greyish-brown text-truncate" title="Robert Garcia">Robert Garcia</div>
                                             <div class="f-12  brownish-grey text-truncate" title="team">Team -02</div>
                                          </div>
                                       </div>
                                       <%} %>
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
                                    <div class="agent-team-list mb-2" style="overflow-x: hidden; overflow-y: auto;">
                                       <%for(int j=0; j<20;j++){ %>
                                       <div class="d-flex align-items-center pt-3">
                                          <input class="istar-checkbox leadwebinar_timelineteamcheckbox" data-id="<%=j %>" id="leadwebinar_timeline_team-checkbox<%=j %>" type="checkbox"> <label class="istar-checkbox-style"
                                             for="leadwebinar_timeline_team-checkbox<%=j%>"></label>
                                          <div class="f-12 ml-2 brownish-grey">
                                             Team -0<%=j%>
                                          </div>
                                       </div>
                                       <%} %>
                                    </div>
                                 </div>
                              </div>
                              <div class="w-100 text-center">
                                 <button class="btn  rounded-0 theme_bg text-white f-14 font-weight-bold  mb-3 text-center px-3" style="min-width: 200px;" id="leadwebinar_timeline_team_submit">Submit</button>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="row pt-4 m-0 pt-25 pb-25 pl-60 pr-60  position-relative" id="">
                     <div class="line-style"></div>
                     <div class="col-md-3 p-0">
                        <div class="theme_bg rounded-circle hw-10"></div>
                        <div class="greyish-brown f-20 font-weight-bold">25%</div>
                     </div>
                     <div class="col-md-3 p-0">
                        <div class="theme_bg rounded-circle hw-10"></div>
                        <div class="greyish-brown f-20 font-weight-bold">50%</div>
                     </div>
                     <div class="col-md-3 p-0">
                        <div class="theme_bg rounded-circle hw-10"></div>
                        <div class="greyish-brown f-20 font-weight-bold">75%</div>
                     </div>
                     <div class="col-md-3 p-0">
                        <div class="theme_bg rounded-circle hw-10"></div>
                        <div class="greyish-brown f-20 font-weight-bold">100%</div>
                     </div>
                  </div>
                  <div class="d-flex flex-wrap pl-60 pr-60 pb-20" id="">
                     <%for(int i=0;i<16;i++){ %>
                     <div class="col-md-3 p-0 pb-20 pr-60">
                        <div class=" dropdown dropright">
                           <button class="btn p-0  w-100 signal_details" id="signal_details" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" data-display="static">
                              <div class="progress rounded p-0 progress-box">
                                 <div class="progress-bar progress-bar-striped bg-purple pl-2" role="progressbar" style="width: 50%; text-align: left;" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100">
                                    <div class="font-weight-bold f-12 purple">Introduction</div>
                                    <div class="fw-900 f-22 purple">50%</div>
                                 </div>
                              </div>
                           </button>
                           <div class="dropdown-menu dropdown-menu-right arrow-right p-0" aria-labelledby="signal_details">
                              <div class="card  pt-20 pr-20 pl-20 " style="min-width: 260px;">
                                 <div class="card-body p-0">
                                    <div class="d-flex pb-5">
                                       <div class="col-md-11 p-0 f-16 black fw-500">Introduction Break-up</div>
                                       <div class="col-md-1 p-0">
                                          <img alt="close" src="<%=baseURL %>assets/image/close.svg" class="cursor-pointer close-signal">
                                       </div>
                                    </div>
                                    <%for(int j=0;j<3;j++){ %>
                                    <div class="theme_dotted_border_bottom pb-15 pt-15">
                                       <div class=" greyish-brown f-18 font-weight-bold">30%</div>
                                       <div class="brownish-grey f-12">Hello Sir, I am calling from United Tech, Is it good time to speak ?</div>
                                    </div>
                                    <%} %>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <%} %>
                  </div>