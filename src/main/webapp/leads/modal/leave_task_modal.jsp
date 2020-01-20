<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>
<div class="modal fade" id="updateConfirmation" tabindex="-1" role="dialog" aria-labelledby="updateConfirmationTitle" aria-hidden="true">
	  <div class="modal-dialog modal-dialog-centered modal-lg	" role="document">
	    <div class="modal-content  rounded-0">
	    <div class="row justify-content-end m-0 pt-25 pr-25">
			<button type="button" class="col-md-1 col-1 close" data-dismiss="modal" aria-label="Close">
				<img src="<%=baseURL%>assets/image/close.svg" alt="close" class="float-right">
			</button>
		</div>
	       <div class="modal-body">
	       		<div class="row m-0 pl-30 pr-30 align-items-center pb-50">
	       			<div class="col-md-4 p-0 border-right-dashed-separation pb-15 pt-15 ">
	       				<img src="<%=baseURL%>assets/image/confirm-img.svg">
	       			</div>
	       			<div class="col-md-8 p-0 pl-30">
	       				<div class="fw-500 f-20 black">Congratulations !</div>
	       				<div class="f-16 brownish-grey">Your information has been updated successfully.</div>
	       			</div>
	       		</div>
	       		
	      </div>
	     
	     </div>
	  </div>
	</div>