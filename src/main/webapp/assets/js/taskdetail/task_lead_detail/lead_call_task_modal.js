$(document).ready(function(){	
	
loadWhatsRightContent();
	$('#leadTab>li>a').on('shown.bs.tab', function(e) {

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
	$('#leadwhatswrong').empty();
	$('#lead_timeline').empty();
	$('#lead_adherence').empty();
	$.get(contextPath+"taskDetails/task_lead_detail/task_lead_details_content/lead_call_task_tab_content/lead_whatsright_sub_tab_content.jsp", function(data) {
		$('#leadwhatsright').html(data);
	});
}

function  loadWhatsWrongContent(){
	$('#leadwhatsright').empty();
	$('#lead_adherence').empty();
	$('#lead_timeline').empty();
	$.get(contextPath+"taskDetails/task_lead_detail/task_lead_details_content/lead_call_task_tab_content/lead_whatswrong_sub_tab_content.jsp", function(data) {
		$('#leadwhatswrong').html(data);
	});
}
function  loadCalltaskTimeline(){
	$('#leadwhatswrong').empty();
	$('#leadwhatsright').empty();
	$('#lead_adherence').empty();
	$.get(contextPath+"taskDetails/task_lead_detail/task_lead_details_content/lead_call_task_tab_content/lead_timeline_sub_tab_content.jsp", function(data) {
		$('#lead_timeline').html(data);
		stopFilterPropagation();
		
	});
	
}
function  loadCalltaskAdherence(){
	$('#leadwhatsright').empty();
	$('#lead_timeline').empty();
	$('#leadwhatswrong').empty();
	$.get(contextPath+"taskDetails/task_lead_detail/task_lead_details_content/lead_call_task_tab_content/lead_adherence_sub_tab_content.jsp", function(data) {
		$('#lead_adherence').html(data);
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
	