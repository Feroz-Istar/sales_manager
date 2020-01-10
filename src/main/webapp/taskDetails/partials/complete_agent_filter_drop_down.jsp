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
														
														<div class="agent-team-list mb-2"  style="overflow-x: hidden; overflow-y:auto;">
														
														<%for(int i=0; i<20;i++){ %>
					                                    <div class="d-flex align-items-center pt-3">
					                                    
					                                    
									<input class="istar-checkbox completedagentcheckbox" data-id="<%=i %>" id="completed_associate-checkbox<%=i %>" type="checkbox">
					                                        <label class="istar-checkbox-style" for="completed_associate-checkbox<%=i %>"></label>
											<img alt="Lead Image" title="Lead Name" src ="<%=baseURL%>/assets/image/11.png" class="rounded-circle ml-3 mr-2 hw-40">
										  <div>
					                                        	<div class="f-14 font-weight-bold greyish-brown text-truncate" title="Robert Garcia">Robert Garcia</div>
					                                        	<div class="f-12  brownish-grey text-truncate" title="team">Team -02</div>
					                                        </div>
										</div>
										<%} %>
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
														
														<div class="mb-2 agent-team-list" style=" overflow-x: hidden; overflow-y:auto;">
														<%for(int j=0; j<10;j++){ %>
														<div class="d-flex align-items-center pt-3">
					                                        <input class="istar-checkbox completedteamcheckbox" data-id="<%=j %>" id="completed_team-checkbox<%=j %>" type="checkbox">
					                                        <label class="istar-checkbox-style" for="completed_team-checkbox<%=j%>"></label>
					                                        <div class="f-12 ml-2 brownish-grey">Team -0<%=j%></div>
					                                    </div>
					                                    <%} %>
					                                    </div>
					                                    
					                                     	
												  		
												  </div>