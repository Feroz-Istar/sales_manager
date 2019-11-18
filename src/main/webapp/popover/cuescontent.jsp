<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>

<style>

.cuesdialog {
	border-width: 1px 1px 1px 5px;
	border-color: #dddddd;
	border-style: solid;
	border-top-right-radius: 25px;
	border-bottom-right-radius: 25px;
}

.left-blue-border {
	border-left-color: #3fb6eb;
}

.left-pink-border {
	border-left-color: #e87bd7;
}

.left-orange-border {
	border-left-color: #f09d17;
}
</style>

<div style="min-width: 500px; min-height: 600px">
	<div class="row justify-content-between m-0  pl-30 pr-30 pt-20 pb-20 ">
		<div class="col-md-10 p-0 greyish-brown font-weight-bold f-18">Cues</div>
		<div class="col-md-2 p-0">
			<button type="button" class="btn p-0 float-right closecues" data-dismiss="modal"
				aria-label="Close" onclick="closeCues()">
				<img src="<%=baseURL%>assets/image/close.svg" alt="taskicon"
					class="rounded-circle task-icon">
			</button>
		</div>

	</div>
	<div class="ml-30 mr-30 pb-20">
	<div class="input-group position-relative  ">
				<img src="<%=baseURL%>assets/image/search.svg" alt="edit" class=" searchBox" style="margin-top: 3px;">
					<input id="" class="form-control removefocus select_focus  custom-taskborder brown-grey pt-10 pb-10 f-14" type="search" placeholder="Search" style="padding-right:30px">
	</div></div>
	<div class="cuesdialog left-blue-border ml-30 mr-30 pl-30 pt-20 pb-15 mb-20">
		<div class="f-12 brown-grey">10:20 AM</div>
		<div class="f-16 blue-black ">Best of luck Sophia !</div>
		<div class="f-16 blue-black ">
			Remember to highlight the great <span
				class="f-16 blue-black  font-weight-bold">"Career
				Opportunities" </span>in Digital Marketing!
		</div>
	</div>

	<div class="cuesdialog left-pink-border ml-30 mr-30 pl-30 pt-20 pb-15 mb-20">
		<div class="f-12 brown-grey">10:20 AM</div>
		<div class="f-16 blue-black  font-weight-bold">Classes are
			conducted every weekends</div>
		<div class="f-16 blue-black ">
			We have 2 batches...
			<ul style="list-style-type: disc; padding: 0; margin-left: 18px;">
				<li class="f-14 blue-black ">Batch 1 - 10:00 AM to 01:00 PM</li>
				<li class="f-14 blue-black ">Batch 2 - 02:00 PM to 04:00 PM</li>
			</ul>
		</div>
	</div>

	<div class="cuesdialog left-orange-border ml-30 mr-30 pl-30 pt-20 pb-15 mb-20 ">
		<div class="f-12 brown-grey">10:20 AM</div>
		<div class="f-16 blue-black  font-weight-bold">It is a 53 hour
			program!</div>
		<div class="f-16 blue-black ">It is a 53 hour program! So, if
			you enroll for the weekend classes, it'll be for 8 weeks</div>
	</div>
</div>
<script>
	$('.closecues').click(function() {
		$('.cuesdropdown').dropdown('hide');
	})
</script>





