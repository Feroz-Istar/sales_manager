<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html lang="en" class="h-100">
<html>
   <head>
      <meta charset="utf-8">
      <meta name="viewport"
         content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <meta name="description" content="">
      <title>Reports - No Follow up</title>
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
   <body  data-baseurl="<%=baseURL%>" onload="load()">
      <div class="loader-div d-none">
         <div
            class="inner-circle-div d-flex align-items-center justify-content-center">
            <div class="spinner-border  text-danger">
               <span class="sr-only">Loading...</span>
            </div>
         </div>
      </div>
      <jsp:include page="../../../navbar/nav.jsp"></jsp:include>
      <main role="main">
         <div class="container-fluid salesken_container">
            <div class="row grey-white-bg align-items-center m-0 theme_solid_border_bottom pl-40 pr-40 pt-10 pb-10">
               <div class="col-md-6 col-12 d-flex align-items-center p-0">
                  <i class="fas fa-arrow-left black f-20 cursor-pointer" onclick="window.location.href = '../../report.jsp'"></i>
                  <div class="display-1 black f-20 border-right-separation pr-20  fw-500 pl-20">No Follow - Ups</div>
                  <div class="f-12 brown-grey pl-20">Dashboard</div>
                  <i class="fas fa-chevron-circle-right pl-2 pr-2 f-12 very-light-pink"></i>
                  <div class=" f-12 brown-grey fw-500 " id="breadcrumb">Accenture
                     Consulting Inc.
                  </div>
               </div>
            </div>
            <div class="card shadow-bottom w-100 border-0">
               <div class="card-body p-0">
                  <div class="row m-0 justify-content-between bg-white pt-15 pb-15 theme_solid_border_bottom">
                     <div class="col-md-6 d-flex align-items-center p-0 pl-40">
                        <img src="<%=baseURL %>/assets/image/report-no-followup.svg" height="60" width="100" class="border-right-red mr-25 pr-25	 ">
                        <div class="greyish-brown f-16 fw-500">No Follow - Ups</div>
                     </div>
                     <div class="col-md-2">
                        <button type="button" class="istar-btn-icon  previous" style="right: 80px;   position: absolute;  top: 14px;  border-radius: 4px !important;"
                           id="follow-up-left">
                        <i class="fal fa-chevron-left"></i>
                        </button>
                        <button type="button"
                           class="istar-btn-icon  active ml-2 next" style="right: 40px;  position: absolute;  top: 13px; border-radius: 4px !important;"
                           id="follow-up-left">
                        <i class="fal fa-chevron-right"></i>
                        </button>
                     </div>
                  </div>
               </div>
            </div>
            <div class="row align-items-center bg-white theme_solid_border_bottom m-0  pl-40 pt-15 pb-15 pr-40" id="report_filter_row">
               <div class="col-md-3 text-result-found p-0">
                  <strong class="number-of-results">04</strong> Results Found
               </div>
               <div class="col-md-9 d-md-flex justify-content-end p-0 ">
                  <div class="input-group date custom-calendar align-items-center">
                     <input type="text" id="nofollowup_datepicker" class="form-control  custom-dateselect"
                        value="12-02-2012" placeholder="Calendar">
                     <div class="input-group-addon " onclick="showCalendar()">
                        <img src ="<%=baseURL%>/assets/image/calendar.svg"  alt="calendar" class="pr-1 h-20">
                     </div>
                  </div>
                  <div class="istar-dropdown-task select_focus mr-10">
                     <button class="istar-dropdown-arrow dropdown-toggle" data-display="static"
                        id="nofollowup_stage" data-toggle="dropdown" aria-haspopup="true"
                        aria-expanded="false">
                     <span class="sr-only">Toggle Dropdown</span>All Stages
                     <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
                        class=" float-right">
                     </button>
                     <div
                        class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="nofollowup_stage">
                        <button class="dropdown-item" type="button" onclick="nofollowup_stage_dropdown(this)" data-id="$1000">$1000</button>
                        <button class="dropdown-item" type="button" onclick="nofollowup_stage_dropdown(this)" data-id="$5000">$5000</button>
                     </div>
                  </div>
                  <div class="istar-dropdown-task select_focus mr-10">
                     <button class="istar-dropdown-arrow dropdown-toggle" data-display="static"
                        id="nofollowup_activity" data-toggle="dropdown" aria-haspopup="true"
                        aria-expanded="false">
                     <span class="sr-only">Toggle Dropdown</span> All
                     activities 
                     <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
                        class=" float-right">
                     </button>
                     <div
                        class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="nofollowup_activity">
                        <button class="dropdown-item" type="button" onclick="nofollowup_activity_dropdown(this)" data-id="Call Task">
                        <img src="<%=baseURL%>assets/image/calltask.svg" alt="call"
                           class="task-dropdown">Call Task</button>
                        <button class="dropdown-item" type="button"  onclick="nofollowup_activity_dropdown(this)" data-id="Email Task">
                        <img src="<%=baseURL%>assets/image/emailtask.svg" alt="email"
                           class="task-dropdown">Email Task</button>
                        <button class="dropdown-item" type="button"  onclick="nofollowup_activity_dropdown(this)" data-id="Webinar Task">
                        <img src="<%=baseURL%>assets/image/webinartask.svg" alt="webinar"
                           class="task-dropdown">Webinar Task</button>
                        <button class="dropdown-item" type="button"  onclick="nofollowup_activity_dropdown(this)"  data-id="Presentation"> 
                        <img src="<%=baseURL%>assets/image/presentation.svg" alt="presentation"
                           class="task-dropdown">Presentation</button>
                     </div>
                  </div>
                  <div class="istar-dropdown-task select_focus ">
                     <button class="istar-dropdown-arrow dropdown-toggle" data-display="static"
                        id="nofollowup_status" data-toggle="dropdown" aria-haspopup="true"
                        aria-expanded="false">
                     <span class="sr-only">Toggle Dropdown</span>All Status
                     <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
                        class=" float-right">
                     </button>
                     <div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="nofollowup_status">
                        <button class="dropdown-item" type="button" onclick="nofollowup_status_dropown(this)" data-id="Won">Won</button>
                        <button class="dropdown-item" type="button" onclick="nofollowup_status_dropown(this)" data-id="Lost">Lost</button>
                     </div>
                  </div>
               </div>
            </div>
            <div class="row cream_white m-0 theme_solid_border_bottom justify-content-between align-items-center pl-40 pr-40 pt-10 pb-10" id="nofollowup_filter_selections" style="">
							<div class="col-md-10 d-flex p-0 filters-inside-selection"></div>
							<div class="col-md-2 text-right p-0">
								<button type="submit" class="btn theme_color f-14 font-weight-bold p-0" id="nofollowupReport_reset" data-type="nofollowupReport" onclick="resetReportFilters(this)">Reset</button>
							</div>
			</div>
            <div class="row m-0">
               <div class="col-md-12 bg-white p-0 ">
                  <div class="row very-light-pink-grey-bg m-0">
                     <div class="col-md-3 p-0 border-right pl-20">
                        <div class="nav flex-column nav-pills taskdetail-tab-list" id="taskdetail-tab-list"
                           role="tablist" aria-orientation="vertical">
                          
                        </div>
                     </div>
                     <div class="col-md-9 p-0 bg-white">
                        <div class="tab-content h-100" id="taskdetail-tab-listContent">
                          
                        </div>
                     </div>
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
                     <h5 class="modal-title greyish-brown f-18 font-weight-bold mb-0">Share Task</h5>
                     <button type="button" class="close" data-dismiss="modal"
                        aria-label="Close">
                     <img src="<%=baseURL%>assets/image/close.svg" alt="taskicon"
                        class="rounded-circle hw-24 task-icon">
                     </button>
                  </div>
                  <div class="modal-body p-0 pr-30 pl-30">
                     <div class="f-14 greyish-brown pt-30 pb-10">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</div>
                     <div class="row m-0 pb-25">
                        <%for(int i=0; i<10; i++){ %>
                        <button class="btn p-0 position-relative mr-15">
                        <img src="<%=baseURL%>assets/image/37.jpg" class="hw-40">
                        <i class="fas fa-times-circle brown-grey rounded-circle f-14 cross-btn bg-white border-white" style="top:15px;"></i>
                        </button>
                        <%} %>
                     </div>
                     <div class="row m-0 pt-20 pb-30">
                        <div class="col-md-12 p-0">
                           <textarea class="custom-modal-textarea w-100 istar-form-control form-control" placeholder="Type here"
                              id="eventdescription " name="eventdescription" rows="6"></textarea>
                        </div>
                     </div>
                  </div>
                  <div class="modal-footer p-0 pt-30 pb-30 pl-30	pr-30">
                     <button type="submit"
                        class="btn theme_color f-14 font-weight-bold m-0 pr-20" >Reset</button>
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
        <script src="<%=baseURL%>assets/js/no_followup.js"></script>
   <script src="<%=baseURL%>assets/js/salesken.js"></script>

   <script src="<%=baseURL%>assets/js/bootstrap-datepicker.min.js"></script>
   <script>
  
   </script>
    </body>
</html>