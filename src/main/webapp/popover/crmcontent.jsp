<div style="min-width: 500px	; padding-left:1.5rem; padding-right:1.5rem;  padding-top:1rem;min-height:600px	">
	<div class="row justify-content-between pt-2">
	  <div class="col-md-10 greyish-brown font-weight-bold f-18">CRM</div>
	  <button type="button" class="col-md-2 col-1 close closecrm" data-dismiss="modal" aria-label="Close">
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
<script>$('.closecrm').click(function(){
	$('.crmdropdown').dropdown('hide');
})</script>