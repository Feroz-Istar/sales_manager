<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>

<div class="row m-0 theme_dashed_border_bottom ml-40 mr-40 pt-20 pb-20" id="select-row">
                           <div class="col-md-4 p-0">
                              <h5 class="f-20 fw-500 black">Comparative Analysis</h5>
                           </div>
                           <div class="col-md-8 d-flex justify-content-end p-0">
                              <div class="input-group date custom-calendar mr-10">
                                 <input type="text" id="timeline_comparative_datepicker" class="form-control  custom-dateselect" value="12-02-2012" placeholder="Calendar">
                                 <div class="input-group-addon" onclick="showTimelineComparativeCalendar()">
                                    <img src="<%=baseURL%>/assets/image/calendar.svg" alt="calendar" class="pr-1">
                                 </div>
                              </div>
                              <div class="istar-dropdown-task select_focus mr-10">
                                 <button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="timeline_comparative_persona" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                 <span class="sr-only">Toggle Dropdown</span>All Persona
                                 <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
                                 </button>
                                 <div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" data-display="static" aria-labelledby="timeline_comparative_persona">
                                    <button class="dropdown-item" type="button">
                                    $1000
                                    </button>
                                    <button class="dropdown-item" type="button">
                                    $5000
                                    </button>
                                 </div>
                              </div>
                              <div class="istar-dropdown-task select_focus mr-10">
                                 <button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="timeline_comparative_success" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                 <span class="sr-only">Toggle Dropdown</span>Filter by Success
                                 <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
                                 </button>
                                 <div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="timeline_comparative_success">
                                    <button class="dropdown-item" type="button">
                                    Lead 1
                                    </button>
                                    <button class="dropdown-item" type="button">
                                    Lead 2
                                    </button>
                                 </div>
                              </div>
                              <div class="istar-dropdown-task dropdown select_focus" id="comparative-analysis-filter">
                                 <button class="istar-dropdown-arrow " data-display="static" id="comparativeAnalysis_dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                 <span class="sr-only">Toggle Dropdown</span> All Agents <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
                                 </button>
                                 <div class="dropdown-menu filter-menu dropdown-menu-right istar-dropdown-task-menu  dropdown-menu-lg-right position-absolute px-4" aria-labelledby="comparativeAnalysis_dropdown" style="width: 350px; ">
                                    <ul class="dropdown-nav nav nav-tabs nav-mytabs filtertabs pt-2 d-flex align-items-end" id="comparativeAnalysisTab" role="tablist">
                                       <li class="nav-item">
                                          <a class="nav-link active" id="comparativeAnalysis_individual-tab" data-toggle="tab" href="#comparativeAnalysis_individual" role="tab" aria-controls="comparativeAnalysis_individual" aria-selected="true">Individual</a>
                                       </li>
                                       <li class="nav-item">
                                          <a class="nav-link" id="comparativeAnalysis_team-tab" data-toggle="tab" href="#comparativeAnalysis_team" role="tab" aria-controls="comparativeAnalysis_team" aria-selected="false">Team</a>
                                       </li>
                                    </ul>
                                    <div class="tab-content" id="comparativeAnalysisTabContent">
                                       <div class="tab-pane fade show active px-4 py-3" id="comparativeAnalysis_individual" role="tabpanel" aria-labelledby="comparativeAnalysis_individual-tab">
                                          <div class="input-group py-2">
                                             <input id="comparativeAnalysis_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
                                             <div class="input-group-append">
                                                <button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
                                                <i class="fa fa-search f-12 brown-grey"></i>
                                                </button>
                                             </div>
                                          </div>
                                          <div class="agent-team-list mb-2" style="overflow-x: hidden; overflow-y:auto;">
                                             <%for(int i=0; i<20;i++){ %>
                                             <div class="d-flex align-items-center pt-3">
                                                <input class="istar-checkbox comparativeAnalysisagentcheckbox" data-id="<%=i %>" id="comparativeAnalysis_associate-checkbox<%=i %>" type="checkbox">
                                                <label class="istar-checkbox-style" for="comparativeAnalysis_associate-checkbox<%=i %>"></label>
                                                <img alt="Lead Image" title="Lead Name" src="<%=baseURL%>/assets/image/11.png" class="rounded-circle ml-3 mr-2 hw-40">
                                                <div>
                                                   <div class="f-14 font-weight-bold greyish-brown text-truncate" title="Robert Garcia">Robert Garcia</div>
                                                   <div class="f-12  brownish-grey text-truncate" title="team">Team -02</div>
                                                </div>
                                             </div>
                                             <%} %>
                                          </div>
                                       </div>
                                       <div class="tab-pane fade px-4 py-3" id="comparativeAnalysis_team" role="tabpanel" aria-labelledby="comparativeAnalysis_team-tab">
                                          <div class="input-group py-2">
                                             <input id="comparativeAnalysis_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
                                             <div class="input-group-append">
                                                <button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
                                                <i class="fa fa-search f-12 brown-grey"></i>
                                                </button>
                                             </div>
                                          </div>
                                          <div class="agent-team-list mb-2" style="overflow-x: hidden; overflow-y:auto;">
                                             <%for(int j=0; j<20;j++){ %>
                                             <div class="d-flex align-items-center pt-3">
                                                <input class="istar-checkbox comparativeAnalysisteamcheckbox" data-id="<%=j %>" id="comparativeAnalysis_team-checkbox<%=j %>" type="checkbox">
                                                <label class="istar-checkbox-style" for="comparativeAnalysis_team-checkbox<%=j%>"></label>
                                                <div class="f-12 ml-2 brownish-grey">Team -0
                                                   <%=j%>
                                                </div>
                                             </div>
                                             <%} %>
                                          </div>
                                       </div>
                                    </div>
                                    <div class="w-100 text-center">
                                       <button class="btn  rounded-0 theme_bg text-white f-14 font-weight-bold  mb-3 text-center px-3" style="min-width:200px;" id="comparativeAnalysis_team_submit">Submit</button>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="row cream_white m-0 theme_solid_border_bottom justify-content-between align-items-center pl-40 pr-40 pt-10 pb-10" id="comparative_analysis_selections">
                           <div class="col-md-10 d-flex p-0">
                              <button class="theme_solid_border bg-white brown-grey rounded f-12 position-relative search-filter">Filter 1
                              <i class="fas fa-times-circle brown-grey f-14 cross-btn"></i>
                              </button>
                           </div>
                           <div class="col-md-2 text-right p-0">
                              <button type="submit" class="btn theme_color f-14 font-weight-bold p-0" id="comparative_analysis_reset">Reset</button>
                           </div>
                        </div>
                        <div class="row pt-4 m-0 pt-25 pb-25 pl-60 pr-40 ">
                           <div class="col-md-3 d-flex p-0 align-items-center">
                              <div class="d-flex align-items-center">
                                 <img class="rounded-circle hw-60 position-relative mr-20" src="<%=baseURL%>assets/image/37.jpg">
                                 <div class="rounded-circle hw-50 bg-purple f-16 text-white border-white d-flex align-items-center justify-content-center font-weight-bold" style="position:absolute;left:46px;">80%</div>
                                 <div class="d-flex flex-column pl-30">
                                    <div class="brownish-grey f-16">Brittany Kim</div>
                                    <div class="brown-grey f-12">Team 01</div>
                                 </div>
                              </div>
                           </div>
                           <div class="col-md-3 p-0">
                              <div class="d-flex align-items-center">
                                 <img class="rounded-circle hw-60 position-relative mr-20" src="<%=baseURL%>assets/image/37.jpg">
                                 <div class="rounded-circle hw-50 theme_bg f-16 text-white border-white d-flex align-items-center justify-content-center font-weight-bold" style="position:absolute;left:46px;">20%</div>
                                 <div class="d-flex flex-column pl-30">
                                    <div class="brownish-grey f-16">Brittany Kim</div>
                                    <div class="brown-grey f-12">Team 01</div>
                                 </div>
                              </div>
                           </div>
                           <div class="col-md-6 d-flex p-0 justify-content-end align-items-center">
                              <button class="btn theme_color f-12 font-weight-bold reset p-0 pt-15 pb-15 pl-15">Reset</button>
                           </div>
                        </div>
                        <div class="row pt-4 m-0 pt-25 pb-25 pl-60 pr-60 position-relative">
                           <div class="line-style">
                           </div>
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
                        <%for(int l=0;l<4;l++){ %>
                        <div class="theme_dashed_border_bottom pt-20 pb-20 ml-30 mr-30">
                           <%for(int i=0; i<2; i++){ %>
                           <div class="row pt-10 m-0">
                              <div class="theme_bg h-100 w-10 mt-2 mb-2 mr-10" style="width:10px; border-radius:10%; height: 40px !important;"> </div>
                              <%for(int j=0;j<3;j++){ %>
                              <div class="col-md-3 p-0 pr-50">
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
                                       <div class="card pt-20 pr-20 pl-20" style="min-width: 260px;">
                                          <div class="card-body border-0 p-0">
                                             <div class="d-flex pb-25">
                                                <div class="col-md-11 p-0 f-16 black fw-500"> Introduction Break-up</div>
                                                <div class="col-md-1 p-0">
                                                   <img alt="close" src="<%=baseURL%>assets/image/close.svg" class="cursor-pointer close-signal">
                                                </div>
                                             </div>
                                             <%for(int k=0;k<4;k++){ %>
                                             <div class="theme_dotted_border_bottom pb-15">
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
                           <%} %>
                        </div>
                        <%} %>
                 