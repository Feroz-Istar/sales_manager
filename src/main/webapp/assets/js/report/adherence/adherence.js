/*	start of  adherence function*/
function loadAdherence() {
	$('#user_tab_summarize_content').empty();
	$('#roi_calculator_card').empty();
	$('#roi_calculator_tab_content').empty();
	$('#user_tab_detait_content').empty();
	$('#playbook-insight-content').empty();
	$('#customer_tab_content').empty();
	$('#time_analysis_card').empty();
	$('#comparative_analysis').empty();
	$("#overall_analysis").empty();
	$('#after_search_custom_report').empty();
	$('#adherence_filter').find('.filters-inside-selection').empty();
	$('#adherence_filter').hide();
	
	var filterObj={}
	
	/*Selection of date filter*/
	var time_value = $('#adherence_datepicker').attr('data-name');
	var time_value_id = $('#adherence_datepicker').attr('data-id');
	filterObj.time={};
	addFilterSelections("adherence","time",time_value,time_value_id,filterObj.time)

	
	/*Selection of success filter*/
	var success_value = $('#adherence_success').attr('data-name');
	var success_value_id = $('#adherence_success').attr('data-id');
	filterObj.success={};
	addFilterSelections("adherence","success",success_value,success_value_id,filterObj.success)
	
	
	/*Selection of All Agents->Individual filter*/
	if( $('#adherence_dropdown').attr('data-agents')!=null){
		var agents = JSON.parse($('#adherence_dropdown').attr('data-agents'));
		filterObj.agents=[]
		if(agents!=null){
			for(var i=0;i<agents.length;i++){
				var agent_id=agents[i].id;
				var agent_name=agents[i].name;
				var agent={}
				addFilterSelections("adherence","agents",agent_name,agent_id,agent)
				filterObj.agents.push(agent)
			}
		}
	}
	
	/*Selection of All Agents->Team filter*/
	if( $('#adherence_dropdown').attr('data-teams')!=null){
		var teams = JSON.parse($('#adherence_dropdown').attr('data-teams'));
		filterObj.teams=[]
		if(teams!=null){
			for(var i=0;i<teams.length;i++){
				var team_id=teams[i].id;
				var team_name=teams[i].name;
				var team={}
				addFilterSelections("adherence","teams",team_name,team_id,team)
				filterObj.teams.push(team)
			}
		}
	}
	
	/*the Filter Object*/
	console.log(filterObj)

	var adherence_array = [];
	for (var i = 0; i < 1; i++) {
		var adherence_content = {};
		adherence_array.push(adherence_content);
	}

	var adherence_promises = [];
	for (var adherence of adherence_array) {
		adherence_promises.push(fetchAdherenceContent());
	}
	$(".adherence_tab_content_div").empty();
	var fetchAllCall = Promise.all(adherence_promises.map(p => p.catch(error => {
		return null;
	})));
	fetchAllCall.then((results) => {
		for (var adherenceTabContent of results) {

			$(".adherence_tab_content_div").append(adherenceTabContent);
		}
		adherenceContentCard();
	});
}

function adherenceContentCard() {
	var vv = fetchAdherenceContentCard();
	vv.done(function (data) {
		$('#adherence_card').empty();
		$('#adherence_card').append(data);
	});
}

function fetchAdherenceContent() {
	return $.post(contextPath + "report/adherence/adherence_tab_content.jsp", JSON.stringify());
}

function fetchAdherenceContentCard() {
	return $.post(contextPath + "report/adherence/adherence_card.jsp", JSON.stringify());
}

/*	end of adherence  function*/