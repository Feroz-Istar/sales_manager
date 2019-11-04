$( document ).ready(function() {
	  $('[data-toggle="tooltip"]').tooltip()
	  attachTaskRelatedData();
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

function attachTaskRelatedData (){
	
	   /* start of task notes,cues,crm,chat dropdown */
	   
    $('.notesdropdown').click(function(){
    	var dropdown_id = $(this).children().data('dropdown_id');
    	closeNotes(dropdown_id);
    	closeCues(dropdown_id);
    	closeCRM(dropdown_id);
    	closeChat(dropdown_id);
    	$(this).addClass('show');

    	 $.get( "../popover/notescontent.jsp", function( data ) {
    		 $( "."+dropdown_id ).html( data );
    	  	$('#'+dropdown_id).dropdown('show')	;
    	  	
    	  	$(".closenotes").click(function(){ closeNotes(dropdown_id); });

    	  	
    	  	});
    	
    })
    
    $('.cuesdropdown').unbind().click(function(){
    	var dropdown_id = $(this).children().data('dropdown_id');

    	closeNotes(dropdown_id);
    	closeCues(dropdown_id);
    	closeCRM(dropdown_id);
    	closeChat(dropdown_id);
	  	 $(this).addClass('show');

    	 $.get( "../popover/cuescontent.jsp", function( data ) {
    		 $( "."+dropdown_id ).html( data );
     	  	$('#'+dropdown_id).dropdown('show')	;
    	  	$(".closecues").click(function(){ closeCues(dropdown_id); });

     	  	
    	  	});
    	
    });
    $('.crmdropdown').unbind().click(function(){
    	var dropdown_id = $(this).children().data('dropdown_id');

    	closeNotes(dropdown_id);
    	closeCues(dropdown_id);
    	closeCRM(dropdown_id);
    	closeChat(dropdown_id);
    	$(this).addClass('show');

   	 $.get( "../popover/crmcontent.jsp", function( data ) {
   		 $( "."+dropdown_id ).html( data );
  	  	$('#'+dropdown_id).dropdown('show');
	  	$(".closecrm").click(function(){ closeCRM(dropdown_id); });

   	  	});
   	
   });
   
    $('.chatdropdown').unbind().click(function(){
    	var dropdown_id = $(this).children().data('dropdown_id');

    	closeNotes(dropdown_id);
    	closeCues(dropdown_id);
    	closeCRM(dropdown_id);
    	closeChat(dropdown_id);
	  	 $(this).addClass('show');

  	 $.get( "../popover/chatcontent.jsp", function( data ) {
  		 $( "."+dropdown_id ).html( data );
   	  	$('#'+dropdown_id).dropdown('show');
	  	$(".closechat").click(function(){ closeChat(dropdown_id); });

  	  	});
  	
  });
  
    
	/* End of task notes,cues,crm,chat dropdown */
}
function closeNotes(dropdown_id){
	$('.notesdropdown').removeClass('show');
  	$('#'+dropdown_id).dropdown('hide')	
}
function closeCues(dropdown_id){
	$('.cuesdropdown').removeClass('show');
  	$('#'+dropdown_id).dropdown('hide')	
}
function closeCRM(dropdown_id){
	$('.crmdropdown').removeClass('show');
  	$('#'+dropdown_id).dropdown('hide')	
}

function closeChat(dropdown_id){
	$('.chatdropdown').removeClass('show');
  	$('#'+dropdown_id).dropdown('hide')	
}

function load(){
	$(document).keydown(function (event) {
        if (event.ctrlKey == true && (event.which == '107' || event.which == '109' || event.which == '187' || event.which == '189'))
         {
             event.preventDefault();
         }
     });
	  document.body.addEventListener("wheel", zoomShortcut,{passive:false}); //add the event
	}

	function zoomShortcut(e){
	  if(e.ctrlKey){            //[ctrl] pressed?
	    event.preventDefault();  //prevent zoom
	    if(e.deltaY<0){        //scrolling up?
	                            //do something..
	      return false;
	    }
	    if(e.deltaY>0){        //scrolling down?
	                            //do something..
	      return false;
	    }
	  }
	}
