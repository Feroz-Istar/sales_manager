<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>

<div style="min-width: 500px;min-height:600px		">
	<div class="row justify-content-between m-0 ml-30 mr-30 pt-20 pb-20 theme_solid_border_bottom_2px">
	  <div class="col-md-10 p-0 greyish-brown font-weight-bold f-18">Note</div>
	<div class="col-md-2 p-0"><button type="button" class=" close closenotes" data-dismiss="modal" aria-label="Close" onclick="closeNotes()">
<img src="<%=baseURL%>assets/image/close.svg" alt="taskicon" class="rounded-circle hw-24 task-icon">        </button></div>

	</div>

	<div class="row m-0  pl-30 pr-30 pt-30 pb-10">
		<div class="col-md-12 p-0 f-14 font-weight-bold bblack">Need to
			call on time</div>
	</div>
	<div class="row m-0   pl-30 pr-30 pb-40">
		<div class="col-md-12 p-0">
			<ul style="list-style-type: disc; padding: 0; margin-left: 18px;">
				<li class="mb-2 brownish-grey f-14">Lorem ipsum dolor sit amet</li>
				<li class="mb-2 brownish-grey f-14">consectetur adipiscing elit, sed do eiusmod tempor incididunt ut</li>
				<li class="mb-2 brownish-grey f-14">labore et dolore magna aliqua. Ut enim </li>
			</ul>
		</div>
	</div>
	
	<div class="row m-0  pl-30 pr-30">
		<div class="col-md-12 p-0">
			<div class="f-14 blue-black ">
				Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
			</div>
		</div>
	</div>
	
</div>
<script>

</script>