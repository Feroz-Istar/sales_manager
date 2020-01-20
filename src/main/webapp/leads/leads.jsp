<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <title>Salesken - Leads</title>
      <%
         String url = request.getRequestURL().toString();
         String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
         		+ request.getContextPath() + "/";
         %>
      <link rel="icon" href="<%=baseURL%>favicon.ico" type="image/x-icon" />
      <link rel="shortcut icon" href="<%=baseURL%>favicon.ico" type="image/x-icon" />
      <link rel="stylesheet" href="<%=baseURL%>assets/css/bootstrap.min.css">
      <link href="<%=baseURL%>assets/css/bootstrap-datepicker3.min.css?xsww" rel="stylesheet">
      <link rel="stylesheet" href="<%=baseURL%>assets/css/salesken_style.css">
      <link rel="stylesheet" href="<%=baseURL%>assets/css/all.css">
      <link rel="stylesheet" href="<%=baseURL%>assets/css/leads.css">
      <link rel="stylesheet" href="<%=baseURL%>assets/css/dropzone.min.css">
      <link rel="stylesheet" href="<%=baseURL%>assets/css/alertify.css">
      <link rel="stylesheet" href="<%=baseURL%>assets/css/salesken_style_media_query.css">
      <link rel="stylesheet" href="https://daneden.github.io/animate.css/animate.min.css">
   </head>
   <body data-baseurl="<%=baseURL%>" onload="load()">
      <!-- start of circular progress bar for page loading -->
      <div class="salesken_progress h-100 w-100 " style="display: none">
         <div class="d-flex align-items-center justify-content-center  h-100 w-100">
            <div class="spinner-border text-danger" role="status">
               <span class="sr-only">Loading...</span>
            </div>
         </div>
      </div>
      <!-- end of circular progress bar for page loading -->
      <jsp:include page="../navbar/nav.jsp"></jsp:include>
      <main role="main">
         <div class="container-fluid salesken_container">
            <div class="row grey-white-bg theme_solid_border_bottom align-items-center  m-0 pl-40 pr-40 pt-10 pb-10">
               <div class="col-md-6 col-12 d-flex align-items-center p-0">
                  <div class="display-1 black f-20 border-right-separation fw-500 pr-20">Leads</div>
                  <div class="f-12 brown-grey pl-20">Dashboard</div>
                  <i class="fas fa-chevron-circle-right f-12 brown-grey pl-2 pr-2"></i>
                  <div class=" f-12 brown-grey fw-500" id="breadcrumb">Leads</div>
               </div>
               <div class="col-md-6 col-12 d-lg-flex justify-content-md-end p-0">
                  <div class="input-group position-relative search_width ">
                     <img src="<%=baseURL%>assets/image/search.svg" alt="edit" class=" searchBox"> <input id="" class="form-control  custom-taskborder brown-grey  f-14 search_height custom-result-selects"
                        type="search" placeholder="Search" style="padding-right: 30px">
                  </div>
                  <button class="btn small_button rounded-0 f-12 dropdown-toggle font-weight-bold ml-10" data-toggle="modal" data-target="#addLeadModalCenter">UPLOAD NEW</button>
               </div>
            </div>
            <div class="row m-0">
               <div class="col-md-12 bg-white p-0 pt-10">
                  <ul class="nav nav-tabs nav-mytabs ml-40 mr-40 d-flex align-items-end" id="leadsTab" role="tablist">
                     <li class="nav-item"><a class="nav-item nav-link active" id="nav-target-tab" data-toggle="tab" href="#nav-target" role="tab" aria-controls="nav-target" aria-selected="true">Target</a></li>
                     <li class="nav-item"><a class="nav-item nav-link" id="nav-qualified-tab" data-toggle="tab" href="#nav-qualified" role="tab" aria-controls="nav-qualified" aria-selected="false">Qualified</a></li>
                     <li class="nav-item"><a class="nav-item nav-link" id="nav-lost-tab" data-toggle="tab" href="#nav-lost" role="tab" aria-controls="nav-lost" aria-selected="false">Lost Leads</a></li>
                     <li class="nav-item"><a class="nav-item nav-link" id="nav-win-tab" data-toggle="tab" href="#nav-win" role="tab" aria-controls="nav-win" aria-selected="false">Won Leads</a></li>
                  </ul>
                  <div class="tab-content p-0 mytab-content" id="nav-tabContent">
                     <div class="tab-pane fade show active" id="nav-target" role="tabpanel" aria-labelledby="nav-target-tab">
                        <!-- start of target content -->
                        <div class="row align-items-center bg-white m-0 theme_solid_border_bottom" id="target-selection">
                           <div class="col-md-3 text-result-found p-0 pl-40 ">
                              <strong class="number-of-results ">504</strong> Result Found
                           </div>
                           <div class="col-md-9 d-md-flex justify-content-end p-0 mt-10 mb-10 pr-40">
                              <div class="istar-dropdown-task select_focus mr-10">
                                 <button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="targetSourceType" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                 <span class="sr-only">Toggle Dropdown</span>All Source type<img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
                                 </button>
                                 <div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="targetSourceType">
                                    <button class="dropdown-item" type="button">1000</button>
                                    <button class="dropdown-item" type="button">2000</button>
                                 </div>
                              </div>
                              <div class="istar-dropdown-task select_focus mr-10">
                                 <button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="target_activity" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                 <span class="sr-only">Toggle Dropdown</span> All Activities <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
                                 </button>
                                 <div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="target_activity">
                                    <button class="dropdown-item" type="button">
                                    <img src="<%=baseURL%>assets/image/calltask.svg" alt="call" class="task-dropdown"> Call Task
                                    </button>
                                    <button class="dropdown-item" type="button">
                                    <img src="<%=baseURL%>assets/image/emailtask.svg" alt="email" class="task-dropdown"> Email Task
                                    </button>
                                    <button class="dropdown-item" type="button">
                                    <img src="<%=baseURL%>assets/image/webinartask.svg" alt="webinar" class="task-dropdown"> Webinar Task
                                    </button>
                                    <button class="dropdown-item" type="button">
                                    <img src="<%=baseURL%>assets/image/presentation.svg" alt="presentation" class="task-dropdown"> Presentation
                                    </button>
                                 </div>
                              </div>
                              <div class="istar-dropdown-task dropdown select_focus" id="target-filter">
                                 <button class="istar-dropdown-arrow " data-display="static" id="target_dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                 <span class="sr-only">Toggle Dropdown</span> All Agents <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
                                 </button>
                                 <div class="dropdown-menu filter-menu dropdown-menu-right istar-dropdown-task-menu  dropdown-menu-lg-right position-absolute px-4" aria-labelledby="target_dropdown" style="width: 350px;">
                                    <ul class="dropdown-nav nav nav-tabs nav-mytabs filtertabs pt-2 d-flex align-items-end" id="targetTab" role="tablist">
                                       <li class="nav-item"><a class="nav-item nav-link active" id="target_individual-tab" data-toggle="tab" href="#target_individual" role="tab" aria-controls="target_individual"
                                          aria-selected="true">Individual</a></li>
                                       <li class="nav-item"><a class="nav-item nav-link" id="target_team-tab" data-toggle="tab" href="#target_team" role="tab" aria-controls="target_team" aria-selected="false">Team</a></li>
                                    </ul>
                                    <div class="tab-content" id="targetTab-tabContent">
                                       <div class="tab-pane fade show active px-4 py-3" id="target_individual" role="tabpanel" aria-labelledby="target_individual-tab">
                                          <div class="input-group py-2">
                                             <input id="target_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search"
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
                                                <input class="istar-checkbox targetagentcheckbox" data-id="<%=i %>" id="target_associate-checkbox<%=i %>" type="checkbox"> <label class="istar-checkbox-style"
                                                   for="target_associate-checkbox<%=i %>"></label> <img alt="Agent Image" title="Agent Name" src="<%=baseURL%>/assets/image/11.png" class="rounded-circle ml-3 mr-2 hw-40">
                                                <div>
                                                   <div class="f-14 font-weight-bold greyish-brown text-truncate" title="Robert Garcia">Robert Garcia</div>
                                                   <div class="f-12  brownish-grey text-truncate" title="team">Team -02</div>
                                                </div>
                                             </div>
                                             <%} %>
                                          </div>
                                       </div>
                                       <div class="tab-pane fade px-4 py-3" id="target_team" role="tabpanel" aria-labelledby="target_team-tab">
                                          <div class="input-group py-2">
                                             <input id="target_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search"
                                                style="border-right: none !important;">
                                             <div class="input-group-append">
                                                <button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
                                                <i class="fa fa-search f-12 brown-grey"></i>
                                                </button>
                                             </div>
                                          </div>
                                          <div class="mb-2 agent-team-list" style="overflow-x: hidden; overflow-y: auto;">
                                             <%for(int j=0; j<20;j++){ %>
                                             <div class="d-flex align-items-center pt-3">
                                                <input class="istar-checkbox targetteamcheckbox" data-id="<%=j %>" id="target_team-checkbox<%=j %>" type="checkbox"> <label class="istar-checkbox-style"
                                                   for="target_team-checkbox<%=j%>"></label>
                                                <div class="f-12 ml-2 brownish-grey">
                                                   Team -0<%=j%>
                                                </div>
                                             </div>
                                             <%} %>
                                          </div>
                                       </div>
                                    </div>
                                    <div class="w-100 text-center">
                                       <button class="btn  rounded-0 theme_bg text-white f-14 font-weight-bold mb-3 text-center px-3" style="min-width: 200px;" id="target_team_submit">Submit</button>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="row cream_white m-0 theme_solid_border_bottom justify-content-between align-items-center pl-40 pr-40 pt-10 pb-10" id='target_filter'>
                           <div class="col-md-10 d-flex p-0">
                              <button class="theme_solid_border bg-white brown-grey rounded f-12 position-relative search-filter">
                              2 BHK Flats <i class="fas fa-times-circle brown-grey f-14 cross-btn"></i>
                              </button>
                           </div>
                           <div class="col-md-2 text-right p-0">
                              <button type="submit" class="btn theme_color f-14 font-weight-bold p-0" id='target_reset'>Reset</button>
                           </div>
                        </div>
                        <!----------------------------------------------start of target leads card and contents --------------------------------------------------- -->                      
                        <div class="" id="target_tab_contnet_card"></div>
                        <div class="" id="target_tab_contnet"></div>
                        <!----------------------------------------------end of target leads card and contents --------------------------------------------------- -->                      
                        <div class="row m-0 ">
                           <div class="col-md-12 d-flex justify-content-end p-0">
                              <div class="page">
                                 <ul class="salesken pagination m-0  pt-30 pb-40 pr-40"></ul>
                              </div>
                           </div>
                        </div>
                        <!-- end of target content -->
                     </div>
                     <div class="tab-pane fade" id="nav-qualified" role="tabpanel" aria-labelledby="nav-qualified-tab">
                        <!-- start of qualified tab content-->
                        <div class="row align-items-center theme_solid_border_bottom m-0" id="qualified-selection">
                           <div class="col-md-3 text-result-found p-0 pl-40 ">
                              <strong class="number-of-results">03</strong> Result Found
                           </div>
                           <div class="col-md-9 d-md-flex justify-content-end p-0 mt-10 mb-10 pr-40 ">
                              <div class="input-group date custom-calendar mr-10">
                                 <input type="text" id="lead_qualified_datepicker" placeholder="Calendar" class="form-control  custom-dateselect" value="12-02-2012">
                                 <div class="input-group-addon px-1" onclick="showqualifiedCalendar()">
                                    <img src="<%=baseURL%>/assets/image/calendar.svg" alt="calendar" />
                                 </div>
                              </div>
                              <div class="istar-dropdown-task select_focus mr-10">
                                 <button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="qualified_deal_value" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                 <span class="sr-only">Toggle Dropdown</span>All Deal Value <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
                                 </button>
                                 <div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" data-display="static" aria-labelledby="qualified_deal_value">
                                    <button class="dropdown-item" type="button">$1000</button>
                                    <button class="dropdown-item" type="button">$5000</button>
                                 </div>
                              </div>
                              <div class="istar-dropdown-task select_focus mr-10">
                                 <button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="qualified_stage" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                 <span class="sr-only">Toggle Dropdown</span>All Stages <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
                                 </button>
                                 <div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" data-display="static" aria-labelledby="qualified_stage">
                                    <button class="dropdown-item" type="button">Stage 1</button>
                                    <button class="dropdown-item" type="button">stage 2</button>
                                 </div>
                              </div>
                              <div class="istar-dropdown-task select_focus mr-10">
                                 <button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="qualified_source_type" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                 <span class="sr-only">Toggle Dropdown</span>All Source Type <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
                                 </button>
                                 <div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="qualified_source_type">
                                    <button class="dropdown-item" type="button">Manual</button>
                                    <button class="dropdown-item" type="button">Offline</button>
                                    <button class="dropdown-item" type="button">Outbound</button>
                                 </div>
                              </div>
                              <div class="istar-dropdown-task dropdown select_focus " id="qualified-filter">
                                 <button class="istar-dropdown-arrow " data-display="static" id="qualified_dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                 <span class="sr-only">Toggle Dropdown</span>All Agents <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
                                 </button>
                                 <div class="dropdown-menu filter-menu dropdown-menu-right istar-dropdown-task-menu  dropdown-menu-lg-right position-absolute px-4" aria-labelledby="qualified_dropdown" style="width: 350px;">
                                    <ul class="dropdown-nav nav nav-tabs nav-mytabs filtertabs pt-2 d-flex align-items-end" id="qualifiedTab" role="tablist">
                                       <li class="nav-item"><a class="nav-link active" id="qualified_individual-tab" data-toggle="tab" href="#qualified_individual" role="tab" aria-controls="qualified_individual"
                                          aria-selected="true">Individual</a></li>
                                       <li class="nav-item"><a class="nav-link" id="qualified_team-tab" data-toggle="tab" href="#qualified_team" role="tab" aria-controls="qualified_team" aria-selected="false">Team</a></li>
                                    </ul>
                                    <div class="tab-content" id="myTabContent">
                                       <div class="tab-pane fade show active px-4 py-3" id="qualified_individual" role="tabpanel" aria-labelledby="qualified_individual-tab">
                                          <div class="input-group py-2">
                                             <input id="qualified_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search"
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
                                                <input class="istar-checkbox qualifiedagentcheckbox" data-id="<%=i %>" id="qualified_associate-checkbox<%=i %>" type="checkbox"> <label class="istar-checkbox-style"
                                                   for="qualified_associate-checkbox<%=i %>"></label> <img alt="Lead Image" title="Lead Name" src="<%=baseURL%>/assets/image/11.png" class="rounded-circle ml-3 mr-2 hw-40">
                                                <div>
                                                   <div class="f-14 font-weight-bold greyish-brown text-truncate" title="Robert Garcia">Robert Garcia</div>
                                                   <div class="f-12  brownish-grey text-truncate" title="team">Team -02</div>
                                                </div>
                                             </div>
                                             <%} %>
                                          </div>
                                       </div>
                                       <div class="tab-pane fade px-4 py-3" id="qualified_team" role="tabpanel" aria-labelledby="qualified_team-tab">
                                          <div class="input-group py-2">
                                             <input id="qualified_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search"
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
                                                <input class="istar-checkbox qualifiedteamcheckbox" data-id="<%=j %>" id="qualified_team-checkbox<%=j %>" type="checkbox"> <label class="istar-checkbox-style"
                                                   for="qualified_team-checkbox<%=j%>"></label>
                                                <div class="f-12 ml-2 brownish-grey">
                                                   Team -0<%=j%>
                                                </div>
                                             </div>
                                             <%} %>
                                          </div>
                                       </div>
                                    </div>
                                    <div class="w-100 text-center">
                                       <button class="btn  rounded-0 theme_bg text-white f-14 font-weight-bold mb-3 text-center px-3" style="min-width: 200px;" id="qualified_team_submit">Submit</button>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="row cream_white m-0 theme_solid_border_bottom justify-content-between align-items-center pl-40 pr-40 pt-10 pb-10" id='qualified_filter'>
                           <div class="col-md-10 d-flex p-0">
                              <button class="theme_solid_border bg-white brown-grey rounded f-12 position-relative search-filter">
                              2 BHK Flats <i class="fas fa-times-circle brown-grey f-14 cross-btn"></i>
                              </button>
                           </div>
                           <div class="col-md-2 text-right p-0">
                              <button type="submit" class="btn theme_color f-14 font-weight-bold p-0" id='qualified_reset'>Reset</button>
                           </div>
                        </div>
                        <!----------------------------------------------start of qualified leads card and contents --------------------------------------------------- -->                      
                        <div class="" id="qualified_tab_content_card"></div>
                        <div class="" id="qualified_tab_content"></div>
                        <!----------------------------------------------end of qualified leads card and contents --------------------------------------------------- -->                      
                        <div class="row m-0">
                           <div class="col-md-12  d-flex justify-content-end p-0">
                              <div class="page">
                                 <ul class="salesken pagination m-0  pt-30 pb-40 pr-40"></ul>
                              </div>
                           </div>
                        </div>
                        <!-- end of qualified tab content -->
                     </div>
                     <div class="tab-pane fade" id="nav-lost" role="tabpanel" aria-labelledby="nav-lost-tab">
                        <!-- start of lost leads tab content-->
                        <div class="row align-items-center theme_solid_border_bottom m-0" id="lost-selection">
                           <div class="col-md-2 text-result-found font_text_result	pl-40 p-0">
                              <strong class="number-of-results">03</strong> Result Found
                           </div>
                           <div class="col-md-10 d-md-flex justify-content-end p-0 mt-10 mb-10 pr-40">
                              <div class="input-group date custom-calendar mr-10">
                                 <input type="text" id="lead_lost_datepicker" placeholder="Calendar" class="form-control  custom-dateselect" value="12-02-2012">
                                 <div class="input-group-addon px-1" onclick="showlostCalendar()">
                                    <img src="<%=baseURL%>/assets/image/calendar.svg" />
                                 </div>
                              </div>
                              <div class="istar-dropdown-task select_focus mr-10">
                                 <button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="lost_causes" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                 <span class="sr-only">Toggle Dropdown</span>All Causes <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
                                 </button>
                                 <div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="lost_causes">
                                    <button class="dropdown-item" type="button">reason 1</button>
                                    <button class="dropdown-item" type="button">reason 2</button>
                                 </div>
                              </div>
                              <div class="istar-dropdown-task select_focus mr-10">
                                 <button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="lost_deal_value" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                 <span class="sr-only">Toggle Dropdown</span>All Deal Value <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
                                 </button>
                                 <div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="lost_deal_value">
                                    <button class="dropdown-item" type="button">$1000</button>
                                    <button class="dropdown-item" type="button">$5000</button>
                                 </div>
                              </div>
                              <div class="istar-dropdown-task select_focus mr-10">
                                 <button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="lost_stage" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                 <span class="sr-only">Toggle Dropdown</span>All Stages <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
                                 </button>
                                 <div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="lost_stage">
                                    <button class="dropdown-item" type="button">Stage 1</button>
                                    <button class="dropdown-item" type="button">Stage 2</button>
                                 </div>
                              </div>
                              <div class="istar-dropdown-task select_focus mr-10">
                                 <button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="lost_source_type" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                 <span class="sr-only">Toggle Dropdown</span>All Source Type <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
                                 </button>
                                 <div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="lost_source_type">
                                    <button class="dropdown-item" type="button">Manual</button>
                                    <button class="dropdown-item" type="button">Offline</button>
                                    <button class="dropdown-item" type="button">Outbound</button>
                                 </div>
                              </div>
                              <div class="istar-dropdown-task dropdown select_focus" id="lost-filter">
                                 <button class="istar-dropdown-arrow " data-display="static" id="lost_dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                 <span class="sr-only">Toggle Dropdown</span> All Agents <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
                                 </button>
                                 <div class="dropdown-menu filter-menu dropdown-menu-right istar-dropdown-task-menu  dropdown-menu-lg-right position-absolute px-4" aria-labelledby="lost_dropdown" style="width: 350px;">
                                    <ul class="dropdown-nav nav nav-tabs nav-mytabs filtertabs pt-2 d-flex align-items-end" id="lostTab" role="tablist">
                                       <li class="nav-item"><a class="nav-link active" id="lost_individual-tab" data-toggle="tab" href="#lost_individual" role="tab" aria-controls="lost_individual" aria-selected="true">Individual</a>
                                       </li>
                                       <li class="nav-item"><a class="nav-link" id="lost_team-tab" data-toggle="tab" href="#lost_team" role="tab" aria-controls="lost_team" aria-selected="false">Team</a></li>
                                    </ul>
                                    <div class="tab-content" id="lostTabContent">
                                       <div class="tab-pane fade show active px-4 py-3" id="lost_individual" role="tabpanel" aria-labelledby="lost_individual-tab">
                                          <div class="input-group py-2">
                                             <input id="lost_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search"
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
                                                <input class="istar-checkbox lostagentcheckbox" data-id="<%=i %>" id="lost_associate-checkbox<%=i %>" type="checkbox"> <label class="istar-checkbox-style"
                                                   for="lost_associate-checkbox<%=i %>"></label> <img alt="Lead Image" title="Lead Name" src="<%=baseURL%>/assets/image/11.png" class="rounded-circle ml-3 mr-2 hw-40">
                                                <div>
                                                   <div class="f-14 font-weight-bold greyish-brown text-truncate" title="Robert Garcia">Robert Garcia</div>
                                                   <div class="f-12  brownish-grey text-truncate" title="team">Team -02</div>
                                                </div>
                                             </div>
                                             <%} %>
                                          </div>
                                       </div>
                                       <div class="tab-pane fade px-4 py-3" id="lost_team" role="tabpanel" aria-labelledby="lost_team-tab">
                                          <div class="input-group py-2">
                                             <input id="lost_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search"
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
                                                <input class="istar-checkbox lostteamcheckbox" data-id="<%=j %>" id="lost_team-checkbox<%=j %>" type="checkbox"> <label class="istar-checkbox-style"
                                                   for="lost_team-checkbox<%=j%>"></label>
                                                <div class="f-12 ml-2 brownish-grey">
                                                   Team -0<%=j%>
                                                </div>
                                             </div>
                                             <%} %>
                                          </div>
                                       </div>
                                    </div>
                                    <div class="w-100 text-center">
                                       <button class="btn  rounded-0 theme_bg text-white f-14 font-weight-bold  mb-3 text-center px-3" style="min-width: 200px;" id="lost_team_submit">Submit</button>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="row cream_white m-0 theme_solid_border_bottom justify-content-between align-items-center pl-40 pr-40 pt-10 pb-10" id='lost_filter'>
                           <div class="col-md-10 d-flex p-0">
                              <button class="theme_solid_border bg-white brown-grey rounded f-12 position-relative search-filter">
                              2 BHK Flats <i class="fas fa-times-circle brown-grey f-14 cross-btn"></i>
                              </button>
                           </div>
                           <div class="col-md-2 text-right p-0">
                              <button type="submit" class="btn theme_color f-14 font-weight-bold p-0" id='lost_reset'>Reset</button>
                           </div>
                        </div>
                        <!-- -----------------------start of lost lead card  and content------------------------------------------------>
                        <div id="lost_leads_content_card"></div>
                        <div id="lost_leads_content"></div>
                        <!-- -----------------------end of lost lead card and content  ------------------------------------------------>
                        <div class="row p-0 m-0">
                           <div class="col-md-12  d-flex justify-content-end p-0">
                              <div class="page">
                                 <ul class="salesken pagination m-0 pt-30 pb-40 pr-40"></ul>
                              </div>
                           </div>
                        </div>
                        <!-- end of lost leads tab content -->
                     </div>
                     <div class="tab-pane fade" id="nav-win" role="tabpanel" aria-labelledby="nav-win-tab">
                        <!-- start of won leads content -->
                        <div class="row align-items-center theme_solid_border_bottom m-0" id="won-selection">
                           <div class="col-md-2 text-result-found font_text_result	pl-40 p-0">
                              <strong class="number-of-results">03</strong> Result Found
                           </div>
                           <div class="col-md-10 d-md-flex justify-content-end p-0 mt-10 mb-10 pr-40">
                              <div class="input-group date custom-calendar mr-10">
                                 <input type="text" id="lead_won_datepicker" placeholder="Calendar" class="form-control  custom-dateselect" value="12-02-2012">
                                 <div class="input-group-addon px-1" onclick="showwonCalendar()">
                                    <img src="<%=baseURL%>/assets/image/calendar.svg" />
                                 </div>
                              </div>
                              <div class="istar-dropdown-task select_focus mr-10">
                                 <button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="won_causes" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                 <span class="sr-only">Toggle Dropdown</span>All Causes <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
                                 </button>
                                 <div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="won_causes">
                                    <button class="dropdown-item" type="button">reason 1</button>
                                    <button class="dropdown-item" type="button">reason 2</button>
                                 </div>
                              </div>
                              <div class="istar-dropdown-task select_focus mr-10">
                                 <button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="won_deal_value" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                 <span class="sr-only">Toggle Dropdown</span>All Deal Value <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
                                 </button>
                                 <div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="won_deal_value">
                                    <button class="dropdown-item" type="button">$1000</button>
                                    <button class="dropdown-item" type="button">$5000</button>
                                 </div>
                              </div>
                              <div class="istar-dropdown-task select_focus mr-10">
                                 <button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="won_stage" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                 <span class="sr-only">Toggle Dropdown</span>All Stages <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
                                 </button>
                                 <div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="won_stage">
                                    <button class="dropdown-item" type="button">Stage 1</button>
                                    <button class="dropdown-item" type="button">Stage 2</button>
                                 </div>
                              </div>
                              <div class="istar-dropdown-task select_focus mr-10">
                                 <button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="won_source_type" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                 <span class="sr-only">Toggle Dropdown</span>All Source Type <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
                                 </button>
                                 <div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="won_source_type">
                                    <button class="dropdown-item" type="button">Manual</button>
                                    <button class="dropdown-item" type="button">Offline</button>
                                    <button class="dropdown-item" type="button">Outbound</button>
                                 </div>
                              </div>
                              <div class="istar-dropdown-task dropdown select_focus" id="won-filter">
                                 <button class="istar-dropdown-arrow " data-display="static" id="won_dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                 <span class="sr-only">Toggle Dropdown</span> All Agents <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
                                 </button>
                                 <div class="dropdown-menu filter-menu dropdown-menu-right istar-dropdown-task-menu  dropdown-menu-lg-right position-absolute px-4" aria-labelledby="won_dropdown" style="width: 350px;">
                                    <ul class="dropdown-nav nav nav-tabs nav-mytabs filtertabs pt-2 d-flex align-items-end" id="wonTab" role="tablist">
                                       <li class="nav-item"><a class="nav-link active" id="won_individual-tab" data-toggle="tab" href="#won_individual" role="tab" aria-controls="won_individual" aria-selected="true">Individual</a>
                                       </li>
                                       <li class="nav-item"><a class="nav-link" id="won_team-tab" data-toggle="tab" href="#won_team" role="tab" aria-controls="won_team" aria-selected="false">Team</a></li>
                                    </ul>
                                    <div class="tab-content" id="wonTabContent">
                                       <div class="tab-pane fade show active px-4 py-3" id="won_individual" role="tabpanel" aria-labelledby="won_individual-tab">
                                          <div class="input-group py-2">
                                             <input id="won_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search"
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
                                                <input class="istar-checkbox wonagentcheckbox" data-id="<%=i %>" id="won_associate-checkbox<%=i %>" type="checkbox"> <label class="istar-checkbox-style"
                                                   for="won_associate-checkbox<%=i %>"></label> <img alt="Lead Image" title="Lead Name" src="<%=baseURL%>/assets/image/11.png" class="rounded-circle ml-3 mr-2 hw-40">
                                                <div>
                                                   <div class="f-14 font-weight-bold greyish-brown text-truncate" title="Robert Garcia">Robert Garcia</div>
                                                   <div class="f-12  brownish-grey text-truncate" title="team">Team -02</div>
                                                </div>
                                             </div>
                                             <%} %>
                                          </div>
                                       </div>
                                       <div class="tab-pane fade px-4 py-3" id="won_team" role="tabpanel" aria-labelledby="won_team-tab">
                                          <div class="input-group py-2">
                                             <input id="won_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search"
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
                                                <input class="istar-checkbox wonteamcheckbox" data-id="<%=j %>" id="won_team-checkbox<%=j %>" type="checkbox"> <label class="istar-checkbox-style" for="won_team-checkbox<%=j%>"></label>
                                                <div class="f-12 ml-2 brownish-grey">
                                                   Team -0<%=j%>
                                                </div>
                                             </div>
                                             <%} %>
                                          </div>
                                       </div>
                                    </div>
                                    <div class="w-100 text-center">
                                       <button class="btn  rounded-0 theme_bg text-white f-14 font-weight-bold  mb-3 text-center px-3" style="min-width: 200px;" id="won_team_submit">Submit</button>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="row cream_white m-0 theme_solid_border_bottom justify-content-between align-items-center pl-40 pr-40 pt-10 pb-10" id='won_filter'>
                           <div class="col-md-10 d-flex p-0">
                              <button class="theme_solid_border bg-white brown-grey rounded f-12 position-relative search-filter">
                              2 BHK Flats <i class="fas fa-times-circle brown-grey f-14 cross-btn"></i>
                              </button>
                           </div>
                           <div class="col-md-2 text-right p-0">
                              <button type="submit" class="btn theme_color f-14 font-weight-bold p-0" id='won_reset'>Reset</button>
                           </div>
                        </div>
                        <!----------------------------------------------start of won leads card and contents --------------------------------------------------- -->                      
                        <div id="won_lead_content_card"></div>
                        <div id="won_lead_content"></div>
                        <!----------------------------------------------end of won leads card and contents --------------------------------------------------- -->                      
                        <div class="row  m-0 ">
                           <div class="col-md-12  d-flex justify-content-end p-0">
                              <div class="page">
                                 <ul class="salesken pagination  m-0 pt-30 pb-40 pr-40"></ul>
                              </div>
                           </div>
                        </div>
                        <!-- end of won leads content -->
                     </div>
                  </div>
               </div>
            </div>
            <!-- start of lost lead modal -->
            <jsp:include page="modal/lost_lead_modal.jsp"></jsp:include>
            <!-- end of lost lead modal -->
            <!-- start of add lead modal -->
            <jsp:include page="modal/add_lead_modal.jsp"></jsp:include>
            <!-- end of add lead modal -->
            <!-- start of won lead modal -->
            <jsp:include page="modal/won_lead_modal.jsp"></jsp:include>
            <!-- end of won lead modal -->
            <!-- start of edit lead modal -->
            <jsp:include page="modal/edit_lead_modal.jsp"></jsp:include>
            <!-- end of edit lead modal -->
            <!-- start of delete modal -->
            <jsp:include page="modal/delete_modal.jsp"></jsp:include>
            <!-- end of delete modal -->
            <!-- start of leave task modal -->
            <jsp:include page="modal/leave_task_modal.jsp"></jsp:include>
            <!-- end of leave task modal -->
         </div>
      </main>
      <script src="<%=baseURL%>assets/js/jquery-3.4.1.min.js"></script>
      <script src="<%=baseURL%>assets/js/popper.min.js"></script>
      <script src="<%=baseURL%>assets/js/bootstrap.min.js"></script>
      <script src="<%=baseURL%>assets/js/bootstrap-datepicker.min.js"></script>
      <script src="<%=baseURL%>assets/js/pagination.min.js"></script>
      <script src="<%=baseURL%>assets/js/salesken.js"></script>
      <script src="<%=baseURL%>assets/js/dropzone.min.js"></script>
      <script src="<%=baseURL%>assets/js/alertify.min.js"></script>
      <script src="<%=baseURL%>assets/js/jquery.validate.min.js"></script>
      <script src="<%=baseURL%>assets/js/leads/lead.js"></script>
   </body>
</html>