<%@page import="pojos.Pipeline"%>
<%@page import="com.google.gson.GsonBuilder"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="org.apache.commons.io.IOUtils"%>
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
	String pipelinedata = IOUtils.toString(request.getReader());
	 Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm:ss").create();	
	 Pipeline pipeline = gson.fromJson(pipelinedata, Pipeline.class);
	 String firstStage="No Stages";
	 int stageSize=0;
	 if(pipeline.getStages()!=null){
		 if(pipeline.getStages().size()>=1){
			 stageSize=pipeline.getStages().size();
			 firstStage=pipeline.getStages().get(0).getName();
		 }
	 }
%>

<!-- <div class="card shadow mb-2 rounded-0" style="min-height: 322px;">
	<div class="card-body p-0">
		<div class="salesken_caurosel position-relative" data-index="0" data-child="pipeline-container">

			<button type="button" class="istar-btn-icon  previous p-0" id="pipeline-left" onclick="pipeline_prev(this)">
				<i class="fal fa-chevron-left"></i>
			</button>
			<button type="button" class="istar-btn-icon  active next p-0" id="pipeline-right" onclick="pipeline_next(this)">
				<i class="fal fa-chevron-right"></i>
			</button> -->

<div class="pipeline-container  " style="padding: 30px; padding-bottom: 60px !important;">
	<div class="row m-0 pb-20">
		<div class="p-0 m-0 font-weight-bold f-18 text-truncate" data-toggle="tooltip" data-placement="bottom" title="pipeline">
			<%=pipeline.getName() %> &nbsp; - &nbsp;<span class="brown-grey f-16 font-weight-normal pipeline-stage-name"><%=firstStage%></span>
		</div>
	</div>

	<div id="pipeline_carousel" class="carousel slide" data-ride="carousel">
		<ol class="carousel-indicators mb-0" style="bottom: -31px;">
			<%
				for (int k = 0; k < stageSize; k++) {
					String isActive = "";
					if (k == 0) {
						isActive = "active";
					}
			%>
			<li data-target="#pipeline_carousel"  data-stage-name="<%=pipeline.getStages().get(k).getName()%>" data-slide-to="<%=k%>" class="pipeline_stage_radio_button <%=isActive%>"></li>

			<%
				}
			%>
		</ol>

		<div class="carousel-inner ">

			<%
				for (int i = 0; i < stageSize; i++) {
					String isActive = "";
					if (i == 0)
						isActive = "active";
			%>
			<div class="carousel-item <%=isActive%>" onclick="window.location.href='<%=baseURL%>pipeline/pipeline.jsp?pipelineId=<%=pipeline.getId() %>&stageId=<%=pipeline.getStages().get(i).getId()%>'">



				<div class="row m-0 cursor-pointer" >
					<div class="col-md-6 p-0 theme_dashed_border_right_2 ">
						<div class="fw-500 f-16 black pb-10">Pipeline Stats</div>
						<div class="row m-0">
							<div class="col-md-4 p-0">
								<div class="font-weight-bold f-30">
									<i class="fas fa-dollar-sign light_gray"></i> <span class="theme_color"> 7245</span>
								</div>
							</div>
							<div class="col-md-4 p-0">
								<div class="font-weight-bold f-30 greyish-brown">75%</div>

							</div>
							<div class="col-md-4  p-0">
								<div class="font-weight-bold f-30 greyish-brown">25%</div>
							</div>
						</div>
						<div class="row m-0 pb-30 theme_dashed_border_bottom_2 ">
							<div class="col-md-4 p-0">
								<div class="f-12 brownish-grey">Estimated Value</div>
							</div>
							<div class="col-md-4 p-0">
								<div class=" f-12 brownish-grey">Tentative</div>

							</div>
							<div class="col-md-4 p-0">
								<div class=" f-12 brownish-grey">Win Rate</div>
							</div>
						</div>

						<div class="fw-500 f-16 black pb-10 pt-25">Activity Stats</div>

						<div class="row m-0">
							<div class="col p-0">
								<div class="d-flex ">
									<div class="font-weight-bold f-30 greyish-brown pr-45">75%</div>
									<div class="font-weight-bold f-30 greyish-brown">46%</div>
								</div>
							</div>
						</div>
						<div class="row m-0 ">
							<div class="col p-0 pr-25">
								<div class="d-flex pb-10">
									<div class=" f-12 brownish-grey pr-45">Utilisation</div>
									<div class=" f-12 brownish-grey">Talk Ratio</div>
								</div>

								<div class=" v-progress-bar-container ">
									<div class="progress-bar bg_green v-progress-bar" role="progressbar" style="width: 40%; z-index: 3;" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"></div>
									<div class="progress-bar  bg_blue v-progress-bar" role="progressbar" style="width: 40%; z-index: 2;" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"></div>
									<div class="progress-bar   bg-info v-progress-bar" role="progressbar" style="width: 20%; z-index: 1;" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>
								</div>
							</div>
						</div>


					</div>
					<div class="col-md-6 p-0 pl-15">
						<div class="fw-500 f-16 black pb-10">Playbook Stats</div>

						<div class="f-12 brownish-grey text-break d-flex align-items-center font-weight-bold pb-10">
							<div>Strong</div>
							<i class="fal fa-info-circle soft-blue f-18 pl-5"></i>
						</div>
						<div class="strong-signal w-100 d-flex flex-wrap">
							<img src="<%=baseURL%>assets/image/introduction_signal.svg" class="pr-2 pb-2"> <img src="<%=baseURL%>assets/image/softSkill_signal.svg" class="pr-2 pb-2"> <img src="<%=baseURL%>assets/image/nxt_step_signal.svg" class="pr-2 pb-2"> <img src="<%=baseURL%>assets/image/solution_signal.svg" class="pr-2 pb-2">
							<img src="<%=baseURL%>assets/image/objection_signal.svg" class="pr-2 pb-2"> <img src="<%=baseURL%>assets/image/lead_qualification.svg" class="pr-2 pb-2">

						</div>


						<div class="f-12 brownish-grey text-break d-flex align-items-center font-weight-bold pt-20  pb-10">
							Weak <i class="fal fa-info-circle soft-blue  f-18 pl-5"></i>
						</div>

						<div class="weak-signal w-100 d-flex flex-wrap">
							<img src="<%=baseURL%>assets/image/introduction_signal.svg" class="pr-2 pb-2"> <img src="<%=baseURL%>assets/image/softSkill_signal.svg" class="pr-2 pb-2"> <img src="<%=baseURL%>assets/image/nxt_step_signal.svg" class="pr-2 pb-2"> <img src="<%=baseURL%>assets/image/solution_signal.svg" class="pr-2 pb-2">
							<img src="<%=baseURL%>assets/image/objection_signal.svg" class="pr-2 pb-2"> <img src="<%=baseURL%>assets/image/lead_qualification.svg" class="pr-2 pb-2">
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

<!-- </div>

	</div>
</div> -->
<%-- <script src="<%=baseURL%>assets/js/dashboard_pipeline_card.js"></script>
 --%>


