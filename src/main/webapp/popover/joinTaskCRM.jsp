<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>
<div class="row justify-content-between m-0 pt-20 pb-20 pl-40 pr-40">
	<div class="col-md-11 p-0">
		<div class="font-weight-bold f-18 greyish-brown">CRM</div>
	</div>
	<div class="col-md-1 p-0 d-flex justify-content-end">
		<button class="btn p-0" onclick="closeCRM(event)">
			<img src="<%=baseURL%>assets/image/close.svg">
		</button>
	</div>
</div>

<div class="row m-0 pl-40 pr-40">

	<div class="col-md-9 p-0">
		<iframe style="min-height:750px;" src="https://www.atlassian.com/" frameborder="0" allowfullscreen class="h-100 w-100"></iframe>
	</div>
	<div class="col-md-3 p-0 pl-15 theme_solid_border_left  theme_solid_border_top_2px	pt-15" style="max-height: 750px; overflow-x: hidden; overflow-y:auto;">
		<div class="input-group position-relative theme_solid_border_bottom_2px pb-20">
			<img src="<%=baseURL %>assets/image/search.svg" alt="edit" class=" searchBox"> <input id="systemCues_search" class="form-control  custom-taskborder brown-grey  f-14 search_height custom-result-selects" type="search" placeholder="Search" style="padding-right: 30px">
		</div>
		
		<div class="fw-500 f-16 greyish-brown pt-15 pb-20">Recent Cues</div>
		<div class="card shadow cues-card mb-10">
			<div class="card-body p-0 pt-30 pb-30 pl-20 pr-20">
				<div class="f-12 brown-grey pb-10">11:30 AM</div>
				<div class="f-16 font-weight-bold blue-black">Calm Down !</div>
				<div class="f-16 blue-black">Lorem ipsum dolor sit amet, consectetur adipiscing elit</div>
			</div>
		</div>
		
		<div class="card shadow cues-card mb-10">
			<div class="card-body p-0  pt-30 pb-30 pl-20 pr-20">
				<div class="d-flex justify-content-between align-items-center pb-10">
					<div class="f-12 brown-grey pb-10">11:30 AM</div>
					<img src="<%=baseURL %>assets/image/introduction_signal.svg">
				</div>
				<div class="f-16 blue-black">Best of luck Sophia !</div>
				<div class="f-16  blue-black">Remember to highlight the great <span class="font-weight-bold">"Career Opportunities"</span> in Digital Marketing!</div>
			</div>
		</div>
	</div>

</div>