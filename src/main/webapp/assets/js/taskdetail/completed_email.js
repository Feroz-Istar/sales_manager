$(function () {
		  $('[data-toggle="tooltip"]').tooltip()
		});
	$('.share-menu.dropdown-menu').click(function(e) {
		e.stopPropagation();
	});

	$('#completed_email_reply_submit').click(function(){
		$('#completed_email_reply').dropdown('hide');
		$('#shareTaskModal').modal('show');
		$(".share").removeClass('active');
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
	  $('#completed_email_comment').on('show.bs.dropdown', function () {
		  $(".comment").addClass('active');
		});
	 $('#completed_email_comment').on('hidden.bs.dropdown', function () {
	  		$(".comment").removeClass('active');
		});
	 $('#completed_email_reply').on('show.bs.dropdown', function () {
		  $(".share").addClass('active');
		});
	 $('#completed_email_reply').on('hidden.bs.dropdown', function () {
	  		$(".share").removeClass('active');
		});
	 
	 $('.email-inner').hide();
	 $('.email-outer').click(function(){
		 	$(this).hide();
            $('.email-inner').slideDown('slow');
      });
	 $('.email-inner').click(function(){
		 	$(this).hide();
		 	$('.email-outer').show();
           
      });