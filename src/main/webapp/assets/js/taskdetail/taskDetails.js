var contextPath=$('body').data('baseurl');
$(document).ready(function() {
	
	$('.salesken.navbar-nav>li').removeClass('active');
	$($('.salesken.navbar-nav>li')[1]).addClass('active');		
	
	loadOngoingTab();
	
	$('#mainTask-tabs>li>a').on('shown.bs.tab', function(e) {

		var target = $(e.target).html(); // activated tab
		console.log(target);
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
	
	$('.filtertabs>li>.nav-link').click(
		function(e) {
			$($(this).attr('href') + '-tab').tab('show')
		});
	$('#upcoming_datepicker').datepicker({
		autoclose : true
	})
	$('#completed_datepicker').datepicker({
		autoclose : true
	})

			
								
								
								
								
	$('#ongoing_team_submit').click(function(e) {
		var agent_array=[];
		var team_array=[];
		
		$('.ongoingagentcheckbox').each(function(){
			if($(this).prop('checked')===true){
				agent_array.push($(this).data('id'));
			}
		});
		$('.ongoingteamcheckbox').each(function(){
			if($(this).prop('checked')===true){
				team_array.push($(this).data('id'));
			}
		});
		if(agent_array.length==0 && team_array.length==0){
			alert("Please select atleast one");
		}else{
			$('#ongoing_dropdown').dropdown('hide');
		}
		console.log(agent_array)
		console.log(team_array)
	});
	
	
	$('#upcoming_team_submit').click(function(e) {
		var agent_array=[];
		var team_array=[];
		
		$('.upcomingagentcheckbox').each(function(){
			if($(this).prop('checked')===true){
				agent_array.push($(this).data('id'));
			}
		});
		$('.upcomingteamcheckbox').each(function(){
			if($(this).prop('checked')===true){
				team_array.push($(this).data('id'));
			}
		});
		
		if(agent_array.length==0 && team_array.length==0){
			alert("Please select atleast one");
		}else{
			$('#upcoming_dropdown').dropdown('hide');
		}
		console.log(agent_array)
		console.log(team_array)

	});
	
	
	
	  $('#completed_team_submit').click(function(e) {
			var agent_array=[];
			var team_array=[];
			
			$('.completedagentcheckbox').each(function(){
				if($(this).prop('checked')===true){
					agent_array.push($(this).data('id'));
				}
			});
			$('.completedteamcheckbox').each(function(){
				if($(this).prop('checked')===true){
					team_array.push($(this).data('id'));
				}
			});
			
			if(agent_array.length==0 && team_array.length==0){
				alert("Please select atleast one");
			}else{
				$('#completed_dropdown').dropdown('hide');
			}
			console.log(agent_array)
			console.log(team_array)
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

function resetFilters(button){
	var tab = $(button).data('type');
	switch(tab){
	case "upcoming":
		$('#upcoming_filter_selections').hide();
		break;
	case "completed":
		$('#completed_filter_selections').hide();
		break;
	default:
		 $('#ongoing_filter_selections').hide();
		break;
	}
}

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
		$('#upcoming_stage_drop').html($(elem).text());
	};
	function upcoming_activity_dropdown(elem){
		$('#upcoming_activity_drop').html($(elem).text());
	};
	function upcoming_status_dropdown(elem){
		$('#upcoming_status_drop').html($(elem).text());
	};
	
	
	function completed_stage_dropdown(elem){
		$('#completed_stage_drop').html($(elem).text());
	};
	
	function completed_activity_dropdown(elem){
		$('#completed_activity_drop').html($(elem).text());
	};
	
	function completed_status_dropown(elem){
		$('#completed_status_drop').html($(elem).text());
	};
	
	function removeOngoingFilter(button){
		var type = $(button).data('type');
		var filter;
		switch(type){
			case "ongoing_deal_value":
				filter = $('#ongoing_deal')
				break;
			case "ongoing_stage":
				filter = $('#ongoing_stage')
				break;
			case "ongoing_activity":
				filter = $('#ongoing_activity')
				break;
			case "ongoing_status":
				filter = $('#ongoing_status')
				break;
		}
		filter.attr('data-id',"");
		filter.attr('data-name',"");
		loadOngoingTab();
	}
	
	/*	end of filter drop down*/ 
	
	/*	start of agent filter drop down for each main tab*/ 
	$.get(contextPath+"taskDetails/partials/upcoming_agent_filter_drop_down.jsp", function( data ) {
		console.log(data)
		 /* $( "#upcomingTab-tabContent" ).html( data );*/
		$('#upcomingTab-tabContent').html(data)
	});
	
	$.get(contextPath+"taskDetails/partials/ongoing_agent_filter_drop_down.jsp", function( data ) {
		  $( "#ongoingTab-tabContent" ).html( data );
	});
	
	$.get(contextPath+"taskDetails/partials/complete_agent_filter_drop_down.jsp", function( data ) {
		  $( "#completedTabContent" ).html( data );
	});
	/*	end of agent filter drop down for each main tab*/ 
	
	$.get(contextPath+"taskDetails/partials/upcoming_filters.jsp", function( data ) {
		  $( "#upcoming-results-found" ).html( data );
	});
