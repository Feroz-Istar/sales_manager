<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%> 
                  
             
                  
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