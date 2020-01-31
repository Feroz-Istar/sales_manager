$(document).ready(function(){	
	loadLeadWhatsRight();
	loadLeadAllAgentFilterTab();
	loadLeadAllTeamFilterTab();

	$('#leadTab>li>a').on('shown.bs.tab', function(e) {

		var target = $(e.target).html(); // activated tab
		console.log(target);
		
		switch (target) {
		case "Whats Right?":
			loadLeadWhatsRight();
			break;
		case "Whats Wrong?":
			loadLeadWhatsWrong();
			break;
		case "Timeline":
			loadLeadtaskTimeline();
			break;
		case "Adherence":
			loadLeadtaskAdherence();
			break;
		default:
			/*Ongoing*/
			taskDetailTab();
		}
	});
	});

function  loadLeadWhatsRight(){
	$('#leadwhatswrong').empty();
	$('#lead_timeline_section').empty();
	$('#lead_timeline_card').empty();
	$('#lead_adherence_section').empty();
	$('#lead_adhere_card').empty();
	$.get(contextPath+"taskDetails/task_lead_detail/task_lead_details_content/lead_call_task_tab_content/lead_whatsright_sub_tab_content.jsp", function(data) {
		$('#leadwhatsright').html(data);
	});
}

function  loadLeadWhatsWrong(){
	$('#leadwhatsright').empty();
	$('#lead_adherence_section').empty();
	$('#lead_adhere_card').empty();
	$('#lead_timeline_section').empty();
	$('#lead_timeline_card').empty();
	$.get(contextPath+"taskDetails/task_lead_detail/task_lead_details_content/lead_call_task_tab_content/lead_whatswrong_sub_tab_content.jsp", function(data) {
		$('#leadwhatswrong').html(data);
	});
}
/*----------------------------------------start of load lead call task sub-tab "Timeline" content--------------------------------*/
function leadcall_timeline_success(elem){
	var filter = $(elem).text();
	var filter_id = $(elem).data('id');
	console.log(filter);
	$('#leadcallTimeline_success').attr('data-id',filter_id);
	$('#leadcallTimeline_success').attr('data-name',filter);
	loadLeadtaskTimeline();
};
function leadcall_timeline_persona(elem){
	var filter = $(elem).text();
	var filter_id = $(elem).data('id');
	console.log(filter);
	$('#leadcallTimeline_persona').attr('data-id',filter_id);
	$('#leadcallTimeline_persona').attr('data-name',filter);
	loadLeadtaskTimeline();
};

$('#leadcallTimeline_datepicker').change(function(){
	$('#leadcallTimeline_datepicker').attr('data-id',this.value)
	$('#leadcallTimeline_datepicker').attr('data-name',this.value)
	loadLeadtaskTimeline();
})
function  loadLeadtaskTimeline(){
	$('#leadwhatswrong').empty();
	$('#leadwhatsright').empty();
	$('#lead_adherence_section').empty();
	$('#lead_adhere_card').empty();
	$('#leadcallTimeline_filter_selections').find('.filters-inside-selection').empty();
	$('#leadcallTimeline_filter_selections').hide();
	$.get(contextPath+"taskDetails/task_lead_detail/task_lead_details_content/lead_call_task_tab_content/lead_timeline_card.jsp", function(data) {
		$('#lead_timeline_card').html(data);
	});
	$.get(contextPath+"taskDetails/task_lead_detail/task_lead_details_content/lead_call_task_tab_content/lead_timeline_sub_tab_content.jsp", function(data) {
		$('#lead_timeline_section').html(data);
		stopFilterPropagation();
	});
	
	var filterObj={};
	/*Selection of date filter*/
	var time_value = $('#leadcallTimeline_datepicker').attr('data-name');
	var time_value_id = $('#leadcallTimeline_datepicker').attr('data-id');
	filterObj.time={};
	addFilterSelections("leadcallTimeline","timelinedate",time_value,time_value_id,filterObj.time)
	/*Selection of persona filter*/
	var persona_value = $('#leadcallTimeline_persona').attr('data-name');
	var persona_id = $('#leadcallTimeline_persona').attr('data-id');
	filterObj.deal={};
	addFilterSelections("leadcallTimeline","persona",persona_value,persona_id,filterObj.deal)
	/*Selection of success filter*/
	var success_value = $('#leadcallTimeline_success').attr('data-name');
	var success_id = $('#leadcallTimeline_success').attr('data-id');
	filterObj.deal={};
	addFilterSelections("leadcallTimeline","success",success_value,success_id,filterObj.deal)
	
	/*Selection of All Agents->Individual filter*/
	if( $('#leadcallTimeline_dropdown').attr('data-agents')!=null){
		var agents = JSON.parse($('#leadcallTimeline_dropdown').attr('data-agents'));
		filterObj.agents=[]
		if(agents!=null){
			for(var i=0;i<agents.length;i++){
				var agent_id=agents[i].id;
				var agent_name=agents[i].name;
				var agent={}
				addFilterSelections("leadcallTimeline","Timeline_Agents",agent_name,agent_id,agent)
				filterObj.agents.push(agent)
			}
		}
	}
	
	/*Selection of All Agents->Team filter*/
	if( $('#leadcallTimeline_dropdown').attr('data-teams')!=null){
		var teams = JSON.parse($('#leadcallTimeline_dropdown').attr('data-teams'));
		filterObj.teams=[]
		if(teams!=null){
			for(var i=0;i<teams.length;i++){
				var team_id=teams[i].id;
				var team_name=teams[i].name;
				var team={}
				addFilterSelections("leadcallTimeline","Timeline_Teams",team_name,team_id,team)
				filterObj.teams.push(team)
			}
		}
	}
	
	
}

$('#leadcall_timeline_team_submit').click(function(e) {
	var agent_array=[];
	var team_array=[];
	
	$('.leadCallTimelineagentcheckbox').each(function(){
		if($(this).prop('checked')===true){
			agent_array.push($(this).data('user'));
		}
	});
	$('.leadCallTimelineteamcheckbox').each(function(){
		if($(this).prop('checked')===true){
			team_array.push($(this).data('team'));
		}
	});
	
	if(agent_array.length==0 && team_array.length==0){
		alert("Please select atleast one");
	}else{
		$('#leadcallTimeline_dropdown').dropdown('hide');
	}
	$('#leadcallTimeline_dropdown').attr('data-agents',JSON.stringify(agent_array));
	$('#leadcallTimeline_dropdown').attr('data-teams',JSON.stringify(team_array));
	
	$('.leadCallTimelineagentcheckbox').each(function(){
		if($(this).prop('checked')===true){
			$(this).prop("checked", false);
		}
	});
	$('.leadCallTimelineteamcheckbox').each(function(){
		if($(this).prop('checked')===true){
			$(this).prop("checked", false);
		}
	});
	loadLeadtaskTimeline()
});
/*----------------------------------------end of load lead call task sub-tab "Timeline" content--------------------------------*/

/*----------------------------------------start of load lead call task sub-tab "Adherence" content--------------------------------*/
$('#leadcall_adher_datepicker').change(function(){
	$('#leadcall_adher_datepicker').attr('data-id',this.value)
	$('#leadcall_adher_datepicker').attr('data-name',this.value)
	loadLeadtaskAdherence();
})

function leadcall_adherence_success(elem){
	var filter = $(elem).text();
	var filter_id = $(elem).data('id');
	console.log(filter);
	$('#leadcallAdherence_success').attr('data-id',filter_id);
	$('#leadcallAdherence_success').attr('data-name',filter);
	loadLeadtaskAdherence();
};

function  loadLeadtaskAdherence(){
	$('#leadwhatsright').empty();
	$('#lead_timeline_section').empty();
	$('#lead_timeline_card').empty();
	$('#leadwhatswrong').empty();
	$('#leadcall_filter_selections').find('.filters-inside-selection').empty();
	$('#leadcall_filter_selections').hide();
	
	$.get(contextPath+"taskDetails/task_lead_detail/task_lead_details_content/lead_call_task_tab_content/lead_adhere_card.jsp", function(data) {
		$('#lead_adhere_card').html(data);
	});
	$.get(contextPath+"taskDetails/task_lead_detail/task_lead_details_content/lead_call_task_tab_content/lead_adherence_sub_tab_content.jsp", function(data) {
		$('#lead_adherence_section').html(data);
		stopFilterPropagation();
	});
	
	var filterObj={};
	/*Selection of date filter*/
	var time_value = $('#leadcall_adher_datepicker').attr('data-name');
	var time_value_id = $('#leadcall_adher_datepicker').attr('data-id');
	filterObj.time={};
	addFilterSelections("leadcall","adherdate",time_value,time_value_id,filterObj.time)
	
	/*Selection of success filter*/
	var success_value = $('#leadcallAdherence_success').attr('data-name');
	var success_id = $('#leadcallAdherence_success').attr('data-id');
	filterObj.deal={};
	addFilterSelections("leadcall","Adherence_success",success_value,success_id,filterObj.deal)
	
	/*Selection of All Agents->Individual filter*/
	if( $('#leadcallAdherence_dropdown').attr('data-agents')!=null){
		var agents = JSON.parse($('#leadcallAdherence_dropdown').attr('data-agents'));
		filterObj.agents=[]
		if(agents!=null){
			for(var i=0;i<agents.length;i++){
				var agent_id=agents[i].id;
				var agent_name=agents[i].name;
				var agent={}
				addFilterSelections("leadcall","Adherence_Agents",agent_name,agent_id,agent)
				filterObj.agents.push(agent)
			}
		}
	}
	
	/*Selection of All Agents->Team filter*/
	if( $('#leadcallAdherence_dropdown').attr('data-teams')!=null){
		var teams = JSON.parse($('#leadcallAdherence_dropdown').attr('data-teams'));
		filterObj.teams=[]
		if(teams!=null){
			for(var i=0;i<teams.length;i++){
				var team_id=teams[i].id;
				var team_name=teams[i].name;
				var team={}
				addFilterSelections("leadcall","Adherence_Teams",team_name,team_id,team)
				filterObj.teams.push(team)
			}
		}
	}
	
}


$('#leadcall_adherence_team_submit').click(function(e) {
	var agent_array=[];
	var team_array=[];
	
	$('.leadCallAdheragentcheckbox').each(function(){
		if($(this).prop('checked')===true){
			agent_array.push($(this).data('user'));
		}
	});
	$('.leadCallAdherteamcheckbox').each(function(){
		if($(this).prop('checked')===true){
			team_array.push($(this).data('team'));
		}
	});
	
	if(agent_array.length==0 && team_array.length==0){
		alert("Please select atleast one");
	}else{
		$('#leadcallAdherence_dropdown').dropdown('hide');
	}
	$('#leadcallAdherence_dropdown').attr('data-agents',JSON.stringify(agent_array));
	$('#leadcallAdherence_dropdown').attr('data-teams',JSON.stringify(team_array));
	
	$('.leadCallAdheragentcheckbox').each(function(){
		if($(this).prop('checked')===true){
			$(this).prop("checked", false);
		}
	});
	$('.leadCallAdherteamcheckbox').each(function(){
		if($(this).prop('checked')===true){
			$(this).prop("checked", false);
		}
	});
	loadLeadtaskAdherence()
});
/*----------------------------------------end of load lead call task sub-tab "Adherence" content--------------------------------*/
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
	
    
    function showLeadAdhereCalendar(){
    	$('#leadcall_adher_datepicker').datepicker('show')
    }
    $('#leadcall_adher_datepicker').datepicker({
    	autoclose : true,
    })
    
    function showLeadCallTimelineCalendar(){
    	$('#leadcallTimeline_datepicker').datepicker('show')
    }
    $('#leadcallTimeline_datepicker').datepicker({
    	autoclose : true,
    })