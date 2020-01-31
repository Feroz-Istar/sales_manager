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

//<---------------------------RESET FILTERS LOGIC
//common function to reset each tab's filter
function resetLeadFilters(button){
	var tab = $(button).data('type');
	switch(tab){
	
	case "leadCallAdherence":
		$('#leadcall_filter_selections').hide();
		$('#leadTab+#leadTabContent').find('.select_focus').each(function(){
			removeAllDataAttributes($(this).find('.istar-dropdown-arrow.dropdown-toggle'));
		});
		removeAllDataAttributes($("#leadcallAdherence_dropdown"));
		removeAllDataAttributes($("#leadcall_adher_datepicker"));
		loadLeadtaskAdherence();
	break;

	case "leadWebAdherence":
		$('#leadweb_filter_selections').hide();
		$('#leadWebinarTab+#leadWebinarTabContent').find('.select_focus').each(function(){
			removeAllDataAttributes($(this).find('.istar-dropdown-arrow.dropdown-toggle'));
		});
		removeAllDataAttributes($("#leadwebAdherence_dropdown"));
		removeAllDataAttributes($("#leadweb_adher_datepicker"));
		loadLeadWebtaskAdherence();
	break;
	case "leadCallTimeline":
		$('#leadcallTimeline_filter_selections').hide();
		$('#leadTab+#leadTabContent').find('.select_focus').each(function(){
			removeAllDataAttributes($(this).find('.istar-dropdown-arrow.dropdown-toggle'));
		});
		removeAllDataAttributes($("#leadcallTimeline_dropdown"));
		removeAllDataAttributes($("#leadcallTimeline_datepicker"));
		loadLeadtaskTimeline();
	break;
	
	case "leadWebTimeline":
		$('#leadwebTimeline_filter_selections').hide();
		$('#leadWebinarTab+#leadWebinarTabContent').find('.select_focus').each(function(){
			removeAllDataAttributes($(this).find('.istar-dropdown-arrow.dropdown-toggle'));
		});
		removeAllDataAttributes($("#leadwebTimeline_dropdown"));
		removeAllDataAttributes($("#leadwebTimeline_datepicker"));
		loadLeadWebtaskTimeline();
	break;

	}
}
//remove given data attributes from the element given
function removeAllDataAttributes(elem){
		elem.attr('data-id',"");
		elem.attr('data-name',"");
		elem.attr('data-agents',null);
		elem.attr('data-teams',null);
}
//------------------------------------------------------>


/***************************************************************global function for removing filter******************************************************/
function removeLeadFilter(button){
	var type = $(button).data('type');
	var tabType=type.split('_')[0];
	var id=$(button).parent().data('id')
	console.log(tabType);
	var filter;
	switch(type){
		case tabType+"_Adherence_success":
			filter = $('#'+tabType+'Adherence_success')
			break;
		case tabType+"_success":
			filter = $('#'+tabType+'_success')
			break;
		case tabType+"_persona":
			filter = $('#'+tabType+'_persona')
			break;
		case tabType+"_timelinedate":
			filter = $('#'+tabType+'_datepicker')
			break;
		case tabType+"_adherdate":
			filter = $('#'+tabType+'_adher_datepicker')
			break;
		case tabType+"_Adherence_Agents":
			filter = $('#'+tabType+'Adherence_dropdown')
			var agents = JSON.parse($('#'+tabType+'Adherence_dropdown').attr('data-agents'));
			agents=agents.filter(function(agent){return agent.id!==id;})
			filter.attr('data-agents',JSON.stringify(agents))
			break;
		case tabType+"_Adherence_Teams":
			filter = $('#'+tabType+'Adherence_dropdown')
			var teams = JSON.parse($('#'+tabType+'Adherence_dropdown').attr('data-teams'));
			teams=teams.filter(function(team){return team.id!==id;})
			filter.attr('data-teams',JSON.stringify(teams))
			break;
		case tabType+"_Timeline_Agents":
			filter = $('#'+tabType+'_dropdown')
			var agents = JSON.parse($('#'+tabType+'_dropdown').attr('data-agents'));
			agents=agents.filter(function(agent){return agent.id!==id;})
			filter.attr('data-agents',JSON.stringify(agents))
			break;
		case tabType+"_Timeline_Teams":
			filter = $('#'+tabType+'_dropdown')
			var teams = JSON.parse($('#'+tabType+'_dropdown').attr('data-teams'));
			teams=teams.filter(function(team){return team.id!==id;})
			filter.attr('data-teams',JSON.stringify(teams))
			break;				
	}
	filter.attr('data-id',"");
	filter.attr('data-name',"");
	switch(tabType){
		case "leadwebTimeline_success":
			loadLeadWebtaskTimeline();
			break;
		case "leadcall":
			loadLeadtaskAdherence();
			break;
		case "leadwebTimeline":
			loadLeadWebtaskTimeline();
			break;
		case "leadcallTimeline":
			loadLeadtaskTimeline();
			break;
		case "leadweb":
		loadLeadWebtaskAdherence();
		break;
	}
	
}

//<------------------------AGENT TEAM FILTER DROP DOWN POPULATE
//populate agents in all filters
function loadLeadAllAgentFilterTab(){
	var userList=[{
		id:1,
		name:"Nice",
		image:contextPath+"/assets/image/11.png",
		teamName:"Team - 01"
	},{
		id:2,
		name:"wassup???",
		image:contextPath+"/assets/image/11.png",
		teamName:"Team - 02"
	},{
		id:6,
		name:"Meet",
		image:contextPath+"/assets/image/11.png",
		teamName:"Team - 03"
	},{
		id:192,
		name:"You",
		image:contextPath+"/assets/image/11.png",
		teamName:"Team - 04"
	}]
	populateAgentListDropDown(userList,"leadCallAdher")
	populateAgentListDropDown(userList,"leadCallTimeline")
	populateAgentListDropDown(userList,"leadWebAdher")
	populateAgentListDropDown(userList,"leadWebTimeline")
}
//populate teams in all filters
function loadLeadAllTeamFilterTab(){
	var teamList=[{
		id:1,
		name:"Team - 01"
	},{
		id:12,
		name:"Team - 02"
	},{
		id:62,
		name:"Team - 03"
	},{
		id:162,
		name:"Team - 04"
	}]
	
	populateTeamListDropDown(teamList,"leadCallAdher")
	populateTeamListDropDown(teamList,"leadCallTimeline")
	populateTeamListDropDown(teamList,"leadWebAdher")
	populateTeamListDropDown(teamList,"leadWebTimeline")
}
//Common function to populate Agents in Drop down for all tabs
function populateAgentListDropDown(userList,tabName){
	 for(var i=0;i<userList.length;i++){
		 	
			var html='<div class="d-flex align-items-center pt-3">'+
				'<input class="istar-checkbox '+tabName+'agentcheckbox" data-user=\''+JSON.stringify(userList[i])+'\'data-id="'+userList[i].id+'" id="'+tabName+'_associate-checkbox'+userList[i].id+'" type="checkbox">'+
				'<label class="istar-checkbox-style" for="'+tabName+'_associate-checkbox'+userList[i].id+'"></label>'+
				'<img alt="Agent Image" title="Agent Name" src ="'+userList[i].image+'" class="rounded-circle ml-3 mr-2 hw-40"> <div>'+
				'<div class="f-14 font-weight-bold greyish-brown text-truncate" title="'+userList[i].name+'">'+userList[i].name+'</div>'+
				'<div class="f-12  brownish-grey text-truncate" title="team">'+userList[i].teamName+'</div> </div></div>';
			$('.'+tabName+'-agent-list').append(html);
			console.log('.'+tabName+'-agent-list')
		}
}
//Common function to populate Team in Drop down for all tabs
function populateTeamListDropDown(teamList,tabName){
	 for(var i=0;i<teamList.length;i++){
			var html='<div class="d-flex align-items-center pt-3">'+
				'<input class="istar-checkbox '+tabName+'teamcheckbox" data-team=\''+JSON.stringify(teamList[i])+'\' data-id="'+teamList[i].id+'" id="'+tabName+'_team-checkbox'+teamList[i].id+'" type="checkbox">'+
				'<label class="istar-checkbox-style" for="'+tabName+'_team-checkbox'+teamList[i].id+'"></label><div class="f-12 ml-2 brownish-grey">'+teamList[i].name+'</div></div>';
			$('.'+tabName+'-team-list').append(html);
		}
}	
//---------------------------------------------->
/*	end of filter drop down*/ 
//<---------------GLOBAL FUNCTIONS FOR EACH TAB TO ADD FILTER TAGS
function getfilterhtml(filter, id, filter_type){
	return '<button class="theme_solid_border bg-white brown-grey rounded f-12 position-relative search-filter ml-10" data-id="'+id+'">'+filter+
			'<i class="fas fa-times-circle brown-grey bg-white rounded-circle f-14 cross-btn" data-type="'+filter_type+'" onclick="removeLeadFilter(this)"></i> </button>'
}
function addFilterSelections(tab,filter,name,id,obj){
	
	if(name!="" && name!= undefined && id!="" && id != undefined){
		
		obj.name=name;
		obj.id=id;
		$('#'+tab+'_filter_selections').find('.filters-inside-selection').append(getfilterhtml(name,id,tab+'_'+filter));
		$('#'+tab+'_filter_selections').show();
	}
}
//--------------------------------------------->