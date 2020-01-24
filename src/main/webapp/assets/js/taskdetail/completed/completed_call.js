$(document).ready(function(){
	loadWhatsRightContent();
	loadAllAgentFilterTab();
	loadAllTeamFilterTab();
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
	$('#completedcall_timeline_section').empty();
	$('#completedcall_adherence_section').empty();
	$.get(contextPath+"taskDetails/completed/tab_content/completed_call_task_tab_content/whatsright_sub_tab_content.jsp", function(data) {
		$('#completedcall_whatsright').html(data);
	});

}

function  loadWhatsWrongContent(){
	$('#completedcall_whatsright').empty();
	$('#completedcall_adherence_section').empty();
	$('#completedcall_timeline_section').empty();
	$.get(contextPath+"taskDetails/completed/tab_content/completed_call_task_tab_content/whatswrong_sub_tab_content.jsp", function(data) {
		$('#completedcall_whatswrong').html(data);
	});
}

/*----------------------------------------start of load completed call task sub-tab "Timeline" content--------------------------------*/
function completedcall_timeline_success(elem){
	var filter = $(elem).text();
	var filter_id = $(elem).data('id');
	console.log(filter);
	$('#completedcallTimeline_success').attr('data-id',filter_id);
	$('#completedcallTimeline_success').attr('data-name',filter);
	loadCalltaskTimeline();
};
function completedcall_timeline_persona(elem){
	var filter = $(elem).text();
	var filter_id = $(elem).data('id');
	console.log(filter);
	$('#completedcallTimeline_persona').attr('data-id',filter_id);
	$('#completedcallTimeline_persona').attr('data-name',filter);
	loadCalltaskTimeline();
};
$('#completedcallTimeline_datepicker').change(function(){
	$('#completedcallTimeline_datepicker').attr('data-id',this.value)
	$('#completedcallTimeline_datepicker').attr('data-name',this.value)
	loadCalltaskTimeline();
})

function  loadCalltaskTimeline(){
	$('#completedcall_whatsright').empty();
	$('#completedcall_adherence_section').empty();
	$('#completedcall_whatswrong').empty();
	$('#completedcallTimeline_filter_selections').find('.filters-inside-selection').empty();
	$('#completedcallTimeline_filter_selections').hide();
	var filterObj={};
	
	/*Selection of date filter*/
	var time_value = $('#completedcallTimeline_datepicker').attr('data-name');
	var time_value_id = $('#completedcallTimeline_datepicker').attr('data-id');
	filterObj.time={};
	addFilterSelections("completedcallTimeline","timelinedate",time_value,time_value_id,filterObj.time)
	/*Selection of success filter*/
	var success_value = $('#completedcallTimeline_success').attr('data-name');
	var success_id = $('#completedcallTimeline_success').attr('data-id');
	filterObj.deal={};
	addFilterSelections("completedcallTimeline","success",success_value,success_id,filterObj.deal)
	
	/*Selection of persona filter*/
	var persona_value = $('#completedcallTimeline_persona').attr('data-name');
	var persona_id = $('#completedcallTimeline_persona').attr('data-id');
	filterObj.deal={};
	addFilterSelections("completedcallTimeline","persona",persona_value,persona_id,filterObj.deal)
	
	$.get(contextPath+"taskDetails/completed/tab_content/completed_call_task_tab_content/timeline_call_card.jsp", function(data) {
		$('#callTimeline_sub_tab_card').html(data);
	});
	
	$.get(contextPath+"taskDetails/completed/tab_content/completed_call_task_tab_content/timeline_sub_tab_content.jsp", function(data) {
		$('#completedcall_timeline_section').html(data);
		stopFilterPropagation();
		$('#Calltask_filter_selections').find('.filters-inside-selection').empty();
		$('#Calltask_filter_selections').hide();
	});
	
	/*Selection of All Agents->Individual filter*/
	if( $('#completedcallTimeline_dropdown').attr('data-agents')!=null){
		var agents = JSON.parse($('#completedcallTimeline_dropdown').attr('data-agents'));
		filterObj.agents=[]
		if(agents!=null){
			for(var i=0;i<agents.length;i++){
				var agent_id=agents[i].id;
				var agent_name=agents[i].name;
				var agent={}
				addFilterSelections("completedcallTimeline","Timeline_Agents",agent_name,agent_id,agent)
				filterObj.agents.push(agent)
			}
		}
	}
	
	/*Selection of All Agents->Team filter*/
	if( $('#completedcallTimeline_dropdown').attr('data-teams')!=null){
		var teams = JSON.parse($('#completedcallTimeline_dropdown').attr('data-teams'));
		filterObj.teams=[]
		if(teams!=null){
			for(var i=0;i<teams.length;i++){
				var team_id=teams[i].id;
				var team_name=teams[i].name;
				var team={}
				addFilterSelections("completedcallTimeline","Timeline_Teams",team_name,team_id,team)
				filterObj.teams.push(team)
			}
		}
	}
}

$('#completedcall_timeline_team_submit').click(function(e) {
	var agent_array=[];
	var team_array=[];
	
	$('.completedCallTimelineagentcheckbox').each(function(){
		if($(this).prop('checked')===true){
			agent_array.push($(this).data('user'));
		}
	});
	$('.completedCallTimelineteamcheckbox').each(function(){
		if($(this).prop('checked')===true){
			team_array.push($(this).data('team'));
		}
	});
	
	if(agent_array.length==0 && team_array.length==0){
		alert("Please select atleast one");
	}else{
		$('#completedcallTimeline_dropdown').dropdown('hide');
	}
	$('#completedcallTimeline_dropdown').attr('data-agents',JSON.stringify(agent_array));
	$('#completedcallTimeline_dropdown').attr('data-teams',JSON.stringify(team_array));
	
	$('.completedCallTimelineagentcheckbox').each(function(){
		if($(this).prop('checked')===true){
			$(this).prop("checked", false);
		}
	});
	$('.completedCallTimelineteamcheckbox').each(function(){
		if($(this).prop('checked')===true){
			$(this).prop("checked", false);
		}
	});
	loadCalltaskTimeline()
});
/*----------------------------------------start of load completed call task sub-tab "Timeline" content--------------------------------*/

/*----------------------------------------start of load completed call task sub-tab "Adherence" content--------------------------------*/
function completedcall_adherence_success(elem){
	var filter = $(elem).text();
	var filter_id = $(elem).data('id');
	console.log(filter);
	$('#completedcallAdherence_success').attr('data-id',filter_id);
	$('#completedcallAdherence_success').attr('data-name',filter);
	loadCalltaskAdherence();
};

$('#completedcall_adher_datepicker').change(function(){
	$('#completedcall_adher_datepicker').attr('data-id',this.value)
	$('#completedcall_adher_datepicker').attr('data-name',this.value)
	loadCalltaskAdherence();
})

function  loadCalltaskAdherence(){
	
	$('#completedcall_whatsright').empty();
	$('#completedcall_timeline_section').empty();
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
	addFilterSelections("completedcall","adherdate",time_value,time_value_id,filterObj.time)
	/*Selection of success filter*/
	var success_value = $('#completedcallAdherence_success').attr('data-name');
	var success_id = $('#completedcallAdherence_success').attr('data-id');
	filterObj.deal={};
	addFilterSelections("completedcall","Adherence_success",success_value,success_id,filterObj.deal)
	/*Selection of All Agents->Individual filter*/
	if( $('#completedcallAdherence_dropdown').attr('data-agents')!=null){
		var agents = JSON.parse($('#completedcallAdherence_dropdown').attr('data-agents'));
		filterObj.agents=[]
		if(agents!=null){
			for(var i=0;i<agents.length;i++){
				var agent_id=agents[i].id;
				var agent_name=agents[i].name;
				var agent={}
				addFilterSelections("completedcall","Adherence_Agents",agent_name,agent_id,agent)
				filterObj.agents.push(agent)
			}
		}
	}
	
	/*Selection of All Agents->Team filter*/
	if( $('#completedcallAdherence_dropdown').attr('data-teams')!=null){
		var teams = JSON.parse($('#completedcallAdherence_dropdown').attr('data-teams'));
		filterObj.teams=[]
		if(teams!=null){
			for(var i=0;i<teams.length;i++){
				var team_id=teams[i].id;
				var team_name=teams[i].name;
				var team={}
				addFilterSelections("completedcall","Adherence_Teams",team_name,team_id,team)
				filterObj.teams.push(team)
			}
		}
	}

}

$('#completedcall_adherence_team_submit').click(function(e) {
	var agent_array=[];
	var team_array=[];
	
	$('.completedCallAdheragentcheckbox').each(function(){
		if($(this).prop('checked')===true){
			agent_array.push($(this).data('user'));
		}
	});
	$('.completedCallAdherteamcheckbox').each(function(){
		if($(this).prop('checked')===true){
			team_array.push($(this).data('team'));
		}
	});
	
	if(agent_array.length==0 && team_array.length==0){
		alert("Please select atleast one");
	}else{
		$('#completedcallAdherence_dropdown').dropdown('hide');
	}
	$('#completedcallAdherence_dropdown').attr('data-agents',JSON.stringify(agent_array));
	$('#completedcallAdherence_dropdown').attr('data-teams',JSON.stringify(team_array));
	
	$('.completedCallAdheragentcheckbox').each(function(){
		if($(this).prop('checked')===true){
			$(this).prop("checked", false);
		}
	});
	$('.completedCallAdherteamcheckbox').each(function(){
		if($(this).prop('checked')===true){
			$(this).prop("checked", false);
		}
	});
	loadCalltaskAdherence()
});
/*----------------------------------------end of load completed call task sub-tab "Adherence" content--------------------------------*/


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

function showCompletedCallTimelineCalendar() {
	$('#completedcallTimeline_datepicker').datepicker('show')
}

/*---------------------------*/


$('#completedcallTimeline_datepicker').datepicker({
	autoclose : true,
})
$('#completedcall_adher_datepicker').datepicker({
	autoclose : true,
})