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
	
loadLeadWebWhatsRight();
loadAllAgentFilterTab();
loadAllTeamFilterTab(); 	
	$('#leadWebinarTab>li>a').on('shown.bs.tab', function(e) {

		var target = $(e.target).html(); // activated tab
		console.log(target);
		
		switch (target) {
		case "Whats Right?":
			loadLeadWebWhatsRight();
			break;
		case "Whats Wrong?":
			loadLeadWebWhatsWrong();
			break;
		case "Timeline":
			loadLeadWebtaskTimeline();
			break;
		case "Adherence":
			loadLeadWebtaskAdherence();
			break;
		default:
		
			loadLeadWebWhatsRight();
		}
	});
	});


function  loadLeadWebWhatsRight(){

	$('#leadwebinarwhatswrong').empty();
	$('#leadwebinartimeline_section').empty();
	$('#leadwebinar_timeline_card').empty();
	$('#leadwebinar_adherence_section').empty();
	$('#web_lead_adhere_card').empty();
	$.get(contextPath+"taskDetails/task_lead_detail/task_lead_details_content/lead_webinar_task_tab_content/web_lead_whatsright_sub_tab_content.jsp", function(data) {
		console.log(data);
		$('#leadwebinarwhatsright').html(data);
	});
}

function  loadLeadWebWhatsWrong(){
	$('#leadwebinarwhatsright').empty();
	$('#leadwebinar_adherence_section').empty();
	$('#web_lead_adhere_card').empty();
	$('#leadwebinartimeline_section').empty();
	$('#leadwebinar_timeline_card').empty();
	$.get(contextPath+"taskDetails/task_lead_detail/task_lead_details_content/lead_webinar_task_tab_content/web_lead_whatswrong_sub_tab_content.jsp", function(data) {
		$('#leadwebinarwhatswrong').html(data);
	});
}
/*----------------------------------------start of load lead Webinar task sub-tab "Timeline" content--------------------------------*/
function leadweb_timeline_success(elem){
	var filter = $(elem).text();
	var filter_id = $(elem).data('id');
	console.log(filter);
	$('#leadwebTimeline_success').attr('data-id',filter_id);
	$('#leadwebTimeline_success').attr('data-name',filter);
	loadLeadWebtaskTimeline();
};
function leadweb_timeline_persona(elem){
	var filter = $(elem).text();
	var filter_id = $(elem).data('id');
	console.log(filter);
	$('#leadwebTimeline_persona').attr('data-id',filter_id);
	$('#leadwebTimeline_persona').attr('data-name',filter);
	loadLeadWebtaskTimeline();
};
$('#leadwebTimeline_datepicker').change(function(){
	$('#leadwebTimeline_datepicker').attr('data-id',this.value)
	$('#leadwebTimeline_datepicker').attr('data-name',this.value)
	loadLeadWebtaskTimeline();
})
function  loadLeadWebtaskTimeline(){
	$('#leadwebinarwhatsright').empty();
	$('#leadwebinarwhatswrong').empty();
	$('#leadwebinar_adherence_section').empty();
	$('#web_lead_adhere_card').empty();
	$('#leadwebTimeline_filter_selections').find('.filters-inside-selection').empty();
	$('#leadwebTimeline_filter_selections').hide();
	
	var filterObj={};
	/*Selection of date filter*/
	var time_value = $('#leadwebTimeline_datepicker').attr('data-name');
	var time_value_id = $('#leadwebTimeline_datepicker').attr('data-id');
	filterObj.time={};
	addFilterSelections("leadwebTimeline","timelinedate",time_value,time_value_id,filterObj.time)
	/*Selection of success filter*/
	var success_value = $('#leadwebTimeline_success').attr('data-name');
	var success_id = $('#leadwebTimeline_success').attr('data-id');
	filterObj.deal={};
	addFilterSelections("leadwebTimeline","success",success_value,success_id,filterObj.deal)
	
	/*Selection of persona filter*/
	var persona_value = $('#leadwebTimeline_persona').attr('data-name');
	var persona_id = $('#leadwebTimeline_persona').attr('data-id');
	filterObj.deal={};
	addFilterSelections("leadwebTimeline","persona",persona_value,persona_id,filterObj.deal)
	
	$.get(contextPath+"taskDetails/task_lead_detail/task_lead_details_content/lead_webinar_task_tab_content/web_lead_pipeline_card.jsp ", function(data) {
		$('#leadwebinar_timeline_card').html(data);
	});
	$.get(contextPath+"taskDetails/task_lead_detail/task_lead_details_content/lead_webinar_task_tab_content/web_lead_timeline_sub_tab_content.jsp", function(data) {
		$('#leadwebinartimeline_section').html(data);
		stopFilterPropagation();
	});
	
	/*Selection of All Agents->Individual filter*/
	if( $('#leadwebTimeline_dropdown').attr('data-agents')!=null){
		var agents = JSON.parse($('#leadwebTimeline_dropdown').attr('data-agents'));
		filterObj.agents=[]
		if(agents!=null){
			for(var i=0;i<agents.length;i++){
				var agent_id=agents[i].id;
				var agent_name=agents[i].name;
				var agent={}
				addFilterSelections("leadwebTimeline","Timeline_Agents",agent_name,agent_id,agent)
				filterObj.agents.push(agent)
			}
		}
	}
	
	/*Selection of All Agents->Team filter*/
	if( $('#leadwebTimeline_dropdown').attr('data-teams')!=null){
		var teams = JSON.parse($('#leadwebTimeline_dropdown').attr('data-teams'));
		filterObj.teams=[]
		if(teams!=null){
			for(var i=0;i<teams.length;i++){
				var team_id=teams[i].id;
				var team_name=teams[i].name;
				var team={}
				addFilterSelections("leadwebTimeline","Timeline_Teams",team_name,team_id,team)
				filterObj.teams.push(team)
			}
		}
	}
}

$('#leadweb_timeline_team_submit').click(function(e) {
	var agent_array=[];
	var team_array=[];
	
	$('.leadWebTimelineagentcheckbox').each(function(){
		if($(this).prop('checked')===true){
			agent_array.push($(this).data('user'));
		}
	});
	$('.leadWebTimelineteamcheckbox').each(function(){
		if($(this).prop('checked')===true){
			team_array.push($(this).data('team'));
		}
	});
	
	if(agent_array.length==0 && team_array.length==0){
		alert("Please select atleast one");
	}else{
		$('#leadwebTimeline_dropdown').dropdown('hide');
	}
	$('#leadwebTimeline_dropdown').attr('data-agents',JSON.stringify(agent_array));
	$('#leadwebTimeline_dropdown').attr('data-teams',JSON.stringify(team_array));
	
	$('.leadWebTimelineagentcheckbox').each(function(){
		if($(this).prop('checked')===true){
			$(this).prop("checked", false);
		}
	});
	$('.leadWebTimelineteamcheckbox').each(function(){
		if($(this).prop('checked')===true){
			$(this).prop("checked", false);
		}
	});
	loadLeadWebtaskTimeline()
});
/*----------------------------------------end of load lead Webinar task sub-tab "Timeline" content--------------------------------*/

/*----------------------------------------start of load lead Webinar task sub-tab "Adherence" content--------------------------------*/
$('#leadweb_adher_datepicker').change(function(){
	$('#leadweb_adher_datepicker').attr('data-id',this.value)
	$('#leadweb_adher_datepicker').attr('data-name',this.value)
	loadLeadWebtaskAdherence();
});

function leadweb_adherence_success(elem){
	var filter = $(elem).text();
	var filter_id = $(elem).data('id');
	console.log(filter);
	$('#leadwebAdherence_success').attr('data-id',filter_id);
	$('#leadwebAdherence_success').attr('data-name',filter);
	loadLeadWebtaskAdherence();
};
function  loadLeadWebtaskAdherence(){
	$('#leadwebinarwhatsright').empty();
	$('#leadwebinartimeline_section').empty();
	$('#leadwebinar_timeline_card').empty();
	$('#leadwebinarwhatswrong	').empty();
	$('#leadweb_filter_selections').find('.filters-inside-selection').empty();
	$('#leadweb_filter_selections').hide();
	$.get(contextPath+"taskDetails/task_lead_detail/task_lead_details_content/lead_webinar_task_tab_content/web_lead_adhere_card.jsp", function(data) {
		$('#web_lead_adhere_card').html(data);
	});
	$.get(contextPath+"taskDetails/task_lead_detail/task_lead_details_content/lead_webinar_task_tab_content/web_lead_adherence_sub_tab_content.jsp", function(data) {
		$('#leadwebinar_adherence_section').html(data);
		stopFilterPropagation();
	});
	var filterObj={};
	
	/*Selection of date filter*/
	var time_value = $('#leadweb_adher_datepicker').attr('data-name');
	var time_value_id = $('#leadweb_adher_datepicker').attr('data-id');
	filterObj.time={};
	addFilterSelections("leadweb","adherdate",time_value,time_value_id,filterObj.time)
	/*Selection of success filter*/
	var success_value = $('#leadwebAdherence_success').attr('data-name');
	var success_id = $('#leadwebAdherence_success').attr('data-id');
	filterObj.deal={};
	addFilterSelections("leadweb","Adherence_success",success_value,success_id,filterObj.deal)
	
	//Selection of All Agents->Individual filter
	if( $('#leadwebAdherence_dropdown').attr('data-agents')!=null){
		var agents = JSON.parse($('#leadwebAdherence_dropdown').attr('data-agents'));
		filterObj.agents=[]
		if(agents!=null){
			for(var i=0;i<agents.length;i++){
				var agent_id=agents[i].id;
				var agent_name=agents[i].name;
				var agent={}
				addFilterSelections("leadweb","Adherence_Agents",agent_name,agent_id,agent)
				filterObj.agents.push(agent)
			}
		}
	}
	
/*	Selection of All Agents->Team filter*/	
	if( $('#leadwebAdherence_dropdown').attr('data-teams')!=null){
		var teams = JSON.parse($('#leadwebAdherence_dropdown').attr('data-teams'));
		filterObj.teams=[]
		if(teams!=null){
			for(var i=0;i<teams.length;i++){
				var team_id=teams[i].id;
				var team_name=teams[i].name;
				var team={}
				addFilterSelections("leadweb","Adherence_Teams",team_name,team_id,team)
				filterObj.teams.push(team)
			}
		}
	}
}

$('#leadweb_adherence_team_submit').click(function(e) {
	var agent_array=[];
	var team_array=[];
	
	$('.leadWebAdheragentcheckbox').each(function(){
		if($(this).prop('checked')===true){
			agent_array.push($(this).data('user'));
		}
	});
	$('.leadWebAdherteamcheckbox').each(function(){
		if($(this).prop('checked')===true){
			team_array.push($(this).data('team'));
		}
	});
	
	if(agent_array.length==0 && team_array.length==0){
		alert("Please select atleast one");
	}else{
		$('#leadwebAdherence_dropdown').dropdown('hide');
	}
	$('#leadwebAdherence_dropdown').attr('data-agents',JSON.stringify(agent_array));
	$('#leadwebAdherence_dropdown').attr('data-teams',JSON.stringify(team_array));
	
	$('.leadWebAdheragentcheckbox').each(function(){
		if($(this).prop('checked')===true){
			$(this).prop("checked", false);
		}
	});
	$('.leadWebAdherteamcheckbox').each(function(){
		if($(this).prop('checked')===true){
			$(this).prop("checked", false);
		}
	});
	loadLeadWebtaskAdherence()
});
/*----------------------------------------end of load lead Webinar task sub-tab "Adherence" content--------------------------------*/

function stopFilterPropagation(){
	$('.filter-menu.dropdown-menu').click(function(e) {
	    e.stopPropagation();
	});
	$('.filtertabs>li>.nav-link').click(function(e) {
		$($(this).attr('href') + '-tab').tab('show')
	});
}


function showLeadWebAdherCalendar() {
	$('#leadweb_adher_datepicker').datepicker('show')
}
$('#leadweb_adher_datepicker').datepicker({
	autoclose : true,
})

function showLeadWebTimelineCalendar(){
	$('#leadwebTimeline_datepicker').datepicker('show')
}
$('#leadwebTimeline_datepicker').datepicker({
	autoclose : true,
})