
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>

		<div class="row grey-white-bg theme_solid_border_bottom align-items-center  m-0 pl-40 pr-40 pt-10 pb-10">
			<div class="col-md-6 col-12 d-flex align-items-center p-0 ">
				<div class="dropdown">
					<div class="display-1 black f-20 border-right-separation fw-500 pr-20 dropdown-toggle" id="pipeline_select" data-toggle="dropdown" aria-haspopup="true" data-display="static" aria-expanded="false">
						<img src="<%=baseURL%>assets/image/dropdown-right-black.svg" alt="call" class=" float-right">Pipeline 01
					</div>
					<div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="pipeline_select">
						<button class="dropdown-item" type="button">Pipeline 02</button>
						<button class="dropdown-item" type="button">Pipeline 03</button>
					</div>
				</div>
				<div class=" f-12 brown-grey pl-20">Dashboard</div>
				<i class="fas fa-chevron-circle-right f-12 brown-grey pl-2 pr-2"></i>
				<div class=" f-12 brown-grey fw-500">Pipeline</div>
			</div>
			<div class="col-md-6 col-12 d-lg-flex justify-content-md-end p-0 ">
				<div class="input-group position-relative pl-2 search_width">
					<img src="<%=baseURL%>assets/image/search.svg" alt="edit" class="searchBox"> <input id="pipeline_search" class="form-control  custom-taskborder brown-grey  f-14 search_height custom-result-selects" type="search" placeholder="Search" style="padding-right: 30px">
				</div>
			</div>
		</div>
		<div class="row align-items-center bg-white theme_solid_border_bottom m-0  pl-40 pt-15 pb-15 pr-40" id="pipeline-filter-row">
			<jsp:include page="partials/pipeline_filters.jsp"></jsp:include>
		</div>
		<div class="col-md-12 p-0  " id="ongoing_no_data " style="display: none;">
			<div class="d-flex justify-content-center h-100 align-items-center">
				<div class=" d-flex flex-column text-center">
					<img src="<%=baseURL%>assets/image/timer.svg" alt="lost" class="pb-25 pt-25">
					<div class="f-20 fw-500 brownish-grey">No data yet</div>
					<div class="f-14 brown-grey">Update the PersonaCharacteristics</div>
				</div>
			</div>
		</div>
		<div class="row cream_white m-0 theme_solid_border_bottom justify-content-between align-items-center pl-40 pr-40 pt-10 pb-10" id="pipeline_filter_selections">
			<div class="col-md-10 d-flex p-0 filters-inside-selection"></div>
			<div class="col-md-2 text-right p-0">
				<button type="submit" class="btn theme_color f-14 font-weight-bold p-0" id="pipeline_reset" data-stage="0" onclick="resetFilters(this)">Reset</button>
			</div>
		</div>

		<div class="row cream_white m-0 theme_solid_border_bottom justify-content-between align-items-center pl-40 pr-40 pt-15 pb-15" id="pipelineCard"></div>
		<div class="row very-light-pink-grey-bg m-0" id="pipelineTab">
			<div class="col-md-2 col-12 p-0 tabcol flex-grow-1 border-right" id="">
				<div class="nav flex-column nav-pills h-100 pl-40" id="piplelinestage-tab" data-stageid="<%=request.getParameter("stageId")%>" role="tablist" aria-orientation="vertical"></div>
			</div>
			<div class="col-md-10 col-12 p-0 bg-white tabcontentcol">
				<div class="tab-content" id="piplelinestage-tabContent"></div>
			</div>


		</div>
	</div>


	<!-- start of change owner modal -->
	<jsp:include page="modals/change_owner_modal.jsp"></jsp:include>
	<!-- end of change owner modal -->
	<!-- start of change stage modal -->
	<jsp:include page="modals/change_stage_modal.jsp"></jsp:include>
	<!-- end of change stage modal -->
	<!-- start of change stage modal -->
	<jsp:include page="../leads/modal/won_lead_modal.jsp"></jsp:include>
	<!-- end of change stage modal -->
	<!-- start of change stage modal -->
	<jsp:include page="../leads/modal/lost_lead_modal.jsp"></jsp:include>
	<!-- end of change stage modal -->

	<script src="<%=baseURL%>assets/js/pipeline/pipeline.js"></script>