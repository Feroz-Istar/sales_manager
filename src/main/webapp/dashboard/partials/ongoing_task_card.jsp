
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>
<div class="card  rounded-0 shadow mb-10" id="">
	<div class="card-body ongoingtaskcard bg-white cursor-pointer p-0 p-20" onclick="window.location.href = '/salesken_v2/taskDetails/partials/task_lead_detail.jsp'">
		<div class="d-flex pb-10">
			<div class="mr-auto  bd-highlight theme_color f-20 font-weight-bold">$ 250</div>

			<div class=" bd-highlight">
				<img src="<%=baseURL%>assets/image/angry.svg" alt="angry">
			</div>
		</div>
		<div class="d-flex pb-5">
			<div class="fw-500  f-14 greyish-brown">Stage 02 -</div>
			<div class="f-14 brown-grey">&nbsp; Follow Up</div>
		</div>
		<h5 class="card-title mb-0 f-18 font-weight-bold text-truncate greyish-brown" title="Accenture">Accenture Consulting Inc.</h5>
		<div class="f-16 brownish-grey text-truncate" title="Accenture">Robert Wolken</div>
		<div class="f-12 brown-grey pb-10">Manager</div>
		<div class="dotted-1 "></div>

		<div class="d-flex align-items-center pt-20">
			<div class="mr-auto  ">
				<div class="d-flex flex-column">
					<div class="brown-grey f-12">Call Task by</div>
					<div class="brownish-grey f-16 text-truncate" title="Accenture">Marry Vasquez</div>
				</div>

			</div>
			<div class=" bd-highlight">
				<div class="img-wrapper position-relative">
					<img class="hw-66 rounded-circle img-responsive" title="Lead Name" alt="lead-img" src="<%=baseURL%>assets/image/layer.png" />
					<div class="img-overlay" style="position: absolute; left: -19px; top: 28%;">
						<button class="hw-30 rounded-circle tea border-0" style="z-index: 1; border: 2px solid white !important;">
							<i class="fas fa-phone-alt  text-white f-12"></i>
						</button>
					</div>
				</div>

			</div>
		</div>

		<div class="d-flex">

			<div class=" pr-10">
				<button type="button" class="btn small_button rounded-0 f-12 font-weight-bold" style="min-width: 100px;">JOIN</button>
			</div>
			<button type="button" class="btn small_outline_button rounded-0 f-12 font-weight-bold greyish-brown">LISTEN</button>

		</div>
	</div>
	<div class="card-footer cream_white p-0 pt-10 pb-10 ">
		<div class="d-flex justify-content-end  pr-20">
			<div class="dark_theme_color f-14 font-weight-bold cursor-pointer hy" onclick="view_more_ongoing_task()">
				04 More<i class="fas fa-chevron-circle-right theme_color ml-2"></i>
			</div>
		</div>
	</div>
</div>