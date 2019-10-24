<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
	%>

				<div class="row justify-content-between m-0">
					<div class="col-md-2 greyish-brown f-18 font-weight-bold p-0">Email
						Task</div>
					<div class="col-3 p-0">
					<div class="d-flex justify-content-end">
						<img src="<%=baseURL%>assets/image/heart.svg" class="cursor-pointer">
					<img src="<%=baseURL%>assets/image/message.svg" class="cursor-pointer taskcomment">
					<img src="<%=baseURL%>assets/image/reply.svg" class="cursor-pointer taskshare">
					
					</div>
				</div>
				</div>
			<div class="row m-0 border-bottom-separation shadow-sm">
				<div class="col-md-3 border-right-dashed-separation p-0">
					<p class="brownish-grey f-14 mb-0">Initiated At</p>
					<p class="black f-16 fw-500 mb-0">11:00 AM</p>
				</div>
				<div class="col-md-3 border-right-dashed-separation p-0">
					<p class="brownish-grey f-14 mb-0">Pipeline Detail</p>
					<p class="black f-16 fw-500 mb-0">Stage 02</p>
				</div>
				<div class="col-md-3 p-0">
					<p class="brownish-grey f-14 mb-0">Contact Person</p>
					<p class="black f-16 fw-500 mb-0">Robert Wolken</p>
				</div>
				

			</div>
			
			
			
			<div class="accordion" id="accordionExample"  style="height:400px; overflow-x:hidden; overflow-y: auto">
			<%for(int i=0;i<10;i++){ %>
			<div class=" border-bottom-separation">
			  <div class="row m-0 " id="headingOne">
			        <button class="btn p-0 w-100" type="button" data-toggle="collapse" data-target="#collapse<%=i %>" aria-expanded="false" aria-controls="collapseOne">
			          <div class="row align-items-center m-0">
			          	<div class="col-md-3 p-0">
			          		<div class="d-flex">
			          			<img src="<%=baseURL%>assets/image/37.jpg" class="hw-40">
			          			<div class="text-left">
			          				<div class="f-14 greyish-brown">Carmen Collinsder</div>
			          				<div class="f-12 brown-grey">11:30 AM</div>
			          			</div>
			          		</div>
			          	</div>
			          	<div class="col-md-9 p-0 text-left">
			          		<div class="f-14 brownish-grey">Hello Sir...Lorem ipsum dolor sit amet, consectetur adipiscing elit. In et massa pulvinar, cursus sapien in, vulputate neque. Nunc ultricies libero sed lacinia hendrerit</div>
			          		<div class="d-flex align-items-center">
			          			<img src="<%=baseURL%>assets/image/21.svg" class="hw-40">
			          			<div class="f-14 brownish-grey fw-500">Product-Brochure.pdf</div>
			          			<div class="f-14 brown-grey ">256kb</div>
			          		</div>
			          	</div>
			          </div>
			        </button>
			  </div>
			    <div id="collapse<%=i %>" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
			      <div class="card-body p-0 f-14 brownish-grey">
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
			  
			  <div class="row m-0">
			  
			  <div class="col-md-6 p-0">
					<div id="carouselExampleIndicators"
						class="carousel slide mb-2" data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#carouselExampleIndicators"
								data-slide-to="0" class="active"></li>
							<li data-target="#carouselExampleIndicators"
								data-slide-to="1"></li>
							<li data-target="#carouselExampleIndicators"
								data-slide-to="2"></li>
						</ol>
						<div class="carousel-inner ">

							<%
								for (int h = 0; h < 4; h++) {
										String isActive = "";
										if (h == 0) {
											isActive = "active";
										}
							%>
							<div class="carousel-item  <%=isActive%>">
								<div class="row align-items-center m-0"
									style="min-height: 170px; border:1px solid #eeeeee">
										<div class="col-md-12 p-0">
											<div class="f-16 greyish-brown fw-500">What's Wrong</div>
																	
											<div class="d-flex flex-row">
												<img class="hw-94" src="<%=baseURL%>assets/image/Group 3614.svg">
												<div class="border-right-blue"></div>
												<p class="greyish-brown f-16 fw-500 mb-0 align-self-center">Customers who responded positively in the end of a call</p>
											</div>
										</div>
								</div>
							</div>
							<%
								}
							%>

						</div>
						<a class="carousel-control-prev"
							href="#carouselExampleIndicators" role="button"
							data-slide="prev"> <span
							class="carousel-control-prev-icon" aria-hidden="true"></span>
							<span class="sr-only">Previous</span>
						</a> <a class="carousel-control-next"
							href="#carouselExampleIndicators" role="button"
							data-slide="next"> <span
							class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="sr-only">Next</span>
						</a>
					</div>

				</div>
			  
			  
			  <div class="col-md-6 p-0">
					<div id="carouselExampleIndicators"
						class="carousel slide mb-2" data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#carouselExampleIndicators"
								data-slide-to="0" class="active"></li>
							<li data-target="#carouselExampleIndicators"
								data-slide-to="1"></li>
							<li data-target="#carouselExampleIndicators"
								data-slide-to="2"></li>
						</ol>
						<div class="carousel-inner ">

							<%
								for (int h = 0; h < 4; h++) {
										String isActive = "";
										if (h == 0) {
											isActive = "active";
										}
							%>
							<div class="carousel-item  <%=isActive%>">
								<div class="row align-items-center m-0"
									style="min-height: 170px; border:1px solid #eeeeee">
										<div class="col-md-12 p-0">
											<div class="f-16 greyish-brown fw-500">What's Right</div>
																	
											<div class="d-flex flex-row">
												<img class="hw-94" src="<%=baseURL%>assets/image/Group 3614.svg">
												<div class="border-right-blue"></div>
												<p class="greyish-brown f-16 fw-500 m-0 align-self-center">Responded positively in the end of a call</p>
											</div>
										</div>
								</div>
							</div>
							<%
								}
							%>

						</div>
						<a class="carousel-control-prev"
							href="#carouselExampleIndicators" role="button"
							data-slide="prev"> <span
							class="carousel-control-prev-icon" aria-hidden="true"></span>
							<span class="sr-only">Previous</span>
						</a> <a class="carousel-control-next"
							href="#carouselExampleIndicators" role="button"
							data-slide="next"> <span
							class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="sr-only">Next</span>
						</a>
					</div>

				</div>
			  
			  
			</div>  
			  
			  
			  
			  
<script src="<%=baseURL%>assets/js/salesken.js"></script>
			