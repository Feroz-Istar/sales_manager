var contextPath=$('body').data('baseurl');
$(document).ready(function() {
							
							taskDetailTab();
							
							$('#agent-details>li>a').on('shown.bs.tab', function(e) {

								var target = $(e.target).html(); // activated tab
								console.log(target);
								
									
								switch (target) {
								case "Task Details":
									taskDetailTab();
									break;
								case "Lead Details":
									$.get(contextPath+"taskDetails/task_lead_detail/lead_detail.jsp", function(data) {
										$('#lead-detail').html(data);
										$('#taskdetail-tab-list').empty();
										$('#taskdetail-tab-listContent').empty();
									});
									break;
								default:
									/*Ongoing*/
									taskDetailTab();
								}
							});				

});
/*--------------------------------------------------------------------------------------*/


function taskDetailTab(){
	//empty Lead Tab
	$('#lead-detail').empty();
var taskDetail_array=[];
	for(var i =0;i<4;i++){
		var taskDetailLead={};
		taskDetailLead.id= i;
		taskDetailLead.name="name"+i;
		switch(i){ 
		case 0:
			taskDetailLead.taskType="SALES_CALL_TASK";
			taskDetailLead.image = contextPath+"assets/image/calltask.svg";
			break;
		case 1:
			taskDetailLead.taskType="SALES_EMAIL_TASK";
			taskDetailLead.image = contextPath+"assets/image/emailtask.svg";
			break;
		case 2:
			taskDetailLead.taskType="SALES_WEBINAR_TASK";
			taskDetailLead.image = contextPath+"assets/image/webinartask.svg";
			break;
		case 3:
			taskDetailLead.taskType="SALES_PRESENTATION_TASK";
			taskDetailLead.image = contextPath+"assets/image/presentation.svg";
			break;
		default:
			taskDetailLead.taskType="SALES_PRESENTATION_TASK";
		taskDetailLead.image = contextPath+"assets/image/call.svg";
		}
		taskDetail_array.push(taskDetailLead);
	}
	
	var taskDetail_promises = [];
	for(var  taskDetail of taskDetail_array){
		taskDetail_promises.push(fetchtaskDetailTab(taskDetail));
	}
	$( "#taskdetail-tab-list" ).empty();
	var fetchAllCall = Promise.all(taskDetail_promises.map(p => p.catch(error => { console.log(error); return null; })));
	fetchAllCall.then((results) =>{
		for(var taskDetailTabHtml of results){
			  $( "#taskdetail-tab-list" ).append( taskDetailTabHtml );

		}
		var first_task_lead_id = $($( "#taskdetail-tab-list" ).children()[0]).data('id');
		var taskdetail_tasktype= $($( "#taskdetail-tab-list" ).children()[0]).data('tasktype');
		
		$('#task_lead_detail_'+first_task_lead_id+'-tabs').tab('show')

		populatetaskdetailTabContent(first_task_lead_id);
		//taskdetail tab change event
		 $('#taskdetail-tab-list').on('shown.bs.tab', function (e) {
			
			 var id =  $(e.target).data('id');
			 var tasktype =  $(e.target).data('tasktype');
			 populatetaskdetailTabContent(id,tasktype);
			});
	});	
}
function populatetaskdetailTabContent(first_task_lead_id,taskdetail_tasktype){
	var taskdetail={};
	taskdetail.id= first_task_lead_id;
	taskdetail.tasktype=taskdetail_tasktype;
	var vv = fetchtaskdetailTabContent(taskdetail);
	vv.done(function(data){
		$('#taskdetail-tab-listContent').empty();
		$('#taskdetail-tab-listContent').append(data);
	});
}

function fetchtaskDetailTab(taskDetail){
	return $.post(contextPath+"taskDetails/task_lead_detail/task_lead_detail_tab.jsp",JSON.stringify(taskDetail));
}	
function  fetchtaskdetailTabContent(taskdetail){
	switch(taskdetail.tasktype){
	case "SALES_CALL_TASK":
	return $.post(contextPath+"taskDetails/task_lead_detail/task_lead_details_content/leadCallTaskModal.jsp",JSON.stringify(taskdetail));
	case "SALES_EMAIL_TASK":
	return $.post(contextPath+"taskDetails/task_lead_detail/task_lead_details_content/leadEmailTaskModal.jsp",JSON.stringify(taskdetail));
	case "SALES_WEBINAR_TASK":
	return $.post(contextPath+"taskDetails/task_lead_detail/task_lead_details_content/leadWebinarTaskModal.jsp",JSON.stringify(taskdetail));
	default:
		return $.post(contextPath+"taskDetails/task_lead_detail/task_lead_details_content/leadCallTaskModal.jsp",JSON.stringify(taskdetail));
	}

}