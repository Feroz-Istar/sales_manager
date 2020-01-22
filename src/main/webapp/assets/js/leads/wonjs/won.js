/*-----------------------------------start of agent and team filter submit-------------------------*/
	$('#won_team_submit').click(function(e) {
		var agent_array=[];
		var agent_name=[];
		var team_array=[];
		
		$('.wonagentcheckbox').each(function(){
			if($(this).prop('checked')===true){
				agent_array.push($(this).data('user'));
			}
		});
		$('.wonteamcheckbox').each(function(){
			if($(this).prop('checked')===true){
				team_array.push($(this).data('team'));
			}
		});
		if(agent_array.length==0 && team_array.length==0){
			alert("Please select atleast one");
		}else{
			$('#won_dropdown').dropdown('hide');
		}
		$('#won_dropdown').attr('data-agents',JSON.stringify(agent_array));
		$('#won_dropdown').attr('data-teams',JSON.stringify(team_array));
		
		$('.wonagentcheckbox').each(function(){
			if($(this).prop('checked')===true){
				$(this).prop("checked", false);
			}
		});
		$('.wonteamcheckbox').each(function(){
			if($(this).prop('checked')===true){
				$(this).prop("checked", false);
			}
		});
		loadWonLeads();
		
	});
/*-----------------------------------end of agent and team filter submit-------------------------*/

/*	-------------------------------------start of Won Leads function--------------------------*/
	
var prevWonfilterObj={}
	function loadWonLeads() {
	$('#qualified_tab_content_card').empty();
	$('#qualified_tab_content').empty()
	$('#target_tab_contnet_card').empty();
	$('#target_tab_contnet').empty()
	
	$('#won_filter').find('.filters-inside-selection').empty();
	$('#won_filter').hide();
	 var filterObj={}

	 /*Global Search*/
		filterObj.search=$('#leads_search').val()
	 
	 /*Selection of date filter*/
		var time_value = $('#won_datepicker').attr('data-name');
		var time_value_id = $('#won_datepicker').attr('data-id');
		filterObj.time={};
		addFilterSelections("won","time",time_value,time_value_id,filterObj.time)
	 
	 /*Selection of causes filter*/
		var causes = $('#won_causes').attr('data-name');
		var causes_id = $('#won_causes').attr('data-id');
		filterObj.causes={};
		addFilterSelections("won","causes",causes,causes_id,filterObj.causes)
		
	/*Selection of deal filter*/
	var deal_value = $('#won_deal_value').attr('data-name');
	var deal_value_id = $('#won_deal_value').attr('data-id');
	filterObj.deal={};
	addFilterSelections("won","deal",deal_value,deal_value_id,filterObj.deal)
	
	/*Selection of stage filter*/
	var stage = $('#won_stage').attr('data-name');
	var stage_id = $('#won_stage').attr('data-id');
	filterObj.stage={};
	addFilterSelections("won","stage",stage,stage_id,filterObj.stage)
	
	/*Selection of source type filter*/
		var source_type = $('#wonSourceType').attr('data-name');
		var source_type_id = $('#wonSourceType').attr('data-id');
		filterObj.source={};
		addFilterSelections("won","sourcetype",source_type,source_type_id,filterObj.source)
	
		/*Selection of All Agents->Individual filter*/
		if( $('#won_dropdown').attr('data-agents')!=null){
			var agents = JSON.parse($('#won_dropdown').attr('data-agents'));
			filterObj.agents=[]
			if(agents!=null){
				for(var i=0;i<agents.length;i++){
					var agent_id=agents[i].id;
					var agent_name=agents[i].name;
					var agent={}
					addFilterSelections("won","agents",agent_name,agent_id,agent)
					filterObj.agents.push(agent)
				}
			}
		}
		
		/*Selection of All Agents->Team filter*/
		if( $('#won_dropdown').attr('data-teams')!=null){
			var teams = JSON.parse($('#won_dropdown').attr('data-teams'));
			filterObj.teams=[]
			if(teams!=null){
				for(var i=0;i<teams.length;i++){
					var team_id=teams[i].id;
					var team_name=teams[i].name;
					var team={}
					addFilterSelections("won","teams",team_name,team_id,team)
					filterObj.teams.push(team)
				}
			}
		}
		
		/*The Filter Object*/
		console.log(filterObj)
	
		//<--------------------PAGINATION LOGIC
		if(JSON.stringify(filterObj)!=JSON.stringify(prevWonfilterObj)){
			$('.won-number-of-results').attr('data-page',1)
		}
		
		var page_no= $('.won-number-of-results').attr('data-page')
		
		$('.won-pagination').empty();
		$('.won-pagination').html('<div class="page"><ul class="salesken pagination m-0 pt-30 pb-40 pr-40"></ul></div>')
		
		$('.won-pagination>.page').bootpag({
	        total: 25,
	        page: page_no,
	        maxVisible: 5,
	        next: 'next',
	        prev: 'prev',
	        leaps: false
	    }).on("page", function(event, /* page number here */ num){
	         $('.won-number-of-results').attr('data-page',num)
	         loadWonLeads();
	    });
		//---------------------------->
		
		showWonContentCard();
		var wonlead_array = [];
		for (var i = 0; i <4; i++) {
			var wonlead = {};
			wonlead_array.push(wonlead);
		}

		var wonlead_promises = [];
		for (var wonlead of wonlead_array) {
			wonlead_promises.push(fetchWonLeadContent());
		}
		$("#won_lead_content").empty();
		var fetchAllCall = Promise.all(wonlead_promises.map(p => p.catch(error => {
			console.log(error);
			return null;
		})));
		fetchAllCall.then((results) => {
			for (var wonleadTabContent of results) {
				$("#won_lead_content").append(wonleadTabContent);
			}
		
		});
		prevWonfilterObj=filterObj
		
	}
	function showWonContentCard() {
		var vv = fetchWonContentCard();
		vv.done(function (data) {
			$('#won_lead_content_card').empty();
			$('#won_lead_content_card').append(data);
		});
	}

	function fetchWonContentCard() {
		return $.post(contextPath + "leads/partials/won_lead_card.jsp", JSON.stringify());
	}
	function fetchWonLeadContent() {
		return $.post(contextPath + "leads/won_lead/won_lead_tab_content.jsp", JSON.stringify());
	}

/*----------------------------------------	end of Won Leads function----------------------------------*/
	