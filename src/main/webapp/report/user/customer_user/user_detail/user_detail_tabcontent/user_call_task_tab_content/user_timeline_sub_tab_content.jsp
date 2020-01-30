
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>
    
                  
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
                  <div class="d-flex flex-wrap pl-60 pr-60 pb-20" id="">
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