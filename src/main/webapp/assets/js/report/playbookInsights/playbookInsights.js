/*	start of playbookIsigth function*/
function loadplaybookInsight() {
	$('#user_tab_summarize_content').empty();
	$('#user_tab_detait_content').empty();
	$('#overall_analysis').empty();
	$('#comparative_analysis').empty();
	$('#time_analysis_card').empty();
	$('#customer_tab_content').empty();
	$('#adherence_card').empty();
	$('.adherence_tab_content_div').empty();
	$('#roi_calculator_card').empty();
	$('#roi_calculator_tab_content').empty();
	$('#after_search_custom_report').empty();
	$('#insight_filter').find('.filters-inside-selection').empty();
	$('#insight_filter').hide();
	
	var filterObj={}
	
	/*Selection of activity filter*/
	var task_activity = $('#task_activity').attr('data-name');
	var task_activity_id = $('#task_activity').attr('data-id');
	filterObj.activity={}
	addFilterSelections('insight','activity',task_activity,task_activity_id,filterObj.activity)
	
	
	/*Selection of All Agents->Individual filter*/
	if( $('#insight_dropdown').attr('data-agents')!=null){
		var agents = JSON.parse($('#insight_dropdown').attr('data-agents'));
		filterObj.agents=[]
		if(agents!=null){
			for(var i=0;i<agents.length;i++){
				var agent_id=agents[i].id;
				var agent_name=agents[i].name;
				var agent={}
				addFilterSelections("insight","agents",agent_name,agent_id,agent)
				filterObj.agents.push(agent)
			}
		}
	}
	
	/*Selection of All Agents->Team filter*/
	if( $('#insight_dropdown').attr('data-teams')!=null){
		var teams = JSON.parse($('#insight_dropdown').attr('data-teams'));
		filterObj.teams=[]
		if(teams!=null){
			for(var i=0;i<teams.length;i++){
				var team_id=teams[i].id;
				var team_name=teams[i].name;
				var team={}
				addFilterSelections("insight","teams",team_name,team_id,team)
				filterObj.teams.push(team)
			}
		}
	}
	
	/*the Filter Object*/
	console.log(filterObj)
	
	var playbookInsight_array = [];
	for (var i = 0; i < 9; i++) {
		var playbookInsight = {};

		playbookInsight_array.push(playbookInsight);
	}

	var playbookInsight_promises = [];
	for (var playbookInsight of playbookInsight_array) {
		playbookInsight_promises.push(fetchPlaybookContent(playbookInsight));
	}
	$("#playbook-insight-content").empty();
	var fetchAllCall = Promise.all(playbookInsight_promises.map(p => p.catch(error => {
		console.log(error);
		return null;
	})));
	fetchAllCall.then((results) => {
		for (var ongoingTabHtml of results) {
			$("#playbook-insight-content").append(ongoingTabHtml);
		}
	});
}


function fetchPlaybookContent(playbookInsight) {
	return $.post(contextPath + "report/playbook_insight/playbook_insight_content.jsp", JSON.stringify(playbookInsight));
}