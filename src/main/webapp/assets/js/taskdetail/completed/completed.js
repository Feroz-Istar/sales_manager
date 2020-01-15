	/* start of  js function for completed Tab*/	

	function loadCompletedTab(){
		//empty upcoming tab & completedTab
		$('#upcoming_tab').empty();
		$('#upcoming_tab_content').empty();
		$('#ongoing_tab').empty();
		$('#ongoing_tab_content').empty();
		$('#completed_filter_selections').find('.col-md-10.d-flex').empty();
		$('#completed_filter_selections').hide();
		
		var time_value = $('#completed_datepicker').attr('data-name');
		var time_value_id = $('#completed_datepicker').attr('data-id');
		if(time_value!="" && time_value!= undefined && time_value_id!="" && time_value_id != undefined){
			$('#completed_filter_selections').find('.col-md-10.d-flex').append(getfilterhtml(time_value,time_value_id,"completed_time"));
			$('#completed_filter_selections').show();
		}
		
		var stage = $('#completed_stage').attr('data-name');
		var stage_id = $('#completed_stage').attr('data-id');
		if(stage!="" && stage!= undefined && stage_id!="" && stage_id != undefined){
			$('#completed_filter_selections').find('.col-md-10.d-flex').append(getfilterhtml(stage,stage_id,"completed_stage"));
			$('#completed_filter_selections').show();
		}
		
		var activity = $('#completed_activity').attr('data-name');
		var activity_id = $('#completed_activity').attr('data-id');
		if(activity!="" && activity!= undefined && activity_id!="" && activity_id != undefined){
			$('#completed_filter_selections').find('.col-md-10.d-flex').append(getfilterhtml(activity,activity_id,"completed_activity"));
			$('#completed_filter_selections').show();
		}
		
		var status = $('#completed_status').attr('data-name');
		var status_id = $('#completed_status').attr('data-id');
		if(status!="" && status!= undefined && status_id!="" && status_id != undefined){
			$('#completed_filter_selections').find('.col-md-10.d-flex').append(getfilterhtml(status,status_id,"completed_status"));
			$('#completed_filter_selections').show();
		}
		
		if( $('#completed_dropdown').attr('data-agents')!=null){
			var agents = JSON.parse($('#completed_dropdown').attr('data-agents'));
			if(agents!=null){
				for(var i=0;i<agents.length;i++){
					var activity_id=agents[i].id;
					var activity=agents[i].name;
					if(activity!="" && activity!= undefined && activity_id!="" && activity_id != undefined){
						$('#completed_filter_selections').find('.col-md-10.d-flex').append(getfilterhtml(activity,activity_id,"completed_agents"));
						$('#completed_filter_selections').show();
					}
				}
			}
		}
		
		if( $('#completed_dropdown').attr('data-teams')!=null){
			var teams = JSON.parse($('#completed_dropdown').attr('data-teams'));
			if(teams!=null){
				for(var i=0;i<teams.length;i++){
					var activity_id=teams[i].id;
					var activity=teams[i].name;
					if(activity!="" && activity!= undefined && activity_id!="" && activity_id != undefined){
						$('#completed_filter_selections').find('.col-md-10.d-flex').append(getfilterhtml(activity,activity_id,"completed_teams"));
						$('#completed_filter_selections').show();
					}
				}
			}
		}
		
		var completedTask_array=[];
		for(var i =0;i<4;i++){
			var completedTask={};
			completedTask.id= i;
			completedTask.name="name"+i;
			completedTask.image = contextPath+"assets/image/37.jpg";
			switch(i){ 
			case 0:
				completedTask.taskType="SALES_CALL_TASK";
				break;
			case 1:
				completedTask.taskType="SALES_EMAIL_TASK";
				break;
			case 2:
				completedTask.taskType="SALES_WEBINAR_TASK";
				break;
			default:
				completedTask.taskType="SALES_PRESENTATION_TASK";
			}
			completedTask_array.push(completedTask);
		}
		
		var completed_promises = [];
		for(var completedTask of completedTask_array){
			completed_promises.push(fetchCompletedTab(completedTask));
		}
		$( "#completed_tab" ).empty();
		var fetchAllCall = Promise.all(completed_promises.map(p => p.catch(error => { console.log(error); return null; })));
		fetchAllCall.then((results) =>{
			for(var completedTabHtml of results){
				  $( "#completed_tab" ).append( completedTabHtml );
  
			}
			var first_completed_id = $($( "#completed_tab" ).children()[0]).data('id');
			var completed_tasktype= $($( "#completed_tab" ).children()[0]).data('tasktype');
			
			$('#completed_'+first_completed_id+'-tabs').tab('show')

			populateCompletedTabContent(first_completed_id);
			/*completed tab change event*/
			 $('#completed_tab').on('shown.bs.tab', function (e) {
				
				 var id =  $(e.target).data('id');
				 var tasktype =  $(e.target).data('tasktype');
				 populateCompletedTabContent(id,tasktype);
				});
		});	
	}
	function populateCompletedTabContent(first_completed_id,completed_tasktype){
		var completedTask={};
		completedTask.id= first_completed_id;
		completedTask.tasktype=completed_tasktype;
		var vv = fetchCompletedTabContent(completedTask);
		vv.done(function(data){
			$('#completed_tab_content').empty();
			$('#completed_tab_content').append(data);
		});
	}
	
	function fetchCompletedTab(completedTask){
		return $.post(contextPath+"taskDetails/completed/tab/completed_tab.jsp",JSON.stringify(completedTask));
	}	
	function  fetchCompletedTabContent(completedTask){
		switch(completedTask.tasktype){
		case "SALES_CALL_TASK":
		return $.post(contextPath+"taskDetails/completed/tab_content/completedCallTaskModal.jsp",JSON.stringify(completedTask));
		case "SALES_EMAIL_TASK":
		return $.post(contextPath+"taskDetails/completed/tab_content/completedEmailTaskModal.jsp",JSON.stringify(completedTask));
		case "SALES_WEBINAR_TASK":
		return $.post(contextPath+"taskDetails/completed/tab_content/completedWebinarTaskModal.jsp",JSON.stringify(completedTask));
		default:
			return $.post(contextPath+"taskDetails/completed/tab_content/completedCallTaskModal.jsp",JSON.stringify(completedTask));
		}
	
	}
/* end of  js function for completed Tab*/	
	
	function openShareTaskModal(){
		$('#shareTaskModal').modal('show')
	}

