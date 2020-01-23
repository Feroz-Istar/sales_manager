<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>
       <div class="card-body theme_solid_border_bottom p-0  pb-20	">
                        <div class="d-flex flex-row">
                           <div class="d-flex">
                              <div class="pl-40">
                                 <div class="f-14 fw-500 greyish-brown pb-10">Pipeline Stage 01</div>
                                 <div class="d-flex">
                                    <img src="<%=baseURL %>assets/image/calltask.svg" class="hw-40 mr-10"> <img src="<%=baseURL %>assets/image/calltask.svg" class="hw-40 mr-10">
                                 </div>
                              </div>
                           </div>
                           <div class="d-flex">
                              <div class="pl-40">
                                 <div class="f-14 fw-500 greyish-brown pb-10">Pipeline Stage 01</div>
                                 <div class="d-flex">
                                    <div class="hw-40 very-light-pink-bg rounded-circle  d-flex align-items-center justify-content-center">
                                       <img src="<%=baseURL %>assets/image/emailtasktype.svg" alt="email">
                                    </div>
                                    <div class="hw-40 ml-10 very-light-pink-bg rounded-circle  d-flex align-items-center justify-content-center">
                                       <img src="<%=baseURL %>assets/image/webinartasktype.svg" alt="email">
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="row m-0 theme_dashed_border_bottom  pt-20 pb-20" id="lead_adherence_filter">
                     <div class="col-md-1 p-0 "> </div>
                     <div class="col-md-11 d-flex justify-content-center p-0">
                        <div class="input-group date custom-calendar mr-10">
                           <input type="text" id="lead_adherencetimeline_datepicker" class="form-control  custom-dateselect"
                              value="12-02-2012" placeholder="Calendar">
                           <div class="input-group-addon" onclick="showTimelineCalendar()">
                              <img src ="<%=baseURL%>/assets/image/calendar.svg"  alt="calendar" class="pr-1 hw-24">
                           </div>
                        </div>
                        <div class="istar-dropdown-task select_focus mr-10">
                           <button class="istar-dropdown-arrow dropdown-toggle" data-display="static"
                              id="lead_adherence_success" data-toggle="dropdown" aria-haspopup="true"
                              aria-expanded="false">
                           <span class="sr-only">Toggle Dropdown</span ><span id="lead_adherence_drop">Filter by Success</span>
                           <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
                              class=" float-right">
                           </button>
                           <div
                              class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="lead_adherence_success">
                              <button class="dropdown-item" type="button" onclick="lead_adherence_success(this)">
                              Lead 1 
                              </button>
                              <button class="dropdown-item" type="button" onclick="lead_adherence_success(this)">
                              Lead 2 
                              </button>
                           </div>
                        </div>
                        <div class="istar-dropdown-task dropdown select_focus" id="">
                           <button class="istar-dropdown-arrow " data-display="static"
                              id="lead_adherence_dropdown" data-toggle="dropdown" aria-haspopup="true"
                              aria-expanded="false">
                           <span class="sr-only">Toggle Dropdown</span> All Agents <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
                              class=" float-right">
                           </button>
                           <div class="dropdown-menu filter-menu dropdown-menu-right istar-dropdown-task-menu  dropdown-menu-lg-right position-absolute px-4"
                              aria-labelledby="lead_adherence_dropdown" style="width: 350px; ">
                              <ul class="dropdown-nav nav nav-tabs nav-mytabs filtertabs pt-2 d-flex align-items-end" id="lead_adherenceTab" role="tablist">
                                 <li class="nav-item">
                                    <a class="nav-link active" id="lead_adherence_individual-tab" data-toggle="tab" href="#lead_adherence_individual" role="tab" aria-controls="lead_adherence_individual" aria-selected="true">Individual</a>
                                 </li>
                                 <li class="nav-item">
                                    <a class="nav-link" id="lead_adherence_team-tab" data-toggle="tab" href="#lead_adherence_team" role="tab" aria-controls="lead_adherence_team" aria-selected="false">Team</a>
                                 </li>
                              </ul>
                              <div class="tab-content" id="lead_adherenceTabContent">
                                 <div class="tab-pane fade show active px-4 py-3" id="lead_adherence_individual" role="tabpanel" aria-labelledby="lead_adherence_individual-tab">
                                    <div class="input-group py-2">
                                       <input id="lead_adherence_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
                                       <div class="input-group-append">
                                          <button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
                                          <i class="fa fa-search f-12 brown-grey"></i>
                                          </button>
                                       </div>
                                    </div>
                                    <div class="agent-team-list mb-2"  style=" overflow-x: hidden; overflow-y:auto;">
                                       <%for(int i=0; i<20;i++){ %>
                                       <div class="d-flex align-items-center pt-3">
                                          <input class="istar-checkbox lead_adherenceagentcheckbox" data-id="<%=i %>" id="lead_adherence_associate-checkbox<%=i %>" type="checkbox">
                                          <label class="istar-checkbox-style" for="lead_adherence_associate-checkbox<%=i %>"></label>
                                          <img alt="Lead Image" title="Lead Name" src ="<%=baseURL%>/assets/image/11.png" class="rounded-circle ml-3 mr-2 hw-40">
                                          <div>
                                             <div class="f-14 font-weight-bold greyish-brown text-truncate" title="Robert Garcia">Robert Garcia</div>
                                             <div class="f-12  brownish-grey text-truncate" title="team">Team -02</div>
                                          </div>
                                       </div>
                                       <%} %>
                                    </div>
                                 </div>
                                 <div class="tab-pane fade px-4 py-3" id="lead_adherence_team" role="tabpanel" aria-labelledby="lead_adherence_team-tab">
                                    <div class="input-group py-2">
                                       <input id="lead_adherence_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
                                       <div class="input-group-append">
                                          <button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
                                          <i class="fa fa-search f-12 brown-grey"></i>
                                          </button>
                                       </div>
                                    </div>
                                    <div class="agent-team-list mb-2" style="overflow-x: hidden; overflow-y:auto;">
                                       <%for(int j=0; j<20;j++){ %>
                                       <div class="d-flex align-items-center pt-3">
                                          <input class="istar-checkbox lead_adherenceteamcheckbox" data-id="<%=j %>" id="lead_adherence_team-checkbox<%=j %>" type="checkbox">
                                          <label class="istar-checkbox-style" for="lead_adherence_team-checkbox<%=j%>"></label>
                                          <div class="f-12 ml-2 brownish-grey">Team -0<%=j%></div>
                                       </div>
                                       <%} %>
                                    </div>
                                 </div>
                              </div>
                              <div class="w-100 text-center">
                                 <button class="btn  rounded-0 theme_bg text-white f-14 font-weight-bold  mb-3 text-center px-3" style="min-width:200px;" id="lead_adherence_team_submit">Submit</button>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <%for(int i=0;i<4;i++){ %>
                  <div class="row m-0 pt-20 pb-20 ml-40 theme_dashed_border_bottom  mr-40">
                     <div class="col-md-2 p-0 d-flex align-items-center ">
                        <div class="d-flex align-items-center border-right-dashed-separation pr-30">
                           <img src="<%=baseURL%>assets/image/oldman.svg" class="  theme_solid_border hw-60 " style="border-radius:10px; ">
                           <button class="btn rounded-circle theme_bg  d-flex justify-content-center align-items-center  position-relative" id="" style="height:27px;width:25px ;right: 14px;top: 0px;" >
                           <i class="fal fa-plus text-white"></i>
                           </button>
                        </div>
                     </div>
                     <div class="col-md-10 p-0">
                        <div class="d-flex flex-row">
                           <div class="theme_solid_border p-10 d-flex  align-items-center cursor-pointer templete_card" id="" onclick=""
                              style="width:286px;min-height:100px;box-shadow: 0 5px 15px 0 rgba(0, 0, 0, 0.05);border-radius:10px">
                              <div class="f-20 fw-900 brownish-grey border-right-dashed-separation pr-15">10%</div>
                              <div class="d-flex flex-column pl-20">
                                 <div class="f-12 fw-500 brownish-grey">Hello, this is Kristin calling from Global Digital. Is this a good time to talk to you?</div>
                              </div>
                           </div>
                           <div class="theme_solid_border p-10 d-flex ml-10 align-items-center cursor-pointer templete_card" id="" onclick=""
                              style="width:286px;min-height:100px;box-shadow: 0 5px 15px 0 rgba(0, 0, 0, 0.05);border-radius:10px">
                              <div class="f-20 fw-900 brownish-grey border-right-dashed-separation pr-15">40%</div>
                              <div class="d-flex flex-column pl-20">
                                 <div class="f-12 fw-500 brownish-grey">Hello, this is Kristin calling from Global Digital. Is this a good time to talk to you?</div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <%} %>