<style>
.cuesdialog{
	border-width: 1px 1px 1px 5px;
	border-color: #dddddd;
	border-style: solid;
	border-top-right-radius: 10%;
	border-bottom-right-radius: 10%;
	
}

.left-blue-border{
	border-left-color: #3fb6eb;
}

.left-pink-border{
	border-left-color: #e87bd7;
}

.left-orange-border{
	border-left-color: #f09d17;
}
</style>

<div style="min-width: 500px	; padding-left:1.5rem; padding-right:1.5rem;  padding-top:1rem;min-height:600px	">
	<div class="row justify-content-between pt-2">
	  <div class="col-md-10 greyish-brown font-weight-bold f-18">Cues</div>
	  <button type="button" class="col-md-2 col-1 close closecues" data-dismiss="modal" aria-label="Close" onclick="closeCues()">
		<span aria-hidden="true">&times;</span>
	  </button>
	</div>
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
	<div class="cuesdialog left-blue-border py-3 px-4 mt-3">
		<div class="f-12 brown-grey">10:20 AM</div>
		<div class="f-16 bblack">Best of luck Sophia !</div>
		<div class="f-16 bblack">Remember to highlight the great <span class="f-16 bblack font-weight-bold">"Career Opportunities" </span>in Digital Marketing!</div>
	</div>	
	
	<div class="cuesdialog left-pink-border py-3 px-4 mt-3">
		<div class="f-12 brown-grey">10:20 AM</div>
		<div class="f-16 bblack mb-2 font-weight-bold">Classes are conducted every weekends</div>
		<div class="f-16 bblack">We have 2 batches...
			<ul style="list-style-type: disc; padding: 0; margin-left: 18px;">
				<li class="f-14 bblack">Batch 1 - 10:00 AM to 01:00 PM</li>
				<li class="f-14 bblack">Batch 2 - 02:00 PM to 04:00 PM</li>
			</ul>
		</div>
	</div>
	
	<div class="cuesdialog left-orange-border py-3 px-4 mt-3">
		<div class="f-12 brown-grey">10:20 AM</div>
		<div class="f-16 bblack font-weight-bold">It is a 53 hour program!</div>
		<div class="f-16 bblack">It is a 53 hour program! So, if you enroll for the weekend classes, it'll be for 8 weeks</div>
	</div>	
</div>
<script>$('.closecues').click(function(){
	$('.cuesdropdown').dropdown('hide');
})</script>





