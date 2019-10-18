<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>
<style>
.custom-border{
    border: 1px solid #dddddd;
}
.btn-size{
	height:16px;
	width: 16px;
}
</style>
<div style="min-width: 500px	; padding-left:1.5rem; padding-right:1.5rem;  padding-top:1rem;min-height:600px	">
	<div class="row justify-content-between pt-2">
	  <div class="col-md-10 greyish-brown font-weight-bold f-18">Chat</div>
	  <button type="button" 	class="col-md-2 col-1 close closechat" data-dismiss="modal" aria-label="Close">
		<span aria-hidden="true">&times;</span>
	  </button>
	</div>
	<hr>
	<div class="row ">
		<div class="col-md-10 d-flex">
			<img class="hw-40 mr-1" src="<%=baseURL%>assets/image/11.png" alt="user">
			<img class="hw-40 mr-1" src="<%=baseURL%>assets/image/11.png" alt="user">
			
		</div>
		<div class="col-md-2">
			
			<div class="hw-40 rounded-circle custom-border very-light-pink-bg mr-1 d-flex align-items-center justify-content-center">
			<button class="btn bg-white rounded-circle btn-size p-0 d-flex">
				<i class="theme_color align-self-center fas fa-plus-circle"></i>
			</button>	
				<img class="hw-24 mr-3" src="<%=baseURL%>assets/image/person.svg" alt="add-person">
			</div>
	
		</div>
		
		
		
	</div>
	<hr>
	
	<div class="transcript_container p-3 " style="max-height:520px; overflow-x:hidden;overflow-y:auto;">
		<%for(int j=0;j<10;j++){ %>
		<div class="d-flex flex-column pr-5 mr-5 mb-4 ">
			<p class="f-14 bblack">
				<small class="f-12 brown-grey mr-2">00:20.</small> Jamie
				Vargas
			</p>
			<div class="card shadow" style="border-radius: 1.25rem !important;" >
				<div class="card-body">
					<p class="card-text">Some quick example text to
						build on the card title </p>
				</div>
			</div>
		</div>
		
		
		<div class="d-flex flex-column pl-5 ml-5 mb-4">
			<p class="f-14 bblack align-self-end">
				<small class="f-12 brown-grey mr-2 ">00:20.</small> Jamie
				Vargas
			</p>
			<div class="card shadow align-self-end very-light-pink-bg" style="border-radius: 1.25rem !important;" >
				<div class="card-body">
					<p class="card-text"> make up the bulk of the
						card's content.</p>
				</div>
			</div>
		</div>
		<%} %>
	</div>
	
	<div class="input-group my-3 shadow w-100">
		<input id=""
			class="form-control  custom-taskborder brown-grey  removefocus f-14"
			type="text" placeholder="Type here"
			style="border-right: none !important;">
		<div class="input-group-append">
			<button
				class="btn removefocus border_except_left d-flex justify-content-center align-items-center"
				type="button" style="">
					<i class="fas fa-paperclip f-14 brown-grey"></i>
			</button>
		</div>
	</div>
	
</div>
<script>$('.closechat').click(function(){
	$('.chatdropdown').dropdown('hide');
})</script>



