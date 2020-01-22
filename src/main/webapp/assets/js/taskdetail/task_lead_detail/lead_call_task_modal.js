 $('.dropdown-menu').click(function(e) {
   	e.stopPropagation();
   });
   
   $('#leave_task').unbind().click(
   		function(e) {
   			e.preventDefault();
   			$('#leaveTaskModal').modal('show').find('.modal-body').load(
   					$(this).attr('href'));
   
   		});
   $('#datepicker').datepicker({
   	autoclose : true
   })
   function showCalendar() {
   	$('#datepicker').datepicker('show')
   }
   $('.share-menu.dropdown-menu').click(function(e) {
   	e.stopPropagation();
   });
   $('#lead_call_reply_submit').click(function(){
   	$('#lead_call_reply').dropdown('hide');
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
     $('#lead_call_comment').on('show.bs.dropdown', function () {
   	  	$(".comment").addClass('active');
   	});
    $('#lead_call_comment').on('hidden.bs.dropdown', function () {
     		$(".comment").removeClass('active');
   	});
    $('#lead_call_reply').on('show.bs.dropdown', function () {
   	 	$(".share").addClass('active');
   	});
    $('#lead_call_reply').on('hidden.bs.dropdown', function () {
   		$(".share").removeClass('active');
   	});