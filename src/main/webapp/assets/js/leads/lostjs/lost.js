/*-----------------------------------start of agent and team filter submit-------------------------*/

	$('#lost_team_submit').click(function(e) {
		var agent_array=[];
		var agent_name=[];
		var team_array=[];
		
		$('.lostagentcheckbox').each(function(){
			if($(this).prop('checked')===true){
				agent_array.push($(this).data('user'));
			}
		});
		$('.lostteamcheckbox').each(function(){
			if($(this).prop('checked')===true){
				team_array.push($(this).data('team'));
			}
		});
		if(agent_array.length==0 && team_array.length==0){
			alert("Please select atleast one");
		}else{
			$('#lost_dropdown').dropdown('hide');
		}
		$('#lost_dropdown').attr('data-agents',JSON.stringify(agent_array));
		$('#lost_dropdown').attr('data-teams',JSON.stringify(team_array));
		
		$('.lostagentcheckbox').each(function(){
			if($(this).prop('checked')===true){
				$(this).prop("checked", false);
			}
		});
		$('.lostteamcheckbox').each(function(){
			if($(this).prop('checked')===true){
				$(this).prop("checked", false);
			}
		});
		loadLostLeads();
		
	});
	/*-----------------------------------end of agent and team filter submit-------------------------*/


/*	-------------------------------------start of lost Leads function--------------------------*/
	
var prevLostfilterObj={} 
	function loadLostLeads() {
	$('#qualified_tab_content_card').empty();
	$('#qualified_tab_content').empty()
	$('#target_tab_contnet_card').empty();
	$('#target_tab_contnet').empty()
	
	$('#lost_filter').find('.filters-inside-selection').empty();
	$('#lost_filter').hide();
	 var filterObj={}
	 
	 /*Global Search*/
		filterObj.search=$('#leads_search').val()
		
	 /*Selection of date filter*/
		var time_value = $('#lost_datepicker').attr('data-name');
		var time_value_id = $('#lost_datepicker').attr('data-id');
		filterObj.time={};
		addFilterSelections("lost","time",time_value,time_value_id,filterObj.time)
	 /*Selection of causes filter*/
		var causes = $('#lost_causes').attr('data-name');
		var causes_id = $('#lost_causes').attr('data-id');
		filterObj.causes={};
		addFilterSelections("lost","causes",causes,causes_id,filterObj.causes)
		
	/*Selection of deal filter*/
	var deal_value = $('#lost_deal_value').attr('data-name');
	var deal_value_id = $('#lost_deal_value').attr('data-id');
	filterObj.deal={};
	addFilterSelections("lost","deal",deal_value,deal_value_id,filterObj.deal)
	
	/*Selection of stage filter*/
	var stage = $('#lost_stage').attr('data-name');
	var stage_id = $('#lost_stage').attr('data-id');
	filterObj.stage={};
	addFilterSelections("lost","stage",stage,stage_id,filterObj.stage)
	
	/*Selection of source type filter*/
		var source_type = $('#lostSourceType').attr('data-name');
		var source_type_id = $('#lostSourceType').attr('data-id');
		filterObj.source={};
		addFilterSelections("lost","sourcetype",source_type,source_type_id,filterObj.source)
	
		/*Selection of All Agents->Individual filter*/
		if( $('#lost_dropdown').attr('data-agents')!=null){
			var agents = JSON.parse($('#lost_dropdown').attr('data-agents'));
			filterObj.agents=[]
			if(agents!=null){
				for(var i=0;i<agents.length;i++){
					var agent_id=agents[i].id;
					var agent_name=agents[i].name;
					var agent={}
					addFilterSelections("lost","agents",agent_name,agent_id,agent)
					filterObj.agents.push(agent)
				}
			}
		}
		
		/*Selection of All Agents->Team filter*/
		if( $('#lost_dropdown').attr('data-teams')!=null){
			var teams = JSON.parse($('#lost_dropdown').attr('data-teams'));
			filterObj.teams=[]
			if(teams!=null){
				for(var i=0;i<teams.length;i++){
					var team_id=teams[i].id;
					var team_name=teams[i].name;
					var team={}
					addFilterSelections("lost","teams",team_name,team_id,team)
					filterObj.teams.push(team)
				}
			}
		}
		
		
		/*The Filter Object*/
		console.log(filterObj)
		
		//<--------------------PAGINATION LOGIC
		if(JSON.stringify(filterObj)!=JSON.stringify(prevLostfilterObj)){
			$('.lost-number-of-results').attr('data-page',1)
		}
		
		var page_no= $('.lost-number-of-results').attr('data-page')
		
		$('.lost-pagination').empty();
		$('.lost-pagination').html('<div class="page"><ul class="salesken pagination m-0 pt-30 pb-40 pr-40"></ul></div>')
		
		$('.lost-pagination>.page').bootpag({
	        total: 25,
	        page: page_no,
	        maxVisible: 5,
	        next: 'next',
	        prev: 'prev',
	        leaps: false
	    }).on("page", function(event, /* page number here */ num){
	         $('.lost-number-of-results').attr('data-page',num)
	         loadLostLeads();
	    });
		//---------------------------->
		
		showLostLeadContentCard();
		var lostlead_array = [];
		for (var i = 0; i <4; i++) {
			var lostlead = {};
			lostlead_array.push(lostlead);
		}
	
		var lostlead_promises = [];
		for (var lostlead of lostlead_array) {
			lostlead_promises.push(fetchLostLeadContent());
		}
		$("#lost_leads_content").empty();
		var fetchAllCall = Promise.all(lostlead_promises.map(p => p.catch(error => {
			console.log(error);
			return null;
		})));
		fetchAllCall.then((results) => {
			for (var lostleadTabContent of results) {
				$("#lost_leads_content").append(lostleadTabContent);
			}
		
		});
		prevLostfilterObj=filterObj
		
	}
	
	
	

	function showLostLeadContentCard() {
		var vv = fetchLostLeadContentCard();
		vv.done(function (data) {
			$('#lost_leads_content_card').empty();
			$('#lost_leads_content_card').append(data);
		});
	}

	function fetchLostLeadContentCard() {
		return $.post(contextPath + "leads/partials/lost_lead_card.jsp", JSON.stringify());
	}
	function fetchLostLeadContent() {
		return $.post(contextPath + "leads/lost_lead/lost_lead_tab_content.jsp", JSON.stringify());
	}

/*----------------------------------------	end of lost Leads function----------------------------------*/