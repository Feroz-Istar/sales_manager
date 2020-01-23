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
                  
               </div>
               <div class="tab-pane fade " id="leadwebinar_adherence" role="tabpanel"
                  aria-labelledby="-tab">
                  
                  
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