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
		
		
		/*start of target popover*/
		
		$('.targetpopup').popover({
		    html: true,
		    sanitize: false,
			placement: 'bottom',
		    trigger: 'manual',
		    content: function() {
		      return $.ajax({url: '../popover/agentteamfilter.jsp',
		                     dataType: 'html',
		                     async: false}).responseText;
		    }
		  }).click(function(e) {
		    $(this).popover('toggle');
		  });
		
		$('.targetpopup').on('shown.bs.popover', function () {
			  // do something…
			  $('.agentteamsubmit').addClass('targetfilter');
				attachTargetFilter();

			  if(target_agents.length>0 || target_teams.length>0){
				  console.log('we have selected checkbox'+target_agents.join(',')+target_teams.join(','));
				  if(target_teams.length>0){
				  $('.teamcheckbox').each(function () { 
						for(var i=0;i<target_teams.length;i++){
							if($(this).data('id')===target_teams[i]){
								$(this).prop('checked', true);
							}
						}
						
					});
				  }
				  if(target_agents.length>0){

					  $('.agentcheckbox').each(function () { 
							for(var i=0;i<target_agents.length;i++){
								if($(this).data('id')===target_agents[i]){
									$(this).prop('checked', true);
								}
							}
							
						});
				  }
				  
			  }
			  
			});
		
		/*end of target popover*/
		
		/*start of qualified popover*/
		
		$('.qualifiedpopup').popover({
		    html: true,
		    sanitize: false,
			placement: 'bottom',
		    trigger: 'manual',
		    content: function() {
		      return $.ajax({url: '../popover/agentteamfilter.jsp',
		                     dataType: 'html',
		                     async: false}).responseText;
		    }
		  }).click(function(e) {
		    $(this).popover('toggle');
		  });
		
		$('.qualifiedpopup').on('shown.bs.popover', function () {
			  // do something…
			  $('.agentteamsubmit').addClass('qualified');
				attachQualifiedFilter();

			  if(qualified_agents.length>0 || qualified_teams.length>0){
				  console.log('we have selected checkbox'+qualified_agents.join(',')+qualified_teams.join(','));
				  if(qualified_teams.length>0){
				  $('.teamcheckbox').each(function () { 
						for(var i=0;i<qualified_teams.length;i++){
							if($(this).data('id')===qualified_teams[i]){
								$(this).prop('checked', true);
							}
						}
						
					});
				  }
				  if(qualified_agents.length>0){

					  $('.agentcheckbox').each(function () { 
							for(var i=0;i<qualified_agents.length;i++){
								if($(this).data('id')===qualified_agents[i]){
									$(this).prop('checked', true);
								}
							}
							
						});
				  }
				  
			  }
			  
			});
		
		/*end of qualified popover*/
		
			
		/*start of lost popover*/
		
		$('.lostpopup').popover({
		    html: true,
		    sanitize: false,
			placement: 'bottom',
		    trigger: 'manual',
		    content: function() {
		      return $.ajax({url: '../popover/agentteamfilter.jsp',
		                     dataType: 'html',
		                     async: false}).responseText;
		    }
		  }).click(function(e) {
		    $(this).popover('toggle');
		  });
		
		$('.lostpopup').on('shown.bs.popover', function () {
			  // do something…
			  $('.agentteamsubmit').addClass('lostfilter');
			  attachLostFilter();

			  if(lost_agents.length>0 || lost_teams.length>0){
				  console.log('we have selected checkbox'+lost_agents.join(',')+lost_teams.join(','));
				  if(lost_teams.length>0){
				  $('.teamcheckbox').each(function () { 
						for(var i=0;i<lost_teams.length;i++){
							if($(this).data('id')===lost_teams[i]){
								$(this).prop('checked', true);
							}
						}
						
					});
				  }
				  if(lost_agents.length>0){

					  $('.agentcheckbox').each(function () { 
							for(var i=0;i<lost_agents.length;i++){
								if($(this).data('id')===lost_agents[i]){
									$(this).prop('checked', true);
								}
							}
							
						});
				  }
				  
			  }
			  
			});
		
		/*end of lost popover     */
			
		
		/*start of won popover*/
		
		$('.wonpopup').popover({
		    html: true,
		    sanitize: false,
			placement: 'bottom',
		    trigger: 'manual',
		    content: function() {
		      return $.ajax({url: '../popover/agentteamfilter.jsp',
		                     dataType: 'html',
		                     async: false}).responseText;
		    }
		  }).click(function(e) {
		    $(this).popover('toggle');
		  });
		
		$('.wonpopup').on('shown.bs.popover', function () {
			  // do something…
			  $('.agentteamsubmit').addClass('wonfilter');
			  attachWonFilter();

			  if(won_agents.length>0 || won_teams.length>0){
				  console.log('we have selected checkbox'+won_agents.join(',')+won_teams.join(','));
				  if(won_teams.length>0){
				  $('.teamcheckbox').each(function () { 
						for(var i=0;i<won_teams.length;i++){
							if($(this).data('id')===won_teams[i]){
								$(this).prop('checked', true);
							}
						}
						
					});
				  }
				  if(won_agents.length>0){

					  $('.agentcheckbox').each(function () { 
							for(var i=0;i<won_agents.length;i++){
								if($(this).data('id')===won_agents[i]){
									$(this).prop('checked', true);
								}
							}
							
						});
				  }
				  
			  }
			  
			});
		/*end of won popover*/

	});




/*start of won popover submit*/

function attachWonFilter(){
	 $('.wonfilter').click(function(){
		 won_agents=[];
		 won_teams=[];
			$('.agentcheckbox:checked').each(function () { 
				if(this.checked){
					won_agents.push($(this).data('id'));
				}
				
			});
			$('.teamcheckbox:checked').each(function () { 
				if(this.checked){
					won_teams.push($(this).data('id'));
				}
				
			});
			alert('agent submit ids are '+won_agents.join(',')+" team submit are "+won_teams.join(','));
	        $('.wonpopup').popover('hide');



		});
		
}
/*end of won popover submit*/

/*start of lost popover submit*/

function attachLostFilter(){
	 $('.lostfilter').click(function(){
		 lost_agents=[];
		 lost_teams=[];
			$('.agentcheckbox:checked').each(function () { 
				if(this.checked){
					lost_agents.push($(this).data('id'));
				}
				
			});
			$('.teamcheckbox:checked').each(function () { 
				if(this.checked){
					lost_teams.push($(this).data('id'));
				}
				
			});
			alert('agent submit ids are '+lost_agents.join(',')+" team submit are "+lost_teams.join(','));
	        $('.lostpopup').popover('hide');



		});
		
}
/*end of lost popover submit*/


/*start of qualified popover submit*/

function attachQualifiedFilter(){
	 $('.qualified').click(function(){
		 qualified_teams=[];
		 qualified_agents=[];
			$('.agentcheckbox:checked').each(function () { 
				if(this.checked){
					qualified_agents.push($(this).data('id'));
				}
				
			});
			$('.teamcheckbox:checked').each(function () { 
				if(this.checked){
					qualified_teams.push($(this).data('id'));
				}
				
			});
			alert('agent submit ids are '+qualified_teams.join(',')+" team submit are "+qualified_teams.join(','));
	        $('.qualifiedpopup').popover('hide');



		});
		
}
/*end of qualified popover submit*/

/*start of target popover submit*/

function attachTargetFilter(){
	 $('.targetfilter').click(function(){
		 target_agents=[];
		 target_teams=[];
			$('.agentcheckbox:checked').each(function () { 
				if(this.checked){
					target_agents.push($(this).data('id'));
				}
				
			});
			$('.teamcheckbox:checked').each(function () { 
				if(this.checked){
					target_teams.push($(this).data('id'));
				}
				
			});
			alert('agent submit ids are '+target_agents.join(',')+" team submit are "+target_teams.join(','));
	        $('.targetpopup').popover('hide');



		});
		
}
/*end of target popover submit*/

		
		
	function showqualifiedCalendar(){
		$('#lead_qualified_datepicker').datepicker('show');
	}
	function showlostCalendar(){
		$('#lead_lost_datepicker').datepicker('show');
	}
	function showwonCalendar(){
		$('#lead_won_datepicker').datepicker('show');
	}
	
	
	
	