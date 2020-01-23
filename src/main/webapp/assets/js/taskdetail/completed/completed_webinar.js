$(document).ready(function(){
	loadWhatsRightContent();
	$('#completedWebinarTab>li>a').on('shown.bs.tab', function(e) {

		var target = $(e.target).html(); // activated tab
		console.log(target);
		
		switch (target) {
		case "Whats Right?":
			loadWhatsRightContent();
			break;
		case "Whats Wrong?":
			loadWhatsWrongContent();
			break;
		case "Timeline":
			loadCalltaskTimeline();
			break;
		case "Adherence":
			loadCalltaskAdherence();
			break;
		default:
			/*Ongoing*/
			taskDetailTab();
		}
	});	
});

function  loadWhatsRightContent(){
	$('#completedWebinar_adherence').empty();
	$('#completedWebinarwhatswrong').empty();
	$('#completedWebinartimeline').empty();
	$.get(contextPath+"taskDetails/completed/tab_content/completed_call_task_tab_content/whatsright_sub_tab_content.jsp", function(data) {
		$('#completedWebinarwhatsright').html(data);
	});
}

function  loadWhatsWrongContent(){
	$('#completedWebinarwhatsright').empty();
	$('#completedWebinar_adherence').empty();
	$('#completedWebinartimeline').empty();
	$.get(contextPath+"taskDetails/completed/tab_content/completed_call_task_tab_content/whatswrong_sub_tab_content.jsp", function(data) {
		$('#completedWebinarwhatswrong').html(data);
	});
}
function  loadCalltaskTimeline(){
	$('#completedWebinar_adherence').empty();
	$('#completedWebinarwhatswrong').empty();
	$('#completedWebinarwhatsright').empty();
	$.get(contextPath+"taskDetails/completed/tab_content/completed_call_task_tab_content/timeline_sub_tab_content.jsp", function(data) {
		$('#completedWebinartimeline').html(data);
		stopFilterPropagation();
		$('#Calltask_filter_selections').find('.filters-inside-selection').empty();
		$('#Calltask_filter_selections').hide();
	});
	
}
function  loadCalltaskAdherence(){
	$('#completedWebinarwhatsright').empty();
	$('#completedWebinartimeline').empty();
	$('#completedWebinarwhatswrong').empty();
	$.get(contextPath+"taskDetails/completed/tab_content/completed_call_task_tab_content/adherence_sub_tab_content.jsp", function(data) {
		$('#completedWebinar_adherence').html(data);
		stopFilterPropagation();
	});
}

function stopFilterPropagation(){
	$('.filter-menu.dropdown-menu').click(function(e) {
	    e.stopPropagation();
	});
	$('.filtertabs>li>.nav-link').click(function(e) {
		$($(this).attr('href') + '-tab').tab('show')
	});
}
function showCompletedCallCalendar() {
	$('#completedcall_timeline_datepicker').datepicker('show')
}

attachTaskRelatedData();
	$(function() {
		$('[data-toggle="tooltip"]').tooltip()
	});
	$('.share-menu.dropdown-menu').click(function(e) {
		e.stopPropagation();
	});
	$('#completed_webinar_reply_submit').click(function(){
		$('#completed_webinar_reply').dropdown('hide');
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
	  $('#completed_webinar_comment').on('show.bs.dropdown', function () {
		  $(".comment").addClass('active');
		});
	 $('#completed_webinar_comment').on('hidden.bs.dropdown', function () {
	  		$(".comment").removeClass('active');
		});
	 $('#completed_webinar_reply').on('show.bs.dropdown', function () {
		  $(".share").addClass('active');
		});
	 $('#completed_webinar_reply').on('hidden.bs.dropdown', function () {
		$(".share").removeClass('active');
		});