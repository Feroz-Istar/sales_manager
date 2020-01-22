<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";

%>
<div
							class="row align-items-center shadow-bottom m-0 theme_dotted_border_bottom pr-40 pl-40 pt-25 pb-25">
							<div class="col-md-2 col-4 p-0">
								<div class="f-24 font-weight-bold blue-black">$ 8562</div>
								<div class="f-14 brown-grey">Deal Value</div>
							</div>
							<div class="col-md-2 col-4 p-0">
								<div class="f-24 font-weight-bold blue-black">Stage 02</div>
								<div class="f-14 brown-grey">Current Stage</div>
							</div>
							<div class="col-md-2 col-4 p-0">
								<div class="f-24 font-weight-bold blue-black">Call Task</div>
								<div class="f-14 brown-grey">Recent Task</div>
							</div>
							<div class="col-md-2 col-4 p-0">
								<img src="<%=baseURL%>assets/image/confident.svg" class="pb-2">
								<div class="f-14 brown-grey">Lead Status</div>
							</div>
							
							<div class="col-md-4 col-12 p-0">
								<div class="row position-relative m-0">
									<div class="line" style="left:75px; width: 75%;"></div>
									<div class="col-md-3 text-center p-0">
										<i class="fas fa-check-circle  tea-color"></i>
										<div class="brownish-grey f-14">Need</div>
									</div>
									<div class="col-md-3 text-center p-0">
										<i class="fas fa-check-circle  tea-color"></i>
										<div class="brownish-grey f-14">Budget</div>
									</div>
									<div class="col-md-3 text-center p-0">
										<i class="fas fa-check-circle  tea-color"></i>
										<div class="brownish-grey f-14">Authorized</div>
									</div>
									<div class="col-md-3 text-center p-0">
										<i class="fas fa-times-circle pastel-red"></i>
										<div class="brownish-grey f-14">Urgency</div>
									</div>



								</div>
							</div>
						</div>

						<div class="row m-0">
							<div class="col-md-8 minh-650 p-0 pt-30 pl-40 pr-30">
								<div class="d-flex  align-items-center">
									<div class="mr-auto  black f-16 fw-500 pb-20">Information</div>
									<div class=" bd-highlight f-16">
										<img src="<%=baseURL%>assets/image/edit.svg" class=""
											alt="edit">
									</div>
								</div>
								<div class="row m-0">
									<div class="col-md-3 p-0">
										<div class="d-flex flex-column pb-20">
											<div class=" black f-14 font-weight-bold text-truncate"
												title="Robert Wolken">Robert Wolken</div>
											<div class="brownish-grey f-14 ">CEO</div>
										</div>
									</div>
									<div class="col-md-3 p-0">
										<div class="d-flex flex-column pb-20">
											<div class="black f-14 font-weight-bold text-truncate"
												title="Johnni Owen">Johnni Owens</div>
											<div class="brownish-grey f-14 ">Manager</div>
										</div>
									</div>

								</div>
								<h4 class="black f-14 font-weight-bold m-0">About Company</h4>
								<p class="blue-black f-14 m-0 pb-20">Lorem Ipsum is simply
									dummy text of the printing and typesetting industry. Lorem
									Ipsum has been the industry's standard dummy text ever since
									the 1500s, when an unknown printer took a galley of type and
									scrambled it to make a type specimen book.</p>
								<p class="black f-14 font-weight-bold m-0">Contact Us</p>
								<p class="blue-black f-14 m-0">+91 989 989 8787 &nbsp;
									&nbsp; |&nbsp;&nbsp; 080 6565 5656 23</p>
								<p class="blue-black f-14 m-0 ">www.openthech.com</p>
								<p class="blue-black f-14 m-0">2nd Floor “Makam Plaza” 63/1
									Above Kotak Bank, 18th Cross Rd, Malleshwaram, Bengaluru,
									Karnataka 560055</p>

								<div class="theme_dashed_border_bottom mb-30 mt-40"></div>

								<div class="d-flex align-items-center">
									<div class="mr-auto  black f-16 fw-500 pb-25">CRM Fields</div>
									<div class=" bd-highlight f-16">
										<img src="<%=baseURL%>assets/image/edit.svg" class=""
											alt="edit">
									</div>
								</div>

								<%
									for (int m = 0; m < 2; m++) {
								%>
								<div class="d-flex flex-column">
									<div class="f-14 font-weight-bold black">
										Question
										<%=(m + 1)%></div>
									<div class="f-14 blue-black pb-20">Lorem Ipsum is simply
										dummy text of the printing and typesetting industry. Lorem
										Ipsum has been the industry's standard dummy text ever since.</div>
								</div>
								<%
									}
								%>
							</div>
							<div
								class="col-md-4 pt-20 pl-40 pr-40 p-0 theme_solid_border_left very-light-pink-grey-bg">
								

								<h4 class="black fw-500 f-16  m-0 pt-10 pb-10">Objections</h4>
								<%
									for (int l = 0; l < 2; l++) {
										String bottomBorder="border_bottom_1_dashed";
										if(l==1){
											bottomBorder="";
										}
								%>
								<div
									class="signal_description <%=bottomBorder %> pb-20 pt-20">

									<p class=" brown-grey f-12 m-0">June 22, 2019</p>
									<p class="blue-black f-14 text-break m-0">Lorem Ipsum is
										simply dummy text of the printing and typesetting industry.
										Lorem Ipsum has been the industry's standard dummy text ever
										since the 1500s, when an unknown printer took a galley of type
										and scrambled it to make a type specimen book.</p>
								</div>
								<%
									}
								%>
								<h4 class="black fw-500 f-16  m-0 pt-50 pb-10">Needs & Concerns</h4>
								<p class="blue-black f-14 text-break m-0">Lorem Ipsum is
										simply dummy text of the printing and typesetting industry.
										Lorem Ipsum has been the industry's standard dummy text ever
										since the 1500s, when an unknown printer took a galley of type
										and scrambled it to make a type specimen book.</p>
							</div>

						</div>