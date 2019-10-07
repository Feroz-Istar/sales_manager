$(document).ready(function() {

	modalFormSetup();
	
		/*attaching resolve click to load modal body dynamically for each task resolve card*/
		loadResolveModal();

		/*ongoingtaskcard is class present in each card of  view more to display list of ongoing task card*/
		loadOngoingTaskDetail();
		
		/* start of rating bar js code */
		
		$(".rateYo").each(function(index) {
			console.log(typeof $(this).attr('data-rating'))
			$(this).rateYo({
				rating: $(this).attr('data-rating'),
				spacing: "0px",
				    starWidth: "18px",
				    readOnly: true,
				    ratedFill: "#f79c0d",
				    normalFill: "#dddddd",
				'starSvg': '<svg xmlns="http://www.w3.org/2000/svg"  viewBox="0 0 24 24">     <defs>         <style>             .cls-1{fill:none}.cls-2{clip-path:url(#clip-path)}      </style>         <clipPath id="clip-path">             <path d="M0 0h24v24H0z" class="cls-1"/>         </clipPath>     </defs>     <g id="Component" class="cls-2">         <path id="Rectangle_936" d="M0 0h24v24H0z" class="cls-1" data-name="Rectangle 936"/>         <path id="Path_59" d="M965.57 1814.81a.846.846 0 0 1-.461-.136l-4.78-3.1-4.78 3.1a.848.848 0 0 1-1.277-.942l1.5-5.3-4.467-3.776a.848.848 0 0 1 .487-1.494l5.359-.385 2.412-5.276a.848.848 0 0 1 1.543 0l2.412 5.276 5.359.385a.848.848 0 0 1 .487 1.494l-4.468 3.776 1.5 5.3a.848.848 0 0 1-.816 1.078zm-5.241-5.092a.847.847 0 0 1 .461.136l3.353 2.172-1.034-3.664a.848.848 0 0 1 .269-.878l3.294-2.785-3.783-.272a.848.848 0 0 1-.711-.493l-1.849-4.046-1.849 4.046a.848.848 0 0 1-.711.493l-3.783.272 3.294 2.785a.848.848 0 0 1 .269.878l-1.034 3.664 3.353-2.172a.847.847 0 0 1 .461-.136z" class="cls-3" data-name="Path 59" transform="translate(-948 -1794)"/>     </g> </svg> '
			});
		});
		/* end of rating bar js code */

		$(".carousel").carousel('pause');
		
		
		/*here we are setting first column of dashboard height equal to second column of dashboard*/
		var newHeight = $(".center_container").height();
		console.log(newHeight)
		$(".left_container").height(newHeight);
		/*End of setting first column of dashboard height equal to second column of dashboard*/

		
		$('.carousel').carousel('pause');
		
		
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
			window.location.href = window.location.pathname + "?var=" + $('#datepicker').datepicker('getFormattedDate');
		/*	 var redirectWindow = window.open( window.location.pathname + "?var=" + $('#datepicker').datepicker('getFormattedDate'), '_blank');
			    redirectWindow.location;*/
		});
		
		
		
		/* click on view more to display list of ongoing task card */
		$('.view_more_ongoing_task').click(function (){
			var new_card='<div class="card mb-3 shadow cursor-pointer ongoingtaskcard" style="min-height: 263px;"> <div class="card-body"> <div class="d-flex"> <div class="mr-auto bd-highlight theme_color f-20 font-weight-bold">$ 250</div> <div class=" bd-highlight"> <span class="badge badge-danger istar_badge" >Angry</span> </div> </div> <h5 class="card-title f-18">Accenture Consulting Inc.</h5> <div class="f-16 brownish-grey">Robert Wolken</div> <div class="f-12 brown-grey mb-2">Manager</div> <div class="dotted-1 mb-2"></div> <div class="d-flex align-items-center mb-2"> <div class="mr-auto "> <div class="d-flex flex-column"> <div class="brown-grey f-12">Call Task by</div> <div class="brownish-grey f-16">Marry Vasquez</div> </div> </div> <div class=" bd-highlight"> <div class="img-wrapper position-relative"> <img class="hw-66 rounded-circle img-responsive" src="/assets/image/layer.png" /> <div class="img-overlay" style="position: absolute; left: -19px; top: 28%;"> <button class="hw-30 rounded-circle tea border-0" style="z-index: 1; border: 2px solid white !important;"> <i class="fas fa-phone-alt text-white f-12"></i> </button> </div> </div> </div> </div> <div class="d-flex"> <button type="button" class="btn join_btn istar-btn-hover f-12 mr-2">JOIN NOW</button> <button type="button" class="btn listen_btn f-12">LISTEN</button> </div> </div></div>';
			$('.ongoing_task_content').html(new_card);
			$('.ongoing_task_content').append(new_card);
			$('.ongoing_task_content').append(new_card);
			$('.ongoing_task_content').append(new_card);

			$('.third_main_container').hide();
			$('.ongoing_task_container').show();
			loadOngoingTaskDetail();

		});
		
		
		/* click to hide view more list of ongoing task card. show dashboard view of one ongoing card, resolve card  */
		$('.close.task').click(function (){
			
			$('.third_main_container').show();
			$('.ongoing_task_container').hide();
		});
		
		
		
		
		
		/* click on view more to display list of resolve task card */
		$('.view_more_resolve_task').click(function (){
			var new_card='<div class="card mb-3 shadow resolvetaskcard" style="min-height: 292px;"> <div class="card-body"> <h6 class="card-subtitle mb-2 text-muted f-12 pt-3">June 12, 2019</h6> <p class="card-text greyish-brown f-14">Product Price in too expensive, and agents are not supportive and they are not providing information !</p> <div class="f-18 greyish-brown mb-2">Martin Franklin</div> <div class="f-16 brownish-grey mb-4">Infogen Consulting Pvt. Ltd</div> <div> <button class="btn resolvecardmodal join_btn istar-btn-hover f-12 mr-2" href="/modals/resolvetask.jsp">RESOLVE</button> </div> </div> </div>';
			$('.task_resolve_content').html(new_card);
			$('.task_resolve_content').append(new_card);
			$('.task_resolve_content').append(new_card);
			$('.task_resolve_content').append(new_card);
			$('.third_main_container').hide();
			$('.task_resolve_container').show();
			/*reattaching resolve click to load modal body dynamically for each task resolve card*/
			loadResolveModal();

		});
		
		/* click to hide view more list of resolve task card. show dashboard view of one ongoing card, resolve card  */
		$('.close.resolve_task').click(function (){
			$('.third_main_container').show();
			$('.task_resolve_container').hide();
		});
		
		/*resolvetaskcard is class present in each card of  view more to display list of resolve task card*/
		$('.resolvetaskcard').click(function (){
			
			
		});
		/*setting pie chart default color which is visible in team card of dashboard*/
		Highcharts.setOptions({
			colors: ['#57b280', '#6297f6', '#f5a82e', '#24CBE5', '#64E572', '#FF9655', '#FFF263', '#6AF9C4']
		});
		
		/*rending of Pie chart shown in team card
		 * In title shown below we need to set the text shown in middle of pie chart 
		 * */
		new Highcharts.Chart({
			chart: {
				renderTo: 'container',
				type: 'pie'
			},
			title: {
				useHTML: true,
				text: '<div class="text-center f-14">  <strong class="f-16"> 75%</strong> <div class="brownish-grey">Utilisation</div></div>',
				verticalAlign: 'middle',
				floating: true,
				style: {
					color: '#666666'
				}
			},
			yAxis: {
				title: {
					text: 'Total percent market share',
					style: {
						display: 'none'
					}
				}
			},
			legend: {
				enable: false
			},
			exporting: {
				enabled: false
			},
			credits: {
				enabled: false
			},
			plotOptions: {
				pie: {
					allowPointSelect: false,
					shadow: false,
					borderWidth: 5
				},
				series: {
					states: {
						inactive: {
							opacity: 1
						}
					}
				}
			},
			tooltip: {
				enabled: false
			},
			series: [{
				name: 'Browsers',
				showInLegend: false,
				states: {
					hover: {
						enabled: false
					}
				}, // Here is where it goes
				data: [
					["Firefox", 6],
					["MSIE", 4],
					["Chrome", 7]
				],
				size: '100%',
				innerSize: '66%',
				showInLegend: false,
				dataLabels: {
					enabled: false
				}
			}]
		});
	});

function loadResolveModal(){
	$('.resolvecardmodal').unbind().click(function (e){
		  e.preventDefault();

		  $('#resolvecardmodal').modal('show').find('.modal-body').load($(this).attr('href'));
	});
}

function loadOngoingTaskDetail(){
	$('.ongoingtaskcard').unbind().click(function (){
		//window.location.href = location.href + 'landing/task_lead_detail.jsp'
		
		window.location.replace("task_lead_detail.jsp");

	});
}
function modalFormSetup(){
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

	 if(localStorage.getItem('notes'))
	 $('#summernote').summernote('code', localStorage.getItem('notes'));
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

