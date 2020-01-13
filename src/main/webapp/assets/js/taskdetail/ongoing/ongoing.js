	/* start of  js function for Ongoing Tab*/
	function loadOngoingTab(){
		//empty upcoming tab & completedTab
		$('#upcoming_tab').empty();
		$('#upcoming_tab_content').empty();
		$('#completed_tab').empty();
		$('#completed_tab_content').empty();
		
		
		
		
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
	
	
	