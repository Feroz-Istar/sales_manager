var filename="";
var target_agents=[];
var target_teams=[];
var qualified_agents=[];
var qualified_teams=[];
var lost_agents=[];
var lost_teams=[];
var won_agents=[];
var won_teams=[];
$( document ).ready(function() {
	/*start of validation*/
	
	
	$("#lostleadmodal").validate({
		rules: {
			reasonforlosing:{
				required: true	
			},
			
		}
	});
	
	$('#lostleadsubmit').click(function(){
	    var isreasonforlosingvalid = $("#reasonforlosing").valid();
	    if(isreasonforlosingvalid){
	    	$('#lostLeadModalCenter').modal('hide');
	    }

	});	
	
	$("#wonleadmodal").validate({
		rules: {
			reasonforwin:{
				required: true	
			},
			
		}
	});
	
	$('#wonleadsubmit').click(function(){
	   var isreasonforwinvalid = $("#reasonforwin").valid();
	   if(isreasonforwinvalid){
		   $('#wonLeadModalCenter').modal('hide');
	   }
	});	
	
	
	/*end of validation*/
	
	
	/*start of file upload dropzone code*/
	Dropzone.autoDiscover = false;
		var myDropzone = new Dropzone(".dropzonediv", 
				{ 
			maxFiles:1,
			init: function() {
			      this.on("maxfilesexceeded", function(file) {
			            this.removeAllFiles();
			            this.addFile(file);
			      })},
			acceptedFiles: ".xlsx, .xls, .csv",
			url: "/fileUploadServlet",
		    previewsContainer: "#previews", // Define the container to display the previews
		    previewTemplate: '<div class="preview"><img class="mb-4" data-dz-thumbnail height="60" width="60"/>  <div class="filename"></div></div>     ',
		    clickable: ".browse",
		     addRemoveLinks: true,
		     error: function (file, response) {
	        	    file.previewElement.remove();
	        	    alertify.error('Please use only xlsx,xls or csv file');


		        // file.previewElement.classList.add("dz-error");
		         },
		         success: function (file, response, data) {
		        	 $('.doc-image-size').hide();		        	 
		        	    file.previewElement.querySelector("img").src = '/assets/image/CSV.png'; // after file uploaded successfully show csv icon
		        	    file.previewElement.querySelector(".filename").innerHTML=file.name;  // after file uploaded successfully show file name
		        	    $('.continue').prop("disabled", false); // enable the continue button after file uploaded successfully
		        	    $('#pills-preview-tab').removeClass('disabled'); // enable preview Tab after file uploaded successfully
		         },
		          removedfile: function (file) {
		        	    file.previewElement.remove();
			        	 $('.doc-image-size').show(); // display default image after file uploaded failed
			        	    $('.continue').prop("disabled", true);// disable the continue button after file uploaded failed
			        	    $('#pills-preview-tab').addClass('disabled');// disable preview Tab after file uploaded failed


		        	} 

			
				});
		/*end of file upload dropzone code*/

		$('.continue').click(function(){
			$('#pills-preview-tab').removeClass('disabled'); //enable preview tab
			$('#pills-preview-tab').tab('show')			//display preview tab
		});
		$('.modal-prev-btn').click(function(){
			$('#pills-upload-tab').tab('show')			//display upload tab
		});
		$('.leadmodal>.nav-pills').on('shown.bs.tab', function (e) {
			if($($(e.target).html()).find('.tabtitle').html() ==='Preview'){
				$('.modal-prev-btn').show(); //show previous button
				$('.leadsubmit').show();//show submit button
				$('.continue').hide();//hide continue button 
			}else{
				$('.modal-prev-btn').hide();
				$('.leadsubmit').hide();
				$('.continue').show();
			}
		});
		
		$('.leadsubmit').click(function (){
			$('#addLeadModalCenter').modal('hide'); //final submission of lead modal tab
			location.reload();
		});

		//underline Lead link in navbar
		$('.salesken.navbar-nav>li').removeClass('active');
		$($('.salesken.navbar-nav>li')[4]).addClass('active');
		
		
		
		$('.page').Pagination({ // id to initial draw and use pagination
            size: 87, // size of list input
            pageShow: 5, // 5 page-item per page
            page: 1, // current page (default)
            limit: 10, // current limit show perpage (default)
    	}, function(obj){ // callback function, you can use it to re-draw table or something
            	console.log(obj)
    	});
		
		
		
		$('#lead_qualified_datepicker').datepicker({autoclose:true});
		$('#lead_lost_datepicker').datepicker({autoclose:true});
		$('#lead_won_datepicker').datepicker({autoclose:true});
		
		$('#target-filter').on('show.bs.dropdown', function () {
			var new_height= $('#nav-target').outerHeight() - $('#target-selection').outerHeight() ;
			console.log(new_height);
			$('#target_dropdown + .dropdown-menu').height(new_height-13);
			$('.agent-team-list').height(new_height - 200);
		});
		
		$('#qualified-filter').on('show.bs.dropdown', function () {
			var new_height= $('#nav-qualified').outerHeight() - $('#qualified-selection').outerHeight() ;
			console.log(new_height);
			$('#qualified_dropdown + .dropdown-menu').height(new_height-13);
			$('.agent-team-list').height(new_height - 200);
		});
		
		$('#lost-filter').on('show.bs.dropdown', function () {
			var new_height= $('#nav-lost').outerHeight() - $('#lost-selection').outerHeight() ;
			console.log(new_height);
			$('#lost_dropdown + .dropdown-menu').height(new_height-13);
			$('.agent-team-list').height(new_height - 200);
		});
		
		$('#won-filter').on('show.bs.dropdown', function () {
			var new_height= $('#nav-win').outerHeight() - $('#won-selection').outerHeight() ;
			console.log(new_height);
			$('#won_dropdown + .dropdown-menu').height(new_height-13);
			$('.agent-team-list').height(new_height - 200);
		});
		
		
		$('.add-number.dropdown-menu').click(function(e) {
		    e.stopPropagation();
		});
		$('#addContactNumber').click(function(){
			var number= $('#contact-number').val();
			var html='<button type="button"  class="theme_solid_border bg-white brown-grey rounded f-12 position-relative search-filter ml-10">'+number+'&nbsp;&nbsp;<i class="fas fa-times-circle brown-grey f-14 cross-btn"></i></button>'
			if(number != ""){
				$('#number-list').append(html);
			};
			$('#add_number_dropdown').dropdown('hide');
		});
		
		$('#add-scp').click(function(){
			var html='<div class="col-md-6 p-0 pt-10 pr-15"><input type="text" class="custom-modal-input w-100 form-control f-14" id="contact_person_name" name="contact_person_name" aria-describedby="contact_person_name" placeholder="Type here"></div>       		<div class="col-md-6 p-0 pt-10"><input type="text" class="custom-modal-input w-100 form-control f-14" id="designation" name="designation" aria-describedby="designation" placeholder="Type here"></div>';
			$('#contact-person-row').append(html);
		})
		
});
		
	function showqualifiedCalendar(){
		$('#lead_qualified_datepicker').datepicker('show');
	}
	function showlostCalendar(){
		$('#lead_lost_datepicker').datepicker('show');
	}
	function showwonCalendar(){
		$('#lead_won_datepicker').datepicker('show');
	}
	
	
	
	