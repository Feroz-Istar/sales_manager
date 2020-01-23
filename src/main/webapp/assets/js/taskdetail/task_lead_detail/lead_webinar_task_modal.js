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

$(document).ready(function(){	
	
loadWhatsRightContent();
	$('#leadWebinarTab>li>a').on('shown.bs.tab', function(e) {

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
		
			loadWhatsRightContent();
		}
	});
	});


function  loadWhatsRightContent(){

	$('#leadwebinarwhatswrong').empty();
	$('#leadwebinartimeline').empty();
	$('#leadwebinar_adherence').empty();
	$.get(contextPath+"taskDetails/task_lead_detail/task_lead_details_content/lead_webinar_task_tab_content/web_lead_whatsright_sub_tab_content.jsp", function(data) {
		console.log(data);
		$('#leadwebinarwhatsright').html(data);
	});
}

function  loadWhatsWrongContent(){
	$('#leadwebinarwhatsright').empty();
	$('#leadwebinar_adherence').empty();
	$('#leadwebinartimeline').empty();
	$.get(contextPath+"taskDetails/task_lead_detail/task_lead_details_content/lead_webinar_task_tab_content/web_lead_whatswrong_sub_tab_content.jsp", function(data) {
		$('#leadwebinarwhatswrong').html(data);
	});
}
function  loadCalltaskTimeline(){
	$('#leadwebinarwhatsright').empty();
	$('#leadwebinarwhatswrong').empty();
	$('#leadwebinar_adherence').empty();
	$.get(contextPath+"taskDetails/task_lead_detail/task_lead_details_content/lead_webinar_task_tab_content/web_lead_timeline_sub_tab_content.jsp", function(data) {
		$('#leadwebinartimeline').html(data);
		stopFilterPropagation();
		
	});
	
}
function  loadCalltaskAdherence(){
	$('#leadwebinarwhatsright').empty();
	$('#leadwebinarwhatswrong').empty();
	$('#leadwebinarwhatswrong	').empty();
	$.get(contextPath+"taskDetails/task_lead_detail/task_lead_details_content/lead_webinar_task_tab_content/web_lead_adherence_sub_tab_content.jsp", function(data) {
		$('#leadwebinar_adherence').html(data);
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
