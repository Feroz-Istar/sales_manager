		<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>
		
		<div class="card w-100 " style="box-shadow: 0 10px 40px 0 rgba(0, 0, 0, 0.1);">
				<div class="card-body  pt-30 pb-30 pl-30 pr-30" >
					<div class="row m-0">
					<%for(int i=0;i<3;i++){
						String[] pipelineTitles ={"Achieved ","In Pipeline","Projected"};
						String[] pipelineImage ={"confirm-img","lead-qualified","projected"};
						String borderseparation = "border-right-dashed-separation-2px";
						if(i==2){
							borderseparation="";
						}
						%>
						<div class="col p-0 mr-30">
							<div class="f-16 greyish-brown fw-500 pb-10"><%=pipelineTitles[i]%></div>
							<div class="row m-0">
								<div class="col-md-3 p-0  align-self-center">
									<img src="<%=baseURL%>assets/image/<%= pipelineImage[i]%>.svg" alt="call" width="80" height="70"
										class="task-dropdown">
								</div>
								<div class="col-md-4 p-0">
									<div class="greyish-brown f-12 fw-500 pb-5">Quarter 01</div>
									<div class="greyish-brown f-30  font-weight-bold">$ 100k</div>
									<div class="f-12 brown-grey">From 25 Deals</div>
								</div>
								<div class="col-md-4 p-0 pr-50 <%=borderseparation%>">
									<div class="greyish-brown f-12 fw-500 pb-5">YTD</div>
									<div class="greyish-brown f-30  font-weight-bold">$ 800k</div>
									<div class="f-12 brown-grey">From 68 Deals</div>
								</div>
							</div>
						</div>
						<%} %>
					</div>
				</div>
			</div>