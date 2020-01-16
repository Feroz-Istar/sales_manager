<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>
<%for(int i=0;i<4;i++){ 
								String[] roiList = {"Upsell Cues","Cross-Sell Cues","Objection Handled ","Lead Qualified "};
								String[] roiImageList = {"upsell-cues","cross-sell-cues","objection-handling","lead-qualified"};
							%>
							<div class="col-md-3 col_bordering4 p-0 m-0 d-md-flex align-items-center minh-200" >
							<div class=" w-100 d-flex">
								<div class="col-md-8 pl-4">
								<div class="font-weight-bold f-42 greyish-brown"> 05</div>
								<div class="greyish-brown f-14 fw-500"><%=roiList[i] %></div>
								
								</div>
								<div class="col-md-4 p-0">
								<img src="<%=baseURL%>assets/image/<%=roiImageList[i] %>.svg" width=" 97" height="91" class="">
								</div>
								</div>
							</div>
							<%} %>