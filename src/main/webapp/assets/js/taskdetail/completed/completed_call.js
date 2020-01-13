$(document).ready(function(){
		attachTaskRelatedData();
		$(function () {
			  $('[data-toggle="tooltip"]').tooltip()
			});
		$('.share-menu.dropdown-menu').click(function(e) {
			e.stopPropagation();
		});

		$('#completed_call_reply_submit').click(function(){
			$('#completed_call_reply').dropdown('hide');
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
		  $('#completed_call_comment').on('show.bs.dropdown', function () {
			  $(".comment").addClass('active');
			});
		 $('#completed_call_comment').on('hidden.bs.dropdown', function () {
		  		$(".comment").removeClass('active');
			});
		 $('#completed_call_reply').on('show.bs.dropdown', function () {
			  $(".share").addClass('active');
			});
		 $('#completed_call_reply').on('hidden.bs.dropdown', function () {
		  		$(".share").removeClass('active');
			});
	});