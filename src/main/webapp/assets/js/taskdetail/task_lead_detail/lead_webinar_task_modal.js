   $(document).ready(function(){
   	$('.share-menu.dropdown-menu').click(function(e) {
   		e.stopPropagation();
   	});
   	$('#lead_webinar_reply_submit').click(function(){
   		$('#lead_webinar_reply').dropdown('hide');
   		$(".share").removeClass('active');
   		$('#shareTaskModal').modal('show');
   	});
   	  $(".fav").click(function(){
   		  $( this ).toggleClass( "active" );
   		});
   	  $(".comment").click(function(){
   		  $( this ).toggleClass( "active" );
   		});
   	  $(".share").click(function(){
   		  $( this ).toggleClass( "active" );
   		});
   	  $('#lead_webinar_comment').on('show.bs.dropdown', function () {
   		  	$(".comment").addClass('active');
   		});
   	 $('#lead_webinar_comment').on('hidden.bs.dropdown', function () {
   	  		$(".comment").removeClass('active');
   		});
   	 $('#lead_webinar_reply').on('show.bs.dropdown', function () {
   		 	$(".share").addClass('active');
   		});
   	 $('#lead_webinar_reply').on('hidden.bs.dropdown', function () {
   			$(".share").removeClass('active');
   		});
   })