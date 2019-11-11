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
	
	$("#updateLeadForm").validate({
		rules: {
			company_name:{
				required: true	
			},
			
		}
	});
	
	$('#updateLead').click(function(){
	    var iscompanynamevalid = $("#company_name").valid();
	    
	    if(iscompanynamevalid){
	    	$('#editLeadModalCenter').modal('hide');
	    	$('#updateConfirmation').modal('show');
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
	
	
	
	