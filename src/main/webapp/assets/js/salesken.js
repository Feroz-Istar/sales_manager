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
		 
});


