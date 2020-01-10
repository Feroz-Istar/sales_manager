var contextPath=$('body').data('baseurl');

$( document ).ready(function() {
	  $('[data-toggle="tooltip"]').tooltip()
	  attachTaskRelatedData();
	$('.salesken_progress').show();
	setTimeout(function(){ $('.salesken_progress').hide() }, 1000);
	
    console.log( "ready!" );
    
    $('.account').click(function(){
    	location.href=location.origin+"/landing/accountSetting.jsp";
    });
    
    $('.signout').click(function(){
    	location.href=location.origin;
    });
    $( ".sales_ken_popover" ).each(function() {
    	$(this).popover({
    	sanitize:false,html:true
    	});
    }); 
		
/*try{

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
*/

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
    	var new_height= $(this).parent().height()-18	;
    	 $.get( "../popover/notescontent.jsp", function( data ) {
    		 $( "."+dropdown_id ).html( data );
    		 $( "."+dropdown_id ).height(new_height);
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
	  	var new_height= $(this).parent().height()-18	;
    	 $.get( "../popover/cuescontent.jsp", function( data ) {
    		 $( "."+dropdown_id ).html( data );
    		 $( "."+dropdown_id ).height(new_height);
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
	  	var new_height= $(this).parent().height()-18	;

   	 $.get( "../popover/crmcontent.jsp", function( data ) {
   		 $( "."+dropdown_id ).html( data );
		 $( "."+dropdown_id ).height(new_height);
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
		 var new_height= $(this).parent().height()-18	;
  	 $.get( "../popover/chatcontent.jsp", function( data ) {
  		 $( "."+dropdown_id ).html( data );
   	  	$('#'+dropdown_id).dropdown('show');
		 $( "."+dropdown_id ).height(new_height);
		
		 $('.chat-transcript').height(new_height-200);
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
        if (event.ctrlKey == true && (event.which == '173' || event.which == '107' || event.which == '109' || event.which == '187' || event.which == '189' || event.which == '96'|| event.which == '61'|| event.which == '48'))
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
