var contextPath=$('body').data('baseurl');


$(document).ready(function() {
	
	$('.salesken.navbar-nav>li').removeClass('active');
	$($('.salesken.navbar-nav>li')[1]).addClass('active');		
	
	loadOngoingTab();
	loadAllAgentFilterTab();
	loadAllTeamFilterTab();
	
	$('.filtertabs>li>.nav-link').click(function(e) {
		$($(this).attr('href') + '-tab').tab('show')
	});	
	$('#mainTask-tabs>li>a').on('shown.bs.tab', function(e) {

		var target = $(e.target).html(); // activated tab
		console.log(target);
		$('.filter-menu.dropdown-menu').click(function(e) {
		    e.stopPropagation();
		});
		$('.filtertabs>li>.nav-link').click(function(e) {
			$($(this).attr('href') + '-tab').tab('show')
		});	
				
		switch (target) {
		case "Upcoming":
			loadUpcomingTab();
			break;
		case "Completed":
			loadCompletedTab();
			break;
		default:
			/*Ongoing*/
			loadOngoingTab();
		}
		$('#taskdetail_search').keyup(function() {
		
			switch (target) {
			case "Upcoming":
				loadUpcomingTab();
				break;
			case "Completed":
				loadCompletedTab();
				break;
			default:
				/*Ongoing*/
				loadOngoingTab();
			}
		});
	});
	
	
	
	$('#upcoming_datepicker').datepicker({
		autoclose : true,
	})
	$('#upcoming_datepicker').change(function(){
		$('#upcoming_datepicker').attr('data-id',this.value)
		$('#upcoming_datepicker').attr('data-name',this.value)
		loadUpcomingTab();
	})
	$('#completed_datepicker').datepicker({
		autoclose : true,
		
	})
	$('#completed_datepicker').change(function(dateText) {
		$('#completed_datepicker').attr('data-id',this.value)
		$('#completed_datepicker').attr('data-name',this.value)
		loadCompletedTab();
    });

	
			
								
								
								
	$('#ongoing_team_submit').click(function(e) {
		var agent_array=[];
		var agent_name=[];
		var team_array=[];
		
		$('.ongoingagentcheckbox').each(function(){
			if($(this).prop('checked')===true){
				agent_array.push($(this).data('user'));
			}
		});
		$('.ongoingteamcheckbox').each(function(){
			if($(this).prop('checked')===true){
				team_array.push($(this).data('team'));
			}
		});
		if(agent_array.length==0 && team_array.length==0){
			alert("Please select atleast one");
		}else{
			$('#ongoing_dropdown').dropdown('hide');
		}
		$('#ongoing_dropdown').attr('data-agents',JSON.stringify(agent_array));
		$('#ongoing_dropdown').attr('data-teams',JSON.stringify(team_array));
		
		$('.ongoingagentcheckbox').each(function(){
			if($(this).prop('checked')===true){
				$(this).prop("checked", false);
			}
		});
		$('.ongoingteamcheckbox').each(function(){
			if($(this).prop('checked')===true){
				$(this).prop("checked", false);
			}
		});
		loadOngoingTab();
		
	});
	
	
	$('#upcoming_team_submit').click(function(e) {
		var agent_array=[];
		var team_array=[];
		
		$('.upcomingagentcheckbox').each(function(){
			if($(this).prop('checked')===true){
				agent_array.push($(this).data('user'));
			}
		});
		$('.upcomingteamcheckbox').each(function(){
			if($(this).prop('checked')===true){
				team_array.push($(this).data('team'));
			}
		});
		
		if(agent_array.length==0 && team_array.length==0){
			alert("Please select atleast one");
		}else{
			$('#upcoming_dropdown').dropdown('hide');
		}
		$('#upcoming_dropdown').attr('data-agents',JSON.stringify(agent_array));
		$('#upcoming_dropdown').attr('data-teams',JSON.stringify(team_array));
		
		$('.upcomingagentcheckbox').each(function(){
			if($(this).prop('checked')===true){
				$(this).prop("checked", false);
			}
		});
		$('.upcomingteamcheckbox').each(function(){
			if($(this).prop('checked')===true){
				$(this).prop("checked", false);
			}
		});
		loadUpcomingTab();

	});
	
	
	
	  $('#completed_team_submit').click(function(e) {
			var agent_array=[];
			var team_array=[];
			
			$('.completedagentcheckbox').each(function(){
				if($(this).prop('checked')===true){
					agent_array.push($(this).data('user'));
				}
			});
			$('.completedteamcheckbox').each(function(){
				if($(this).prop('checked')===true){
					team_array.push($(this).data('team'));
				}
			});
			
			if(agent_array.length==0 && team_array.length==0){
				alert("Please select atleast one");
			}else{
				$('#completed_dropdown').dropdown('hide');
			}
			$('#completed_dropdown').attr('data-agents',JSON.stringify(agent_array));
			$('#completed_dropdown').attr('data-teams',JSON.stringify(team_array));
			
			$('.completedagentcheckbox').each(function(){
				if($(this).prop('checked')===true){
					$(this).prop("checked", false);
				}
			});
			$('.completedteamcheckbox').each(function(){
				if($(this).prop('checked')===true){
					$(this).prop("checked", false);
				}
			});
			loadCompletedTab()
		});
		$('#ongoing-filter').on('show.bs.dropdown', function () {
			var new_height= $('#ongoing_filter_selections').outerHeight() + $('#taskdetail-tab-listContent').outerHeight() ;
			console.log(new_height);
			$('#ongoing_dropdown + .dropdown-menu').height(new_height-8);
			$('.agent-team-list').height(new_height - 200);
		});
		$('#upcoming-filter').on('show.bs.dropdown', function () {
			var new_height=  $('#nav-upcoming').outerHeight() - $('#upcoming-results-found').outerHeight() ;
			console.log(new_height);
			$('#upcoming_dropdown + .dropdown-menu').height(new_height-8);
			$('.agent-team-list').height(new_height - 200);
		});
		$('#completed-filter').on('show.bs.dropdown', function () {
			var new_height=  $('#completed_filter_selections').outerHeight() + $('#completed-tab-list').outerHeight() ;
			console.log(new_height);
			$('#completed_dropdown + .dropdown-menu').height(new_height-8);
			$('.agent-team-list').height(new_height - 200);
		});
});

function showCalendar() {
	$('#upcoming_datepicker').datepicker('show')
}
function showcompletedCalendar() {
	$('#completed_datepicker').datepicker('show')
}

$('.filter-menu.dropdown-menu').click(function(e) {
	e.stopPropagation();
});
//<---------------GLOBAL FUNCTIONS FOR EACH TAB TO ADD FILTER TAGS
function getfilterhtml(filter, id, filter_type){
	return '<button class="theme_solid_border bg-white brown-grey rounded f-12 position-relative search-filter ml-10" data-id="'+id+'">'+filter+
			'<i class="fas fa-times-circle brown-grey bg-white rounded-circle f-14 cross-btn" data-type="'+filter_type+'" onclick="removeOngoingFilter(this)"></i> </button>'
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

//<---------------------------RESET FILTERS LOGIC
//common function to reset each tab's filter
function resetFilters(button){
	var tab = $(button).data('type');
	switch(tab){
	case "upcoming":
			$('#upcoming_filter_selections').hide();
			$('#nav-upcoming').find('.select_focus').each(function(){
				removeAllDataAttributes($(this).find('.istar-dropdown-arrow.dropdown-toggle'));
			});
			removeAllDataAttributes($("#upcoming_dropdown"));
			removeAllDataAttributes($("#upcoming_datepicker"));
			loadUpcomingTab();
		break;
	case "completed":
			$('#completed_filter_selections').hide();
			$('#nav-completed').find('.select_focus').each(function(){
				removeAllDataAttributes($(this).find('.istar-dropdown-arrow.dropdown-toggle'));
			});
			removeAllDataAttributes($("#completed_dropdown"));
			removeAllDataAttributes($("#completed_datepicker"));
			loadCompletedTab();
		break;
	case "completedCallAdherence":
		$('#completedcall_filter_selections').hide();
		$('#completedCallTab+#completedCallTabContent').find('.select_focus').each(function(){
			removeAllDataAttributes($(this).find('.istar-dropdown-arrow.dropdown-toggle'));
		});
		removeAllDataAttributes($("#completedcallAdherence_dropdown"));
		removeAllDataAttributes($("#completedcall_adher_datepicker"));
		loadCalltaskAdherence();
	break;
	
	case "completedWebAdherence":
		$('#completedweb_filter_selections').hide();
		$('#completedWebinarTab+#completedWebinarTabContent').find('.select_focus').each(function(){
			removeAllDataAttributes($(this).find('.istar-dropdown-arrow.dropdown-toggle'));
		});
		removeAllDataAttributes($("#completedwebAdherence_dropdown"));
		removeAllDataAttributes($("#completedweb_adher_datepicker"));
		loadWebtaskAdherence();
	break;
	
	case "completedCallTimeline":
		$('#completedcallTimeline_filter_selections').hide();
		$('#completedCallTab+#completedCallTabContent').find('.select_focus').each(function(){
			removeAllDataAttributes($(this).find('.istar-dropdown-arrow.dropdown-toggle'));
		});
		removeAllDataAttributes($("#completedcallTimeline_dropdown"));
		removeAllDataAttributes($("#completedcallTimeline_datepicker"));
		loadCalltaskTimeline();
	break;
	
	case "completedWebTimeline":
		$('#completedwebTimeline_filter_selections').hide();
		$('#completedWebinarTab+#completedWebinarTabContent').find('.select_focus').each(function(){
			removeAllDataAttributes($(this).find('.istar-dropdown-arrow.dropdown-toggle'));
		});
		removeAllDataAttributes($("#completedwebTimeline_dropdown"));
		removeAllDataAttributes($("#completedwebTimeline_datepicker"));
		loadWebtaskTimeline();
	break;
	
	default:
		 	$('#ongoing_filter_selections').hide();
			$('#nav-ongoing').find('.select_focus').each(function(){
				removeAllDataAttributes($(this).find('.istar-dropdown-arrow.dropdown-toggle'));
			});
			removeAllDataAttributes($("#ongoing_dropdown"));
			loadOngoingTab();
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


	/*	start of filter drop down*/ 
	function ongoing_deal_dropdown(elem){
		var filter = $(elem).text();
		var filter_id = $(elem).data('id');
		$('#ongoing_deal').attr('data-id',filter_id);
		$('#ongoing_deal').attr('data-name',filter);
		loadOngoingTab();
	};
	function ongoing_stage_dropdown(elem){
		var filter = $(elem).text();
		var filter_id = $(elem).data('id');
		$('#ongoing_stage').attr('data-id',filter_id);
		$('#ongoing_stage').attr('data-name',filter);
		loadOngoingTab();
	};
	
	function ongoing_activity_dropdown(elem){
		var filter = $(elem).text();
		var filter_id = $(elem).data('id');
		$('#ongoing_activity').attr('data-id',filter_id);
		$('#ongoing_activity').attr('data-name',filter);
		loadOngoingTab();
		
	};
	function ongoing_status_dropdown(elem){
		var filter = $(elem).text();
		var filter_id = $(elem).data('id');
		$('#ongoing_status').attr('data-id',filter_id);
		$('#ongoing_status').attr('data-name',filter);
		loadOngoingTab();
		
	};
	
	function upcoming_stage_dropdown(elem){
		var filter = $(elem).text();
		var filter_id = $(elem).data('id');
		$('#upcoming_stage').attr('data-id',filter_id);
		$('#upcoming_stage').attr('data-name',filter);
		loadUpcomingTab();
	};
	function upcoming_activity_dropdown(elem){
		var filter = $(elem).text();
		var filter_id = $(elem).data('id');
		$('#upcoming_activity').attr('data-id',filter_id);
		$('#upcoming_activity').attr('data-name',filter);
		loadUpcomingTab();
	};
	function upcoming_status_dropdown(elem){
		var filter = $(elem).text();
		var filter_id = $(elem).data('id');
		$('#upcoming_status').attr('data-id',filter_id);
		$('#upcoming_status').attr('data-name',filter);
		loadUpcomingTab();
	};
	
	
	function completed_stage_dropdown(elem){
		var filter = $(elem).text();
		var filter_id = $(elem).data('id');
		$('#completed_stage').attr('data-id',filter_id);
		$('#completed_stage').attr('data-name',filter);
		loadCompletedTab();
	};
	
	function completed_activity_dropdown(elem){
		var filter = $(elem).text();
		var filter_id = $(elem).data('id');
		$('#completed_activity').attr('data-id',filter_id);
		$('#completed_activity').attr('data-name',filter);
		loadCompletedTab();
	};
	
	function completed_status_dropown(elem){
		var filter = $(elem).text();
		var filter_id = $(elem).data('id');
		$('#completed_status').attr('data-id',filter_id);
		$('#completed_status').attr('data-name',filter);
		loadCompletedTab();
	};
	
	
	
	function removeOngoingFilter(button){
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
			case "ongoing":
				loadOngoingTab();
				break;
			case "upcoming":
				loadUpcomingTab();
				break;
			case "completed":
				loadCompletedTab();
			case "completedcall":
				loadCalltaskAdherence();
				break;
			case "completedweb":
				loadWebtaskAdherence();
				break;
			case "completedcallTimeline":
				loadCalltaskTimeline();
				break;
			case "completedwebTimeline":
				loadWebtaskTimeline();
				break;
		}
		
	}
//<------------------------AGENT TEAM FILTER DROP DOWN POPULATE
	//populate agents in all filters
	function loadAllAgentFilterTab(){
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
		populateAgentListDropDown(userList,"upcoming")
		populateAgentListDropDown(userList,"ongoing")
		populateAgentListDropDown(userList,"completed")
		populateAgentListDropDown(userList,"completedCallAdher")
		populateAgentListDropDown(userList,"completedCallTimeline")
		populateAgentListDropDown(userList,"completedWebAdher")
		populateAgentListDropDown(userList,"completedWebTimeline")
	}
	//populate teams in all filters
	function loadAllTeamFilterTab(){
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
		populateTeamListDropDown(teamList,"upcoming")
		populateTeamListDropDown(teamList,"ongoing")
		populateTeamListDropDown(teamList,"completed")
		populateTeamListDropDown(teamList,"completedCallAdher")
		populateTeamListDropDown(teamList,"completedCallTimeline")
		populateTeamListDropDown(teamList,"completedWebAdher")
		populateTeamListDropDown(teamList,"completedWebTimeline")
	
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
	
	
	
