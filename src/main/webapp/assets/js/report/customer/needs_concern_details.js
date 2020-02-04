$( document ).ready(function() {
	loadNeedsDetailsTab();
	loadNeedsConcernDetailAgentFilterTab();
	loadNeedsConcernDetailAllTeamFilterTab()
});
/* start of  js function for NeedsDetails Tab*/
	function loadNeedsDetailsTab(){
		//empty upcoming tab & completedTab
		
		
		//<------------------UPCOMING TAB FILTER SELECTIONS
		$('#needsConcernDetail_filter_selections').find('.filters-inside-selection').empty();
		$('#needsConcernDetail_filter_selections').hide();
		var filterObj={}
		
		/*Global Search*/
		filterObj.search=$('#taskdetail_search').val()
		
		/*Selection of date filter*/
	var time_value = $('#needsConcernDetail_datepicker').attr('data-name');
	var time_value_id = $('#needsConcernDetail_datepicker').attr('data-id');
	filterObj.time={};
	addFilterSelections("needsConcernDetail","time",time_value,time_value_id,filterObj.time)
		
		/*Selection of deal filter*/
		var deal_value = $('#needsConcernDetail_deal').attr('data-name');
		var deal_value_id = $('#needsConcernDetail_deal').attr('data-id');
		filterObj.deal={};
		addFilterSelections("needsConcernDetail","deal",deal_value,deal_value_id,filterObj.deal)
		
		/*Selection of stage filter*/
		var stage = $('#needsConcernDetail_stage').attr('data-name');
		var stage_id = $('#needsConcernDetail_stage').attr('data-id');
		filterObj.stage={};
		addFilterSelections("needsConcernDetail","stage",stage,stage_id,filterObj.stage)
		
		/*Selection of activity filter*/
		var activity = $('#needsConcernDetail_activity').attr('data-name');
		var activity_id = $('#needsConcernDetail_activity').attr('data-id');
		filterObj.activity={};
		addFilterSelections("needsConcernDetail","activity",activity,activity_id,filterObj.activity)
		
		/*Selection of status filter*/
		var status = $('#needsConcernDetail_status').attr('data-name');
		var status_id = $('#needsConcernDetail_status').attr('data-id');
		filterObj.status={};
		addFilterSelections("needsConcernDetail","status",status,status_id,filterObj.status)
		
		/*Selection of All Agents->Individual filter*/
		if( $('#needsConcernDetail_dropdown').attr('data-agents')!=null){
			var agents = JSON.parse($('#needsConcernDetail_dropdown').attr('data-agents'));
			filterObj.agents=[]
			if(agents!=null){
				for(var i=0;i<agents.length;i++){
					var agent_id=agents[i].id;
					var agent_name=agents[i].name;
					var agent={}
					addFilterSelections("needsConcernDetail","agents",agent_name,agent_id,agent)
					filterObj.agents.push(agent)
				}
			}
		}
		
		/*Selection of All Agents->Team filter*/
		if( $('#needsConcernDetail_dropdown').attr('data-teams')!=null){
			var teams = JSON.parse($('#needsConcernDetail_dropdown').attr('data-teams'));
			filterObj.teams=[]
			if(teams!=null){
				for(var i=0;i<teams.length;i++){
					var team_id=teams[i].id;
					var team_name=teams[i].name;
					var team={}
					addFilterSelections("needsConcernDetail","teams",team_name,team_id,team)
					filterObj.teams.push(team)
				}
			}
		}
		
		/*The Filter Object*/
		console.log(filterObj)
		//----------------------------->
	
		
		var needsConcernDetailTask_array=[];
		for(var i =0;i<4;i++){
			var needsConcernDetailTask={};
			needsConcernDetailTask.id= i;
			needsConcernDetailTask.name="name"+i;
			switch(i){
			case 0:
				needsConcernDetailTask.taskType="SALES_CALL_TASK";
				needsConcernDetailTask.image = contextPath+"assets/image/calltask.svg";
				break;
			case 1:
				needsConcernDetailTask.taskType="SALES_WEBINAR_TASK";
				needsConcernDetailTask.image = contextPath+"assets/image/webinartask.svg";
				break;
			case 2:
				needsConcernDetailTask.taskType="SALES_PRESENTATION_TASK";
				needsConcernDetailTask.image = contextPath+"assets/image/presentation.svg";
				break;
			case 3:
				needsConcernDetailTask.taskType="SALES_EMAIL_TASK";
				needsConcernDetailTask.image = contextPath+"assets/image/emailtask.svg";
				break;
			default:
				needsConcernDetailTask.taskType="SALES_CALL_TASK";
			needsConcernDetailTask.image = contextPath+"assets/image/calltask.svg";
			}
			needsConcernDetailTask_array.push(needsConcernDetailTask);
		}
		
		var needsConcernDetail_promises = [];
		for(var needsConcernDetailTask of needsConcernDetailTask_array){
			needsConcernDetail_promises.push(fetchNeedsDetailsTab(needsConcernDetailTask));
		}
		$( "#needsConcernDetail_tab" ).empty();
		var fetchAllCall = Promise.all(needsConcernDetail_promises.map(p => p.catch(error => { console.log(error); return null; })));
		fetchAllCall.then((results) =>{
			for(var needsConcernDetailTabHtml of results){
				  $( "#needsConcernDetail_tab" ).append( needsConcernDetailTabHtml );
  
			}
			
			
			var first_needsConcernDetail_id = $($( "#needsConcernDetail_tab" ).children()[0]).data('id');
			var needsConcern_tasktype= $($( "#needsConcernDetail_tab" ).children()[0]).data('tasktype');
			$('#needconcernDetail_'+first_needsConcernDetail_id+'-tabs').tab('show')
			populateNeedsDetailsTabContent(first_needsConcernDetail_id,needsConcern_tasktype);
			$('#needsConcernDetail_tab').on('shown.bs.tab', function (e) {
				
				 var id =  $(e.target).data('id');
				 var tasktype =  $(e.target).data('tasktype');
				 populateNeedsDetailsTabContent(id,tasktype);
				
				});
			
		});	
	}
	
	function populateNeedsDetailsTabContent(first_needsConcernDetail_id,needsConcernDetailTask_tasktyp){
		var needsConcernDetailTask={};
		needsConcernDetailTask.id= first_needsConcernDetail_id;
		needsConcernDetailTask.tasktype=needsConcernDetailTask_tasktyp;
		var vv = fetchNeedsDetailsTabContent(needsConcernDetailTask);
		vv.done(function(data){
			$('#needsConcernDetail_tab_content').empty();
			$('#needsConcernDetail_tab_content').append(data);
		});
	}
	
	function fetchNeedsDetailsTab(needsConcernDetailTask){
		return $.post(contextPath+"report/customer/needs_concern/needs_concern_detail/concern_details_tab.jsp",JSON.stringify(needsConcernDetailTask));
	}	
	function fetchNeedsDetailsTabContent(needsConcernDetailTask){
		switch(needsConcernDetailTask.tasktype){
		case "SALES_CALL_TASK":
		
		return $.post(contextPath+"report/customer/needs_concern/needs_concern_detail/tab_content/needsConcernCallTaskModal.jsp",JSON.stringify(needsConcernDetailTask));
		case "SALES_EMAIL_TASK":
		return $.post(contextPath+"report/customer/needs_concern/needs_concern_detail/tab_content/needsConcernEmailTaskModal.jsp",JSON.stringify(needsConcernDetailTask));
		
		case "SALES_WEBINAR_TASK":
		return $.post(contextPath+"report/customer/needs_concern/needs_concern_detail/tab_content/needsConcernWebinarTaskModal.jsp",JSON.stringify(needsConcernDetailTask));
		default:
			return $.post(contextPath+"report/customer/needs_concern/needs_concern_detail/tab_content/needsConcernCallTaskModal.jsp",JSON.stringify(needsConcernDetailTask));
		
		}
	}
	
	/* end of  js function for NeedsDetails Tab*/
	
	
	function needsConcernDetail_stage_dropdown(elem){
		var filter = $(elem).text();
		var filter_id = $(elem).data('id');
		$('#needsConcernDetail_stage').attr('data-id',filter_id);
		$('#needsConcernDetail_stage').attr('data-name',filter);
		loadNeedsDetailsTab();
	};
	
	function needsConcernDetail_activity_dropdown(elem){
		var filter = $(elem).text();
		var filter_id = $(elem).data('id');
		$('#needsConcernDetail_activity').attr('data-id',filter_id);
		$('#needsConcernDetail_activity').attr('data-name',filter);
		loadNeedsDetailsTab();
		
	};
	function needsConcernDetail_status_dropdown(elem){
		var filter = $(elem).text();
		var filter_id = $(elem).data('id');
		$('#needsConcernDetail_status').attr('data-id',filter_id);
		$('#needsConcernDetail_status').attr('data-name',filter);
		loadNeedsDetailsTab();
		
	};
	
	$('#needsConcernDetail_datepicker').change(function(dateText) {
		$('#needsConcernDetail_datepicker').attr('data-id',this.value)
		$('#needsConcernDetail_datepicker').attr('data-name',this.value)
		loadNeedsDetailsTab();
    });
	
	function showNeedsDetailCalendar(){
		$('#needsConcernDetail_datepicker').datepicker('show');
	};
	
	$('#needsConcernDetail_datepicker').datepicker({
		autoclose : true,
	})
	//<---------------GLOBAL FUNCTIONS FOR EACH TAB TO ADD FILTER TAGS
	function getfilterhtml(filter, id, filter_type){
		return '<button class="theme_solid_border bg-white brown-grey rounded f-12 position-relative search-filter ml-10" data-id="'+id+'">'+filter+
				'<i class="fas fa-times-circle brown-grey bg-white rounded-circle f-14 cross-btn" data-type="'+filter_type+'" onclick="removeNeedsDetailsFilter(this)"></i> </button>'
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
	function removeNeedsDetailsFilter(button){
		var type = $(button).data('type');
		var tabType=type.split('_')[0];
		var id=$(button).parent().data('id')
		console.log(tabType);
		var filter;
		switch(type){
			case tabType+"_deal":
				filter = $('#'+tabType+'_deal')
				break;
			case tabType+"_Adherence_success":
				filter = $('#'+tabType+'Adherence_success')
				break;
			case tabType+"_success":
				filter = $('#'+tabType+'_success')
				break;
			case tabType+"_persona":
				filter = $('#'+tabType+'_persona')
				break;
			case tabType+"_stage":
				filter = $('#'+tabType+'_stage')
				break;
			case tabType+"_activity":
				filter = $('#'+tabType+'_activity')
				break;
			case tabType+"_status":
				filter = $('#'+tabType+'_status')
				break;
			case tabType+"_time":
				filter = $('#'+tabType+'_datepicker')
				break;
			case tabType+"_timelinedate":
				filter = $('#'+tabType+'_datepicker')
				break;
			case tabType+"_adherdate":
				filter = $('#'+tabType+'_adher_datepicker')
				break;
			case tabType+"_agents":
				filter = $('#'+tabType+'_dropdown')
				var agents = JSON.parse($('#'+tabType+'_dropdown').attr('data-agents'));
				agents=agents.filter(function(agent){return agent.id!==id;})
				filter.attr('data-agents',JSON.stringify(agents))
				break;
			case tabType+"_teams":
				filter = $('#'+tabType+'_dropdown')
				var teams = JSON.parse($('#'+tabType+'_dropdown').attr('data-teams'));
				teams=teams.filter(function(team){return team.id!==id;})
				filter.attr('data-teams',JSON.stringify(teams))
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
			case "needsConcernDetail":
				loadNeedsDetailsTab();
				break;
			case "needsConcernDetailcallTimeline":
				loadNeedsConcernDetailCallTimeline();
				break;
			case "needsConcernDetailcall":
				loadNeedsConcernDetailCallAdherence();
				break;
			case "needsConcernDetailwebTimeline":
				loadNeedConcernWebtaskTimeline();
				break;
			case "needsConcernDetailweb":
				loadNeedConcernWebtaskAdherence();
				break;
			
		}
		
	}
	
	//<------------------------AGENT TEAM FILTER DROP DOWN POPULATE
	//populate agents in all filters
	function loadNeedsConcernDetailAgentFilterTab(){
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
		
		populateAgentListDropDown(userList,"needsConcernDetailCallAdhere")
		populateAgentListDropDown(userList,"needsConcernDetail")
		populateAgentListDropDown(userList,"needsConcernDetailCallTimeline")
		populateAgentListDropDown(userList,"needsConcernDetailWebTimeline")
		populateAgentListDropDown(userList,"needsConcernDetailWebAdher")
	}
	//populate teams in all filters
	function loadNeedsConcernDetailAllTeamFilterTab(){
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
		populateTeamListDropDown(teamList,"needsConcernDetailCallAdhere")
		populateTeamListDropDown(teamList,"needsConcernDetail")
		populateTeamListDropDown(teamList,"needsConcernDetailCallTimeline")
		populateTeamListDropDown(teamList,"needsConcernDetailWebTimeline")
		populateTeamListDropDown(teamList,"needsConcernDetailWebAdher")
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
	
	$('.filter-menu.dropdown-menu').click(function(e) {
	    e.stopPropagation();
	});
	$('.filtertabs>li>.nav-link').click(function(e) {
		$($(this).attr('href') + '-tab').tab('show')
	});	
			
	$('#needsConcernDetail_team_submit').click(function(e) {
		var agent_array=[];
		var agent_name=[];
		var team_array=[];
		
		$('.needsConcernDetailagentcheckbox').each(function(){
			if($(this).prop('checked')===true){
				agent_array.push($(this).data('user'));
			}
		});
		$('.needsConcernDetailteamcheckbox').each(function(){
			if($(this).prop('checked')===true){
				team_array.push($(this).data('team'));
			}
		});
		if(agent_array.length==0 && team_array.length==0){
			alert("Please select atleast one");
		}else{
			$('#needsConcernDetail_dropdown').dropdown('hide');
		}
		$('#needsConcernDetail_dropdown').attr('data-agents',JSON.stringify(agent_array));
		$('#needsConcernDetail_dropdown').attr('data-teams',JSON.stringify(team_array));
		
		$('.needsConcernDetailagentcheckbox').each(function(){
			if($(this).prop('checked')===true){
				$(this).prop("checked", false);
			}
		});
		$('.needsConcernDetailteamcheckbox').each(function(){
			if($(this).prop('checked')===true){
				$(this).prop("checked", false);
			}
		});
		loadNeedsDetailsTab();
		
	});
	
	//<---------------------------RESET FILTERS LOGIC
//common function to reset each tab's filter
function resetNeedConcernDetailsFilters(button){
	var tab = $(button).data('type');
	switch(tab){
	case "needsconcerndetail":
			$('#needsConcernDetail_filter_selections').hide();
			$('#needsConcernDetail_filters').find('.select_focus').each(function(){
				removeAllDataAttributes($(this).find('.istar-dropdown-arrow.dropdown-toggle'));
			});
			removeAllDataAttributes($("#needsConcernDetail_dropdown"));
			removeAllDataAttributes($("#needsConcernDetail_datepicker"));
			loadNeedsDetailsTab();
		break;
	case "needsConcernDetailCallAdherence":
		$('#needsConcernDetailcall_filter_selections').hide();
		$('#needsConcernDetailCallReport+#needsConcernDetailCallReportTabContent').find('.select_focus').each(function(){
			removeAllDataAttributes($(this).find('.istar-dropdown-arrow.dropdown-toggle'));
		});
		removeAllDataAttributes($("#needsConcernDetailcallAdherence_dropdown"));
		removeAllDataAttributes($("#needsConcernDetailcall_adher_datepicker"));
		loadNeedsConcernDetailCallAdherence();
	break;
	
	case "needsConcernDetailWebAdherence":
		$('#needsConcernDetailweb_filter_selections').hide();
		$('#needsConcernDetailWebinarTab+#needsConcernDetailWebinarTabContent').find('.select_focus').each(function(){
			removeAllDataAttributes($(this).find('.istar-dropdown-arrow.dropdown-toggle'));
		});
		removeAllDataAttributes($("#needsConcernDetailwebAdherence_dropdown"));
		removeAllDataAttributes($("#needsConcernDetailweb_adher_datepicker"));
		loadNeedConcernWebtaskAdherence();
	break;
	
	case "needsConcernDetailCallTimeline":
		$('#needsConcernDetailcallTimeline_filter_selections').hide();
		$('#needsConcernDetailCallReport+#needsConcernDetailCallReportTabContent').find('.select_focus').each(function(){
			removeAllDataAttributes($(this).find('.istar-dropdown-arrow.dropdown-toggle'));
		});
		removeAllDataAttributes($("#needsConcernDetailcallTimeline_dropdown"));
		removeAllDataAttributes($("#needsConcernDetailcallTimeline_datepicker"));
		loadNeedsConcernDetailCallTimeline();
	break;
	
	case "needsConcernDetailWebTimeline":
		$('#needsConcernDetailwebTimeline_filter_selections').hide();
		$('#needsConcernDetailWebinarTab+#needsConcernDetailWebinarTabContent').find('.select_focus').each(function(){
			removeAllDataAttributes($(this).find('.istar-dropdown-arrow.dropdown-toggle'));
		});
		removeAllDataAttributes($("#needsConcernDetailwebTimeline_datepicker"));
		removeAllDataAttributes($("#needsConcernDetailwebTimeline_dropdown"));
		loadNeedConcernWebtaskTimeline();
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