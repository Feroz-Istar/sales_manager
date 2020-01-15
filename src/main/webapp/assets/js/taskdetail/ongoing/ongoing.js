	/* start of  js function for Ongoing Tab*/
	function loadOngoingTab(){
		//empty upcoming tab & completedTab
		$('#upcoming_tab').empty();
		$('#upcoming_tab_content').empty();
		$('#completed_tab').empty();
		$('#completed_tab_content').empty();
		$('#ongoing_filter_selections').find('.col-md-10.d-flex').empty();
		$('#ongoing_filter_selections').hide();
		
		
		var deal_value = $('#ongoing_deal').attr('data-name');
		var deal_value_id = $('#ongoing_deal').attr('data-id');
		if(deal_value!="" && deal_value!= undefined && deal_value_id!="" && deal_value_id != undefined){
			$('#ongoing_filter_selections').find('.col-md-10.d-flex').append(getfilterhtml(deal_value,deal_value_id,"ongoing_deal_value"));
			$('#ongoing_filter_selections').show();
		}
		
		var stage = $('#ongoing_stage').attr('data-name');
		var stage_id = $('#ongoing_stage').attr('data-id');
		if(stage!="" && stage!= undefined && stage_id!="" && stage_id != undefined){
			$('#ongoing_filter_selections').find('.col-md-10.d-flex').append(getfilterhtml(stage,stage_id,"ongoing_stage"));
			$('#ongoing_filter_selections').show();
		}
		
		var activity = $('#ongoing_activity').attr('data-name');
		var activity_id = $('#ongoing_activity').attr('data-id');
		if(activity!="" && activity!= undefined && activity_id!="" && activity_id != undefined){
			$('#ongoing_filter_selections').find('.col-md-10.d-flex').append(getfilterhtml(activity,activity_id,"ongoing_activity"));
			$('#ongoing_filter_selections').show();
		}
		
		var status = $('#ongoing_status').attr('data-name');
		var status_id = $('#ongoing_status').attr('data-id');
		if(status!="" && status!= undefined && status_id!="" && status_id != undefined){
			$('#ongoing_filter_selections').find('.col-md-10.d-flex').append(getfilterhtml(status,status_id,"ongoing_status"));
			$('#ongoing_filter_selections').show();
		}
		
		if( $('#ongoing_dropdown').attr('data-agents')!=null){
			var agents = JSON.parse($('#ongoing_dropdown').attr('data-agents'));
			if(agents!=null){
				for(var i=0;i<agents.length;i++){
					var activity_id=agents[i].id;
					var activity=agents[i].name;
					if(activity!="" && activity!= undefined && activity_id!="" && activity_id != undefined){
						$('#ongoing_filter_selections').find('.col-md-10.d-flex').append(getfilterhtml(activity,activity_id,"ongoing_agents"));
						$('#ongoing_filter_selections').show();
					}
				}
			}
		}
		
		if( $('#ongoing_dropdown').attr('data-teams')!=null){
			var teams = JSON.parse($('#ongoing_dropdown').attr('data-teams'));
			if(teams!=null){
				for(var i=0;i<teams.length;i++){
					var activity_id=teams[i].id;
					var activity=teams[i].name;
					if(activity!="" && activity!= undefined && activity_id!="" && activity_id != undefined){
						$('#ongoing_filter_selections').find('.col-md-10.d-flex').append(getfilterhtml(activity,activity_id,"ongoing_teams"));
						$('#ongoing_filter_selections').show();
					}
				}
			}
		}
		
	
		
		var ongoingTask_array=[];
		for(var i =0;i<4;i++){
			var ongoingTask={};
			ongoingTask.id= i;
			ongoingTask.name="name"+i;
			ongoingTask.image = contextPath+"assets/image/37.jpg";
			switch(i){
			case 0:
				ongoingTask.taskType="SALES_CALL_TASK";
				break;
			case 1:
				ongoingTask.taskType="SALES_EMAIL_TASK";
				break;
			case 2:
				ongoingTask.taskType="SALES_WEBINAR_TASK";
				break;
			default:
				ongoingTask.taskType="SALES_PRESENTATION_TASK";
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
	
	
	function getfilterhtml(filter, id, filter_type){
		return '<button class="theme_solid_border bg-white brown-grey rounded f-12 position-relative search-filter ml-10" data-id="'+id+'">'+filter+
				'<i class="fas fa-times-circle brown-grey bg-white rounded-circle f-14 cross-btn" data-type="'+filter_type+'" onclick="removeOngoingFilter(this)"></i> </button>'
	}