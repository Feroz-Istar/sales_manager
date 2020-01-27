 <%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>
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