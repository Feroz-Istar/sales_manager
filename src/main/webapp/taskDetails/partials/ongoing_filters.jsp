   <%
         String url = request.getRequestURL().toString();
         String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
         		+ request.getContextPath() + "/";
         %>
          <div class="col-md-3 text-result-found p-0	">
                              <strong class="number-of-results">03</strong> Results Found
                           </div>
                           <div class="col-md-9 d-md-flex justify-content-end p-0  ">
                              <div class="istar-dropdown-task select_focus mr-10 ">
                                 <button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="ongoing_deal" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                 <span class="sr-only"></span><span id="ongoing_deal_drop">All Deal Value</span> <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
                                 </button>
                                 <div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu 	" aria-labelledby="ongoing_deal">
                                    <button class="dropdown-item" type="button" onclick="ongoing_deal_dropdown(this)">1000</button>
                                    <button class="dropdown-item" type="button" onclick="ongoing_deal_dropdown(this)">2000</button>
                                 </div>
                              </div>
                              <div class="istar-dropdown-task select_focus mr-10">
                                 <button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="ongoing_stage" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                 <span class="sr-only">Toggle Dropdown</span> <span id="ongoing_stage_drop">All Stages</span> <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
                                 </button>
                                 <div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="ongoing_stage">
                                    <button class="dropdown-item" type="button" onclick="ongoing_stage_dropdown(this)">Stage 1</button>
                                    <button class="dropdown-item" type="button" onclick="ongoing_stage_dropdown(this)">stage 2</button>
                                 </div>
                              </div>
                              <div class="istar-dropdown-task select_focus mr-10">
                                 <button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="ongoing_activity" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                 <span class="sr-only">Toggle Dropdown</span> <span id="ongoing_activity_drop">Call Task </span> <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
                                 </button>
                                 <div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="ongoing_activity">
                                    <button class="dropdown-item" type="button" onclick="ongoing_activity_dropdown(this)">
                                    <img src="<%=baseURL%>assets/image/calltask.svg" alt="call" class="task-dropdown"> Call Task
                                    </button>
                                    <button class="dropdown-item" type="button" onclick="ongoing_activity_dropdown(this)">
                                    <img src="<%=baseURL%>assets/image/emailtask.svg" alt="email" class="task-dropdown"> Email Task
                                    </button>
                                    <button class="dropdown-item" type="button" onclick="ongoing_activity_dropdown(this)">
                                    <img src="<%=baseURL%>assets/image/webinartask.svg" alt="webinar" class="task-dropdown"> Webinar Task
                                    </button>
                                    <button class="dropdown-item" type="button" onclick="ongoing_activity_dropdown(this)">
                                    <img src="<%=baseURL%>assets/image/presentation.svg" alt="" class="task-dropdown"> Presentation
                                    </button>
                                 </div>
                              </div>
                              <div class="istar-dropdown-task select_focus mr-10">
                                 <button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="ongoing_status" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                 <span class="sr-only">Toggle Dropdown</span><span id="ongoing_status_drop"> All Status</span> <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
                                 </button>
                                 <div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="ongoing_status">
                                    <button class="dropdown-item" type="button" onclick=" ongoing_status_dropdown(this)">Ongoing</button>
                                    <button class="dropdown-item" type="button" onclick=" ongoing_status_dropdown(this)">Completed</button>
                                 </div>
                              </div>
                              <div class="istar-dropdown-task dropdown select_focus">
                                 <button class="istar-dropdown-arrow " data-display="static" id="ongoing_dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                 <span class="sr-only">Toggle Dropdown</span> All Agents <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
                                 </button>
                                 <div class="dropdown-menu filter-menu dropdown-menu-right istar-dropdown-task-menu  dropdown-menu-lg-right position-absolute px-4" aria-labelledby="ongoing_dropdown" style="width: 350px;">
                                    <ul class="dropdown-nav nav nav-tabs nav-mytabs filtertabs pt-2 d-flex align-items-end" id="ongoingTab" role="tablist">
                                       <li class="nav-item"><a class="nav-item nav-link active" id="ongoing_individual-tab" data-toggle="tab" href="#ongoing_individual" role="tab" aria-controls="ongoing_individual"
                                          aria-selected="true">Individual</a></li>
                                       <li class="nav-item"><a class="nav-item nav-link" id="ongoing_team-tab" data-toggle="tab" href="#ongoing_team" role="tab" aria-controls="ongoing_team" aria-selected="false">Team</a></li>
                                    </ul>
                                    <div class="tab-content" id="ongoingTab-tabContent"></div>
                                    <div class="w-100 text-center">
                                       <button class="btn  rounded-0 theme_bg text-white f-14 font-weight-bold mb-3 text-center px-3" style="min-width: 200px;" id="ongoing_team_submit">Submit</button>
                                    </div>
                                 </div>
                              </div>
                           </div>