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

/* start of  js function for upcoming Tab*/	
function loadUpcomingTab(){
	//empty completed tab & ongoingTab
	$('#ongoing_tab').empty();
	$('#ongoing_tab_content').empty();
	$('#completed_tab').empty();
	$('#completed_tab_content').empty();
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

							

								$('#ongoing_reset').click(function(){
									 $('#ongoing_filter_selections').addClass("d-none");
								 });
								$('#upcoming_reset').click(function(){
									 $('#upcoming_filter_selections').addClass("d-none");
								 });
								$('#completed_reset').click(function(){
									 $('#completed_filter_selections').addClass("d-none");
								 });
										
								
								
								
								
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
								
								
								  $('#qualified_team_submit').click(function(e) {
										var agent_array=[];
										var team_array=[];
										
										$('.qualifiedagentcheckbox').each(function(){
											if($(this).prop('checked')===true){
												agent_array.push($(this).data('id'));
											}
										});
										$('.qualifiedteamcheckbox').each(function(){
											if($(this).prop('checked')===true){
												team_array.push($(this).data('id'));
											}
										});
										
										if(agent_array.length==0 && team_array.length==0){
											alert("Please select atleast one");
										}else{
											$('#qualified_dropdown').dropdown('hide');
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
		
			$('#upcomimg_reschedule')
					.click(
							function(e) {

								e.preventDefault();
								$('#rescheduleCenter').modal('show').find(
										'.modal-body').load(
										$(this).attr('href'));
							});	

		/*	start of filter drop down*/ 
	function ongoing_deal_dropdown(elem){
		$('#ongoing_deal_drop').html($(elem).text());
	};
	function ongoing_stage_dropdown(elem){
		$('#ongoing_stage_drop').html($(elem).text());
	};
	
	function ongoing_activity_dropdown(elem){
		$('#ongoing_activity_drop').html($(elem).text());
	};
	function ongoing_status_dropdown(elem){
		$('#ongoing_status_drop').html($(elem).text());
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
	
