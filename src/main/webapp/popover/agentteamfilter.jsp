<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>


<ul class="nav nav-tabs nav-mytabs filtertabs pt-2" id="agentteamtab" role="tablist">
			  <li class="nav-item">
			    <a class="nav-link active" id="agentfilter-tab" data-toggle="tab" href="#agentfilter" role="tab" aria-controls="agentfilter" aria-selected="true">Individual</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" id="teamfilter-tab" data-toggle="tab" href="#teamfilter" role="tab" aria-controls="team" aria-selected="false">Team</a>
			  </li>
			 
			</ul>
			<div class="tab-content" id="agentteamtabContent">
			  <div class="tab-pane fade show active px-4 py-3" id="agentfilter" role="tabpanel" aria-labelledby="agentfilter-tab">
			  		<div class="input-group py-2">
						<input id="individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
						<div class="input-group-append">
							<button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
								<i class="fa fa-search f-12 brown-grey"></i>
							</button>
						</div>
					</div>
					
					<div class=" mb-2"  style="height:370px; overflow-x: hidden; overflow-y:auto;">
					
					<%for(int i=0; i<20;i++){ %>
                              <div class="d-flex align-items-center pt-3">
                                
                                
							<input class="istar-checkbox agentcheckbox" data-id="<%=i %>" id="associate-checkbox<%=i %>" type="checkbox">
							                                    <label class="istar-checkbox-style" for="associate-checkbox<%=i %>"></label>
									<img src ="<%=baseURL%>/assets/image/11.png" class="rounded-circle ml-3 mr-2 hw-40">
								  <div>
							                                    	<div class="f-14 fw-500 greyish-brown">Robert Garcia</div>
							                                    	<div class="f-12  brownish-grey">Team -<%=i %></div>
							                                    </div>
								</div>
								<%} %>
                                </div>
                                
                                 		
                             </div>
                            			                                 
			  <div class="tab-pane fade px-4 py-3" id="teamfilter" role="tabpanel" aria-labelledby="teamfilter-tab">
			  		
			  		<div class="input-group py-2">
						<input id="individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
						<div class="input-group-append">
							<button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
								<i class="fa fa-search f-12 brown-grey"></i>
							</button>
						</div>
					</div>
					
					<div class="mb-2" style="height:370px; overflow-x: hidden; overflow-y:auto;">
					<%for(int j=0; j<20;j++){ %>
					<div class="d-flex align-items-center pt-3">
                                    <input class="istar-checkbox teamcheckbox" data-id="<%=j %>" id="team-checkbox<%=j %>" type="checkbox">
                                    <label class="istar-checkbox-style" for="team-checkbox<%=j%>"></label>
                                    <div class="f-12 ml-2 brownish-grey">Team -0<%=j%></div>
                                </div>
                                <%} %>
                                </div>
                                
                                 	
			  		
			  </div>
			</div>
			 <div class="w-100 text-center">
			 <button class="btn  rounded-0 theme_bg text-white f-14 font-weight-bold agentteamsubmit mb-3 text-center px-3" style="min-width:200px;">Submit</button>
			</div>