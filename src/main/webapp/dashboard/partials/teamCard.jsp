<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
	%>
<div class="card shadow p-0 rounded-0">
	<div class="card-body p-0">
		<div class="salesken_caurosel position-relative"  data-index="0" data-child="team-container">
			<button type="button" class="istar-btn-icon  previous p-0" id="team-left" >
                 <i class="fal fa-chevron-left"></i>
             </button>
             <button type="button" class="istar-btn-icon  active next p-0" id="team-right" >
                 <i class="fal fa-chevron-right"></i>
             </button>
	<%for(int j=0;j<10; j++){
		String isshow="";
		if(j==0){
			isshow="active";
		}%>
		<div class="team-container <%=isshow%> " style="padding: 30px;">
		<div class="row m-0 ">
			<div class="col-md-6 p-0 pb-20">
			<div class="p-0 m-0 font-weight-bold f-18 text-truncate" title="team">
				Team Name<%=j+1 %>&nbsp; - &nbsp;<span class="brown-grey f-16 font-weight-normal">10 users</span>
				</div>
			</div>
			
		</div>
		<div class="row m-0">
								<div class="col-md-6 p-0 theme_dashed_border_right_2 ">
									<div class="fw-500 f-16 black pb-10">Team Stats</div>
									<div class="row m-0">
										<div class="col-md-4 p-0">
											<div class="font-weight-bold f-30">
												<i class="fas fa-dollar-sign light_gray"></i> <span
													class="theme_color"> 50K</span>
											</div>
										</div>
										<div class="col-md-4 p-0">
											<div class="font-weight-bold f-30 greyish-brown">25%</div>

										</div>
										<div class="col-md-4  p-0">
											<div class="font-weight-bold f-30 greyish-brown">58%</div>
										</div>
									</div>
									<div class="row m-0 pb-30 theme_dashed_border_bottom_2 ">
										<div class="col-md-4 p-0">
											<div class=" f-12 brownish-grey">Achieved
												Value</div>
										</div>
										<div class="col-md-4 p-0">
											<div class=" f-12 brownish-grey">Win Rate
											</div>

										</div>
										<div class="col-md-4 p-0">
											<div class=" f-12 brownish-grey">Tentative</div>
										</div>
									</div>

									<div class="fw-500 f-16 black pb-10 pt-25">Activity Stats</div>

									<div class="row m-0">
										<div class="col p-0">
											<div class="d-flex ">
												<div class="font-weight-bold f-30 greyish-brown pr-45">75%
												</div>
												<div class="font-weight-bold f-30 greyish-brown">46%</div>
											</div>
										</div>
									</div>
									<div class="row m-0 ">
										<div class="col p-0 pr-25">
											<div class="d-flex pb-10">
												<div class="f-12 brownish-grey pr-45">Utilisation
												</div>
												<div class=" f-12 brownish-grey">Talk
													Ratio</div>
											</div>

											<div class=" v-progress-bar-container ">
												<div class="progress-bar bg_green v-progress-bar" role="progressbar"
													style="width: 40%;z-index:3;" aria-valuenow="40" aria-valuemin="0"
													aria-valuemax="100"></div>
												<div class="progress-bar  bg_blue v-progress-bar" role="progressbar"
													style="width: 40%;z-index:2;" aria-valuenow="40" aria-valuemin="0"
													aria-valuemax="100"></div>
												<div class="progress-bar   bg-info v-progress-bar" role="progressbar"
													style="width: 20%;z-index:1;" aria-valuenow="20" aria-valuemin="0"
													aria-valuemax="100"></div>
											</div>
										</div>
									</div>


								</div>
								<div class="col-md-6 p-0 pl-15">
									<div class="fw-500 f-16 black pb-10">Playbook Stats</div>

									<div class="f-12 brownish-grey d-flex align-items-center text-break font-weight-bold pb-10">
										<div>Strong</div>  <i class="fal fa-info-circle soft-blue  f-18 pl-5"></i>
									</div>
									<div class="strong-signal w-100 d-flex flex-wrap">
										<img src="<%=baseURL %>assets/image/introduction_signal.svg" class="pr-2 pb-2">
										<img src="<%=baseURL %>assets/image/softSkill_signal.svg" class="pr-2 pb-2">
										<img src="<%=baseURL %>assets/image/nxt_step_signal.svg" class="pr-2 pb-2">
										<img src="<%=baseURL %>assets/image/solution_signal.svg" class="pr-2 pb-2">
										<img src="<%=baseURL %>assets/image/objection_signal.svg" class="pr-2 pb-2">
										<img src="<%=baseURL %>assets/image/lead_qualification.svg" class="pr-2 pb-2">
									</div>


									<div
										class="f-12 brownish-grey d-flex align-items-center  text-break font-weight-bold pt-20 pb-10">
										<div>WeaK</div>   <i class="fal fa-info-circle soft-blue f-18 pl-5"></i>
									</div>

									<div class="weak-signal w-100 d-flex flex-wrap">
										<img src="<%=baseURL %>assets/image/introduction_signal.svg" class="pr-2 pb-2">
										<img src="<%=baseURL %>assets/image/softSkill_signal.svg" class="pr-2 pb-2">
										<img src="<%=baseURL %>assets/image/nxt_step_signal.svg" class="pr-2 pb-2">
										<img src="<%=baseURL %>assets/image/solution_signal.svg" class="pr-2 pb-2">
										<img src="<%=baseURL %>assets/image/objection_signal.svg" class="pr-2 pb-2">
										<img src="<%=baseURL %>assets/image/lead_qualification.svg" class="pr-2 pb-2">
									</div>
								</div>
							</div>
		
		</div>
	<%} %>
		</div>
	</div>
</div>
