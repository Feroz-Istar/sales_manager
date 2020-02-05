<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html lang="en" class="h-100">
<html>
   <head>
      <meta charset="utf-8">
      <meta name="viewport"
         content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <meta name="description" content="">
      <title>Needs Concern Details</title>
      <%
         String url = request.getRequestURL().toString();
         String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
         		+ request.getContextPath() + "/";
         %>
      <link rel="icon" href="<%=baseURL%>favicon.ico" type="image/x-icon" />
      <link rel="shortcut icon" href="<%=baseURL%>favicon.ico"
         type="image/x-icon" />
      <link rel="stylesheet" href="<%=baseURL%>assets/css/bootstrap.min.css">
      <link rel="stylesheet" href="<%=baseURL%>assets/css/salesken_style.css">
      <link rel="stylesheet" href="<%=baseURL%>assets/css/all.css">
      <link rel="stylesheet" href="<%=baseURL%>assets/css/report.css">
      <link href="<%=baseURL%>assets/css/bootstrap-datepicker3.min.css?xsww"
         rel="stylesheet">
      <link href="<%=baseURL%>assets/css/bootstrap-datepicker3.min.css?xsww"
         rel="stylesheet">
   </head>
   <body data-baseurl="<%=baseURL%>" onload="load()">
      <div class="loader-div d-none">
         <div
            class="inner-circle-div d-flex align-items-center justify-content-center">
            <div class="spinner-border  text-danger">
               <span class="sr-only">Loading...</span>
            </div>
         </div>
      </div>
      <jsp:include page="../../../../navbar/nav.jsp"></jsp:include>
      <main role="main">
         <div class="container-fluid salesken_container">
            <div
               class="row grey-white-bg align-items-center m-0 theme_solid_border_bottom pl-40 pr-40 pt-10 pb-10">
               <div class="col-md-6 col-12 d-flex align-items-center p-0">
                  <i class="fas fa-arrow-left black f-20 cursor-pointer"
                     onclick="window.location.href = '../../../report.jsp'"></i>
                  <div
                     class="display-1 black f-20 border-right-separation pr-20  fw-500 pl-20">Persona
                     01
                  </div>
                  <div class="f-12 brown-grey pl-20">Dashboard</div>
                  <i
                     class="fas fa-chevron-circle-right pl-2 pr-2 f-12 very-light-pink"></i>
                  <div class=" f-12 brown-grey fw-500 " id="breadcrumb">Task</div>
                  <i
                     class="fas fa-chevron-circle-right pl-2 pr-2 f-12 very-light-pink"></i>
                  <div class=" f-12 brown-grey fw-500 " id="breadcrumb">Customers
                     who responded
                  </div>
               </div>
            </div>
            <div class="card shadow-bottom w-100 border-0">
               <div class="card-body p-0">
                  <div
                     class="row m-0 justify-content-between bg-white theme_solid_border_bottom">
                     <div class="col-md-10 d-flex align-items-center p-0  pt-20 pb-20 pl-40 blue-black f-14">
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce finibus, risus non…egestas gravida, ante ligula rutrum ligula, non dictum purus <br>justo mattis tortor
                     </div>
                     <div class="col-md-2 p-0  pt-20 pb-20 d-flex align-items-center">
                        <button type="button" class="istar-btn-icon  previous"
                           style="right: 80px; position: absolute; top: 26px; border-radius: 4px !important;"
                           id="follow-up-left">
                        <i class="fal fa-chevron-left"></i>
                        </button>
                        <button type="button" class="istar-btn-icon  active ml-2 next"
                           style="right: 40px; position: absolute; top: 25px; border-radius: 4px !important;"
                           id="follow-up-left">
                        <i class="fal fa-chevron-right"></i>
                        </button>
                     </div>
                  </div>
               </div>
            </div>
            <div class="row align-items-center bg-white theme_solid_border_bottom pl-40 pr-40 pt-15 pb-15  m-0" id="needsConcernDetail_filters">
               <div class="col-md-3 text-result-found p-0	">
                  <strong class="number-of-results">03</strong> Results Found
               </div>
               <div class="col-md-9 d-md-flex justify-content-end p-0  filter-dropdown-list-catch">
                  <div class="input-group date custom-calendar">
                     <input type="text" id="needsConcernDetail_datepicker" class="form-control  custom-dateselect" value="12-02-2012" placeholder="Calendar">
                     <div class="input-group-addon" onclick="showNeedsDetailCalendar()">
                        <img src="<%=baseURL%>/assets/image/calendar.svg" alt="calendar" class="pr-1 hw-24">
                     </div>
                  </div>
                  <div class="istar-dropdown-task select_focus mr-10">
                     <button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="needsConcernDetail_stage" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                     <span class="sr-only">Toggle Dropdown</span> <span id="needsConcernDetail_stage_drop">All Stages</span> <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
                     </button>
                     <div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="needsConcernDetail_stage">
                        <button class="dropdown-item" type="button" data-id="1" onclick="needsConcernDetail_stage_dropdown(this)">Stage 1</button>
                        <button class="dropdown-item" type="button" data-id="2" onclick="needsConcernDetail_stage_dropdown(this)">stage 2</button>
                     </div>
                  </div>
                  <div class="istar-dropdown-task select_focus mr-10">
                     <button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="needsConcernDetail_activity" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                     <span class="sr-only">Toggle Dropdown</span> <span id="needsConcernDetail_activity_drop">All Activities </span> <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
                     </button>
                     <div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="needsConcernDetail_activity">
                        <button class="dropdown-item" type="button" data-id="1" onclick="needsConcernDetail_activity_dropdown(this)">
                        <img src="<%=baseURL%>assets/image/calltask.svg" alt="call" class="task-dropdown"> Call Task
                        </button>
                        <button class="dropdown-item" type="button" data-id="2" onclick="needsConcernDetail_activity_dropdown(this)">
                        <img src="<%=baseURL%>assets/image/emailtask.svg" alt="email" class="task-dropdown"> Email Task
                        </button>
                        <button class="dropdown-item" type="button" data-id="3" onclick="needsConcernDetail_activity_dropdown(this)">
                        <img src="<%=baseURL%>assets/image/webinartask.svg" alt="webinar" class="task-dropdown"> Webinar Task
                        </button>
                        <button class="dropdown-item" type="button" data-id="4" onclick="needsConcernDetail_activity_dropdown(this)">
                        <img src="<%=baseURL%>assets/image/presentation.svg" alt="" class="task-dropdown"> Presentation
                        </button>
                     </div>
                  </div>
                  <div class="istar-dropdown-task select_focus mr-10">
                     <button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="needsConcernDetail_status" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                     <span class="sr-only">Toggle Dropdown</span><span id="needsConcernDetail_status_drop"> All Status</span> <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
                     </button>
                     <div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="needsConcernDetail_status">
                        <button class="dropdown-item" type="button" data-id="3" onclick=" needsConcernDetail_status_dropdown(this)">Ongoing</button>
                        <button class="dropdown-item" type="button" data-id="4" onclick=" needsConcernDetail_status_dropdown(this)">Completed</button>
                     </div>
                  </div>
                  <div class="istar-dropdown-task dropdown " id="needsConcernDetail-filter">
                     <button class="istar-dropdown-arrow " data-display="static" id="needsConcernDetail_dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                     <span class="sr-only">Toggle Dropdown</span> All Agents <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
                     </button>
                     <div class="dropdown-menu filter-menu dropdown-menu-right istar-dropdown-task-menu  dropdown-menu-lg-right position-absolute px-4" aria-labelledby="needsConcernDetail_dropdown" style="width: 350px;height:660px">
                        <ul class="dropdown-nav nav nav-tabs nav-mytabs filtertabs pt-2 d-flex align-items-end" id="needsConcernDetailTab" role="tablist">
                           <li class="nav-item"><a class="nav-item nav-link active" id="needsConcernDetail_individual-tab" data-toggle="tab" href="#needsConcernDetail_individual" role="tab" aria-controls="needsConcernDetail_individual" aria-selected="true">Individual</a></li>
                           <li class="nav-item"><a class="nav-item nav-link" id="needsConcernDetail_team-tab" data-toggle="tab" href="#needsConcernDetail_team" role="tab" aria-controls="needsConcernDetail_team" aria-selected="false">Team</a></li>
                        </ul>
                        <div class="tab-content" id="needsConcernDetailTab-tabContent">
                           <div class="tab-pane fade show active px-4 py-3" id="needsConcernDetail_individual" role="tabpanel" aria-labelledby="needsConcernDetail_individual-tab">
                              <div class="input-group py-2">
                                 <input id="needsConcernDetail_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
                                 <div class="input-group-append">
                                    <button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
                                    <i class="fa fa-search f-12 brown-grey"></i>
                                    </button>
                                 </div>
                              </div>
                              <div class="needsConcernDetail-agent-list mb-2" style="overflow-x: hidden; overflow-y: auto;"></div>
                           </div>
                           <div class="tab-pane fade px-4 py-3" id="needsConcernDetail_team" role="tabpanel" aria-labelledby="needsConcernDetail_team-tab">
                              <div class="input-group py-2">
                                 <input id="needsConcernDetail_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
                                 <div class="input-group-append">
                                    <button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
                                    <i class="fa fa-search f-12 brown-grey"></i>
                                    </button>
                                 </div>
                              </div>
                              <div class="mb-2 needsConcernDetail-team-list" style="overflow-x: hidden; overflow-y: auto;"></div>
                           </div>
                        </div>
                        <div class="w-100 text-center">
                           <button class="btn  rounded-0 theme_bg text-white f-14 font-weight-bold mb-3 text-center px-3" style="min-width: 200px;" id="needsConcernDetail_team_submit">Submit</button>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div
               class="row cream_white m-0 theme_solid_border_bottom justify-content-between align-items-center pl-40 pr-40 pt-10 pb-10"
               id="needsConcernDetail_filter_selections" style="">
               <div class="col-md-10 d-flex p-0 filters-inside-selection"></div>
               <div class="col-md-2 text-right p-0">
                  <button type="submit"
                     class="btn theme_color f-14 font-weight-bold p-0"
                     id="needs_detailReport_reset" data-type="needsconcerndetail"
                     onclick="resetNeedConcernDetailsFilters(this)">Reset</button>
               </div>
            </div>
            <div class="row m-0">
               <div class="col-md-12 bg-white p-0 ">
                  <div class="row very-light-pink-grey-bg m-0">
                     <!-- 	start of needsConcernDetail tab   -->
                     <div class="col-md-3 p-0 border-right pl-20">
                        <div class="nav flex-column nav-pills taskdetail-tab-list"
                           id="needsConcernDetail_tab" role="tablist" aria-orientation="vertical"></div>
                     </div>
                     <!--  end of needsConcernDetail tab    -->
                     <!-- start of needsConcernDetail tab  content  -->
                     <div class="col-md-9 bg-white p-0 position-relative" id="">
                        <div class="tab-content h-100" id="needsConcernDetail_tab_content"></div>
                     </div>
                     <!-- 							end of needsConcernDetail tab  content -->
                  </div>
                  <!-- end of task detail -->
                  <!-- end of target content -->
               </div>
            </div>
            <!-- start of share task modal -->
            <!-- start of create event modal -->
            <div class="modal fade" id="shareTaskModal" tabindex="-1"
               role="dialog" aria-labelledby="shareTaskModalTitle"
               aria-hidden="true">
               <div class="modal-dialog modal-lg modal-dialog-centered"
                  role="document">
                  <div class="modal-content rounded-0 ">
                     <div class="modal-header shadow-bottom pt-25 pb-25  pl-30 pr-30 ">
                        <h5 class="modal-title greyish-brown f-18 font-weight-bold mb-0">Share
                           Task
                        </h5>
                        <button type="button" class="close" data-dismiss="modal"
                           aria-label="Close">
                        <img src="<%=baseURL%>assets/image/close.svg" alt="taskicon"
                           class="rounded-circle hw-24 task-icon">
                        </button>
                     </div>
                     <div class="modal-body p-0 pr-30 pl-30">
                        <div class="f-14 greyish-brown pt-30 pb-10">Lorem ipsum
                           dolor sit amet, consectetur adipiscing elit.
                        </div>
                        <div class="row m-0 pb-25">
                           <%for(int i=0; i<10; i++){ %>
                           <button class="btn p-0 position-relative mr-15">
                           <img src="<%=baseURL%>assets/image/37.jpg" class="hw-40">
                           <i
                              class="fas fa-times-circle brown-grey rounded-circle f-14 cross-btn bg-white border-white"
                              style="top: 15px;"></i>
                           </button>
                           <%} %>
                        </div>
                        <div class="row m-0 pt-20 pb-30">
                           <div class="col-md-12 p-0">
                              <textarea
                                 class="custom-modal-textarea w-100 istar-form-control form-control"
                                 placeholder="Type here" id="eventdescription "
                                 name="eventdescription" rows="6"></textarea>
                           </div>
                        </div>
                     </div>
                     <div class="modal-footer p-0 pt-30 pb-30 pl-30	pr-30">
                        <button type="submit"
                           class="btn theme_color f-14 font-weight-bold m-0 pr-20">Reset</button>
                        <button type="button"
                           class="btn big_button rounded-0 f-14 font-weight-bold m-0"
                           id="create" data-dismiss="modal">SUBMIT</button>
                     </div>
                  </div>
               </div>
            </div>
            <!-- end of share task modal -->
         </div>
      </main>
      <script src="<%=baseURL%>assets/js/jquery-3.4.1.min.js"></script>
      <script src="<%=baseURL%>assets/js/popper.min.js"></script>
      <script src="<%=baseURL%>assets/js/bootstrap.min.js"></script>
      <script src="<%=baseURL%>assets/js/bootstrap-datepicker.min.js"></script>
      <script src="<%=baseURL%>assets/js/report/customer/needs_concern_details.js"></script>
      <script src="<%=baseURL%>assets/js/salesken.js"></script>
      <script></script>
   </body>
</html>