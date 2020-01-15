<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";

%> 
  <div class="tab-pane fade show active px-4 py-3" id="completed_individual" role="tabpanel" aria-labelledby="completed_individual-tab">
												  		<div class="input-group py-2">
															<input id="completed_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
															<div class="input-group-append">
																<button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
																	<i class="fa fa-search f-12 brown-grey"></i>
																</button>
															</div>
														</div>
														
														<div class="completed-agent-list mb-2"  style="overflow-x: hidden; overflow-y:auto;">
														
														
					                                    </div>
					                                    
					                                     		
					                                 </div>
					                                			                                 
												  <div class="tab-pane fade px-4 py-3" id="completed_team" role="tabpanel" aria-labelledby="completed_team-tab">
												  		
												  		<div class="input-group py-2">
															<input id="completed_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
															<div class="input-group-append">
																<button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
																	<i class="fa fa-search f-12 brown-grey"></i>
																</button>
															</div>
														</div>
														
														<div class="mb-2 completed-team-list" style=" overflow-x: hidden; overflow-y:auto;">
														<%for(int j=0; j<10;j++){ %>
														<div class="d-flex align-items-center pt-3">
					                                        <input class="istar-checkbox completedteamcheckbox" data-id="<%=j %>" id="completed_team-checkbox<%=j %>" type="checkbox">
					                                        <label class="istar-checkbox-style" for="completed_team-checkbox<%=j%>"></label>
					                                        <div class="f-12 ml-2 brownish-grey">Team -0<%=j%></div>
					                                    </div>
					                                    <%} %>
					                                    </div>
					                                    
					                                     	
												  		
												  </div>