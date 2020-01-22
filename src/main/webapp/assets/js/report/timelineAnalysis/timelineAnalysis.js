/*	start of timeline analysis function*/
function loadTimelineAnalysis() {
	$('#user_tab_summarize_content').empty();
	$('#user_tab_detait_content').empty();
	$('#playbook-insight-content').empty();
	$('#customer_tab_content').empty();
	$('#roi_calculator_card').empty();
	$('#roi_calculator_tab_content').empty();
	$('#after_search_custom_report').empty();
	$('#adherence_card').empty();
	$('.adherence_tab_content_div').empty();
	$('#timeline_filter').find('.filters-inside-selection').empty();
	$('#timeline_filter').hide();
	
	var filterObj={}
	
	/*Selection of date filter*/
	var time_value = $('#timeline_datepicker').attr('data-name');
	var time_value_id = $('#timeline_datepicker').attr('data-id');
	filterObj.time={};
	addFilterSelections("timeline","time",time_value,time_value_id,filterObj.time)
	
	/*Selection of persona filter*/
	var persona_value = $('#timeline_persona').attr('data-name');
	var persona_value_id = $('#timeline_persona').attr('data-id');
	filterObj.persona={};
	addFilterSelections("timeline","persona",persona_value,persona_value_id,filterObj.persona)
	
	/*Selection of success filter*/
	var success_value = $('#timeline_success').attr('data-name');
	var success_value_id = $('#timeline_success').attr('data-id');
	filterObj.success={};
	addFilterSelections("timeline","success",success_value,success_value_id,filterObj.success)
	
	
	/*Selection of All Agents->Individual filter*/
	if( $('#timeline_dropdown').attr('data-agents')!=null){
		var agents = JSON.parse($('#timeline_dropdown').attr('data-agents'));
		filterObj.agents=[]
		if(agents!=null){
			for(var i=0;i<agents.length;i++){
				var agent_id=agents[i].id;
				var agent_name=agents[i].name;
				var agent={}
				addFilterSelections("timeline","agents",agent_name,agent_id,agent)
				filterObj.agents.push(agent)
			}
		}
	}
	
	/*Selection of All Agents->Team filter*/
	if( $('#timeline_dropdown').attr('data-teams')!=null){
		var teams = JSON.parse($('#timeline_dropdown').attr('data-teams'));
		filterObj.teams=[]
		if(teams!=null){
			for(var i=0;i<teams.length;i++){
				var team_id=teams[i].id;
				var team_name=teams[i].name;
				var team={}
				addFilterSelections("timeline","teams",team_name,team_id,team)
				filterObj.teams.push(team)
			}
		}
	}
	
	/*the Filter Object*/
	console.log(filterObj)
	
	
	var timeline_array = [];
	for (var i = 0; i < 1; i++) {
		var timelineanalysis = {};
		timeline_array.push(timelineanalysis);
	}

	var timeline_promises = [];
	for (var timeline of timeline_array) {
		timeline_promises.push(fetchTimelineContent());
	}
	$("#overall_analysis").empty();
	var fetchAllCall = Promise.all(timeline_promises.map(p => p.catch(error => {
		console.log(error);
		return null;
	})));
	fetchAllCall.then((results) => {
		for (var timelineTabContent of results) {
			$("#overall_analysis").append(timelineTabContent);
		}
		showTimelineContentCard();
		comparative_analysis();
	});
}

function comparative_analysis() {
	var vv = fetchComparative_analysis();
	vv.done(function (data) {
		$('#comparative_analysis').empty();
		$('#comparative_analysis').append(data);
	});
}

function showTimelineContentCard() {
	var vv = fetchTimelineContentCard();
	vv.done(function (data) {
		$('#time_analysis_card').empty();
		$('#time_analysis_card').append(data);
	});
}

function fetchTimelineContent() {
	return $.post(contextPath + "report/time_analysis/overall_time_analysis.jsp", JSON.stringify());
}

function fetchTimelineContentCard() {
	return $.post(contextPath + "report/time_analysis/time_analysis_card.jsp", JSON.stringify());
}

function fetchComparative_analysis() {
	return $.post(contextPath + "report/partials/comparative_analysis.jsp", JSON.stringify());
}
/*	end of timeline analysis function*/