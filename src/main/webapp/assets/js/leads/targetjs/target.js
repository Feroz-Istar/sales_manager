/*-----------------------------------start of agent and team filter submit-------------------------*/
	
$('#target_team_submit').click(function(e) {
		var agent_array=[];
		var agent_name=[];
		var team_array=[];
		
		$('.targetagentcheckbox').each(function(){
			if($(this).prop('checked')===true){
				agent_array.push($(this).data('user'));
			}
		});
		$('.targetteamcheckbox').each(function(){
			if($(this).prop('checked')===true){
				team_array.push($(this).data('team'));
			}
		});
		if(agent_array.length==0 && team_array.length==0){
			alert("Please select atleast one");
		}else{
			$('#target_dropdown').dropdown('hide');
		}
		$('#target_dropdown').attr('data-agents',JSON.stringify(agent_array));
		$('#target_dropdown').attr('data-teams',JSON.stringify(team_array));
		
		$('.targetagentcheckbox').each(function(){
			if($(this).prop('checked')===true){
				$(this).prop("checked", false);
			}
		});
		$('.targetteamcheckbox').each(function(){
			if($(this).prop('checked')===true){
				$(this).prop("checked", false);
			}
		});
		loadLeadTarget();
		
	});
	/*-----------------------------------end of agent and team filter submit-------------------------*/

/*	-------------------------------------start of target function--------------------------*/
	function loadLeadTarget() {
		$('#qualified_tab_content_card').empty();
		$('#qualified_tab_content').empty()
		$('#target_filter').find('.filters-inside-selection').empty();
		$('#target_filter').hide();
		 var filterObj={}
		 

		 /*Global Search*/
			filterObj.search=$('#leads_search').val()
		 
		/*Selection of source type filter*/
		var source_type = $('#targetSourceType').attr('data-name');
		var source_type_id = $('#targetSourceType').attr('data-id');
		filterObj.deal={};
		addFilterSelections("target","sourcetype",source_type,source_type_id,filterObj.deal)
		
		/*Selection of activity filter*/
		var activity = $('#target_activity').attr('data-name');
		var activity_id = $('#target_activity').attr('data-id');
		filterObj.activity={};
		addFilterSelections("target","activity",activity,activity_id,filterObj.activity)
		
		
		/*Selection of All Agents->Individual filter*/
		if( $('#target_dropdown').attr('data-agents')!=null){
			var agents = JSON.parse($('#target_dropdown').attr('data-agents'));
			filterObj.agents=[]
			if(agents!=null){
				for(var i=0;i<agents.length;i++){
					var agent_id=agents[i].id;
					var agent_name=agents[i].name;
					var agent={}
					addFilterSelections("target","agents",agent_name,agent_id,agent)
					filterObj.agents.push(agent)
				}
			}
		}
		
		/*Selection of All Agents->Team filter*/
		if( $('#target_dropdown').attr('data-teams')!=null){
			var teams = JSON.parse($('#target_dropdown').attr('data-teams'));
			filterObj.teams=[]
			if(teams!=null){
				for(var i=0;i<teams.length;i++){
					var team_id=teams[i].id;
					var team_name=teams[i].name;
					var team={}
					addFilterSelections("target","teams",team_name,team_id,team)
					filterObj.teams.push(team)
				}
			}
		}
		
		/*The Filter Object*/
		console.log(filterObj)
		
		showTargetContentCard();
		var leadtarget_array = [];
		for (var i = 0; i <5; i++) {
			var leadtarget = {};
			leadtarget_array.push(leadtarget);
		}

		var leadtarget_promises = [];
		for (var leadtarget of leadtarget_array) {
			leadtarget_promises.push(fetchLeadTargetContent());
		}
		$("#target_tab_contnet").empty();
		var fetchAllCall = Promise.all(leadtarget_promises.map(p => p.catch(error => {
			console.log(error);
			return null;
		})));
		fetchAllCall.then((results) => {
			for (var leadtargetTabContent of results) {
				
				$("#target_tab_contnet").append(leadtargetTabContent);
			}
		
		});
	}
	function showTargetContentCard() {
		var vv = fetchTargetContentCard();
		vv.done(function (data) {
			$('#target_tab_contnet_card').empty();
			$('#target_tab_contnet_card').append(data);
		});
	}

	function fetchTargetContentCard() {
		return $.post(contextPath + "leads/partials/target_card.jsp", JSON.stringify());
	}
	function fetchLeadTargetContent() {
		return $.post(contextPath + "leads/target/target_tab_content.jsp", JSON.stringify());
	}

/*----------------------------------------	end of target function----------------------------------*/