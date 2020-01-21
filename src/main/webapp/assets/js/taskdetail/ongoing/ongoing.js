	/* start of  js function for Ongoing Tab*/
	function loadOngoingTab(){
		//empty upcoming tab & completedTab
		$('#upcoming_tab').empty();
		$('#upcoming_tab_content').empty();
		$('#completed_tab').empty();
		$('#completed_tab_content').empty();
		
		
		//<------------------UPCOMING TAB FILTER SELECTIONS
		$('#ongoing_filter_selections').find('.filters-inside-selection').empty();
		$('#ongoing_filter_selections').hide();
		var filterObj={}
		
		/*Global Search*/
		filterObj.search=$('#taskdetail_search').val()
		
		/*Selection of deal filter*/
		var deal_value = $('#ongoing_deal').attr('data-name');
		var deal_value_id = $('#ongoing_deal').attr('data-id');
		filterObj.deal={};
		addFilterSelections("ongoing","deal",deal_value,deal_value_id,filterObj.deal)
		
		/*Selection of stage filter*/
		var stage = $('#ongoing_stage').attr('data-name');
		var stage_id = $('#ongoing_stage').attr('data-id');
		filterObj.stage={};
		addFilterSelections("ongoing","stage",stage,stage_id,filterObj.stage)
		
		/*Selection of activity filter*/
		var activity = $('#ongoing_activity').attr('data-name');
		var activity_id = $('#ongoing_activity').attr('data-id');
		filterObj.activity={};
		addFilterSelections("ongoing","activity",activity,activity_id,filterObj.activity)
		
		/*Selection of status filter*/
		var status = $('#ongoing_status').attr('data-name');
		var status_id = $('#ongoing_status').attr('data-id');
		filterObj.status={};
		addFilterSelections("ongoing","status",status,status_id,filterObj.status)
		
		/*Selection of All Agents->Individual filter*/
		if( $('#ongoing_dropdown').attr('data-agents')!=null){
			var agents = JSON.parse($('#ongoing_dropdown').attr('data-agents'));
			filterObj.agents=[]
			if(agents!=null){
				for(var i=0;i<agents.length;i++){
					var agent_id=agents[i].id;
					var agent_name=agents[i].name;
					var agent={}
					addFilterSelections("ongoing","agents",agent_name,agent_id,agent)
					filterObj.agents.push(agent)
				}
			}
		}
		
		/*Selection of All Agents->Team filter*/
		if( $('#ongoing_dropdown').attr('data-teams')!=null){
			var teams = JSON.parse($('#ongoing_dropdown').attr('data-teams'));
			filterObj.teams=[]
			if(teams!=null){
				for(var i=0;i<teams.length;i++){
					var team_id=teams[i].id;
					var team_name=teams[i].name;
					var team={}
					addFilterSelections("ongoing","teams",team_name,team_id,team)
					filterObj.teams.push(team)
				}
			}
		}
		
		/*The Filter Object*/
		console.log(filterObj)
		//----------------------------->
	
		
		var ongoingTask_array=[];
		for(var i =0;i<4;i++){
			var ongoingTask={};
			ongoingTask.id= i;
			ongoingTask.name="name"+i;
			switch(i){
			case 0:
				ongoingTask.taskType="SALES_CALL_TASK";
				ongoingTask.image = contextPath+"assets/image/calltask.svg";
				break;
			case 1:
				ongoingTask.taskType="SALES_WEBINAR_TASK";
				ongoingTask.image = contextPath+"assets/image/webinartask.svg";
				break;
			case 2:
				ongoingTask.taskType="SALES_PRESENTATION_TASK";
				ongoingTask.image = contextPath+"assets/image/presentation.svg";
				break;
			default:
				ongoingTask.taskType="SALES_CALL_TASK";
			ongoingTask.image = contextPath+"assets/image/calltask.svg";
			}
			ongoingTask_array.push(ongoingTask);
		}
		
		var ongoing_promises = [];
		for(var ongoingTask of ongoingTask_array){
			ongoing_promises.push(fetchOngoingTab(ongoingTask));
		}
		$( "#ongoing_tab" ).empty();
		var fetchAllCall = Promise.all(ongoing_promises.map(p => p.catch(error => { console.log(error); return null; })));
		fetchAllCall.then((results) =>{
			for(var ongoingTabHtml of results){
				  $( "#ongoing_tab" ).append( ongoingTabHtml );
  
			}
			
			
			var first_ongoing_id = $($( "#ongoing_tab" ).children()[0]).data('id');

			$('#ongoing_'+first_ongoing_id+'-tabs').tab('show')

			populateOngoingTabContent(first_ongoing_id);
			/*ongoing tab change event*/
			 $('#ongoing_tab').on('shown.bs.tab', function (e) {
				
				 var id =  $(e.target).data('id');
				 populateOngoingTabContent(id);
				});
			
			 
		});	
	}
	
	
	function populateOngoingTabContent(first_ongoing_id){
		var ongoingTask={};
		ongoingTask.id= first_ongoing_id;
		var vv = fetchOngoingTabContent(ongoingTask);
		vv.done(function(data){
			$('#ongoing_tab_content').empty();
			$('#ongoing_tab_content').append(data);
		});
	}
	
	function fetchOngoingTab(ongoingTask){
		return $.post(contextPath+"taskDetails/ongoing/tab/ongoing_tab.jsp",JSON.stringify(ongoingTask));
	}	
	function fetchOngoingTabContent(ongoingTask){
		return $.post(contextPath+"taskDetails/ongoing/tab_content/ongoing_tab_content.jsp",JSON.stringify(ongoingTask));
	}
	
	/* end of  js function for Ongoing Tab*/
	
	
	