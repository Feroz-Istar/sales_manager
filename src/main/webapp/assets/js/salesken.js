$( document ).ready(function() {
    console.log( "ready!" );
    
    $('.signout').click(function(){
    	location.href=location.origin;
    });
    
    
    $( ".sales_ken_popover" ).each(function() {
    	$(this).popover({
    	sanitize:false,html:true
    	});
    }); 
    
    /* start of notes popover */
	$('.notespopup').popover({
	    html: true,
	    sanitize: false,
	    container: 'body',
	    trigger: 'manual',
	    content: function() {
	      return $.ajax({url: '../popover/notescontent.jsp',
	                     dataType: 'html',
	                     async: false}).responseText;
	    }
	  }).click(function(e) {
	    $(this).popover('toggle');
	  });
	
	$('.notespopup').on('shown.bs.popover', function () {
		  // do something…
	});
	/* end of notes popover */
	
	/* start of cues popover */
	$('.cuespopover').popover({
	    html: true,
	    sanitize: false,
	    container: 'body',
	    trigger: 'manual',
	    content: function() {
	      return $.ajax({url: '../popover/cuescontent.jsp',
	                     dataType: 'html',
	                     async: false}).responseText;
	    }
	  }).click(function(e) {
	    $(this).popover('toggle');
	  });
	
	$('.cuespopover').on('shown.bs.popover', function () {
		  // do something…
	});
	/* end of cues popover */
	
	/* start of crm popover */
	$('.crmpopover').popover({
	    html: true,
	    sanitize: false,
	    container: 'body',
	    trigger: 'manual',
	    content: function() {
	      return $.ajax({url: '../popover/crmcontent.jsp',
	                     dataType: 'html',
	                     async: false}).responseText;
	    }
	  }).click(function(e) {
	    $(this).popover('toggle');
	  });
	
	$('.crmpopover').on('shown.bs.popover', function () {
		  // do something…
	});
	/* end of crm popover */
	
	/* start of chat popover */
	$('.chatpopover').popover({
	    html: true,
	    sanitize: false,
	    container: 'body',
	    trigger: 'manual',
	    content: function() {
	      return $.ajax({url: '../popover/chatcontent.jsp',
	                     dataType: 'html',
	                     async: false}).responseText;
	    }
	  }).click(function(e) {
	    $(this).popover('toggle');
	  });
	
	$('.chatpopover').on('shown.bs.popover', function () {
		  // do something…
	});
	/* end of chat popover */
		 
});


