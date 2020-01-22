<%
   String url = request.getRequestURL().toString();
   String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
   		+ request.getContextPath() + "/";
   %>
<style></style>
<div class="row h-100 m-0">
   <div class="col-md-11 p-0">
      <div class="row justify-content-between m-0 pl-45 pr-45 pt-15 pb-10">
         <div class="col-9 p-0 ">
            <div
               class="f-18 font-weight-bold greyish-brown text-truncate d-inline"
               data-toggle="tooltip" data-placement="bottom"
               title="Globex Corporation. Inc.">Globex Corporation. Inc.</div>
         </div>
         <div class="col-3 p-0">
            <div class="d-flex justify-content-end">
               <button class="btn p-0">
                  <div style="background-image: url(<%=baseURL%>assets/image/heart.svg); height: 24px; width: 24px;" class="mr-15 fav"></div>
               </button>
               <div class=" dropdown " id="completed_call_comment">
                  <button class="btn p-0 dropdown-toggle"
                     id="completed_call_comment" data-toggle="dropdown"
                     aria-haspopup="true" aria-expanded="true" data-display="static">
                     <div style="background-image: url(<%=baseURL%>assets/image/message.svg); height: 24px; width: 24px;" class="mr-15 comment"></div>
                  </button>
                  <div
                     class="dropdown-menu dropdown-menu-right   istar-dropdown-task-menu p-0"
                     aria-labelledby="completed_call_comment" style="right: -67px;">
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
                                 id="completed_call_comment_submit">Submit</button>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class=" dropdown">
                  <button class="btn  p-0 dropdown-toggle" id="completed_call_reply"
                     data-toggle="dropdown" aria-haspopup="true" aria-expanded="true"
                     data-display="static">
                     <div style="background-image: url(<%=baseURL%>assets/image/reply.svg); height: 24px; width: 24px;" class="mr-15 share"></div>
                  </button>
                  <div
                     class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu p-20  p-0 share-menu"
                     aria-labelledby="completed_call_reply" style="right: -18px;">
                     <div class="input-group position-relative pb-20">
                        <img src="<%=baseURL%>assets/image/search.svg"
                           alt="edit" class=" searchBox"> <input
                           id="completed_call_reply_search"
                           class="form-control  custom-taskborder brown-grey  f-14 search_height minw-237"
                           type="search" placeholder="Search" style="padding-right: 30px">
                     </div>
                     <div style="height: 370px; overflow-x: hidden; overflow-y: auto;">
                        <%
                           for (int i = 0; i < 30; i++) {
                           %>
                        <div class="d-flex align-items-center pb-10 ">
                           <input class="istar-checkbox agentcheckbox " data-id="0"
                              id="completed_call_reply-checkbox<%=i%>" type="checkbox">
                           <label class="istar-checkbox-style"
                              for="completed_call_reply-checkbox<%=i%>"></label> <img
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
                        id="completed_call_reply_submit" onclick="openShareTaskModal()">Submit</button>
                  </div>
               </div>
               <div
                  class="f-14 font-weight-bold dark_theme_color cursor-pointer align-self-center"
                  onclick="window.location.href = 'partials/task_lead_detail.jsp'">
                  View More <i class="fas fa-chevron-circle-right ml-1 "></i>
               </div>
            </div>
         </div>
      </div>
      <div
         class="row  m-0 ml-45 mr-45  pb-20  theme_dotted_border_bottom shadow-bottom  ">
         <div class="col-md-3 p-0">
            <p class="brownish-grey f-14 mb-0">Contact Person</p>
            <p class="black f-16 fw-500 mb-0 text-truncate"
               data-toggle="tooltip" data-placement="bottom"
               title="Globex Corporation">Robert Wolken</p>
         </div>
         <div class="col-md-3 p-0">
            <p class="brownish-grey f-14 mb-0">Agent</p>
            <p class="black f-16 fw-500 mb-0 text-truncate"
               data-toggle="tooltip" data-placement="bottom"
               title="Globex Corporation">Marilyn Fowler</p>
         </div>
      </div>
      <div class="row m-0 pl-45 pr-45 pt-20 ">
         <div class="col p-0">
            <ul
               class="nav nav-tabs nav-mytabs p-0 d-flex align-items-end"
               id="completedTab" role="tablist">
               <li class="nav-item"><a class="nav-item nav-link active"
                  id="whatsright-tab" data-toggle="tab" href="#whatsright"
                  role="tab" aria-controls="whatsright" aria-selected="true">Whats Right?</a></li>
               <li class="nav-item"><a class="nav-item nav-link"
                  id="whatswrong-tab" data-toggle="tab" href="#whatswrong"
                  role="tab" aria-controls="whatswrong" aria-selected="false">Whats Wrong?</a></li>
               <li class="nav-item"><a class="nav-item nav-link"
                  id="timeline-tab" data-toggle="tab" href="#completed_timeline"
                  role="tab" aria-controls="#completed_timeline" aria-selected="false">Timeline</a></li>
               <li class="nav-item"><a class="nav-item nav-link"
                  id="timeline-tab" data-toggle="tab" href="#completed_adherence"
                  role="tab" aria-controls="completed_adherenc" aria-selected="false">Adherence</a></li>
            </ul>
            <div class="tab-content mytab-content p-0 pt-20"
               id="nav-tasktabsContent">
               <div class="tab-pane fade show active" id="whatswrong"
                  role="tabpanel" aria-labelledby="whatswrong-tab">
                  <div class="row m-0 pb-30">
                     <div class="col p-0 d-flex flex-row justify-content-center">
                        <div class="d-flex flex-row align-items-center">
                           <img src="<%=baseURL%>assets/image/man.jpg" alt="person"
                              data-toggle="tooltip" data-placement="bottom" title="Lead Name"
                              class="rounded-circle hw-60 task-image-right"> 
                           <div class="rounded-circle hw-40 task-icon soft_blue_bg text-white font-weight-bold f-12 p-2">50%</div>
                        </div>
                        <button class="btn p-0 ml-40">
                        <i class="fas fa-backward dark_gray"></i>
                        </button>
                        <button class="btn hw-64 border rounded-circle p-0	ml-25 mr-25 ">
                        <i class="fas fa-play dark_gray"></i>
                        </button>
                        <button class="btn p-0 mr-40">
                        <i class="fas fa-forward dark_gray"></i>
                        </button>
                        <div class="d-flex flex-row align-items-center">
                           <img src="<%=baseURL%>assets/image/layer.png" alt="layer"
                              data-toggle="tooltip" data-placement="bottom" title="Agent Name"
                              class="rounded-circle hw-60 task-image-right">
                           <div class="rounded-circle hw-40 task-icon theme_bg text-white font-weight-bold f-12 p-2">50%</div>
                        </div>
                     </div>
                  </div>
                  <div class="row m-0  pl-45 pr-45  ">
                     <div class="col p-0">
                        <div class="theme_solid_border_top_2px"></div>
                     </div>
                  </div>
                  <div class="row  m-0">
                     <div class="col p-0">
                        <div class="row p-0 m-0 ">
                           <div class="col-md-4 p-0  theme_solid_border_right_2px">
                              <%
                                 for (int j = 0; j < 10; j++) {
                                 	String isactive = "";
                                 	if (j == 0) {
                                 		isactive = "active";
                                 	}
                                 %>
                              <div class="row  m-0 audioitem <%=isactive%>">
                                 <div class="col-md-12 p-0 ">
                                    <div class="row  m-0 audioitemrow ml-45 mr-10 "
                                       style="border-bottom: 1px dashed #cccccc;">
                                       <div class="col-md-6 p-0 pl-20 pt-15 pb-15">
                                          <div class="d-flex flex-column">
                                             <p class="mb-0 light_gray fw-300 f-12">06 Mint</p>
                                             <p class="mb-0 bblack f-16 text-break">Introduction</p>
                                          </div>
                                       </div>
                                       <div class="col-md-6 p-0 pr-15 pt-15 pb-15">
                                          <div class="d-flex justify-content-end ">
                                             <button class="btn  p-0	 hw-45 playaudio rounded-circle">
                                             <i class="fas fa-play"></i>
                                             </button>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <%
                                 }
                                 %>
                           </div>
                           <div class="col-md-8 p-0">
                              <div class="row m-0 pl-20 pr-20 pt-20 pb-20 very-light-pink-grey-bg mr-40 theme_solid_border_right_2px">
                                 <div class="col p-0">
                                    <div id="carouselExampleIndicators"
                                       class="carousel slide theme_solid_border_bottom "
                                       data-ride="carousel">
                                       <ol class="carousel-indicators m-0 pb-20">
                                          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                                          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                                          <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                                       </ol>
                                       <div class="carousel-inner" style="box-shadow: 0 .5rem 1rem #eee !important;">
                                          <%
                                             for (int h = 0; h < 4; h++) {
                                             	String isActive = "";
                                             	if (h == 0) {
                                             		isActive = "active";
                                             	}
                                             %>
                                          <div class="carousel-item  <%=isActive%>">
                                             <div class="row align-items-center m-0 bg-white"
                                                style="min-height: 170px;">
                                                <div class="col p-0">
                                                   <div class="d-flex flex-row pr-30 pt-10 pb-30 pl-30 align-items-center">
                                                      <div class="col-md-9 pr-50">
                                                         <div class="f-16 fw-500 greyish-brown">Unsatisfactory Resolution </div>
                                                         <div class="f-12 brownish-grey">Customer sounded tentative after an objection was handled</div>
                                                      </div>
                                                      <img class="minh-100 "
                                                         src="<%=baseURL%>assets/image/unsatisfactory_resolution.svg"
                                                         alt="carousal-img">
                                                   </div>
                                                </div>
                                             </div>
                                          </div>
                                          <%
                                             }
                                             %>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <div class="row m-0   theme_solid_border_top_2px mr-40">
                                 <div class="col p-0 pt-30  ">
                                    <h3 class="black fw-500 f-16 mb-0 pl-40 pb-30">Transcript</h3>
                                    <div class="transcript_container  "
                                       style="max-height: 520px; overflow-x: hidden; overflow-y: auto;">
                                       <%
                                          for (int j = 0; j < 20; j++) {
                                          %>
                                       <div class="d-flex flex-column pl-40 pb-25">
                                          <p class="f-14 bblack pb-10 m-0">
                                             <small class="f-12 brown-grey pr-20 ">00:20.</small> Jamie
                                             Vargas
                                          </p>
                                          <div class="card "
                                             style="border-radius: 0px 20px 20px 20px; box-shadow: 0 .5rem 1rem #eee !important;">
                                             <div class="card-body">
                                                <p class="card-text f-14 blue-black m-0">Some quick
                                                   example text to build on the card title and make up the
                                                   bulk of the card's content.
                                                </p>
                                             </div>
                                          </div>
                                       </div>
                                       <div class="d-flex flex-column pl-40 pb-25">
                                          <p class="f-14 bblack align-self-end pb-10 mb-0">
                                             <small class="f-12 brown-grey  pr-20  ">00:20.</small> Jamie
                                             Vargas
                                          </p>
                                          <div class="card align-self-end very-light-pink-bg"
                                             style="border-radius: 20px 0px 20px 20px">
                                             <div class="card-body">
                                                <p class="card-text blue-black f-14 mb-0">Some quick
                                                   example text to build on the card title and make up the
                                                   bulk of the card's content.
                                                </p>
                                             </div>
                                          </div>
                                       </div>
                                       <%
                                          }
                                          %>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="tab-pane fade show " id="whatsright" role="tabpanel"
                  aria-labelledby="whatsright-tab">
                  <div class="row m-0 pb-30">
                     <div class="col p-0 d-flex flex-row justify-content-center">
                        <div class="d-flex flex-row align-items-center">
                           <img src="<%=baseURL%>assets/image/man.jpg" alt="person"
                              data-toggle="tooltip" data-placement="bottom" title="Lead Name"
                              class="rounded-circle hw-60 task-image-right"> 
                           <div class="rounded-circle hw-40 task-icon soft_blue_bg text-white font-weight-bold f-12 p-2">50%</div>
                        </div>
                        <button class="btn p-0 ml-40">
                        <i class="fas fa-backward dark_gray"></i>
                        </button>
                        <button class="btn hw-64 border rounded-circle p-0	ml-25 mr-25 ">
                        <i class="fas fa-play dark_gray"></i>
                        </button>
                        <button class="btn p-0 mr-40">
                        <i class="fas fa-forward dark_gray"></i>
                        </button>
                        <div class="d-flex flex-row align-items-center">
                           <img src="<%=baseURL%>assets/image/layer.png" alt="layer"
                              data-toggle="tooltip" data-placement="bottom" title="Agent Name"
                              class="rounded-circle hw-60 task-image-right">
                           <div class="rounded-circle hw-40 task-icon theme_bg text-white font-weight-bold f-12 p-2">50%</div>
                        </div>
                     </div>
                  </div>
                  <div class="row m-0  pl-45 pr-45  ">
                     <div class="col p-0">
                        <div class="theme_solid_border_top_2px"></div>
                     </div>
                  </div>
                  <div class="row  m-0">
                     <div class="col p-0">
                        <div class="row p-0 m-0 ">
                           <div class="col-md-4 p-0  theme_solid_border_right_2px">
                              <%
                                 for (int j = 0; j < 10; j++) {
                                 	String isactive = "";
                                 	if (j == 0) {
                                 		isactive = "active";
                                 	}
                                 %>
                              <div class="row  m-0 audioitem <%=isactive%>">
                                 <div class="col-md-12 p-0 ">
                                    <div class="row  m-0 audioitemrow ml-45 mr-10 "
                                       style="border-bottom: 1px dashed #cccccc;">
                                       <div class="col-md-6 p-0 pl-20 pt-15 pb-15">
                                          <div class="d-flex flex-column">
                                             <p class="mb-0 light_gray fw-300 f-12">06 Mint</p>
                                             <p class="mb-0 bblack f-16 text-break">Introduction</p>
                                          </div>
                                       </div>
                                       <div class="col-md-6 p-0 pr-15 pt-15 pb-15">
                                          <div class="d-flex justify-content-end ">
                                             <button class="btn  p-0	 hw-45 playaudio rounded-circle">
                                             <i class="fas fa-play"></i>
                                             </button>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <%
                                 }
                                 %>
                           </div>
                           <div class="col-md-8 p-0">
                              <div class="row m-0 pl-20 pr-20 pt-20 pb-20 very-light-pink-grey-bg mr-40 theme_solid_border_right_2px">
                                 <div class="col p-0">
                                    <div id="carouselExampleIndicators"
                                       class="carousel slide theme_solid_border_bottom "
                                       data-ride="carousel">
                                       <ol class="carousel-indicators m-0 pb-20">
                                          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                                          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                                          <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                                       </ol>
                                       <div class="carousel-inner" style="box-shadow: 0 .5rem 1rem #eee !important;">
                                          <%
                                             for (int h = 0; h < 4; h++) {
                                             	String isActive = "";
                                             	if (h == 0) {
                                             		isActive = "active";
                                             	}
                                             %>
                                          <div class="carousel-item  <%=isActive%>">
                                             <div class="row align-items-center m-0 bg-white"
                                                style="min-height: 170px;">
                                                <div class="col p-0">
                                                   <div class="d-flex flex-row pr-30 pt-10 pb-30 pl-30 align-items-center">
                                                      <div class="col-md-9 pr-50">
                                                         <div class="f-16 fw-500 greyish-brown">Unsatisfactory Resolution </div>
                                                         <div class="f-12 brownish-grey">Customer sounded tentative after an objection was handled</div>
                                                      </div>
                                                      <img class="minh-100 "
                                                         src="<%=baseURL%>assets/image/unsatisfactory_resolution.svg"
                                                         alt="carousal-img">
                                                   </div>
                                                </div>
                                             </div>
                                          </div>
                                          <%
                                             }
                                             %>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <div class="row m-0   theme_solid_border_top_2px mr-40">
                                 <div class="col p-0 pt-30  ">
                                    <h3 class="black fw-500 f-16 mb-0 pl-40 pb-30">Transcript</h3>
                                    <div class="transcript_container  "
                                       style="max-height: 520px; overflow-x: hidden; overflow-y: auto;">
                                       <%
                                          for (int j = 0; j < 20; j++) {
                                          %>
                                       <div class="d-flex flex-column pl-40 pb-25">
                                          <p class="f-14 bblack pb-10 m-0">
                                             <small class="f-12 brown-grey pr-20 ">00:20.</small> Jamie
                                             Vargas
                                          </p>
                                          <div class="card "
                                             style="border-radius: 0px 20px 20px 20px; box-shadow: 0 .5rem 1rem #eee !important;">
                                             <div class="card-body">
                                                <p class="card-text f-14 blue-black m-0">Some quick
                                                   example text to build on the card title and make up the
                                                   bulk of the card's content.
                                                </p>
                                             </div>
                                          </div>
                                       </div>
                                       <div class="d-flex flex-column pl-40 pb-25">
                                          <p class="f-14 bblack align-self-end pb-10 mb-0">
                                             <small class="f-12 brown-grey  pr-20  ">00:20.</small> Jamie
                                             Vargas
                                          </p>
                                          <div class="card align-self-end very-light-pink-bg"
                                             style="border-radius: 20px 0px 20px 20px">
                                             <div class="card-body">
                                                <p class="card-text blue-black f-14 mb-0">Some quick
                                                   example text to build on the card title and make up the
                                                   bulk of the card's content.
                                                </p>
                                             </div>
                                          </div>
                                       </div>
                                       <%
                                          }
                                          %>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="tab-pane fade show " id="completed_timeline" role="tabpanel" aria-labelledby="completed_timeline-tab">
                  <div class="card-body  p-0 card-shadow-bottom" id="completed_timeline_card">
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
                              <input type="text" id="completed_timeline_datepicker" class="form-control  custom-dateselect" value="12-02-2012" placeholder="Calendar">
                              <div class="input-group-addon" onclick="showTimelineCalendar()">
                                 <img src="<%=baseURL%>/assets/image/calendar.svg" alt="calendar" class="pr-1 hw-24">
                              </div>
                           </div>
                           <div class="istar-dropdown-task select_focus mr-10">
                              <button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="completed_timeline_persona" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                              <span class="sr-only">Toggle Dropdown</span> <span id="completed_timeline_drop">All Persona</span> <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
                              </button>
                              <div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="completed_timeline_persona" id="">
                                 <button class="dropdown-item" type="button" onclick="completed_timeline_persona(this)">Persona 1</button>
                                 <button class="dropdown-item" type="button" onclick="completed_timeline_persona(this)">Persona 2</button>
                              </div>
                           </div>
                           <div class="istar-dropdown-task select_focus mr-10">
                              <button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="completed_timeline_success" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                              <span class="sr-only">Toggle Dropdown</span><span id="completed_timeline_success_drop">Filter by Success</span> <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
                                 class=" float-right">
                              </button>
                              <div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="completed_timeline_success">
                                 <button class="dropdown-item" type="button" onclick="completed_timeline_success(this)">Lead 1</button>
                                 <button class="dropdown-item" type="button" onclick="completed_timeline_success(this)">Lead 2</button>
                              </div>
                           </div>
                           <div class="istar-dropdown-task dropdown select_focus" id="">
                              <button class="istar-dropdown-arrow " data-display="static" id="completed_timeline_dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                              <span class="sr-only">Toggle Dropdown</span> All Agents <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
                              </button>
                              <div class="dropdown-menu filter-menu dropdown-menu-right istar-dropdown-task-menu  dropdown-menu-lg-right position-absolute px-4" aria-labelledby="completed_timeline_dropdown"
                                 style="width: 350px;">
                                 <ul class="dropdown-nav nav nav-tabs nav-mytabs filtertabs pt-2 d-flex align-items-end" id="completed_timelineTab" role="tablist">
                                    <li class="nav-item"><a class="nav-link active" id="completed_timeline_individual-tab" data-toggle="tab" href="#completed_timeline_individual" role="tab"
                                       aria-controls="completed_timeline_individual" aria-selected="true">Individual</a></li>
                                    <li class="nav-item"><a class="nav-link" id="completed_timeline_team-tab" data-toggle="tab" href="#completed_timeline_team" role="tab" aria-controls="completed_timeline_team"
                                       aria-selected="false">Team</a></li>
                                 </ul>
                                 <div class="tab-content" id="completed_timelineTabContent">
                                    <div class="tab-pane fade show active px-4 py-3" id="completed_timeline_individual" role="tabpanel" aria-labelledby="completed_timeline_individual-tab">
                                       <div class="input-group py-2">
                                          <input id="completed_timeline_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search"
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
                                             <input class="istar-checkbox completed_timelineagentcheckbox" data-id="<%=i %>" id="completed_timeline_associate-checkbox<%=i %>" type="checkbox"> <label
                                                class="istar-checkbox-style" for="completed_timeline_associate-checkbox<%=i %>"></label> <img alt="Lead Image" title="Lead Name" src="<%=baseURL%>/assets/image/11.png"
                                                class="rounded-circle ml-3 mr-2 hw-40">
                                             <div>
                                                <div class="f-14 font-weight-bold greyish-brown text-truncate" title="Robert Garcia">Robert Garcia</div>
                                                <div class="f-12  brownish-grey text-truncate" title="team">Team -02</div>
                                             </div>
                                          </div>
                                          <%} %>
                                       </div>
                                    </div>
                                    <div class="tab-pane fade px-4 py-3" id="completed_timeline_team" role="tabpanel" aria-labelledby="completed_timeline_team-tab">
                                       <div class="input-group py-2">
                                          <input id="completed_timeline_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search"
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
                                             <input class="istar-checkbox completed_timelineteamcheckbox" data-id="<%=j %>" id="completed_timeline_team-checkbox<%=j %>" type="checkbox"> <label class="istar-checkbox-style"
                                                for="completed_timeline_team-checkbox<%=j%>"></label>
                                             <div class="f-12 ml-2 brownish-grey">
                                                Team -0<%=j%>
                                             </div>
                                          </div>
                                          <%} %>
                                       </div>
                                    </div>
                                 </div>
                                 <div class="w-100 text-center">
                                    <button class="btn  rounded-0 theme_bg text-white f-14 font-weight-bold  mb-3 text-center px-3" style="min-width: 200px;" id="completed_timeline_team_submit">Submit</button>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="row pt-4 m-0 pt-25 pb-25 pl-60 pr-60  position-relative" id="overall-analysis-scale">
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
                     <div class="d-flex flex-wrap pl-60 pr-60 pb-20" id="overall-analysis-data">
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
                 
               </div>
               <div class="tab-pane fade show " id="completed_adherence" role="tabpanel" aria-labelledby="completed_adherence-tab">
               <div class="card border-0 card-shadow-bottom">
                  <div class="card-body theme_solid_border_bottom p-0 pt-20 pb-20	">
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
                  <div class="row m-0 theme_dashed_border_bottom  pt-20 pb-20" id="completed_adherence_filter">
                     <div class="col-md-1 p-0 "> </div>
                     <div class="col-md-11 d-flex justify-content-center p-0">
                        <div class="input-group date custom-calendar mr-10">
                           <input type="text" id="completed_adherencetimeline_datepicker" class="form-control  custom-dateselect"
                              value="12-02-2012" placeholder="Calendar">
                           <div class="input-group-addon" onclick="showTimelineCalendar()">
                              <img src ="<%=baseURL%>/assets/image/calendar.svg"  alt="calendar" class="pr-1 hw-24">
                           </div>
                        </div>
                        <div class="istar-dropdown-task select_focus mr-10">
                           <button class="istar-dropdown-arrow dropdown-toggle" data-display="static"
                              id="completed_adherence_success" data-toggle="dropdown" aria-haspopup="true"
                              aria-expanded="false">
                           <span class="sr-only">Toggle Dropdown</span ><span id="completed_adherence_drop">Filter by Success</span>
                           <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
                              class=" float-right">
                           </button>
                           <div
                              class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="completed_adherence_success">
                              <button class="dropdown-item" type="button" onclick="completed_adherence_success(this)">
                              Lead 1 
                              </button>
                              <button class="dropdown-item" type="button" onclick="completed_adherence_success(this)">
                              Lead 2 
                              </button>
                           </div>
                        </div>
                        <div class="istar-dropdown-task dropdown select_focus" id="">
                           <button class="istar-dropdown-arrow " data-display="static"
                              id="completed_adherence_dropdown" data-toggle="dropdown" aria-haspopup="true"
                              aria-expanded="false">
                           <span class="sr-only">Toggle Dropdown</span> All Agents <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
                              class=" float-right">
                           </button>
                           <div class="dropdown-menu filter-menu dropdown-menu-right istar-dropdown-task-menu  dropdown-menu-lg-right position-absolute px-4"
                              aria-labelledby="completed_adherence_dropdown" style="width: 350px; ">
                              <ul class="dropdown-nav nav nav-tabs nav-mytabs filtertabs pt-2 d-flex align-items-end" id="completed_adherenceTab" role="tablist">
                                 <li class="nav-item">
                                    <a class="nav-link active" id="completed_adherence_individual-tab" data-toggle="tab" href="#completed_adherence_individual" role="tab" aria-controls="completed_adherence_individual" aria-selected="true">Individual</a>
                                 </li>
                                 <li class="nav-item">
                                    <a class="nav-link" id="completed_adherence_team-tab" data-toggle="tab" href="#completed_adherence_team" role="tab" aria-controls="completed_adherence_team" aria-selected="false">Team</a>
                                 </li>
                              </ul>
                              <div class="tab-content" id="completed_adherenceTabContent">
                                 <div class="tab-pane fade show active px-4 py-3" id="completed_adherence_individual" role="tabpanel" aria-labelledby="completed_adherence_individual-tab">
                                    <div class="input-group py-2">
                                       <input id="completed_adherence_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
                                       <div class="input-group-append">
                                          <button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
                                          <i class="fa fa-search f-12 brown-grey"></i>
                                          </button>
                                       </div>
                                    </div>
                                    <div class="agent-team-list mb-2"  style=" overflow-x: hidden; overflow-y:auto;">
                                       <%for(int i=0; i<20;i++){ %>
                                       <div class="d-flex align-items-center pt-3">
                                          <input class="istar-checkbox completed_adherenceagentcheckbox" data-id="<%=i %>" id="completed_adherence_associate-checkbox<%=i %>" type="checkbox">
                                          <label class="istar-checkbox-style" for="completed_adherence_associate-checkbox<%=i %>"></label>
                                          <img alt="Lead Image" title="Lead Name" src ="<%=baseURL%>/assets/image/11.png" class="rounded-circle ml-3 mr-2 hw-40">
                                          <div>
                                             <div class="f-14 font-weight-bold greyish-brown text-truncate" title="Robert Garcia">Robert Garcia</div>
                                             <div class="f-12  brownish-grey text-truncate" title="team">Team -02</div>
                                          </div>
                                       </div>
                                       <%} %>
                                    </div>
                                 </div>
                                 <div class="tab-pane fade px-4 py-3" id="completed_adherence_team" role="tabpanel" aria-labelledby="completed_adherence_team-tab">
                                    <div class="input-group py-2">
                                       <input id="completed_adherence_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
                                       <div class="input-group-append">
                                          <button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
                                          <i class="fa fa-search f-12 brown-grey"></i>
                                          </button>
                                       </div>
                                    </div>
                                    <div class="agent-team-list mb-2" style="overflow-x: hidden; overflow-y:auto;">
                                       <%for(int j=0; j<20;j++){ %>
                                       <div class="d-flex align-items-center pt-3">
                                          <input class="istar-checkbox completed_adherenceteamcheckbox" data-id="<%=j %>" id="completed_adherence_team-checkbox<%=j %>" type="checkbox">
                                          <label class="istar-checkbox-style" for="completed_adherence_team-checkbox<%=j%>"></label>
                                          <div class="f-12 ml-2 brownish-grey">Team -0<%=j%></div>
                                       </div>
                                       <%} %>
                                    </div>
                                 </div>
                              </div>
                              <div class="w-100 text-center">
                                 <button class="btn  rounded-0 theme_bg text-white f-14 font-weight-bold  mb-3 text-center px-3" style="min-width:200px;" id="completed_adherence_team_submit">Submit</button>
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
               </div>
            </div>
         </div>
      </div>
   </div>
   <div class="col-md-1 p-0">
      <div class=" dropleft">
         <button type="button" class="btn btn-secondary dropdown-toggle"
            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
            style="display: none" id="completed_call_task_content">Dropleft</button>
         <div class="dropdown-menu completed_call_task_content m-0"
            aria-labelledby="completed_call_task_content">
            <!-- Dropdown menu links -->
         </div>
      </div>
      <ul class="list-group shadow d-flex flex-column h-100  taskpopup">
         <li class="notesdropdown list-group-item p-0 pt-10 pb-10">
            <div
               class=" d-flex flex-column justify-content-center align-items-center minh-80 "
               data-dropdown_id="completed_call_task_content">
               <img src="<%=baseURL%>assets/image/notes.svg" alt="notes" />
               <div class="f-12 pt-1 greyish-brown">Notes</div>
            </div>
         </li>
         <li class=" cuesdropdown list-group-item p-0  pt-10 pb-10">
            <div
               class=" d-flex flex-column justify-content-center align-items-center minh-80"
               data-dropdown_id="completed_call_task_content">
               <img src="<%=baseURL%>assets/image/cues.svg" alt="cues" />
               <div class="f-12 pt-1 greyish-brown">Cues</div>
            </div>
         </li>
         <li class="crmdropdown list-group-item p-0  pt-10 pb-10">
            <div
               class=" d-flex flex-column justify-content-center align-items-center minh-80"
               data-dropdown_id="completed_call_task_content">
               <img src="<%=baseURL%>assets/image/crm.svg" alt="crm" />
               <div class="f-12 pt-1 greyish-brown">CRM</div>
            </div>
         </li>
         <li class="chatdropdown list-group-item  p-0  pt-10 pb-10 ">
            <div
               class="  d-flex flex-column justify-content-center align-items-center minh-80"
               data-dropdown_id="completed_call_task_content">
               <img src="<%=baseURL%>assets/image/chat.svg"
                  alt="presentation" />
               <div class="f-12 pt-1 greyish-brown">Chat</div>
            </div>
         </li>
         <li class="chatdropdown list-group-item  p-0 pt-10 pb-10 ">
					<div class="  d-flex flex-column justify-content-center align-items-center minh-80" >
						<img src="<%=baseURL%>/assets/image/document.svg" alt="">
						<div class="f-12 pt-1 greyish-brown">Document</div>

					</div>
				</li>
         <li
            class=" flex-grow list-group-item d-flex flex-column justify-content-center align-items-center minh-100"
            style="height: calc(100% - 80px);"></li>
      </ul>
   </div>
</div>
<script src="<%=baseURL%>assets/js/taskdetail/completed/completed_call.js"></script>