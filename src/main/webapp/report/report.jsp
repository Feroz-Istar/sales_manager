<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java"
   contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <meta name="description" content="">
      <title>Salesken - Reports</title>
      <%
         String url = request.getRequestURL().toString();
         String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
         		+ request.getContextPath() + "/";
         String usertabs[]={"All Users","Sales Team","Product Team","Tech Team"};
         
         %>
      <link rel="icon" href="<%=baseURL%>favicon.ico" type="image/x-icon" />
      <link rel="shortcut icon" href="<%=baseURL%>favicon.ico" type="image/x-icon" />
      <link rel="stylesheet" href="<%=baseURL%>assets/css/bootstrap.min.css">
      <link href="<%=baseURL%>assets/css/bootstrap-datepicker3.min.css?xsww" rel="stylesheet">
      <link rel="stylesheet" href="<%=baseURL%>assets/css/salesken_style.css">
      <link rel="stylesheet" href="<%=baseURL%>assets/css/all.css">
      <link rel="stylesheet" href="<%=baseURL%>assets/css/report.css">
      <link href="<%=baseURL%>assets/css/bootstrap-datepicker3.min.css?xsww" rel="stylesheet">
      <link rel="stylesheet" href="<%=baseURL%>assets/css/salesken_style_media_query.css">
   </head>
   <body data-baseurl="<%=baseURL%>" onload="load()">
      <!-- start of circular progress bar for page loading -->
      <div class="salesken_progress h-100 w-100 " style="display:none">
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
            <div class="row grey-white-bg align-items-center theme_solid_border_bottom m-0 pl-40 pr-40 pt-10 pb-10">
               <div class="col-md-6 col-12 d-flex align-items-center p-0">
                  <div class="display-1 black f-20 border-right-separation pr-20 fw-500">Reports</div>
                  <div class=" f-12 brown-grey pl-20">Dashboard</div>
                  <i class="fas fa-chevron-circle-right f-12 brown-grey pl-2 pr-2"></i>
                  <div class="f-12 brown-grey">Report</div>
                  <i class="fas fa-chevron-circle-right f-12 brown-grey pl-2 pr-2"></i>
                  <div class=" f-12 brown-grey  fw-500" id="breadcrumb">Task</div>
               </div>
            </div>
            <div class="row m-0">
               <div class="col-md-12 bg-white p-0">
                  <ul class="nav nav-tabs nav-mytabs pl-40 pt-10 d-flex align-items-end" id="reportTab" role="tablist">
                     <li class="nav-item"><a class="nav-item nav-link active" id="task-tab" data-toggle="tab" href="#task" role="tab" aria-controls="task" aria-selected="true">Playbook Insights</a></li>
                     <li class="nav-item"><a class="nav-item nav-link" id="users-tab" data-toggle="tab" href="#users" role="tab" aria-controls="users" aria-selected="false">Users</a></li>
                     <li class="nav-item"><a class="nav-item nav-link" id="customer-tab" data-toggle="tab" href="#customer" role="tab" aria-controls="customer" aria-selected="false">Customer</a></li>
                     <li class="nav-item"><a class="nav-item nav-link" id="time_analysis-tab" data-toggle="tab" href="#time_analysis" role="tab" aria-controls="time_analysis" aria-selected="false">Timeline Analysis</a></li>
                     <li class="nav-item"><a class="nav-item nav-link" id="adherence-tab" data-toggle="tab" href="#adherence" role="tab" aria-controls="adherence" aria-selected="false">Adherence</a></li>
                     <li class="nav-item"><a class="nav-item nav-link" id="roi_calculator-tab" data-toggle="tab" href="#roi_calculator" role="tab" aria-controls="roi_calculator" aria-selected="false">ROI Calculator</a></li>
                     <li class="nav-item"><a class="nav-item nav-link" id="custom_report-tab" data-toggle="tab" href="#custom_report" role="tab" aria-controls="custom_report" aria-selected="false">Custom Report</a></li>
                  </ul>
                  <div class="tab-content p-0 mytab-content" id="reportTabContent">
                     <div class="tab-pane fade show active" id="task" role="tabpanel" aria-labelledby="task-tab">
                        <!-- start of Task tab  content -->
                        <div class="row align-items-center  theme_solid_border_bottom m-0 pl-40 pr-40" id="playbook-insight-filter">
                        </div>
                        <div class="row cream_white m-0 theme_solid_border_bottom justify-content-between align-items-center pl-40 pr-40 pt-10 pb-10" id="report_insight_filter">
                           <div class="col-md-10 d-flex p-0">
                           </div>
                           <div class="col-md-2 text-right p-0">
                              <button type="submit" class="btn theme_color f-14 font-weight-bold p-0" id="play_book_reset" data-type="play_book_insight" onclick="resetFilters(this)">Reset</button>
                           </div>
                        </div>
                        <div class="row m-0 pl-40 pr-40" id="playbook-insight-content">
                        </div>
                        <!-- end of Task tab  content -->
                     </div>
                     <div class="tab-pane fade" id="users" role="tabpanel" aria-labelledby="users-tab">
                        <!-- start of user tab content-->
                        <div class="row align-items-center  theme_solid_border_bottom m-0 pl-40 pr-40">
                           <div class="col-md-3 text-result-found p-0">
                              <strong class="number-of-results">04</strong> Results Found
                           </div>
                           <div class="col-md-9 d-md-flex justify-content-end  p-0 ">
                              <div class="input-group date custom-calendar mr-10 mb-10 mt-10">
                                 <input type="text" id="user_datepicker" class="form-control  custom-dateselect" value="12-02-2012" placeholder="Calendar">
                                 <div class="input-group-addon" onclick="showCalendar()">
                                    <img src="<%=baseURL%>/assets/image/calendar.svg" alt="calendar" class="pr-1  hw-24">
                                 </div>
                              </div>
                              <div class="istar-dropdown-task select_focus mb-10 mt-10">
                                 <button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="report_user_dealvalue" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                 <span class="sr-only">Toggle Dropdown</span> <span id="report_user__drop">All Deal Value</span>
                                 <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
                                 </button>
                                 <div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="report_user_dealvalue" id="report_user_dealvalue_dropdown">
                                    <button class="dropdown-item" type="button" onclick="report_user_dealvalue(this)">
                                    $1000
                                    </button>
                                    <button class="dropdown-item" type="button"  onclick="report_user_dealvalue(this)">
                                    $5000
                                    </button>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="row cream_white m-0 theme_solid_border_bottom justify-content-between align-items-center pl-40 pr-40 pt-10 pb-10" id="user_filter">
                           <div class="col-md-10 d-flex p-0">
                              <button class="theme_solid_border bg-white brown-grey rounded f-12 position-relative search-filter">$1000
                              <i class="fas fa-times-circle brown-grey f-14 cross-btn"></i>
                              </button>
                           </div>
                           <div class="col-md-2 text-right p-0">
                              <button type="submit" class="btn theme_color f-14 font-weight-bold p-0" id="user_reset">Reset</button>
                           </div>
                        </div>
                        <div class="row shadow-bottom theme_dotted_border_bottom  pt-25 pb-25 m-0" id="user_tab_summarize_content">
                        </div>
                        <div class="row cream_white m-0" id="user_tab_detait_content">
                        </div>
                        <!-- end of user tab content -->
                     </div>
                     <div class="tab-pane fade minh-700" id="customer" role="tabpanel" aria-labelledby="customer-tab">
                        <!-- start of customer tab content-->
                        <div class="row align-items-center theme_solid_border_bottom m-0">
                           <div class="col-md-3 text-result-found p-0 pt-15 pb-15 pl-40">
                              <strong class="number-of-results">04</strong> Results Found
                           </div>
                        </div>
                        <div class="row m-0 border-bottom-dashed-separation ml-40 mr-40" id="customer_tab_content">
                        </div>
                        <!-- end of customer tab content -->
                     </div>
                     <div class="tab-pane fade" id="time_analysis" role="tabpanel" aria-labelledby="time_analysis-tab">
                        <!-- start of time analysis tab content -->
                        <div class="card border-0 card-shadow-bottom" id="time_analysis_card">
                        </div>
                        <!-- start of overall analysis -->
                        <div class="overall_analysis" >
                           <div class="row m-0 theme_dashed_border_bottom ml-40 mr-40 pt-20 pb-20" id="">
                              <div class="col-md-4 p-0 overall_title">
                                 <h5 class="f-20 fw-500 black">Overall Analysis</h5>
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
                                       id="report_timeline_persona" data-toggle="dropdown" aria-haspopup="true"
                                       aria-expanded="false">
                                    <span class="sr-only">Toggle Dropdown</span> <span id="report_timeline_drop">All Persona</span>
                                    <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
                                       class=" float-right">
                                    </button>
                                    <div
                                       class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="report_timeline_persona" id="">
                                       <button class="dropdown-item" type="button" onclick="report_timeline_persona(this)">
                                       Persona 1 
                                       </button>
                                       <button class="dropdown-item" type="button" onclick="report_timeline_persona(this)">
                                       Persona 2
                                       </button>
                                    </div>
                                 </div>
                                 <div class="istar-dropdown-task select_focus mr-10">
                                    <button class="istar-dropdown-arrow dropdown-toggle" data-display="static"
                                       id="report_timeline_success" data-toggle="dropdown" aria-haspopup="true"
                                       aria-expanded="false">
                                    <span class="sr-only">Toggle Dropdown</span ><span id="report_timeline_success_drop">Filter by Success</span>
                                    <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
                                       class=" float-right">
                                    </button>
                                    <div
                                       class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="report_timeline_success">
                                       <button class="dropdown-item" type="button" onclick="report_timeline_success(this)">
                                       Lead 1 
                                       </button>
                                       <button class="dropdown-item" type="button" onclick="report_timeline_success(this)">
                                       Lead 2 
                                       </button>
                                    </div>
                                 </div>
                                 <div class="istar-dropdown-task dropdown select_focus" id="overall-analysis-filter">
                                    <button class="istar-dropdown-arrow " data-display="static"
                                       id="" data-toggle="dropdown" aria-haspopup="true"
                                       aria-expanded="false">
                                    <span class="sr-only">Toggle Dropdown</span> All Agents <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
                                       class=" float-right">
                                    </button>
                                    <div class="dropdown-menu filter-menu dropdown-menu-right istar-dropdown-task-menu  dropdown-menu-lg-right position-absolute px-4"
                                       aria-labelledby="overallAnalysis_dropdown" style="width: 350px; ">
                                       <ul class="dropdown-nav nav nav-tabs nav-mytabs filtertabs pt-2 d-flex align-items-end" id="overallAnalysisTab" role="tablist">
                                          <li class="nav-item">
                                             <a class="nav-link active" id="overallAnalysis_individual-tab" data-toggle="tab" href="#overallAnalysis_individual" role="tab" aria-controls="overallAnalysis_individual" aria-selected="true">Individual</a>
                                          </li>
                                          <li class="nav-item">
                                             <a class="nav-link" id="overallAnalysis_team-tab" data-toggle="tab" href="#overallAnalysis_team" role="tab" aria-controls="overallAnalysis_team" aria-selected="false">Team</a>
                                          </li>
                                       </ul>
                                       <div class="tab-content" id="overallAnalysisTabContent">
                                          <div class="tab-pane fade show active px-4 py-3" id="overallAnalysis_individual" role="tabpanel" aria-labelledby="overallAnalysis_individual-tab">
                                             <div class="input-group py-2">
                                                <input id="overallAnalysis_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
                                                <div class="input-group-append">
                                                   <button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
                                                   <i class="fa fa-search f-12 brown-grey"></i>
                                                   </button>
                                                </div>
                                             </div>
                                             <div class="agent-team-list mb-2"  style=" overflow-x: hidden; overflow-y:auto;">
                                                <%for(int i=0; i<20;i++){ %>
                                                <div class="d-flex align-items-center pt-3">
                                                   <input class="istar-checkbox overallAnalysisagentcheckbox" data-id="<%=i %>" id="overallAnalysis_associate-checkbox<%=i %>" type="checkbox">
                                                   <label class="istar-checkbox-style" for="overallAnalysis_associate-checkbox<%=i %>"></label>
                                                   <img alt="Lead Image" title="Lead Name" src ="<%=baseURL%>/assets/image/11.png" class="rounded-circle ml-3 mr-2 hw-40">
                                                   <div>
                                                      <div class="f-14 font-weight-bold greyish-brown text-truncate" title="Robert Garcia">Robert Garcia</div>
                                                      <div class="f-12  brownish-grey text-truncate" title="team">Team -02</div>
                                                   </div>
                                                </div>
                                                <%} %>
                                             </div>
                                          </div>
                                          <div class="tab-pane fade px-4 py-3" id="overallAnalysis_team" role="tabpanel" aria-labelledby="overallAnalysis_team-tab">
                                             <div class="input-group py-2">
                                                <input id="overallAnalysis_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
                                                <div class="input-group-append">
                                                   <button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
                                                   <i class="fa fa-search f-12 brown-grey"></i>
                                                   </button>
                                                </div>
                                             </div>
                                             <div class="agent-team-list mb-2" style="overflow-x: hidden; overflow-y:auto;">
                                                <%for(int j=0; j<20;j++){ %>
                                                <div class="d-flex align-items-center pt-3">
                                                   <input class="istar-checkbox overallAnalysisteamcheckbox" data-id="<%=j %>" id="overallAnalysis_team-checkbox<%=j %>" type="checkbox">
                                                   <label class="istar-checkbox-style" for="overallAnalysis_team-checkbox<%=j%>"></label>
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
                           </div>
                           <div class="row cream_white m-0 theme_solid_border_bottom justify-content-between align-items-center pl-40 pr-40 pt-10 pb-10" id="">
                              <div class="col-md-10 d-flex p-0">
                                 <button class="theme_solid_border bg-white brown-grey rounded f-12 position-relative search-filter" >Filter 1
                                 <i class="fas fa-times-circle brown-grey f-14 cross-btn"></i>
                                 </button>
                              </div>
                              <div class="col-md-2 text-right p-0">
                                 <button type="submit" class="btn theme_color f-14 font-weight-bold p-0" id="overall_analysis_reset">Reset</button>
                              </div>
                           </div>
                           <span id="overall_analysis"></span>
                        </div>
                        <!-- end of overall analysis -->
                        <!-- start of Comparative Analysis -->
                        <div class="comparative_analysis" id="comparative_analysis">
                        </div>
                        <!-- end of Comparative analysis -->
                        <!-- end of time analysis content -->
                     </div>
                      <div class="tab-pane fade" id="adherence" role="tabpanel" aria-labelledby="time_analysis-tab">
                        <!-- start of adherence tab content -->
                        <div class="card border-0 card-shadow-bottom" id="adherence_card">
                        	
                        </div>
                         <div class="row m-0 theme_dashed_border_bottom ml-40 mr-40 pt-20 pb-20" id="adherence_filter">
                              
                           </div>
                           
                          <div class="adherence_tab_content_div">
                      
                          </div>
                        <!-- end of adherence content -->
                     </div>
                     <div class="tab-pane fade minh-700" id="roi_calculator" role="tabpanel" aria-labelledby="roi_calculator-tab">
                        <!-- start of roi_calculator tab content-->
                        <div class="row align-items-center theme_solid_border_bottom m-0 pl-40 pr-40 pt-15 pb-15">
                           <div class="col-md-3 text-result-found p-0">
                              <strong class="number-of-results">04</strong> Results Found
                           </div>
                        </div>
                        <div class="row cream_white m-0 theme_solid_border_bottom" id="roi_calculator_card">
                        </div>
                        <div class="row m-0 border-bottom-dashed-separation ml-40 mr-40 " id="roi_calculator_tab_content">
                        </div>
                        <!-- end of roi_calculator tab content -->
                     </div>
                     <div class="tab-pane fade" id="custom_report" role="tabpanel" aria-labelledby="custom_report">
                        <!-- start of custom_report tab content-->
                        <div class="row justify-content-center pt-20 pb-20 shadow-bottom theme_solid_border_bottom m-0">
                           <div class="col-md-6 p-0">
                              <div class="input-group">
                                 <input id="individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14	" type="search" placeholder="Search here" style="border-right: none !important; height: 35px;">
                                 <div class="input-group-append">
                                    <button class="btn theme_bg border_theme removefocus border_except_left px-4 d-flex justify-content-center align-items-center f-12 text-white font-weight-bold" type="button" style="height: 35px;">
                                    <i class="fa fa-search f-16 mr-2 text-white"></i> SEARCH
                                    </button>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="before-search" style="display:none">
                           <div class="row cream_white m-0 theme_solid_border_bottom pt-10 pb-10 pr-40 pl-40">
                              <button class="theme_solid_border bg-white brown-grey rounded f-12 mr-10 " id="2bhk">2 BHK Flats</button>
                              <button class="theme_solid_border bg-white brown-grey rounded f-12 mr-10 search-filter" id="badWord">Bad Words</button>
                              <button class="theme_solid_border bg-white brown-grey rounded f-12 mr-10 search-filter" id="expensiveFlat">Expensive Flats</button>
                           </div>
                           <div class="d-flex flex-column justify-content-center align-items-center pt-115 minh-500">
                              <img src="<%=baseURL %>assets/image/custom-report.svg" alt="custom report" class="pb-20" height="111.3" width="119.7">
                              <div class="f-16 fw-500 black ">Make a custom report</div>
                              <div class="f-12 brownish-grey">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</div>
                           </div>
                        </div>
                        <div class="after-search  " id="after_search_custom_report" >
                        </div>
                        <!-- end of custom_report tab content -->
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </main>
      <script src="<%=baseURL%>assets/js/jquery-3.4.1.min.js"></script>
      <script src="<%=baseURL%>assets/js/popper.min.js"></script>
      <script src="<%=baseURL%>assets/js/bootstrap.min.js"></script>
      <script src="<%=baseURL%>assets/js/bootstrap-datepicker.min.js"></script>
      <script src="<%=baseURL%>assets/js/bootstrap-datepicker.min.js"></script>
      <script src="<%=baseURL%>assets/js/highcharts.js"></script>
      <script src="<%=baseURL%>assets/js/exporting.js"></script>
      <script src="<%=baseURL%>assets/js/pagination.min.js"></script>
      <script src="<%=baseURL%>assets/js/salesken.js"></script>
      <script src="<%=baseURL%>assets/js/report/report.js"></script>
      <script></script>
   </body>
</html>