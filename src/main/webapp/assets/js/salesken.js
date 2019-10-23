$( document ).ready(function() {
	  $('[data-toggle="tooltip"]').tooltip()

	$('.salesken_progress').show();
	setTimeout(function(){ $('.salesken_progress').hide() }, 1000);
	
    console.log( "ready!" );
    
    $('.signout').click(function(){
    	location.href=location.origin;
    });
    
    
    $( ".sales_ken_popover" ).each(function() {
    	$(this).popover({
    	sanitize:false,html:true
    	});
    }); 
    
    /* start of task notes,cues,crm,chat dropdown */
   
    $('.notesdropdown').click(function(){
    	closeNotes();
    	closeCues();
    	closeCRM();
    	closeChat();
    	$(this).addClass('show');

    	 $.get( "../popover/notescontent.jsp", function( data ) {
    		 $( ".taskdropdownmenu" ).html( data );
    	  	$('#taskcontentmenu').dropdown('show')	
    	  	});
    	
    })
    
    $('.cuesdropdown').click(function(){
    	closeNotes();
    	closeCues();
    	closeCRM();
    	closeChat();
	  	 $(this).addClass('show');

    	 $.get( "../popover/cuescontent.jsp", function( data ) {
    		 $( ".taskdropdownmenu" ).html( data );
    	  	$('#taskcontentmenu').dropdown('show')	
    	  	});
    	
    });
    $('.crmdropdown').click(function(){
    	closeNotes();
    	closeCues();
    	closeCRM();
    	closeChat();
    	$(this).addClass('show');

   	 $.get( "../popover/crmcontent.jsp", function( data ) {
   		 $( ".taskdropdownmenu" ).html( data );
   	  	$('#taskcontentmenu').dropdown('show')	
   	  	});
   	
   });
   
    $('.chatdropdown').click(function(){
    	closeNotes();
    	closeCues();
    	closeCRM();
    	closeChat();
    	$(this).addClass('show');

  	 $.get( "../popover/chatcontent.jsp", function( data ) {
  		 $( ".taskdropdownmenu" ).html( data );
  	  	$('#taskcontentmenu').dropdown('show')	
  	  	});
  	
  });
  
    
	/* End of task notes,cues,crm,chat dropdown */
	
	
	
	/*start of task share popover*/
	$('.taskshare').popover({
	    html: true,
	    sanitize: false,
	    container: 'body',
	    placement: 'bottom',
	    trigger: 'manual',
	    content: function() {
	      return $.ajax({url: '../popover/taskshare.jsp',
	                     dataType: 'html',
	                     async: false}).responseText;
	    }
	  }).click(function(e) {
		  $('.popover').popover('hide');
	    $(this).popover('toggle');
	  });
	
	
	$('.taskshare').on('shown.bs.popover', function () {
		  // do something…
		if('.taskcomment:visible'){
			$('.taskcomment	').popover('hide');
		}
		/*$('.agentsubmit').click(function(e){
			var agentarray=[];
			$('.agentcheckbox:checked').each(function () { 
				if(this.checked){
					agentarray.push($(this).data('id'));
				}
				
			});
		    $('.taskshare').popover('hide');

		})*/
		
		
	});
	
	

	/*end of task share popover*/

	
	$('.taskcomment').popover({
	    html: true,
	    sanitize: false,
	    container: 'body',
	    placement: 'bottom',
	    trigger: 'manual',
	    content: function() {
	      return $.ajax({url: '../popover/taskcomment.jsp',
	                     dataType: 'html',
	                     async: false}).responseText;
	    }
	  }).click(function(e) {
		  $('.popover').popover('hide');
	    $(this).popover('toggle');
	  });
	
	
	$('.taskcomment').on('shown.bs.popover', function () {
		  // do something…
		
		$('.closecomment').click(function(){
			$('.taskcomment').popover('hide');
		})
		$('.submitcomment').click(function(){
			$('.taskcomment').popover('hide');
		})
	})
		
try{
jQuery.validator.setDefaults({
		
		errorPlacement : function(error, element) {
			error.addClass('invalid-feedback');
		},
		highlight : function(element, errorClass, validClass) {
			$(element).addClass('is-invalid');
		},
		unhighlight : function(element, errorClass, validClass) {
			$(element).removeClass('is-invalid').addClass('is-valid');
		}
	});
}catch(error){
	console.log(error)
}
});
function closeNotes(){
	$('.notesdropdown').removeClass('show');
  	$('#taskcontentmenu').dropdown('hide')	
}
function closeCues(){
	$('.cuesdropdown').removeClass('show');
  	$('#taskcontentmenu').dropdown('hide')	
}
function closeCRM(){
	$('.crmdropdown').removeClass('show');
  	$('#taskcontentmenu').dropdown('hide')	
}

function closeChat(){
	$('.chatdropdown').removeClass('show');
  	$('#taskcontentmenu').dropdown('hide')	
}
