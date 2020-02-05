<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>

<div class="col-md-6 p-0">	
				  			<div class="d-flex align-items-center">	
				  				<img src="<%=baseURL%>assets/image/11.png" class="hw-60" alt="user-img"/>
				  				<div class="pl-20">
				  					<div class="f-16  fw-500 black text-truncate" title="Globex Corporation Inc.">Stanley Howard</div>
						  			<div class="d-flex align-items-center">		
						  				<div class="p-0 rateYo mr-4" data-rating="3"></div>
						  				<i class="far fa-thumbs-up mr-2 f-24 brown-grey"></i>
						  				<div class="greyish-brown  fw-500 f-16 mr-1">12</div>
						  				<div class="brown-grey f-14">Likes</div>
						  			</div>	
				  				</div>
				  			</div>
				  		</div>		
				  		<div class="col-md-6 text-right	p-0">
				  			<div class="d-flex align-items-center justify-content-end">
					  			<img src="<%=baseURL%>assets/image/people.svg" class="mr-2" alt="team" />
					  			<div class="f-14 greyish-brown mr-40 text-truncate" title="Team North">Team North</div>
					  			<img src="<%=baseURL%>assets/image/mail.svg" class="mr-2" alt="email"/>
					  			<div class="f-14 greyish-brown mr-40 text-truncate" title="stanleyhoward@gmail.com">stanleyhoward@gmail.com</div>
					  			<img src="<%=baseURL%>assets/image/call.svg" class="mr-2" alt="phone"/>
					  			<div class="f-14 greyish-brown mr-40">(741)-210-1851</div>
					  			<img src="<%=baseURL%>assets/image/editcolor.svg"/>
				  			</div>
				  		</div>	
				  		<div class="col-md-12 p-0">
				  			<div class="row border-bottom-dashed-separation m-0 pt-25 pb-25 ">
				  		<div class="col-md-8 p-0">
				  			<div class="row m-0">
				  				<div class="col-md-3 p-0 border-right-dashed-separation">
				  					<div class="d-flex align-items-center">
				  						<i class="fas fa-dollar-sign black f-30"></i>
				  						<div class="f-30 font-weight-bold pastel-red"> &nbsp;450 </div>
				  					</div>
				  					<div class="f-12 brownish-grey">Achieved Value</div>
				  				</div>
				  				<div class="col-md-3 p-0 border-right-dashed-separation pl-15">
				  					<div class="d-flex align-items-center">
				  						<img src="<%=baseURL %>assets/image/people.svg" class="h-30">
				  						<div class="f-30 font-weight-bold black"> &nbsp;24 - 40 </div>
				  					</div>
				  					<div class="f-12 brownish-grey">Won & Lost Leads</div>
				  				</div>
				  				<div class="col-md-3 p-0 border-right-dashed-separation pl-15">
				  					<div class="d-flex align-items-center">
				  						<img src="<%=baseURL %>assets/image/stats.svg" class="h-30">
				  						<div class="f-30 font-weight-bold black"> &nbsp;30</div>
				  					</div>
				  					<div class="f-12 brownish-grey">Activities Per Lead Won </div>
				  				</div>
				  				<div class="col-md-3 p-0 border-right-dashed-separation pl-15">
				  					<div class="d-flex align-items-center">
				  						<img src="<%=baseURL %>assets/image/task.svg" class="h-30">
				  						<div class="f-30 font-weight-bold black"> &nbsp;40 </div>
				  					</div>
				  					<div class="f-12 brownish-grey">Pending Tasks </div>
				  				</div>
				  			</div>
				  		</div>
				  		<div class="col-md-4">
				  			<div class="row">
				  				<div class="col-md-4 p-0 pl-15">
				  					<div class="d-flex align-items-center">
				  						<img src="<%=baseURL %>assets/image/call_outline.svg" class="h-30">
				  						<div class="f-30 font-weight-bold black"> &nbsp;34 </div>
				  					</div>
				  					<div class="f-12 brownish-grey">Completed Task </div>
				  				</div>	
				  				<div class="col-md-4 p-0">
				  					<div class="d-flex align-items-center pl-15">
				  						<img src="<%=baseURL %>assets/image/call_outline.svg" class="h-30">
				  						<div class="f-30 font-weight-bold black"> &nbsp;12 </div>
				  					</div>
				  					<div class="f-12 brownish-grey"></div>
				  				</div>
				  				<div class="col-md-4 p-0">
				  					<div class="d-flex align-items-center pl-15">
				  						<img src="<%=baseURL %>assets/image/webinar_outline.svg" class="h-30">
				  						<div class="f-30 font-weight-bold black"> &nbsp;05 </div>
				  					</div>
				  					<div class="f-12 brownish-grey"></div>
				  				</div>
				  			</div>
				  		</div>
				  	</div>
				  	</div>	