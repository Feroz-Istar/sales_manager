$(document).ready(function(){
	loadWebWhatsRight();
	loadAllTeamFilterTab();
	loadAllAgentFilterTab();
	$('#completedWebinarTab>li>a').on('shown.bs.tab', function(e) {

		var target = $(e.target).html(); // activated tab
		console.log(target);
		
		switch (target) {
		case "Whats Right?":
			loadWebWhatsRight();
			break;
		case "Whats Wrong?":
			loadWebWhatsWrong();
			break;
		case "Timeline":
			loadWebtaskTimeline();
			break;
		case "Adherence":
			loadWebtaskAdherence();
			break;
		default:
			/*Ongoing*/
			loadWebWhatsRight();
		}
	});	
});

function  loadWebWhatsRight(){
	$('#completedWebinar_adhere_card').empty();
	$('#completedweb_adherence_section').empty();
	$('#completedweb_adherence_section').empty();
	$('#completedWebinarwhatswrong').empty();
	$('#completedWebinar_timeline_card').empty();
	$('#completedweb_timeline_section').empty();
	
	$.get(contextPath+"taskDetails/completed/tab_content/completed_webinar_task_tab_content/web_whatsright_sub_tab_content.jsp", function(data) {
		$('#completedWebinarwhatsright').html(data);
	});
}

function  loadWebWhatsWrong(){
	$('#completedWebinar_adhere_card').empty();
	$('#completedweb_adherence_section').empty();
	$('#completedWebinarwhatsright').empty();
	$('#completedweb_adherence_section').empty();
	$('#completedWebinar_timeline_card').empty();
	$('#completedweb_timeline_section').empty();
	$.get(contextPath+"taskDetails/completed/tab_content/completed_webinar_task_tab_content/web_whatswrong_sub_tab_content.jsp", function(data) {
		$('#completedWebinarwhatswrong').html(data);
	});
}

/*----------------------------------------start of load completed webinar task sub-tab "Timeline" content--------------------------------*/
function completedweb_timeline_success(elem){
	var filter = $(elem).text();
	var filter_id = $(elem).data('id');
	console.log(filter);
	$('#completedwebTimeline_success').attr('data-id',filter_id);
	$('#completedwebTimeline_success').attr('data-name',filter);
	loadWebtaskTimeline();
};
function completedweb_timeline_persona(elem){
	var filter = $(elem).text();
	var filter_id = $(elem).data('id');
	console.log(filter);
	$('#completedwebTimeline_persona').attr('data-id',filter_id);
	$('#completedwebTimeline_persona').attr('data-name',filter);
	loadWebtaskTimeline();
};
$('#completedwebTimeline_datepicker').change(function(){
	$('#completedwebTimeline_datepicker').attr('data-id',this.value)
	$('#completedwebTimeline_datepicker').attr('data-name',this.value)
	loadWebtaskTimeline();
})
function  loadWebtaskTimeline(){
	$('#completedWebinar_adhere_card').empty();
	$('#completedweb_adherence_section').empty();
	$('#completedWebinarwhatswrong').empty();
	$('#completedWebinarwhatsright').empty();
	$('#completedwebTimeline_filter_selections').find('.filters-inside-selection').empty();
	$('#completedwebTimeline_filter_selections').hide();
	var filterObj={};
	/*Selection of date filter*/
	var time_value = $('#completedwebTimeline_datepicker').attr('data-name');
	var time_value_id = $('#completedwebTimeline_datepicker').attr('data-id');
	filterObj.time={};
	addFilterSelections("completedwebTimeline","timelinedate",time_value,time_value_id,filterObj.time)
	/*Selection of success filter*/
	var success_value = $('#completedwebTimeline_success').attr('data-name');
	var success_id = $('#completedwebTimeline_success').attr('data-id');
	filterObj.deal={};
	addFilterSelections("completedwebTimeline","success",success_value,success_id,filterObj.deal)
	
	/*Selection of persona filter*/
	var persona_value = $('#completedwebTimeline_persona').attr('data-name');
	var persona_id = $('#completedwebTimeline_persona').attr('data-id');
	filterObj.deal={};
	addFilterSelections("completedwebTimeline","persona",persona_value,persona_id,filterObj.deal)
	
	/*Selection of All Agents->Individual filter*/
	if( $('#completedwebTimeline_dropdown').attr('data-agents')!=null){
		var agents = JSON.parse($('#completedwebTimeline_dropdown').attr('data-agents'));
		filterObj.agents=[]
		if(agents!=null){
			for(var i=0;i<agents.length;i++){
				var agent_id=agents[i].id;
				var agent_name=agents[i].name;
				var agent={}
				addFilterSelections("completedwebTimeline","Timeline_Agents",agent_name,agent_id,agent)
				filterObj.agents.push(agent)
			}
		}
	}
	
	/*Selection of All Agents->Team filter*/
	if( $('#completedwebTimeline_dropdown').attr('data-teams')!=null){
		var teams = JSON.parse($('#completedwebTimeline_dropdown').attr('data-teams'));
		filterObj.teams=[]
		if(teams!=null){
			for(var i=0;i<teams.length;i++){
				var team_id=teams[i].id;
				var team_name=teams[i].name;
				var team={}
				addFilterSelections("completedwebTimeline","Timeline_Teams",team_name,team_id,team)
				filterObj.teams.push(team)
			}
		}
	}
	
	$.get(contextPath+"taskDetails/completed/tab_content/completed_webinar_task_tab_content/web_timeline_card.jsp", function(data) {
		$('#completedWebinar_timeline_card').html(data);
	});
	$.get(contextPath+"taskDetails/completed/tab_content/completed_webinar_task_tab_content/web_timeline_sub_tab_content.jsp", function(data) {
		$('#completedweb_timeline_section').html(data);
		stopFilterPropagation();
	
	});
	
}

$('#completedweb_timeline_team_submit').click(function(e) {
	var agent_array=[];
	var team_array=[];
	
	$('.completedWebTimelineagentcheckbox').each(function(){
		if($(this).prop('checked')===true){
			agent_array.push($(this).data('user'));
		}
	});
	$('.completedWebTimelineteamcheckbox').each(function(){
		if($(this).prop('checked')===true){
			team_array.push($(this).data('team'));
		}
	});
	
	if(agent_array.length==0 && team_array.length==0){
		alert("Please select atleast one");
	}else{
		$('#completedwebTimeline_dropdown').dropdown('hide');
	}
	$('#completedwebTimeline_dropdown').attr('data-agents',JSON.stringify(agent_array));
	$('#completedwebTimeline_dropdown').attr('data-teams',JSON.stringify(team_array));
	
	$('.completedWebTimelineagentcheckbox').each(function(){
		if($(this).prop('checked')===true){
			$(this).prop("checked", false);
		}
	});
	$('.completedWebTimelineteamcheckbox').each(function(){
		if($(this).prop('checked')===true){
			$(this).prop("checked", false);
		}
	});
	loadWebtaskTimeline()
});

/*----------------------------------------end of load completed webinar task sub-tab "Timeline" content--------------------------------*/

/*----------------------------------------start of load completed webinar task sub-tab "Adherence" content--------------------------------*/

$('#completedweb_adher_datepicker').change(function(){
	$('#completedweb_adher_datepicker').attr('data-id',this.value)
	$('#completedweb_adher_datepicker').attr('data-name',this.value)
	loadWebtaskAdherence();
})
function completedweb_adherence_success(elem){
	var filter = $(elem).text();
	var filter_id = $(elem).data('id');
	console.log(filter);
	$('#completedwebAdherence_success').attr('data-id',filter_id);
	$('#completedwebAdherence_success').attr('data-name',filter);
	loadWebtaskAdherence();
};
function  loadWebtaskAdherence(){
	$('#completedWebinarwhatsright').empty();
	$('#completedWebinar_timeline_card').empty();
	$('#completedweb_timeline_section').empty();
	$('#completedWebinarwhatswrong').empty();
	$('#completedweb_filter_selections').find('.filters-inside-selection').empty();
	$('#completedweb_filter_selections').hide();
	
	var filterObj={};
	
	/*Selection of date filter*/
	var time_value = $('#completedweb_adher_datepicker').attr('data-name');
	var time_value_id = $('#completedweb_adher_datepicker').attr('data-id');
	filterObj.time={};
	addFilterSelections("completedweb","adherdate",time_value,time_value_id,filterObj.time)
	/*Selection of success filter*/
	var success_value = $('#completedwebAdherence_success').attr('data-name');
	var success_id = $('#completedwebAdherence_success').attr('data-id');
	filterObj.deal={};
	addFilterSelections("completedweb","Adherence_success",success_value,success_id,filterObj.deal)
	//Selection of All Agents->Individual filter
	if( $('#completedwebAdherence_dropdown').attr('data-agents')!=null){
		var agents = JSON.parse($('#completedwebAdherence_dropdown').attr('data-agents'));
		filterObj.agents=[]
		if(agents!=null){
			for(var i=0;i<agents.length;i++){
				var agent_id=agents[i].id;
				var agent_name=agents[i].name;
				var agent={}
				addFilterSelections("completedweb","Adherence_Agents",agent_name,agent_id,agent)
				filterObj.agents.push(agent)
			}
		}
	}
	
/*	Selection of All Agents->Team filter*/	
	if( $('#completedwebAdherence_dropdown').attr('data-teams')!=null){
		var teams = JSON.parse($('#completedwebAdherence_dropdown').attr('data-teams'));
		filterObj.teams=[]
		if(teams!=null){
			for(var i=0;i<teams.length;i++){
				var team_id=teams[i].id;
				var team_name=teams[i].name;
				var team={}
				addFilterSelections("completedweb","Adherence_Teams",team_name,team_id,team)
				filterObj.teams.push(team)
			}
		}
	}
	
	$.get(contextPath+"taskDetails/completed/tab_content/completed_webinar_task_tab_content/webinar_adhere_card.jsp", function(data) {
		$('#completedWebinar_adhere_card').html(data);
	});
	$.get(contextPath+"taskDetails/completed/tab_content/completed_webinar_task_tab_content/web_adherence_sub_tab_content.jsp", function(data) {
		$('#completedweb_adherence_section').html(data);
		stopFilterPropagation();
	});
	
	
}

$('#completedweb_adherence_team_submit').click(function(e) {
	var agent_array=[];
	var team_array=[];
	
	$('.completedWebAdheragentcheckbox').each(function(){
		if($(this).prop('checked')===true){
			agent_array.push($(this).data('user'));
		}
	});
	$('.completedWebAdherteamcheckbox').each(function(){
		if($(this).prop('checked')===true){
			team_array.push($(this).data('team'));
		}
	});
	
	if(agent_array.length==0 && team_array.length==0){
		alert("Please select atleast one");
	}else{
		$('#completedwebAdherence_dropdown').dropdown('hide');
	}
	$('#completedwebAdherence_dropdown').attr('data-agents',JSON.stringify(agent_array));
	$('#completedwebAdherence_dropdown').attr('data-teams',JSON.stringify(team_array));
	
	$('.completedWebAdheragentcheckbox').each(function(){
		if($(this).prop('checked')===true){
			$(this).prop("checked", false);
		}
	});
	$('.completedWebAdherteamcheckbox').each(function(){
		if($(this).prop('checked')===true){
			$(this).prop("checked", false);
		}
	});
	loadWebtaskAdherence()
});

/*----------------------------------------end of load completed webinar task sub-tab "Adherence" content--------------------------------*/

function stopFilterPropagation(){
	$('.filter-menu.dropdown-menu').click(function(e) {
	    e.stopPropagation();
	});
	$('.filtertabs>li>.nav-link').click(function(e) {
		$($(this).attr('href') + '-tab').tab('show')
	});
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
	 
	 
	 function showCompletedWebAdherCalendar() {
			$('#completedweb_adher_datepicker').datepicker('show')
		}

		function showCompletedWebTimelineCalendar() {
			$('#completedwebTimeline_datepicker').datepicker('show')
		}

		/*---------------------------*/


		$('#completedwebTimeline_datepicker').datepicker({
			autoclose : true,
		})
		$('#completedweb_adher_datepicker').datepicker({
			autoclose : true,
		})