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
<div style="min-width: 500px	; min-height:600px	">
	<div class="row justify-content-between m-0 ml-30 mr-30 pt-20 pb-20 theme_solid_border_bottom_2px"">
	  <div class="col-md-10 p-0 greyish-brown font-weight-bold f-18">Chat</div>
	  <div class="col-md-2 p-0">
	  <button type="button" class="close closechat" data-dismiss="modal"
				aria-label="Close" onclick="closeChat()">
				<img src="<%=baseURL%>assets/image/close.svg" alt="taskicon"
					class="rounded-circle hw-24 task-icon">
			</button>
	  </div>
	</div>
	
	<div class="row m-0 ml-30 mr-30 pt-10 pb-10 theme_solid_border_bottom_2px"">
		<div class="col-md-10 p-0 d-flex">
			<img class="hw-40 mr-10" src="<%=baseURL%>assets/image/11.png" alt="user">
			<img class="hw-40 mr-10 disabled" src="<%=baseURL%>assets/image/11.png" alt="user">
			
		</div>
		<div class="col-md-2 p-0 d-flex align-items-center justify-content-end">
			
			<div class="hw-40 rounded-circle custom-border very-light-pink-bg  d-flex align-items-center justify-content-center">
			<button class="btn bg-white rounded-circle btn-size p-0 d-flex" >
				<i class="theme_color align-self-center rounded-circle f-14 fas fa-plus-circle" style="border: 1px solid white;"></i>
			</button>	
				<img class="hw-24 mr-3" src="<%=baseURL%>assets/image/person.svg" alt="add-person">
			</div>
	
		</div>
		
		
		
	</div>

	
	<div class="transcript_container pl-30 pr-30 pt-20" style="max-height:520px; overflow-x:hidden;overflow-y:auto;">
		<%for(int j=0;j<10;j++){ %>
		<div class="d-flex flex-column  ">
			<p class="f-14 bblack mb-0 pb-10">
				<small class="f-12 brown-grey ">00:20.</small> Jamie
				Vargas
			</p>
			<div class="card shadow mb-25" style="border-radius: 0px 20px 20px 20px;" >
				<div class="card-body p-20" >
					<p class="card-text blue-black f-14 mb-0 " >Some quick example text to
						build on the card title </p>
				</div>
			</div>
		</div>
		
		
		<div class="d-flex flex-column">
			<p class="f-14 bblack align-self-end mb-0 mb-10">
				<small class="f-12 brown-grey ">00:20.</small> Jamie
				Vargas
			</p>
			<div class="card shadow align-self-end very-light-pink-bg mb-20" style="border-radius: 20px 0px 20px 20px;" >
				<div class="card-body  p-20">
					<p class="card-text blue-black f-14 mb-0 "> make up the bulk of the
						card's content.</p>
				</div>
			</div>
		</div>
		<%} %>
	</div>
	<div class="mr-30 ml-30 pt-10 pb-60">
	<div class="input-group m-0 shadow w-100 ">
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
</div>
<script>$('.closechat').click(function(){
	$('.chatdropdown').dropdown('hide');
})</script>



