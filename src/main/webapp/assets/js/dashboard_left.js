var contextPath = $('body').data('baseurl');


// JAVA SCRIPT FOR LEFT ELEMENTS IN DASHBOARD PAGE

$(document).ready(function() {
	
	
	/* hiding page loader afer one seconds */

	jQuery.validator.setDefaults({
		errorPlacement : function(error, element) {
			error.addClass('invalid-feedback');
		},
		highlight : function(element, errorClass, validClass) {
			$(element).addClass('is-invalid');
		},
		unhighlight : function(element, errorClass, validClass) {
			$(element).removeClass('is-invalid').addClass('is-valid');
		}
	});

	// $('.carousel').carousel('pause');
  
	/* start of scheduled task form validation */
	
//<-------------CALENDAR OR DATEPICKER SETTINGS
	/*active_dates variable represent date which contains event so that we can add a 
	  activeClass as custom class on the calendar and styles date with events*/
	var active_dates = ["21/9/2019", "25/9/2019"];
	
	/*calendar initialization start */
	$('#datepicker').datepicker({
		todayHighlight: true,
		updateViewDate: true,
		weekStart: 1,
		beforeShowDay: function(date) {
			var newHeight = $("#datepicker").width();
			$(".table-condensed").height(newHeight);// setting height equal to width of the calendar.
			$("#datepicker").width($(".table-condensed").height())		
			var d = date;
			var curr_date = d.getDate();
			var curr_month = d.getMonth() + 1; //Months are zero based
			var curr_year = d.getFullYear();
			var formattedDate = curr_date + "/" + curr_month + "/" + curr_year
			if ($.inArray(formattedDate, active_dates) != -1) {
				return {
					classes: 'activeClass'
				};
			}
			return;
		}
	});
	/*calendar initialization end */

	/*dashboard page contains a div with id incoming_date which is used for setting date on calendar. 
	 * on date change of calendar the new date will be added in url as url parameter named var and set in incoming_date div data attribute input_date.
	 * if no date is provide in url it will set current date in incoming_date div data attribute input_date.
	 * */
	$("#datepicker").datepicker("update", $('#incoming_date').data('input_date'));
	
	/*calendar date change event which will append a parameter named var in current url & reload the page */
	$('#datepicker').on('changeDate', function() {
		console.log($('#datepicker').datepicker('getFormattedDate'));
		NavigationService({name:'var',value:$('#datepicker').datepicker('getFormattedDate')})
		//window.location.href = window.location.pathname + "?var=" + $('#datepicker').datepicker('getFormattedDate');
	/*	 var redirectWindow = window.open( window.location.pathname + "?var=" + $('#datepicker').datepicker('getFormattedDate'), '_blank');
		    redirectWindow.location;*/
	});
//----------------------->
	
	
	
//<----------CREATE TASK FORM
	//Validation
		$("#createTaskFrom").validate({
			rules: {
				eventTitle: {
					required: true,
					minlength: 5,
				},
				addGuest: {
					required: true,
					minlength: 5,
				},
				
				eventdescription: {
					required: true,
					minlength: 5,
				},
				eventType: {
				      required: true,
				      min: 4, //validates minimum value the element has to have
				    }
			},
			messages: {
				eventTitle: {
					required: "Please provide a name title for the event",
					minlength: "Title should be more than 5 letters"
				},
				eventdescription: "Description should be more than 5 characters",
				eventType:{
					min: "Please select a type for the event",
				}
		    }
		});
		
//----------------------------------->

			
//<-------------SCHEDULE TASK FORM
		//Validation
		$("#scheduletaskform").validate({
			rules: {
				task_by: {
				      required: true,
				      minlength: 4, //validates minimum value the element has to have
				    },
				    leadname: {
					      required: true,
					      minlength: 4, //validates minimum value the element has to have
					    },
				    
				    task_type : {
						validators : {
							notEmpty : {
								message : 'Please select task type.'
							}
						}
					}
			}	,
			messages:{
				taskActor: {
					min: "Please select an associate for task",

				}
			}
		})
//--------------------->
	
modalFormSetup();
});
$('#ongoing_team_submit').click(function(e){
	console.log('another one')
})
	function testDashboardinf(){
		console.log('yo')
	}

function modalFormSetup(){
	 if(localStorage.getItem('notes')){
	$('#summernote').summernote({
	       placeholder: 'Hello bootstrap 4',
	       tabsize: 2,
	       height: 800,
	       callbacks: {
	           onChange: function(contents, $editable) {
	           	localStorage.setItem("notes", $('#summernote').summernote('code'))	            	           
	           }
	       }
	     });
	$('#summernote').summernote('code', localStorage.getItem('notes'));
		$('.no-notes').hide();
	
	}else{
		 $('no-notes').show();
	}
		$('.selectpicker').selectpicker({
			width : '100%',
			sanitize : false,
			showContent : false,
			sanitizeFn: function (domNodes) {
			    return DOMPurify.sanitize(domNodes)
			  }		
		});
	
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
	$('.timepicker').wickedpicker(options);
	$('#event_date').datepicker({autoclose:true})
	$('#schedule_task_time').wickedpicker(options);
	$('#schedule_task_date').datepicker({autoclose:true})
}





//<-------------SCHEDULE TASK MODAL---------------------
//Schedule Form Reset
function scheduled_task_reset(){
    $('#activity').html('select here');
    $('#task_by').html('select here');
    $('#Select_States').html('select here');
};
//Schedule Event
function scheduleEvent(){
	$('.sales_ken_popover').popover('hide')
	$('#createEventModalCenter').modal('show')	
}
//Schedule Task
function scheduleTask(){
	$('.sales_ken_popover').popover('hide')
	$('#scheduleTaskModalCenter').modal('show')
}
//Multi-select of lead name in scheduled task modal
$(function () {
    $('select[multiple].active.3col').multiselect({
        columns: 1,
        placeholder: 'Select States',
        search: true,
        showCheckbox : false,
        searchOptions: {
            'default': 'Search States'
        },
        selectAll: true
    });
});
//On Select "Task By" dropdown in Scheduled Task
function scheduled_task_changecontent(elem){
	$('#task_by').html($(elem).html());
	$('#scheduled_task_by').val($(elem).html());
}
//On Select "Task Type" dropdown in Scheduled Task
function scheduled_task_type_changecontent(elem){
	$('#activity').html($(elem).text());
	$('#scheduled_task_type').val($(elem).text());
}
//Schedule task form submit click/ SCHEDULE on click
function scheduled_task_submit(){
	/* start of getting the data after form submission*/
	var jsonObject = {};
	var serializedForm=$("#scheduletaskform").serializeArray();
	$.each(serializedForm, function (item,val) {
		jsonObject[val.name]=val.value;
	});
	var data = JSON.stringify(jsonObject);
	console.log(data);
	/* end of getting the data after form submission*/
	
	/*	appending to do item list*/
	$(".to_do_list").hide();
	$(".no-event").hide();
	$.get(contextPath+"/dashboard/partials/to_do_task_list.jsp", function( data ) {
		 $( ".to_do_items" ).append( data );
		 $(".to_do_list").show();
		});
	/*	end of appending to do item list*/
	
	scheduled_task_reset();
	$('#scheduleTaskModalCenter').modal('hide');
}
//-------------------------------------------------->





//<------------CREATE EVENT MODAL------------------
//On reset button click in create event modal
function create_event_reset(){
    $("#createTaskFrom").trigger("reset");
    $('#eventType').html('type here');
};
//On Select "Task Type" dropdown in create event modal
function create_event_select_task_type(elem){
	$('#eventType').text($(elem).text());
	$('#event_type').val($(elem).text());
}
//Create Event Form submit click / CREATE on click
function create_event_submit(){
	/* start of getting the data after form submission*/
	var jsonObject = {};
	var serializedForm = $("#createTaskFrom").serializeArray();
	$.each(serializedForm, function (item,val) {
		jsonObject[val.name]=val.value;
	});
	var data = JSON.stringify(jsonObject);
	console.log(data)
	/* end of getting the data after form submission*/

	if($('#createTaskFrom').valid()){
		$("#createEventModalCenter").modal('hide');
		if($("#createEventModalCenter").modal('hide')){
			create_event_reset();
			$('#eventTitle').removeClass("is-valid");
			$('#addGuest').removeClass("is-valid");
			$('#eventdescription').removeClass("is-valid");
		}
		$(".to_do_list").hide();
		$(".no-event").hide();
		$.get(contextPath+"/dashboard/partials/to_do_task_list.jsp", function( data ) {
			 $( ".to_do_items" ).append( data );
			 $(".to_do_list").show();
			});
	}
	
}
//------------------------------------>


//<----------------EDITING TO DO LIST-----------
function editEvent(){
	$('.sales_ken_popover').popover('hide')
	$('#createEventModalCenter').modal('show')	
}
//------------------------------>



//<----------------OPEN NOTES TAB---------------
function opennotes(){
	$('.no-notes').hide();
	$('#summernote').summernote({
        placeholder: 'Hello bootstrap 4',
        tabsize: 2,
        height: 800,
        callbacks: {
            onChange: function(contents, $editable) {
            	localStorage.setItem("notes", $('#summernote').summernote('code'))	            	
            }
        }
      });
}
//---------------------->





