var contextPath = $('body').data('baseurl');

$(document).ready(function () {
	var url=window.location.href;
	var tab=url.split('#')[1];
	console.log(tab)

	loadplaybookInsight()
	loadAllAgentFilterTab();
	loadAllTeamFilterTab();
	$('.filtertabs>li>.nav-link').click(function(e) {
		$($(this).attr('href') + '-tab').tab('show')
		e.preventDefault();
	});	
	$('.filter-menu.dropdown-menu').click(function(e) {
	    e.stopPropagation();
	});
	$('#reportTab>li>a').on('shown.bs.tab', function (e) {
		var target = $(e.target).html(); // activated tab
		console.log(target);
		$('.filter-menu.dropdown-menu').click(function(e) {
		    e.stopPropagation();
		});
		$('.filtertabs>li>.nav-link').click(function(e) {
			$($(this).attr('href') + '-tab').tab('show')
		});	
		switch (target) {
			case "Playbook Insights":
				loadplaybookInsight();
				break;
			case "Users":
				loadUser();
				break;
			case "Customer":
				loadCustomer();
				break;
			case "Timeline Analysis":
				loadTimelineAnalysis();
				break;
			case "ROI Calculator":
				loadROICalculator();
				break;
			case "Custom Report":
				loadCustomReport();
				break;
			case "Adherence":
				loadAdherence();
				break;
			default:
				loadplaybookInsight();
		}
	});

	$(".objections").click(function () {
		location.href = location.protocol + '//' + location.host + '/landing/customerobjection.jsp';
	});
	$($('.reportcol>.border-right-dashed-separation').last()).addClass('border-0');
	$('.salesken.navbar-nav>li').removeClass('active');
	$($('.salesken.navbar-nav>li')[3]).addClass('active');
	$('#reportTab').on('shown.bs.tab', function (e) {
		var target = $(e.target).html(); // activated tab
		$('#breadcrumb').html(target);
	});

	$('.page').Pagination({ // id to initial draw and use pagination
		size: 87, // size of list input
		pageShow: 5, // 5 page-item per page
		page: 1, // current page (default)
		limit: 10, // current limit show perpage (default)
	}, function (obj) { // callback function, you can use it to re-draw table or something
		console.log(obj)
	});
	$('#user_datepicker').datepicker({
		autoclose: true
	});	
	$('#user_datepicker').change(function(){
		$('#user_datepicker').attr('data-id',this.value)
		$('#user_datepicker').attr('data-name',this.value)
		loadUser();
	});
	
	$('#timeline_datepicker').datepicker({
		autoclose: true
	});
	$('#timeline_datepicker').change(function(){
		$('#timeline_datepicker').attr('data-id',this.value)
		$('#timeline_datepicker').attr('data-name',this.value)
		loadTimelineAnalysis();
	});
	
	$('#adherence_datepicker').datepicker({
		autoclose: true
	});
	$('#adherence_datepicker').change(function(){
		$('#adherence_datepicker').attr('data-id',this.value)
		$('#adherence_datepicker').attr('data-name',this.value)
		loadAdherence();
	});


	/*$('.dropdown-menu').click(function (e) {
		e.stopPropagation();
	});*/


	$('.close-signal').click(function () {
		$('.signal_details').dropdown('hide');
	})

	$('.comparative_analysis').hide();


	$('#insight_team_submit').click(function (e) {
		var agent_array = [];
		var team_array = [];

		$('.insightagentcheckbox').each(function () {
			if ($(this).prop('checked') === true) {
				agent_array.push($(this).data('user'));
			}
		});
		$('.insightteamcheckbox').each(function () {
			if ($(this).prop('checked') === true) {
				team_array.push($(this).data('team'));
			}
		});

		if (agent_array.length == 0 && team_array.length == 0) {
			alert("Please select atleast one");
		} else {
			$('#insight_dropdown').dropdown('hide');
		}
		$('#insight_dropdown').attr('data-agents',JSON.stringify(agent_array));
		$('#insight_dropdown').attr('data-teams',JSON.stringify(team_array));
		
		$('.insightagentcheckbox').each(function(){
			if($(this).prop('checked')===true){
				$(this).prop("checked", false);
			}
		});
		$('.insightteamcheckbox').each(function(){
			if($(this).prop('checked')===true){
				$(this).prop("checked", false);
			}
		});
		loadplaybookInsight();
	});


	$('#overallAnalysis_team_submit').click(function (e) {
		var agent_array = [];
		var team_array = [];

		$('.timelineagentcheckbox').each(function () {
			if ($(this).prop('checked') === true) {
				agent_array.push($(this).data('user'));
			}
		});
		$('.timelineteamcheckbox').each(function () {
			if ($(this).prop('checked') === true) {
				team_array.push($(this).data('team'));
			}
		});

		if (agent_array.length == 0 && team_array.length == 0) {
			alert("Please select atleast one");
		} else {
			$('#overallAnalysis_dropdown').dropdown('hide');
		}
		
		
		$('#timeline_dropdown').attr('data-agents',JSON.stringify(agent_array));
		$('#timeline_dropdown').attr('data-teams',JSON.stringify(team_array));
		
		$('.timelineagentcheckbox').each(function(){
			if($(this).prop('checked')===true){
				$(this).prop("checked", false);
			}
		});
		$('.timelineteamcheckbox').each(function(){
			if($(this).prop('checked')===true){
				$(this).prop("checked", false);
			}
		});
		
		$('#overallAnalysisTab').parent().removeClass( "show" )

		loadTimelineAnalysis();
	});


	$('#comparativeAnalysis_team_submit').click(function (e) {
		var agent_array = [];
		var team_array = [];

		$('.comparativeAnalysisagentcheckbox').each(function () {
			if ($(this).prop('checked') === true) {
				agent_array.push($(this).data('id'));
			}
		});
		$('.comparativeAnalysisteamcheckbox').each(function () {
			if ($(this).prop('checked') === true) {
				team_array.push($(this).data('id'));
			}
		});

		if (agent_array.length == 0 && team_array.length == 0) {
			alert("Please select atleast one");
		} else {
			$('#comparativeAnalysis_dropdown').dropdown('hide');
		}
		console.log(agent_array)
		console.log(team_array)
	});
	
	$('#adherence_team_submit').click(function (e) {
		var agent_array = [];
		var team_array = [];

		$('.adherenceagentcheckbox').each(function () {
			if ($(this).prop('checked') === true) {
				agent_array.push($(this).data('user'));
			}
		});
		$('.adherenceteamcheckbox').each(function () {
			if ($(this).prop('checked') === true) {
				team_array.push($(this).data('team'));
			}
		});

		if (agent_array.length == 0 && team_array.length == 0) {
			alert("Please select atleast one");
		} else {
			$('#adherence_dropdown').dropdown('hide');
		}
		$('#adherence_dropdown').attr('data-agents',JSON.stringify(agent_array));
		$('#adherence_dropdown').attr('data-teams',JSON.stringify(team_array));
		
		$('.adherenceagentcheckbox').each(function(){
			if($(this).prop('checked')===true){
				$(this).prop("checked", false);
			}
		});
		$('.adherenceteamcheckbox').each(function(){
			if($(this).prop('checked')===true){
				$(this).prop("checked", false);
			}
		});
		
		loadAdherence();
	});
	

	$('#insight_reset').click(function () {
		$('#insight_filter').addClass("d-none");
	});
	$('#user_reset').click(function () {
		$('#user_filter').hide();
	});
	$('#overall_analysis_reset').click(function () {
		$('#overall_analysis_selections').addClass("d-none");
	});
	$('#comparative_analysis_reset').click(function () {
		$('#comparative_analysis_selections').addClass("d-none");
	});


	$('.overall_title').click(function () {
		$('.comparative_analysis').show();
		$('.overall_analysis').hide();
	});

	$('.reset').click(function () {
		$('.overall_analysis').show();
		$('.comparative_analysis').hide();
	});

	$('#playbook-insight-filter').on('show.bs.dropdown', function () {
		var new_height = $('#playbook-insight-content').outerHeight() + $('#insight_filter').outerHeight();
		console.log(new_height);
		$('#insight_dropdown + .dropdown-menu').height(new_height - 13);
		$('.agent-team-list').height(new_height - 200);
	});

	$('#overall-analysis-filter').on('show.bs.dropdown', function () {
		var new_height = $('#overall_analysis_selections').outerHeight() + $('#overall-analysis-scale').outerHeight() + $('#overall-analysis-data').outerHeight();
		console.log(new_height);
		$('#overallAnalysis_dropdown + .dropdown-menu').height(new_height - 4);
		$('.agent-team-list').height(new_height - 200);
	});

	$('#comparative-analysis-filter').on('show.bs.dropdown', function () {
		var new_height = $('.comparative_analysis').outerHeight() - $('#select-row').outerHeight();
		console.log(new_height);
		$('#comparativeAnalysis_dropdown + .dropdown-menu').height(new_height - 4);
		$('.agent-team-list').height(new_height - 200);
	});
});

function report_user_dealvalue(elem) {
	$('#user_dealvalue').attr('data-name',$(elem).text());
	$('#user_dealvalue').attr('data-id',$(elem).data('id'));
	loadUser();
};


function report_timeline_persona(elem) {
	$('#timeline_persona').attr('data-name',$(elem).text());
	$('#timeline_persona').attr('data-id',$(elem).data('id'));
	loadTimelineAnalysis();

};


function report_timeline_success(elem) {
	$('#timeline_success').attr('data-name',$(elem).text());
	$('#timeline_success').attr('data-id',$(elem).data('id'));
	loadTimelineAnalysis();
};

function adherence_success(elem){
	$('#adherence_success').attr('data-name',$(elem).text());
	$('#adherence_success').attr('data-id',$(elem).data('id'));
	loadAdherence();
}

function showCalendar() {
	$('#user_datepicker').datepicker('show')
}

function showTimelineCalendar() {
	$('#timeline_datepicker').datepicker('show')
}

function showAdherenceCalendar() {
	$('#adherence_datepicker').datepicker('show')
}

function showTimelineComparativeCalendar() {
	$('#timeline_comparative_datepicker').datepicker('show')
}

/*	start of filter drop down*/
function report_activity_dropdown(elem) {
	var filter = $(elem).text();
	var filter_id = $(elem).data('id');
	$('#task_activity').attr('data-id', filter_id);
	$('#task_activity').attr('data-name', filter);
	loadplaybookInsight();
};
/*	start of filter drop down*/

function getfilterhtml(filter, id, filter_type) {
	return '<button class="theme_solid_border bg-white brown-grey rounded f-12 position-relative search-filter ml-10" data-id="' + id + '">' + filter +
		'<i class="fas fa-times-circle brown-grey bg-white rounded-circle f-14 cross-btn" data-type="' + filter_type + '" onclick="removeReportFilter(this)"></i> </button>'
}
function addFilterSelections(tab,filter,name,id,obj){
	
	if(name!="" && name!= undefined && id!="" && id != undefined){
		obj.name=name;
		obj.id=id;
		$('#'+tab+'_filter').find('.filters-inside-selection').append(getfilterhtml(name,id,tab+'_'+filter));
		$('#'+tab+'_filter').show();
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
	populateAgentListDropDown(userList,"insight")
	populateAgentListDropDown(userList,"timeline")
	populateAgentListDropDown(userList,"adherence")
	
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
	populateTeamListDropDown(teamList,"insight")
	populateTeamListDropDown(teamList,"timeline")
	populateTeamListDropDown(teamList,"adherence")
	
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



//<---------------------------RESET FILTERS LOGIC
//common function to reset each tab's filter
function resetFilters(button) {
	var tab = $(button).data('type');
	switch (tab) {
		case "insight":
			$('#insight_filter').hide();
			$('#task').find('.select_focus').each(function(){
				removeAllDataAttributes($(this).find('.istar-dropdown-arrow.dropdown-toggle'));
			});
			removeAllDataAttributes($("#insight_dropdown"));
			loadplaybookInsight();
			break;
		case "user":
			$('#user_filter').hide();
			$('#users').find('.select_focus').each(function(){
				removeAllDataAttributes($(this).find('.istar-dropdown-arrow.dropdown-toggle'));
			});
			removeAllDataAttributes($("#user_datepicker"));
			loadUser();
			break;
		case "timeline":
			$('#timeline_filter').hide();
			$('.overall_analysis').find('.select_focus').each(function(){
				removeAllDataAttributes($(this).find('.istar-dropdown-arrow.dropdown-toggle'));
			});
			removeAllDataAttributes($("#timeline_datepicker"));
			removeAllDataAttributes($("#timeline_dropdown"));
			loadTimelineAnalysis();
			break;
		case "adherence":
			$('#adherence_filter').hide();
			$('#adherence_tab').find('.select_focus').each(function(){
				removeAllDataAttributes($(this).find('.istar-dropdown-arrow.dropdown-toggle'));
			});
			removeAllDataAttributes($("#adherence_datepicker"));
			removeAllDataAttributes($("#adherence_dropdown"));
			loadAdherence();
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

//<----------------REMOVE FILTER ONE BY ONE
function removeReportFilter(button) {
	var type = $(button).data('type');
	var tabType=type.split('_')[0];
	var id=$(button).parent().data('id')
	var filter;
	switch (type) {
		case "insight_activity":
			filter = $('#task_activity')
			break;
		case tabType+"_time":
			filter = $('#'+tabType+'_datepicker')
			break;
		case tabType+"_dealvalue":
			filter = $('#'+tabType+'_dealvalue')
			break;
		case tabType+"_persona":
			filter = $('#'+tabType+'_persona')
			break;
		case tabType+"_success":
			filter = $('#'+tabType+'_success')
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
	}
	filter.attr('data-id', "");
	filter.attr('data-name', "");
	switch(tabType){
	case "insight":
		loadplaybookInsight();
		break;
	case "user":
		loadUser();
		break;
	case "customer":
		loadCustomer();
		break;
	case "adherence":
		loadAdherence();
		break;
	}
}
//-------------------------------------------->