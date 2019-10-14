<div style="min-width: 248px; padding-left: .75rem; padding-right:.75rem">
	<div class="row justify-content-between pt-2">
	  <div class="col-md-10 greyish-brown font-weight-bold f-18">CRM</div>
	  <button type="button" class="col-md-2 col-1 close" data-dismiss="modal" aria-label="Close">
		<span aria-hidden="true">&times;</span>
	  </button>
	</div>
	<hr>
	
	<%for(int i=0;i<3;i++){ %>
	<div class="d-flex flex-column mb-3">
		<div class="f-14 font-weight-bold black">Question <%=i+1 %></div>
		<div class="f-14 bblack">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since.</div>
	</div>
	<%} %>
</div>