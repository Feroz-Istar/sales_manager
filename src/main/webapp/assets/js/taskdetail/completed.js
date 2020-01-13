	/* start of  js function for completed Tab*/	

	function loadCompletedTab(){
		//empty upcoming tab & completedTab
		$('#upcoming_tab').empty();
		$('#upcoming_tab_content').empty();
		$('#ongoing_tab').empty();
		$('#ongoing_tab_content').empty();
		
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

