			<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>
	<div class="col-md-3 text-result-found p-0">
				<strong class="number-of-results">04</strong> Result Found
			</div>
			<div class="col-md-9 d-md-flex justify-content-end p-0 ">
				<div class="input-group date custom-calendar">
					<input type="text" id="pipeline_datepicker"
						class="form-control  custom-dateselect" value="12-02-2012"
						placeholder="Calendar">
					<div class="input-group-addon" onclick="showCalendar()">
						<img src="<%=baseURL%>/assets/image/calendar.svg" alt="calendar"
							class="pr-1 hw-24">
					</div>
				</div>
				<div class="istar-dropdown-task select_focus mr-10">
					<button class="istar-dropdown-arrow dropdown-toggle" data-display="static"
						id="pipeline_deal_value" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">
						<span class="sr-only">Toggle Dropdown</span><span id="pipeline_deal_drop">All Deal Value</span> <img
							src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
							class=" float-right" >
					</button>
					<div
						class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" data-display="static"
						aria-labelledby="pipeline_deal_value">
						<button class="dropdown-item" type="button" onclick="pipeline_deal_value(this)">$1000</button>
						<button class="dropdown-item" type="button" onclick="pipeline_deal_value(this)">$5000</button>
					</div>
				</div>

				<div class="istar-dropdown-task select_focus mr-10">
					<button class="istar-dropdown-arrow dropdown-toggle"
						id="pipeline_status" data-toggle="dropdown" aria-haspopup="true" data-display="static"
						aria-expanded="false">
						<span class="sr-only">Toggle Dropdown</span> <span id ="pipeline_status_drop">All Status </span> <img
							src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
							class=" float-right">
					</button>
					<div
						class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" data-display="static"
						aria-labelledby="pipeline_status">
						<button class="dropdown-item" type="button" onclick="pipeline_status(this)">Won</button>
						<button class="dropdown-item" type="button" onclick="pipeline_status(this)">Lost</button>
					</div>
				</div>


				<div class="istar-dropdown-task dropdown select_focus" id="pipeline-filter">
					<button class="istar-dropdown-arrow " data-display="static"
					id="pipeline_dropdown" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false">
					<span class="sr-only">Toggle Dropdown</span> All Agents <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call"
							class=" float-right">
					</button>
					<div class="dropdown-menu filter-menu dropdown-menu-right istar-dropdown-task-menu  dropdown-menu-lg-right position-absolute px-4"
					aria-labelledby="pipeline_dropdown" style="width: 350px;">
								
							<ul class="dropdown-nav nav nav-tabs nav-mytabs filtertabs pt-2 d-flex align-items-end" id="pipelinefilterTab" role="tablist">
							  <li class="nav-item">
							    <a class="nav-link active" id="pipeline_individual-tab" data-toggle="tab" href="#pipeline_individual" role="tab" aria-controls="pipeline_individual" aria-selected="true">Individual</a>
							  </li>
							  <li class="nav-item">
							    <a class="nav-link" id="pipeline_team-tab" data-toggle="tab" href="#pipeline_team" role="tab" aria-controls="pipeline_team" aria-selected="false">Team</a>
							  </li>
							 
							</ul>
							<div class="tab-content" id="pipelinefilterTabContent">
							  <div class="tab-pane fade show active px-4 py-3" id="pipeline_individual" role="tabpanel" aria-labelledby="pipeline_individual-tab">
							  		<div class="input-group py-2">
										<input id="pipeline_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
										<div class="input-group-append">
											<button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
												<i class="fa fa-search f-12 brown-grey"></i>
											</button>
										</div>
									</div>
									
									<div class="agent-team-list mb-2"  style="overflow-x: hidden; overflow-y:auto;">
									
									<%for(int i=0; i<10;i++){ %>
                                    <div class="d-flex align-items-center pt-3">
                                    
                                    
				<input class="istar-checkbox pipelineagentcheckbox" data-id="<%=i %>" id="pipeline_associate-checkbox<%=i %>" type="checkbox">
                                        <label class="istar-checkbox-style" for="pipeline_associate-checkbox<%=i %>"></label>
						<img alt="Lead Image" title="Lead Name" src ="<%=baseURL%>/assets/image/11.png" class="rounded-circle ml-3 mr-2 hw-40">
					  <div>
                                        	<div class="f-14 font-weight-bold greyish-brown text-truncate" title="Robert Garcia">Robert Garcia</div>
                                        	<div class="f-12  brownish-grey text-truncate" title="team">Team -02</div>
                                        </div>
					</div>
					<%} %>
                                    </div>
                                    
                                     		
                                 </div>
                                			                                 
							  <div class="tab-pane fade px-4 py-3" id="pipeline_team" role="tabpanel" aria-labelledby="pipeline_team-tab">
							  		
							  		<div class="input-group py-2">
										<input id="pipeline_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
										<div class="input-group-append">
											<button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
												<i class="fa fa-search f-12 brown-grey"></i>
											</button>
										</div>
									</div>
									
									<div class="mb-2 agent-team-list" style="overflow-x: hidden; overflow-y:auto;">
									<%for(int j=0; j<10;j++){ %>
									<div class="d-flex align-items-center pt-3">
                                        <input class="istar-checkbox pipelineteamcheckbox" data-id="<%=j %>" id="pipeline_team-checkbox<%=j %>" type="checkbox">
                                        <label class="istar-checkbox-style" for="pipeline_team-checkbox<%=j%>"></label>
                                        <div class="f-12 ml-2 brownish-grey">Team -0<%=j%></div>
                                    </div>
                                    <%} %>
                                    </div>
                                    
                                     	
							  		
							  </div>
							</div>
							 <div class="w-100 text-center">
							 <button class="btn  rounded-0 theme_bg text-white f-14 font-weight-bold  mb-3 text-center px-3" style="min-width:200px;" id="pipeline_team_submit">Submit</button>
							</div>
					  </div>
					
				</div> 	

			</div>