 var contextPath=$('body').data('baseurl');
      $(document).ready(function() {
      					loadNofollowUpTab();
      					
      					$('.salesken.navbar-nav>li').removeClass('active');
      					$($('.salesken.navbar-nav>li')[3]).addClass('active');
      					$('#nofollowup_datepicker').datepicker({autoclose:true});
      					
      					$('.salesken.navbar-nav>li').removeClass('active');
      
      				
      
      					$('.nav-tabs>.nav-item').on('show.bs.tab',
      							function(e) {
      							});
      
      				});
      
      function showCalendar(){
      	$('#nofollowup_datepicker').datepicker('show')
      }
      
      function loadNofollowUpTab(){
    	  
    	  $('#nofollowup_filter_selections').find('.filters-inside-selection').empty();
  		$('#nofollowup_filter_selections').hide();
  		
		var filterObj={}
		
	
		/*Selection of date filter*/
		var time_value = $('#nofollowup_datepicker').attr('data-name');
		var time_value_id = $('#nofollowup_datepicker').attr('data-id');
		filterObj.time={};
		addFilterSelections("nofollowup","time",time_value,time_value_id,filterObj.time)
		
		/*Selection of stage filter*/
		var stage = $('#nofollowup_stage').attr('data-name');
		var stage_id = $('#nofollowup_stage').attr('data-id');
		filterObj.stage={};
		addFilterSelections("nofollowup","stage",stage,stage_id,filterObj.stage)
		
		/*Selection of activity filter*/
		var activity = $('#nofollowup_activity').attr('data-name');
		var activity_id = $('#nofollowup_activity').attr('data-id');
		filterObj.activity={};
		addFilterSelections("nofollowup","activity",activity,activity_id,filterObj.activity)		
		
		/*Selection of status filter*/
		var status = $('#nofollowup_status').attr('data-name');
		var status_id = $('#nofollowup_status').attr('data-id');
		filterObj.status={};
		addFilterSelections("nofollowup","status",status,status_id,filterObj.status)
  		
    		var nofollowupReport_array=[];
    		for(var i =0;i<4;i++){
    			var nofollowupReport={};
    			nofollowupReport.id= i;
    			nofollowupReport.name="name"+i;
    			switch(i){
    			case 0:
    				nofollowupReport.taskType="SALES_CALL_TASK";
    				nofollowupReport.image = contextPath+"assets/image/calltask.svg";
    				break;
    			case 1:
    				nofollowupReport.taskType="SALES_EMAIL_TASK";
    				nofollowupReport.image = contextPath+"assets/image/emailtask.svg";
    				break;
    			case 2:
    				nofollowupReport.taskType="SALES_WEBINAR_TASK";
    				nofollowupReport.image = contextPath+"assets/image/webinartask.svg";
    				break;
    			case 3:
    				nofollowupReport.taskType="SALES_PRESENTATION_TASK";
    				nofollowupReport.image = contextPath+"assets/image/presentation.svg";
    				break;
    			default:
    				nofollowupReport.taskType="SALES_CALL_TASK";
    			nofollowupReport.image = contextPath+"assets/image/calltask.svg";
    			}
    			nofollowupReport_array.push(nofollowupReport);
    		}
    		var nofollowupReport_promises = [];
    		for(var nofollowupTask of nofollowupReport_array){
    			nofollowupReport_promises.push(fetchNofollowUpTab(nofollowupTask));
    		}
    		  $( "#taskdetail-tab-list" ).empty();
    		var fetchAllCall = Promise.all(nofollowupReport_promises.map(p => p.catch(error => { console.log(error); return null; })));
    		fetchAllCall.then((results) =>{
    			for(var nofollowupTabHtml of results){
    				  $( "#taskdetail-tab-list" ).append( nofollowupTabHtml );
      
    			}
    			var first_nofollowup_id = $($( "#taskdetail-tab-list" ).children()[0]).data('id');
    			$('#no_followup_call_'+first_nofollowup_id+'-tabs').tab('show');
    			populateNoFollowUpTabContent(first_nofollowup_id);
    			$('#taskdetail-tab-list').on('shown.bs.tab', function (e) {
    				
   				 var id =  $(e.target).data('id');
   				var tasktype =  $(e.target).data('tasktype');
   				populateNoFollowUpTabContent(id,tasktype);
   				});
    		});	
   		
      }
  	function populateNoFollowUpTabContent(first_nofollowup_id,nofollowup_tasktype){
		var nofollowupReport={};
		nofollowupReport.id= first_nofollowup_id;
		nofollowupReport.tasktype=nofollowup_tasktype;
		var vv = fetchNoFollowUpTabContent(nofollowupReport);
		vv.done(function(data){
			$('#taskdetail-tab-listContent').empty();
			$('#taskdetail-tab-listContent').append(data);
		});
	}  
     
      function fetchNofollowUpTab(nofollowupTask){
  		return $.post(contextPath+"report/no_follow_up/tab/no_follow_up_tab.jsp",JSON.stringify(nofollowupTask));
  	}
      function fetchNoFollowUpTabContent(nofollowupReport){
    		switch(nofollowupReport.tasktype){
    		case "SALES_CALL_TASK":
    		return $.post(contextPath+"report/no_follow_up/tab_content/playbookCallTaskModal.jsp",JSON.stringify(nofollowupReport));
    		case "SALES_EMAIL_TASK":
    		return $.post(contextPath+"report/no_follow_up/tab_content/playbookEmailTaskModal.jsp",JSON.stringify(nofollowupReport));
    		case "SALES_WEBINAR_TASK":
    		return $.post(contextPath+"report/no_follow_up/tab_content/playbookWebinarTaskModal.jsp",JSON.stringify(nofollowupReport));
    		default:
    			return $.post(contextPath+"report/no_follow_up/tab_content/playbookCallTaskModal.jsp",JSON.stringify(nofollowupReport));
    		}
  	}
   /////////////////////////////////////////////////////////////////////////////////////////
      /*--------- Global function for reset-----------------------------------*/
      
      function resetReportFilters(button){
	var tab = $(button).data('type');
	switch(tab){
	case "nofollowupReport":
		$('#nofollowup_filter_selections').hide();
		$('#report_filter_row').find('.select_focus').each(function(){
			removeAllDataAttributes($(this).find('.istar-dropdown-arrow.dropdown-toggle'));
		});
		removeAllDataAttributes($("#nofollowup_datepicker"));
		loadNofollowUpTab();
		break;
	case "nofollowupCallAdherence":
		$('#nofollowupcall_filter_selections').hide();
		$('#nofollowupCallReport+#nofollowupCallReportTabContent').find('.select_focus').each(function(){
			removeAllDataAttributes($(this).find('.istar-dropdown-arrow.dropdown-toggle'));
		});
		removeAllDataAttributes($("#nofollowupcallAdherence_dropdown"));
		removeAllDataAttributes($("#nofollowupcall_adher_datepicker"));
		loadNoFollowUpCallAdherence();
		break;
	case "nofollowupWebAdherence":
		$('#nofollowupweb_filter_selections').hide();
		$('#nofollowupWebinarTab+#nofollowupWebinarTabContent').find('.select_focus').each(function(){
			removeAllDataAttributes($(this).find('.istar-dropdown-arrow.dropdown-toggle'));
		});
		removeAllDataAttributes($("#nofollowupwebAdherence_dropdown"));
		removeAllDataAttributes($("#nofollowupweb_adher_datepicker"));
		loadReportWebtaskAdherence();
		break;
	case "nofollowupCallTimeline":
		$('#nofollowupcallTimeline_filter_selections').hide();
		$('#nofollowupCallReport+#nofollowupCallReportTabContent').find('.select_focus').each(function(){
			removeAllDataAttributes($(this).find('.istar-dropdown-arrow.dropdown-toggle'));
		});
		removeAllDataAttributes($("#nofollowupcallTimeline_dropdown"));
		removeAllDataAttributes($("#nofollowupcallTimeline_datepicker"));
		loadNoFollowUpCallTimeline();
		break;
	case "nofollowupWebTimeline":
		$('#nofollowupwebTimeline_filter_selections').hide();
		$('#nofollowupWebinarTab+#nofollowupWebinarTabContent').find('.select_focus').each(function(){
		removeAllDataAttributes($(this).find('.istar-dropdown-arrow.dropdown-toggle'));
		});
		removeAllDataAttributes($("#nofollowupwebTimeline_dropdown"));
		removeAllDataAttributes($("#nofollowupwebTimeline_datepicker"));
		loadReportWebtaskTimeline();
	
	}
	
}
 //remove given data attributes from the element given
   function removeAllDataAttributes(elem){
   		elem.attr('data-id',"");
   		elem.attr('data-name',"");
   		elem.attr('data-agents',null);
   		elem.attr('data-teams',null);
   }
   
 /*--------- Global function for remove-----------------------------------*/
   	function removeReportFilter(button){
		var type = $(button).data('type');
		var tabType=type.split('_')[0];
		var id=$(button).parent().data('id')
		console.log(tabType);
		var filter;
		switch(type){
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
			case tabType+"_persona":
				filter = $('#'+tabType+'_persona')
				break;
			case tabType+"_success":
				filter = $('#'+tabType+'_success')
				break;
			case tabType+"_timelinedate":
				filter = $('#'+tabType+'_datepicker')
				break;
			case tabType+"_Adherence_success":
				filter = $('#'+tabType+'Adherence_success')
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
			case "nofollowup":
				loadNofollowUpTab();
				break;
			case "nofollowupcall":
				loadNoFollowUpCallAdherence();
				break;
			case "nofollowupcallTimeline":
				loadNoFollowUpCallTimeline();
				break;
			case "nofollowupwebTimeline":
				loadReportWebtaskTimeline();
			break;
			case "nofollowupweb":
				loadReportWebtaskAdherence();
			break;
		}
		
	}
   
   function nofollowup_stage_dropdown(elem){
		var filter = $(elem).text();
		var filter_id = $(elem).data('id');
		$('#nofollowup_stage').attr('data-id',filter_id);
		$('#nofollowup_stage').attr('data-name',filter);
		loadNofollowUpTab();
	};
	function nofollowup_activity_dropdown(elem){
		var filter = $(elem).text();
		var filter_id = $(elem).data('id');
		$('#nofollowup_activity').attr('data-id',filter_id);
		$('#nofollowup_activity').attr('data-name',filter);
		loadNofollowUpTab();
	};
	
	function nofollowup_status_dropown(elem){
		var filter = $(elem).text();
		var filter_id = $(elem).data('id');
		$('#nofollowup_status').attr('data-id',filter_id);
		$('#nofollowup_status').attr('data-name',filter);
		loadNofollowUpTab();
	};
	
	$('#nofollowup_datepicker').change(function(dateText) {
		$('#nofollowup_datepicker').attr('data-id',this.value)
		$('#nofollowup_datepicker').attr('data-name',this.value)
		loadNofollowUpTab();
    });
	//<---------------GLOBAL FUNCTIONS FOR EACH TAB TO ADD FILTER TAGS
	function getfilterhtml(filter, id, filter_type){
		return '<button class="theme_solid_border bg-white brown-grey rounded f-12 position-relative search-filter ml-10" data-id="'+id+'">'+filter+
				'<i class="fas fa-times-circle brown-grey bg-white rounded-circle f-14 cross-btn" data-type="'+filter_type+'" onclick="removeReportFilter(this)"></i> </button>'
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
	//<------------------------AGENT TEAM FILTER DROP DOWN POPULATE
	//populate agents in all filters
	function loadReportAllAgentFilterTab(){
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
		populateReportAgentListDropDown(userList,"nofollowupCallAdhere")
		populateReportAgentListDropDown(userList,"nofollowupCallTimeline")
		populateReportAgentListDropDown(userList,"nofollowupWebTimeline")
		populateReportAgentListDropDown(userList,"nofollowupWebAdher")
	}
	//populate teams in all filters
	function loadReportAllTeamFilterTab(){
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
		populateReportTeamListDropDown(teamList,"nofollowupCallAdhere")
		populateReportTeamListDropDown(teamList,"nofollowupCallTimeline")
		populateReportTeamListDropDown(teamList,"nofollowupWebTimeline")
		populateReportTeamListDropDown(teamList,"nofollowupWebAdher")
	}
	//Common function to populate Agents in Drop down for all tabs
	function populateReportAgentListDropDown(userList,tabName){
		 for(var i=0;i<userList.length;i++){
			 	
				var html='<div class="d-flex align-items-center pt-3">'+
					'<input class="istar-checkbox '+tabName+'agentcheckbox" data-user=\''+JSON.stringify(userList[i])+'\'data-id="'+userList[i].id+'" id="'+tabName+'_associate-checkbox'+userList[i].id+'" type="checkbox">'+
					'<label class="istar-checkbox-style" for="'+tabName+'_associate-checkbox'+userList[i].id+'"></label>'+
					'<img alt="Agent Image" title="Agent Name" src ="'+userList[i].image+'" class="rounded-circle ml-3 mr-2 hw-40"> <div>'+
					'<div class="f-14 font-weight-bold greyish-brown text-truncate" title="'+userList[i].name+'">'+userList[i].name+'</div>'+
					'<div class="f-12  brownish-grey text-truncate" title="team">'+userList[i].teamName+'</div> </div></div>';
				$('.'+tabName+'-agent-list').append(html);
			}
	}
	//Common function to populate Team in Drop down for all tabs
	function populateReportTeamListDropDown(teamList,tabName){
		 for(var i=0;i<teamList.length;i++){
				var html='<div class="d-flex align-items-center pt-3">'+
					'<input class="istar-checkbox '+tabName+'teamcheckbox" data-team=\''+JSON.stringify(teamList[i])+'\' data-id="'+teamList[i].id+'" id="'+tabName+'_team-checkbox'+teamList[i].id+'" type="checkbox">'+
					'<label class="istar-checkbox-style" for="'+tabName+'_team-checkbox'+teamList[i].id+'"></label><div class="f-12 ml-2 brownish-grey">'+teamList[i].name+'</div></div>';
				$('.'+tabName+'-team-list').append(html);
			}
	}	
//---------------------------------------------->
	/*	end of filter drop down*/ 
	