	$(document).ready(function() {
			
			
			
			$( ".rateYo" ).each(function( index ) {
				
				console.log($( this ).attr('data-rating'))
				console.log(typeof $( this ).attr('data-rating'))
				$( this ).rateYo({
				    rating: $( this ).attr('data-rating'),
				    spacing: "0px",
				        starWidth: "18px",
				        readOnly: true,
				        ratedFill: "#f79c0d",
				        normalFill: "#dddddd",

				    	'starSvg': '<svg xmlns="http://www.w3.org/2000/svg"  viewBox="0 0 24 24">     <defs>         <style>             .cls-1{fill:none}.cls-2{clip-path:url(#clip-path)}      </style>         <clipPath id="clip-path">             <path d="M0 0h24v24H0z" class="cls-1"/>         </clipPath>     </defs>     <g id="Component" class="cls-2">         <path id="Rectangle_936" d="M0 0h24v24H0z" class="cls-1" data-name="Rectangle 936"/>         <path id="Path_59" d="M965.57 1814.81a.846.846 0 0 1-.461-.136l-4.78-3.1-4.78 3.1a.848.848 0 0 1-1.277-.942l1.5-5.3-4.467-3.776a.848.848 0 0 1 .487-1.494l5.359-.385 2.412-5.276a.848.848 0 0 1 1.543 0l2.412 5.276 5.359.385a.848.848 0 0 1 .487 1.494l-4.468 3.776 1.5 5.3a.848.848 0 0 1-.816 1.078zm-5.241-5.092a.847.847 0 0 1 .461.136l3.353 2.172-1.034-3.664a.848.848 0 0 1 .269-.878l3.294-2.785-3.783-.272a.848.848 0 0 1-.711-.493l-1.849-4.046-1.849 4.046a.848.848 0 0 1-.711.493l-3.783.272 3.294 2.785a.848.848 0 0 1 .269.878l-1.034 3.664 3.353-2.172a.847.847 0 0 1 .461-.136z" class="cls-3" data-name="Path 59" transform="translate(-948 -1794)"/>     </g> </svg> '


				  });
				});
			
			  
		       $(".carousel").carousel('pause');
		       var newHeight = $(".center_container").height();
				 console.log(newHeight)
			        $(".left_container").height(newHeight);
			
			$('.carousel').carousel('pause');
 		
			var active_dates = ["21/9/2019","25/9/2019"];

			 $('#datepicker').datepicker({
				todayHighlight:true,
				updateViewDate:true,
				weekStart:1,
				 beforeShowDay: function(date){
					 var newHeight = $("#datepicker").width();
					 console.log(newHeight)
				        $(".table-condensed").height(newHeight);
			         var d = date;
			         var curr_date = d.getDate();
			         var curr_month = d.getMonth() + 1; //Months are zero based
			         var curr_year = d.getFullYear();
			         var formattedDate = curr_date + "/" + curr_month + "/" + curr_year

			           if ($.inArray(formattedDate, active_dates) != -1){
			               return {
			                  classes: 'activeClass'
			               };
			           }
			          return;
			      }
			}); 
			 $("#datepicker").datepicker("update", $('#incoming_date').data('input_date'));

							$('#datepicker')
									.on(
											'changeDate',
											function() {
												console.log($('#datepicker')
														.datepicker(
																'getFormattedDate'));
												window.location.href = window.location.pathname
														+ "?var="
														+ $('#datepicker')
																.datepicker(
																		'getFormattedDate');
											});

							Highcharts.setOptions({
								colors : [ '#57b280', '#6297f6', '#f5a82e',
										'#24CBE5', '#64E572', '#FF9655',
										'#FFF263', '#6AF9C4' ]
							});
							new Highcharts.Chart(
									{
										chart : {
											renderTo : 'container',
											type : 'pie'
										},
										title : {
											useHTML : true,
											text : '<div class="text-center f-14">  <strong class="f-16"> 75%</strong> <div class="brownish-grey">Utilisation</div></div>',
											verticalAlign : 'middle',
											floating : true,
											style : {
												color : '#666666'

											}
										},
										yAxis : {
											title : {
												text : 'Total percent market share',
												style : {
													display : 'none'
												}
											}
										},
										legend : {

											enable : false
										},
										exporting : {
											enabled : false
										},
										credits : {
											enabled : false
										},
										plotOptions : {
											pie : {
												allowPointSelect : false,
												shadow : false,
												borderWidth : 5

											},
											series : {
												states : {
													inactive : {
														opacity : 1
													}
												}
											}
										},
										tooltip : {
											enabled : false
										},
										series : [ {
											name : 'Browsers',
											showInLegend : false,
											states : {
												hover : {
													enabled : false
												}
											}, // Here is where it goes
											data : [ [ "Firefox", 6 ],
													[ "MSIE", 4 ],
													[ "Chrome", 7 ] ],
											size : '100%',
											innerSize : '66%',
											showInLegend : false,
											dataLabels : {
												enabled : false
											}
										} ]
									});

						});