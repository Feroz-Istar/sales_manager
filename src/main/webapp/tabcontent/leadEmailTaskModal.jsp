<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
	%>
<div class="row justify-content-between m-0 pt-15 pl-45 pr-45 pb-15">
	<div class="col-md-9 p-0 ">

		<div
			class="f-18 font-weight-bold greyish-brown text-truncate d-inline"
			data-toggle="tooltip" data-placement="bottom" title=""
			data-original-title="Email Task">Email Task</div>
		</div>
	
</div>
<div class="row m-0 theme_dotted_border_bottom shadow-bottom   pt-15 ml-45 mr-45 pb-20">
	<div class="col-md-3 p-0 border-right-dashed-separation">
		<p class="brownish-grey f-14 mb-0">Initiated At</p>
		<p class="black f-16 fw-500 mb-0">11:00 AM</p>
	</div>
	<div class="col-md-3 p-0 border-right-dashed-separation pl-15">
		<p class="brownish-grey f-14 mb-0">Pipeline Detail</p>
		<p class="black f-16 fw-500 mb-0 text-truncate" data-toggle="tooltip"
			data-placement="bottom" title="Globex Corporation">Stage 02</p>
	</div>
	<div class="col-md-3 p-0 pl-15">
		<p class="brownish-grey f-14 mb-0">Contact Person</p>
		<p class="black f-16 fw-500 mb-0 text-truncate" data-toggle="tooltip"
			data-placement="bottom" title="Robert Wolken">Robert Wolken</p>
	</div>


</div>

<div class="row m-0 pt-25 pl-45 pr-45 pb-25 mr-45 ml-45 very-light-pink-grey-bg">

	<div class="col-md-6 p-0 pr-25" style="">
		<div class="fw-500 f-16 greyish-brown pb-10">What's Wrong?</div>
		<div id="email_whats_wrong" class="carousel slide shadow "
			data-ride="carousel">
			<ol class="carousel-indicators m-0 pb-20 pt-10">
				<%
					for (int h = 0; h < 3; h++) {
						String isActive = "";
						if (h == 0) {
							isActive = "active";
						}
				%>
				<li data-target="#email_whats_wrong" data-slide-to="<%=h %>"
					class="<%=isActive%>"></li>
				
				<%} %>
			</ol>
			<div class="carousel-inner ">

				<%
					for (int h = 0; h < 3; h++) {
						String isActive = "";
						if (h == 0) {
							isActive = "active";
						}
				%>
				<div class="carousel-item  <%=isActive%>">
					<div class="row align-items-center m-0 bg-white"
						style="height: 170px;">
						<div class="col p-0">
							<div class="d-flex flex-row pr-30 pt-10 pb-30 pl-30 align-items-center">
								<div class="col-md-9 pr-50">
									<div class="f-16 fw-500 greyish-brown">Angry Customers</div>
									<div class="f-12 brownish-grey">Customers who were angry at  the end of the call</div>
								</div>
								<img class="minh-100 "
									src="<%=baseURL%>assets/image/angry_customer.svg"
									alt="carousal-img">
								
							</div>
						</div>
					</div>
				</div>
				<%}%>

			</div>


		</div>

	</div>


	<div class="col-md-6 p-0">
	<div class="fw-500 f-16 greyish-brown pb-10">What's Right?</div>
		<div id="email_whats_right" class="carousel slide shadow"
			data-ride="carousel">
			<ol class="carousel-indicators m-0 pb-20 pt-10">
			<%
					for (int h = 0; h < 3; h++) {
						String isActive = "";
						if (h == 0) {
							isActive = "active";
						}
				%>
				<li data-target="#email_whats_right" data-slide-to="<%=h %>"
					class="<%=isActive%>"></li>
				
				<%} %>
			</ol>
			<div class="carousel-inner ">

				<%
					for (int h = 0; h < 3; h++) {
						String isActive = "";
						if (h == 0) {
							isActive = "active";
						}
				%>
				<div class="carousel-item  <%=isActive%>">
					<div class="row align-items-center m-0 bg-white"
						style="height: 170px;">
						<div class="col p-0">
							<div class="d-flex flex-row pr-30 pt-10 pb-30 pl-30 align-items-center">
								<div class="col-md-9 pr-50">
									<div class="f-16 fw-500 greyish-brown">Unsatisfactory Resolution </div>
									<div class="f-12 brownish-grey">Customer sounded tentative after an objection was handled</div>
								</div>
								<img class="minh-100 "
									src="<%=baseURL%>assets/image/unsatisfactory_resolution.svg"
									alt="carousal-img">
								
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


</div>

<div class="accordion" id="accordionExample"
	style="height: 400px; overflow-x: hidden; overflow-y: auto">
	<%
		for (int i = 0; i < 10; i++) {
	%>
	<div class="row m-0 pl-45 pr-45 pt-30" id="heading<%=i%>">
		<button class="btn w-100 p-0" type="button" data-toggle="collapse"
			data-target="#subheading<%=i%>" aria-expanded="false"
			aria-controls="subheading<%=i%>">
			<div class="row  m-0">
				<div class="col-md-3 p-0">
					<div class="d-flex">
						<img src="<%=baseURL%>assets/image/37.jpg" data-toggle="tooltip"
							data-placement="bottom" title="Agent Name" class="hw-40 "
							alt="user-img">
						<div class="text-left pl-10">
							<div class="f-14 greyish-brown text-truncate"
								data-toggle="tooltip" data-placement="bottom"
								title="Carmen Collinsder">Carmen Collinsder</div>
							<div class="f-12 brown-grey">11:30 AM</div>
						</div>
					</div>
				</div>
				<div class="col-md-9 p-0">
					<div class="partial_email_content">
						<div class="f-14 brownish-grey  text-truncate-1"
							data-toggle="tooltip" data-placement="bottom"
							title="Hello Sir...Lorem ipsum do">Hello Sir...Lorem ipsum
							dolor sit amet, consectetur adipiscing elit. In et massa
							pulvinar, cursus sapien in, vulputate neque. Nunc ultricies
							libero sed lacinia hendrerit</div>
						<div class="d-flex align-items-center ">
							<img src="<%=baseURL%>assets/image/21.svg" class="hw-40 "
								data-toggle="tooltip" data-placement="bottom"
								title="Product Name" alt="doc">
							<div class="f-14 brownish-grey fw-500  text-truncate pr-10"
								data-toggle="tooltip" data-placement="bottom"
								title="Product-Brochure.pd">Product-Brochure.pdf</div>
							<div class="f-14 brown-grey ">256kb</div>
						</div>
					</div>
				</div>
			</div>
		</button>
		<div id="subheading<%=i%>" class="collapse"
			aria-labelledby="heading<%=i%>" data-parent="#subheading<%=i%>">
			<div class="card-body p-0 f-14 bg-white ">
				<p class="pt-20 pb-20 brownish-grey f-14">Hello Sir, Welcome, we
					are reaching you..</p>

				<p class="pb-10 brownish-grey f-14">Lorem ipsum dolor sit amet,
					consectetur adipiscing elit. In et massa pulvinar, cursus sapien
					in, vulputate neque. Nunc ultricies libero sed lacinia hendrerit.
					Donec varius finibus leo, nec scelerisque lacus. Cras at finibus
					purus. Fusce dignissim lorem eu lorem sollicitudin dictum. Cras
					commodo vel metus a lacinia. Integer commodo efficitur facilisis.
					Phasellus elementum magna lorem, quis ullamcorper lacus feugiat
					sed. Phasellus dictum eget sapien ac vehicula.</p>



				<p class="pb-20 brownish-grey f-14">
					Best,<br> Salesken Pvt. Ltd.
				</p>
				<div class="d-flex align-items-center ">
					<img src="http://localhost:8080/assets/image/21.svg" class="hw-40 "
						data-toggle="tooltip" data-placement="bottom" title="" alt="doc"
						data-original-title="Product Name">
					<div class="f-14 brownish-grey fw-500  text-truncate pr-10"
						data-toggle="tooltip" data-placement="bottom" title=""
						data-original-title="Product-Brochure.pd">Product-Brochure.pdf</div>
					<div class="f-14 brown-grey ">256kb</div>
				</div>
			</div>
		</div>
	</div>
	<%
		}
	%>
</div>


<script src="<%=baseURL%>assets/js/salesken.js"></script>
			