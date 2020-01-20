/*-----------------------------------start of agent and team filter submit-------------------------*/

$('#qualified_team_submit').click(function(e) {

	var agent_array=[];
		var agent_name=[];
		var team_array=[];
		
		$('.qualifiedagentcheckbox').each(function(){
			if($(this).prop('checked')===true){
				agent_array.push($(this).data('user'));
			}
		});
		$('.qualifiedteamcheckbox').each(function(){
			if($(this).prop('checked')===true){
				team_array.push($(this).data('team'));
			}
		});
		if(agent_array.length==0 && team_array.length==0){
			alert("Please select atleast one");
		}else{
			$('#qualified_dropdown').dropdown('hide');
		}
		$('#qualified_dropdown').attr('data-agents',JSON.stringify(agent_array));
		$('#qualified_dropdown').attr('data-teams',JSON.stringify(team_array));
		
		$('.qualifiedagentcheckbox').each(function(){
			if($(this).prop('checked')===true){
				$(this).prop("checked", false);
			}
		});
		$('.qualifiedteamcheckbox').each(function(){
			if($(this).prop('checked')===true){
				$(this).prop("checked", false);
			}
		});
		loadLeadQualified();
		
	});
	
/*-----------------------------------end of agent and team filter submit-------------------------*/


/*	-------------------------------------start of qualified function--------------------------*/
	function loadLeadQualified() {
	$('#target_tab_contnet_card').empty();
	$('#target_tab_contnet').empty()
	$('#lost_leads_content_card').empty();
	$('#lost_leads_content').empty();
	$('#qualified_filter').find('.filters-inside-selection').empty();
	$('#qualified_filter').hide();
	 var filterObj={}
	 

	 /*Global Search*/
		filterObj.search=$('#leads_search').val()
		
	 /*Selection of date filter*/
		var time_value = $('#qualified_datepicker').attr('data-name');
		var time_value_id = $('#qualified_datepicker').attr('data-id');
		filterObj.time={};
		addFilterSelections("qualified","time",time_value,time_value_id,filterObj.time)
	 
		
	/*Selection of deal filter*/
	var deal_value = $('#qualified_deal_value').attr('data-name');
	var deal_value_id = $('#qualified_deal_value').attr('data-id');
	filterObj.deal={};
	addFilterSelections("qualified","deal",deal_value,deal_value_id,filterObj.deal)
	
	/*Selection of stage filter*/
	var stage = $('#qualified_stage').attr('data-name');
	var stage_id = $('#qualified_stage').attr('data-id');
	filterObj.stage={};
	addFilterSelections("qualified","stage",stage,stage_id,filterObj.stage)
	
	/*Selection of source type filter*/
		var source_type = $('#qualifiedSourceType').attr('data-name');
		var source_type_id = $('#qualifiedSourceType').attr('data-id');
		filterObj.deal={};
		addFilterSelections("qualified","sourcetype",source_type,source_type_id,filterObj.deal)
	
		/*Selection of All Agents->Individual filter*/
		if( $('#qualified_dropdown').attr('data-agents')!=null){
			var agents = JSON.parse($('#qualified_dropdown').attr('data-agents'));
			filterObj.agents=[]
			if(agents!=null){
				for(var i=0;i<agents.length;i++){
					var agent_id=agents[i].id;
					var agent_name=agents[i].name;
					var agent={}
					addFilterSelections("qualified","agents",agent_name,agent_id,agent)
					filterObj.agents.push(agent)
				}
			}
		}
		
		/*Selection of All Agents->Team filter*/
		if( $('#qualified_dropdown').attr('data-teams')!=null){
			var teams = JSON.parse($('#qualified_dropdown').attr('data-teams'));
			filterObj.teams=[]
			if(teams!=null){
				for(var i=0;i<teams.length;i++){
					var team_id=teams[i].id;
					var team_name=teams[i].name;
					var team={}
					addFilterSelections("qualified","teams",team_name,team_id,team)
					filterObj.teams.push(team)
				}
			}
		}
		
		/*The Filter Object*/
		console.log(filterObj)
		
		
		showQualifiedContentCard();
		var leadqualified_array = [];
		for (var i = 0; i <4; i++) {
			var leadqualified = {};
			leadqualified_array.push(leadqualified);
		}

		var leadqualified_promises = [];
		for (var leadqualified of leadqualified_array) {
			leadqualified_promises.push(fetchLeadQualifiedContent());
		}
		$("#qualified_tab_content").empty();
		var fetchAllCall = Promise.all(leadqualified_promises.map(p => p.catch(error => {
			console.log(error);
			return null;
		})));
		fetchAllCall.then((results) => {
			for (var leadqualifiedTabContent of results) {
				$("#qualified_tab_content").append(leadqualifiedTabContent);
			}
		
		});
	}
	function showQualifiedContentCard() {
		var vv = fetchQualifiedContentCard();
		vv.done(function (data) {
			$('#qualified_tab_content_card').empty();
			$('#qualified_tab_content_card').append(data);
		});
	}

	function fetchQualifiedContentCard() {
		return $.post(contextPath + "leads/partials/qualified_card.jsp", JSON.stringify());
	}
	function fetchLeadQualifiedContent() {
		return $.post(contextPath + "leads/qualified/qualified_tab_content.jsp", JSON.stringify());
	}

/*----------------------------------------	end of Qualified function----------------------------------*/