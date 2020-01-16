/* start of  js function for upcoming Tab*/	
function loadUpcomingTab(){
	//empty completed tab & ongoingTab
	$('#ongoing_tab').empty();
	$('#ongoing_tab_content').empty();
	$('#completed_tab').empty();
	$('#completed_tab_content').empty();
	$('#upcoming_filter_selections').find('.filters-inside-selection').empty();
	$('#upcoming_filter_selections').hide();
	
	var time_value = $('#upcoming_datepicker').attr('data-name');
	var time_value_id = $('#upcoming_datepicker').attr('data-id');
	if(time_value!="" && time_value!= undefined && time_value_id!="" && time_value_id != undefined){
		$('#upcoming_filter_selections').find('.filters-inside-selection').append(getfilterhtml(time_value,time_value_id,"upcoming_time"));
		$('#upcoming_filter_selections').show();
	}
	
	var stage = $('#upcoming_stage').attr('data-name');
	var stage_id = $('#upcoming_stage').attr('data-id');
	if(stage!="" && stage!= undefined && stage_id!="" && stage_id != undefined){
		$('#upcoming_filter_selections').find('.filters-inside-selection').append(getfilterhtml(stage,stage_id,"upcoming_stage"));
		$('#upcoming_filter_selections').show();
	}
	
	var activity = $('#upcoming_activity').attr('data-name');
	var activity_id = $('#upcoming_activity').attr('data-id');
	if(activity!="" && activity!= undefined && activity_id!="" && activity_id != undefined){
		$('#upcoming_filter_selections').find('.filters-inside-selection').append(getfilterhtml(activity,activity_id,"upcoming_activity"));
		$('#upcoming_filter_selections').show();
	}
	
	var status = $('#upcoming_status').attr('data-name');
	var status_id = $('#upcoming_status').attr('data-id');
	if(status!="" && status!= undefined && status_id!="" && status_id != undefined){
		$('#upcoming_filter_selections').find('.filters-inside-selection').append(getfilterhtml(status,status_id,"upcoming_status"));
		$('#upcoming_filter_selections').show();
	}
	
	if( $('#upcoming_dropdown').attr('data-agents')!=null){
		var agents = JSON.parse($('#upcoming_dropdown').attr('data-agents'));
		if(agents!=null){
			for(var i=0;i<agents.length;i++){
				var activity_id=agents[i].id;
				var activity=agents[i].name;
				if(activity!="" && activity!= undefined && activity_id!="" && activity_id != undefined){
					$('#upcoming_filter_selections').find('.filters-inside-selection').append(getfilterhtml(activity,activity_id,"upcoming_agents"));
					$('#upcoming_filter_selections').show();
				}
			}
		}
	}
	
	if( $('#upcoming_dropdown').attr('data-teams')!=null){
		var teams = JSON.parse($('#upcoming_dropdown').attr('data-teams'));
		if(teams!=null){
			for(var i=0;i<teams.length;i++){
				var activity_id=teams[i].id;
				var activity=teams[i].name;
				if(activity!="" && activity!= undefined && activity_id!="" && activity_id != undefined){
					$('#upcoming_filter_selections').find('.filters-inside-selection').append(getfilterhtml(activity,activity_id,"upcoming_teams"));
					$('#upcoming_filter_selections').show();
				}
			}
		}
	}
	
	var upcomingTask_array=[];
	for(var i =0;i<4;i++){
		var upcomingTask={};
		upcomingTask.id= i;
		upcomingTask.name="name"+i;
		upcomingTask.image = contextPath+"assets/image/37.jpg";
		upcomingTask_array.push(upcomingTask);
	}
	var upcoming_promises = [];
	for(var upcomingTask of upcomingTask_array){
		upcoming_promises.push(fetchUpcomingTab(upcomingTask));
	}
	$( "#upcoming_tab" ).empty();
	var fetchAllCall = Promise.all(upcoming_promises.map(p => p.catch(error => { console.log(error); return null; })));
	fetchAllCall.then((results) =>{
		for(var upcomingTabHtml of results){
			  $("#upcoming_tab").append(upcomingTabHtml);

		}
	var first_upcoming_id = $($( "#upcoming_tab" ).children()[0]).data('id');
		$('#upcoming_'+first_upcoming_id+'-tabs').tab('show')

		populateUpcomingTabContent(first_upcoming_id);
		/*upcoming tab change event*/
		 $('#upcoming_tab').on('shown.bs.tab', function (e) {
			 
			 var id =  $(e.target).data('id');
			 populateUpcomingTabContent(id);

			});
	});		
}
function populateUpcomingTabContent(first_upcoming_id){
	var upcomingTask={};
	upcomingTask.id= first_upcoming_id;
	var vv = fetchUpcomingTabContent(upcomingTask);
	vv.done(function(data){
		$('#upcoming_tab_content').empty();
		$('#upcoming_tab_content').append(data);
});
}
function fetchUpcomingTab(upcomingTask){
	return $.post(contextPath+"taskDetails/upcoming/tab/upcoming_tab.jsp",JSON.stringify(upcomingTask));
}	
function fetchUpcomingTabContent(upcomingTask){
	return $.post(contextPath+"taskDetails/upcoming/tab_content/upcoming_tab_content.jsp",JSON.stringify(upcomingTask));
}
/* end of  js function for upcoming Tab*/	

/*	start of rescheduled modal*/
function rescheduledModal(){
	  $('#rescheduleCenter').modal('show');

}

$('#reschedule_date').datepicker({autoclose:true})

var options = { now: "12:35", //hh:mm 24 hour format only, defaults to current time 
		twentyFour: false, //Display 24 hour format, defaults to false 
		upArrow: 'wickedpicker__controls__control-up', //The up arrow class selector to use, for custom CSS 
		downArrow: 'wickedpicker__controls__control-down', //The down arrow class selector to use, for custom CSS 
		close: 'wickedpicker__close', //The close class selector to use, for custom CSS 
		hoverState: 'hover-state', //The hover state class to use, for custom CSS 
		title: 'Time', //The Wickedpicker's title, 
		showSeconds: false, //Whether or not to show seconds, 
		secondsInterval: 1, //Change interval for seconds, defaults to 1 , 
		minutesInterval: 1, //Change interval for minutes, defaults to 1 
		beforeShow: null, //A function to be called before the Wickedpicker is shown 
		show: null, //A function to be called when the Wickedpicker is shown 
		clearable: false, //Make the picker's input clearable (has clickable "x") };
}
$('#reschedule_time').wickedpicker(options);

/*	end of rescheduled modal*/	

$('#upcomimg_reschedule')
.click(
		function(e) {

			e.preventDefault();
			$('#rescheduleCenter').modal('show').find(
					'.modal-body').load(
					$(this).attr('href'));
		});	