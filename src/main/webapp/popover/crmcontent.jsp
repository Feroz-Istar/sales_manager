
	<%
		String url = request.getRequestURL().toString();
		String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
				+ request.getContextPath() + "/";
	%>
<div style="min-width: 500px	; min-height:600px	">
	<div class="row justify-content-between m-0  ml-30 mr-30 pt-20 pb-20 mb-40 theme_solid_border_bottom_2px">
	  <div class="col-md-10 p-0 greyish-brown font-weight-bold f-18">CRM</div>
	  <div class="col-md-2 p-0"><button type="button" class="close closecrm" data-dismiss="modal" aria-label="Close" onclick="closeCRM()">
<img src="<%=baseURL%>assets/image/close.svg" alt="taskicon" class="rounded-circle hw-24 task-icon">        </button></div>
	 
	</div>
	<%for(int i=0;i<3;i++){ %>
	<div class="d-flex flex-column pl-30 pr-30 ">
		<div class="f-14 font-weight-bold black">Question <%=i+1 %></div>
		<div class="f-14 blue-black pb-20">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since.</div>
	</div>
	<%} %>
</div>
<script>$('.closecrm').click(function(){
	$('.crmdropdown').dropdown('hide');
})</script>