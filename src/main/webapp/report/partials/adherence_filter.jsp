    <%
         String url = request.getRequestURL().toString();
         String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
         		+ request.getContextPath() + "/";
         
         %>
<div class="col-md-4 p-0 overall_title">
                                 <h5 class="f-20 fw-500 black">Playbook Adherance</h5>
                              </div>
                              <div class="col-md-8 d-flex justify-content-end p-0">
                                 <div class="input-group date custom-calendar mr-10">
                                    <input type="text" id="timeline_datepicker" class="form-control  custom-dateselect"
                                       value="12-02-2012" placeholder="Calendar">
                                    <div class="input-group-addon" onclick="showTimelineCalendar()">
                                       <img src ="<%=baseURL%>/assets/image/calendar.svg"  alt="calendar" class="pr-1 hw-24">
                                    </div>
                                 </div>
                                 <div class="istar-dropdown-task select_focus mr-10">
                                    <button class="istar-dropdown-arrow dropdown-toggle" data-display="static"
                                       id="adherence_success" data-toggle="dropdown" aria-haspopup="true"
                                       aria-expanded="false">
                                    <span class="sr-only">Toggle Dropdown</span ><span id="radherence_drop">Filter by Success</span>
                                    <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
                                       class=" float-right">
                                    </button>
                                    <div
                                       class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="adherence_success">
                                       <button class="dropdown-item" type="button" onclick="adherence_success(this)">
                                       Lead 1 
                                       </button>
                                       <button class="dropdown-item" type="button" onclick="adherence_success(this)">
                                       Lead 2 
                                       </button>
                                    </div>
                                 </div>
                                 <div class="istar-dropdown-task dropdown select_focus" id="">
                                    <button class="istar-dropdown-arrow " data-display="static"
                                       id="adherence_dropdown" data-toggle="dropdown" aria-haspopup="true"
                                       aria-expanded="false">
                                    <span class="sr-only">Toggle Dropdown</span> All Agents <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
                                       class=" float-right">
                                    </button>
                                    <div class="dropdown-menu filter-menu dropdown-menu-right istar-dropdown-task-menu  dropdown-menu-lg-right position-absolute px-4"
                                       aria-labelledby="adherence_dropdown" style="width: 350px; ">
                                       <ul class="dropdown-nav nav nav-tabs nav-mytabs filtertabs pt-2 d-flex align-items-end" id="adherenceTab" role="tablist">
                                          <li class="nav-item">
                                             <a class="nav-link active" id="adherence_individual-tab" data-toggle="tab" href="#adherence_individual" role="tab" aria-controls="adherence_individual" aria-selected="true">Individual</a>
                                          </li>
                                          <li class="nav-item">
                                             <a class="nav-link" id="adherence_team-tab" data-toggle="tab" href="#adherence_team" role="tab" aria-controls="adherence_team" aria-selected="false">Team</a>
                                          </li>
                                       </ul>
                                       <div class="tab-content" id="adherenceTabContent">
                                          <div class="tab-pane fade show active px-4 py-3" id="adherence_individual" role="tabpanel" aria-labelledby="adherence_individual-tab">
                                             <div class="input-group py-2">
                                                <input id="adherence_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
                                                <div class="input-group-append">
                                                   <button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
                                                   <i class="fa fa-search f-12 brown-grey"></i>
                                                   </button>
                                                </div>
                                             </div>
                                             <div class="agent-team-list mb-2"  style=" overflow-x: hidden; overflow-y:auto;">
                                                <%for(int i=0; i<20;i++){ %>
                                                <div class="d-flex align-items-center pt-3">
                                                   <input class="istar-checkbox adherenceagentcheckbox" data-id="<%=i %>" id="adherence_associate-checkbox<%=i %>" type="checkbox">
                                                   <label class="istar-checkbox-style" for="adherence_associate-checkbox<%=i %>"></label>
                                                   <img alt="Lead Image" title="Lead Name" src ="<%=baseURL%>/assets/image/11.png" class="rounded-circle ml-3 mr-2 hw-40">
                                                   <div>
                                                      <div class="f-14 font-weight-bold greyish-brown text-truncate" title="Robert Garcia">Robert Garcia</div>
                                                      <div class="f-12  brownish-grey text-truncate" title="team">Team -02</div>
                                                   </div>
                                                </div>
                                                <%} %>
                                             </div>
                                          </div>
                                          <div class="tab-pane fade px-4 py-3" id="adherence_team" role="tabpanel" aria-labelledby="adherence_team-tab">
                                             <div class="input-group py-2">
                                                <input id="adherence_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
                                                <div class="input-group-append">
                                                   <button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
                                                   <i class="fa fa-search f-12 brown-grey"></i>
                                                   </button>
                                                </div>
                                             </div>
                                             <div class="agent-team-list mb-2" style="overflow-x: hidden; overflow-y:auto;">
                                                <%for(int j=0; j<20;j++){ %>
                                                <div class="d-flex align-items-center pt-3">
                                                   <input class="istar-checkbox adherenceteamcheckbox" data-id="<%=j %>" id="adherence_team-checkbox<%=j %>" type="checkbox">
                                                   <label class="istar-checkbox-style" for="adherence_team-checkbox<%=j%>"></label>
                                                   <div class="f-12 ml-2 brownish-grey">Team -0<%=j%></div>
                                                </div>
                                                <%} %>
                                             </div>
                                          </div>
                                       </div>
                                       <div class="w-100 text-center">
                                          <button class="btn  rounded-0 theme_bg text-white f-14 font-weight-bold  mb-3 text-center px-3" style="min-width:200px;" id="overallAnalysis_team_submit">Submit</button>
                                       </div>
                                    </div>
                                 </div>
                              </div>