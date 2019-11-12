<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
	%>

				<div class="row justify-content-between m-0 pt-15 ml-45 mr-45">
					<div class="col-md-6 greyish-brown f-18 font-weight-bold text-truncated p-0" title="Globex Corporation Inc.">Email Task</div>
					<div class="col-3 p-0">
					<div class="d-flex justify-content-end">
						<img src="<%=baseURL%>assets/image/heart.svg" alt="heart" class="cursor-pointer mr-3">
					<img src="<%=baseURL%>assets/image/message.svg" alt="message" class="cursor-pointer taskcomment mr-3">
					<img src="<%=baseURL%>assets/image/reply.svg" alt="reply" class="cursor-pointer taskshare mr-2">
					
					</div>
				</div>
				</div>
			<div
	class="row m-0 theme_dotted_border_bottom shadow-bottom   pt-15 ml-45 mr-45 pb-20">
				<div class="col-md-3 border-right-dashed-separation p-0">
					<p class="brownish-grey f-14 mb-0">Initiated At</p>
					<p class="black f-16 fw-500 mb-0">11:00 AM</p>
				</div>
				<div class="col-md-3 border-right-dashed-separation p-0 pl-15">
					<p class="brownish-grey f-14 mb-0">Pipeline Detail</p>
					<p class="black f-16 fw-500 mb-0 text-truncate" title="Stage 02">Stage 02</p>
				</div>
				<div class="col-md-3 p-0 pl-15">
					<p class="brownish-grey f-14 mb-0">Contact Person</p>
					<p class="black f-16 fw-500 mb-0 text-truncate" title="Robert Wolken">Robert Wolken</p>
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
			
			
			
			<div class="accordion" id="accordionExample"  style="height:400px; overflow-x:hidden; overflow-y: auto">
			<%for(int i=0;i<10;i++){ %>
			<div class=" border-bottom-separation">
			  <div class="row m-0" id="headingOne">
			        <button class="btn w-100" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
			          <div class="row align-items-center m-0 pl-45 pr-45">
			          	<div class="col-md-3 p-0">
			          		<div class="d-flex">
			          			<img src="<%=baseURL%>assets/image/37.jpg" alt="user" class="hw-40 mr-3">
			          			<div class="text-left">
			          				<div class="f-14 greyish-brown text-truncate" title="Carmen Collinsder">Carmen Collinsder</div>
			          				<div class="f-12 brown-grey">11:30 AM</div>
			          			</div>
			          		</div>
			          	</div>
			          	<div class="col-md-9 text-left p-0">
			          		<div class="f-14 brownish-grey text-truncate" title="Hello Sir...Lorem ipsum dolor ">Hello Sir...Lorem ipsum dolor sit amet, consectetur adipiscing elit. In et massa pulvinar, cursus sapien in, vulputate neque. Nunc ultricies libero sed lacinia hendrerit</div>
			          		<div class="d-flex align-items-center mt-2">
			          			<img src="<%=baseURL%>assets/image/21.svg" alt="doc" class="hw-40 mr-3">
			          			<div class="f-14 brownish-grey fw-500 text-break">Product-Brochure.pdf</div>
			          			<div class="f-14 brown-grey ml-3">256kb</div>
			          		</div>
			          	</div>
			          </div>
			        </button>
			  </div>
			    <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
			      <div class="card-body f-14 brownish-grey">
					Hello Sir, Welcome, we are reaching you..
					<br><br><br>
					<br>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In et massa pulvinar, cursus sapien in, vulputate neque. Nunc ultricies libero sed lacinia hendrerit. Donec varius finibus leo, nec scelerisque lacus. Cras at finibus purus. Fusce dignissim lorem eu lorem sollicitudin dictum. Cras commodo vel metus a lacinia. Integer commodo efficitur facilisis. Phasellus elementum magna lorem, quis ullamcorper lacus feugiat sed. Phasellus dictum eget sapien ac vehicula.
					
					
					 <br><br><br>
					<br>Best,
					<br>Salesken Pvt. Ltd.
			      </div>
			    </div>
			    </div>
			    <%} %>
			  </div>
			  
			 
			  
			  
			  
			  
<script src="<%=baseURL%>assets/js/salesken.js"></script>
			