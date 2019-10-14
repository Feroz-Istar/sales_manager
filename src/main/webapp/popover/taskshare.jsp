<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>

<div style="min-width: 248px; padding-left: .75rem; padding-right:.75rem">
	<div class="input-group mt-3 w-100">
		<input id=""
			class="form-control  custom-taskborder brown-grey  removefocus f-14"
			type="search" placeholder="Search"
			style="border-right: none !important;">
		<div class="input-group-append">
			<button
				class="btn removefocus border_except_left d-flex justify-content-center align-items-center"
				type="button" style="">
				<i class="fa fa-search f-12 brown-grey"></i>
			</button>
		</div>
	</div>
	
	<div class=" my-2"  style="height:370px; overflow-x: hidden; overflow-y:auto;">
					
	<%for(int i=0; i<20;i++){ %>
        <div class="d-flex align-items-center pt-3">
         <input class="istar-checkbox agentcheckbox" data-id="<%=i %>" id="agent_checkbox<%=i %>" type="checkbox">
         <label class="istar-checkbox-style" for="agent_checkbox<%=i %>"></label>
		<img src ="<%=baseURL%>/assets/image/11.png" class="rounded-circle ml-3 mr-2 hw-40">
		<div>
	       	<div class="f-14 fw-500 greyish-brown">Robert Garcia</div>
	       	<div class="f-12  brownish-grey">Zonal Manager</div>
         </div>
		</div>
		<%} %>
		</div>
		
	<div class="mt-3 text-center">
	 <button class="btn w-100 rounded-0 theme_bg text-white f-14 font-weight-bold agentsubmit mb-3 text-center px-3">Submit</button>
	</div>
			
</div>