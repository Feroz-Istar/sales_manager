$(document).ready(function(){
	loadWhatsRightContent();
	$('#completedCallTab>li>a').on('shown.bs.tab', function(e) {

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

function  loadWhatsRightContent(){
	$('#completedcall_whatswrong').empty();
	$('#completedcall_timeline').empty();
	$('#completedcall_adherence_section').empty();
	$.get(contextPath+"taskDetails/completed/tab_content/completed_call_task_tab_content/whatsright_sub_tab_content.jsp", function(data) {
		$('#completedcall_whatsright').html(data);
	});

}

function  loadWhatsWrongContent(){
	$('#completedcall_whatsright').empty();
	$('#completedcall_adherence_section').empty();
	$('#completedcall_timeline').empty();
	$.get(contextPath+"taskDetails/completed/tab_content/completed_call_task_tab_content/whatswrong_sub_tab_content.jsp", function(data) {
		$('#completedcall_whatswrong').html(data);
	});
}
function  loadCalltaskTimeline(){
	$('#completedcall_whatsright').empty();
	$('#completedcall_adherence_section').empty();
	$('#completedcall_whatswrong').empty();
	$.get(contextPath+"taskDetails/completed/tab_content/completed_call_task_tab_content/timeline_sub_tab_content.jsp", function(data) {
		$('#completedcall_timeline').html(data);
		stopFilterPropagation();
		$('#Calltask_filter_selections').find('.filters-inside-selection').empty();
		$('#Calltask_filter_selections').hide();
	});
	
}

function completedcall_adherence_success(elem){
	var filter = $(elem).text();
	var filter_id = $(elem).data('id');
	console.log(filter);
	$('#completedcallAdherence_success').attr('data-id',filter_id);
	$('#completedcallAdherence_success').attr('data-name',filter);
	loadCalltaskAdherence();
};

function  loadCalltaskAdherence(){
	
	$('#completedcall_whatsright').empty();
	$('#completedcall_timeline').empty();
	$('#completedcall_whatswrong').empty();
	$('#completedcall_filter_selections').find('.filters-inside-selection').empty();
	$('#completedcall_filter_selections').hide();
	$.get(contextPath+"taskDetails/completed/tab_content/completed_call_task_tab_content/adherence_sub_tab_content.jsp", function(data) {
		$('#completedcall_adherence_section').html(data);
		stopFilterPropagation();
	});
	$.get(contextPath+"taskDetails/completed/tab_content/completed_call_task_tab_content/adherence_call_card.jsp", function(data) {
		$('#adherence_sub_tab_card').html(data);
		stopFilterPropagation();
	});
	var filterObj={};
	
	/*Selection of date filter*/
	var time_value = $('#completedcall_adher_datepicker').attr('data-name');
	var time_value_id = $('#completedcall_adher_datepicker').attr('data-id');
	filterObj.time={};
	addFilterSelections("completedcall","time",time_value,time_value_id,filterObj.time)
/*Selection of success filter*/
	var success_value = $('#completedcallAdherence_success').attr('data-name');
	var success_id = $('#completedcallAdherence_success').attr('data-id');
	filterObj.deal={};
	addFilterSelections("completedcall","Adherence_success",success_value,success_id,filterObj.deal)
}

function stopFilterPropagation(){
	$('.filter-menu.dropdown-menu').click(function(e) {
	    e.stopPropagation();
	});
	$('.filtertabs>li>.nav-link').click(function(e) {
		$($(this).attr('href') + '-tab').tab('show')
	});
}
function showCompletedCallAdherCalendar() {
	$('#completedcall_adher_datepicker').datepicker('show')
}


/*---------------------------*/
