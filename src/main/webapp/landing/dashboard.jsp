<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html lang="en" class="h-100">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<title>Salesken Dashboard</title>
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
	SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
	SimpleDateFormat incoming = new SimpleDateFormat("dd-MM-yyyy");
	String incomingDate = request.getParameter("var") != null
			? request.getParameter("var")
			: sdf.format(new Date());
%>
<link rel="icon" href="<%=baseURL%>favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="<%=baseURL%>favicon.ico"
	type="image/x-icon" />
<link rel="stylesheet" href="<%=baseURL%>assets/css/bootstrap.min.css">
<link href="<%=baseURL%>assets/css/bootstrap-datepicker3.min.css?xsww"
	rel="stylesheet">
<link rel="stylesheet" href="<%=baseURL%>assets/css/salesken_style.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/all.css">

<link href="<%=baseURL%>assets/css/bootstrap-datepicker3.min.css?xsww"
	rel="stylesheet">

</head>
<body>
	<jsp:include page="../navbar/nav.jsp"></jsp:include>

	<main role="main">
		<div class="container-fluid salesken_container">
			<div class="row">
				<div class="col-md-3 pr-0 ">
					<ul class="saleken nav nav-tabs f-14 pt-3 px-3" id="myTab"
						role="tablist" style="background: #f9f9f9">
						<li class="nav-item"><a class="nav-link active border-left-0"
							id="home-tab" data-toggle="tab" href="#home" role="tab"
							aria-controls="home" aria-selected="true">To-Do List</a></li>
						<li class="nav-item "><a class="nav-link border-left-0"
							id="profile-tab" data-toggle="tab" href="#profile" role="tab"
							aria-controls="profile" aria-selected="false">Notes</a></li>

					</ul>
					<div class="tab-content " id="myTabContent"
						style="background:  #f9f9f9	">
						<div class="tab-pane fade show active " id="home" role="tabpanel"
							aria-labelledby="home-tab">
							<div class="w-100" style=" padding: 11px 22px; ">
							<div id="datepicker"  ></div>
							
							</div>
							<hr>
							<div class="task-item-container bg-white p-3">
									<div class="d-flex flex-row align-items-center pt-2 pb-4">
										<div class="font-weight-bold mr-3">To-Do List</div>
										<button class="btn rounded-circle shadow d-flex justify-content-center align-items-center" style="height:30px; width:30px; background: white;">
										<i class="fas fa-plus theme_color"></i>
										</button>
									</div>
								<%for(int j=0;j<4;j++){ %>
									<div class="taskitem pt-3 pb-3">
									<div class="d-flex flex-row align-items-center mb-1 ">
										<div class="font-weight-bold f-14">Meeting with Sales Team</div>
										<i class="fas fa-ellipsis-v ml-auto f-12"></i>
									</div>
									<div class="f-12  mb-1">11:00 AM</div>
									<div class="d-flex flex-row  mb-1">
									<%for(int i=0;i<3;i++){ 
										String img_mar="";
										if(i!=0){
										img_mar="ml_10";
										}
									%>
										<img class="rounded-circle imgsize mr-1 <%=img_mar %>" src="https://res.cloudinary.com/demo/image/upload/q_60/sample.jpg">
										<%} %>
									</div>
									</div>
								<%} %>
								</div>
						</div>

						<div class="tab-pane fade bg-white p-3" id="profile" role="tabpanel"
							aria-labelledby="profile-tab">

							<div class="row">
								<div class="col-md-6 d-flex">
									<input type="checkbox" name="select_all" value="Bike" class="p-1 mr-2 checksize align-self-center"><br> 
									<button class="btn p-1 mr-2"><i class="fas fa-list"></i></button>
									<button class="btn p-1 mr-2"><i class="fas fa-list-ol"></i></button>
								</div>
								<div class="col-md-6 d-flex justify-content-end">
									<button class="btn p-1 mr-2"><i class="fas fa-paperclip"></i></button>
									<button class="btn p-1 "><i class="fas fa-ellipsis-v"></i></button>
								</div>
							</div>
														<hr>
							<div class="">
							<input type="checkbox" name="vehicle1 " value="Bike" class="p-1 mr-2 mb-3 checksize ">Need to Call TEK System today  <br> 
							<input type="checkbox" name="vehicle2" value="Car"  class="p-1 mr-2 mb-3 checksize f-14 font-weight-bold">Setup the lead information<br> 
							<input type="checkbox" name="vehicle3" value="Boat"  class="p-1 mr-2 mb-3 checksize f-14 font-weight-bold"checked>Cras at finibus purus.<br>
							</div>
							<ul type="disc" class="pl-4 f-14">
								<li>Lorem ipsum dolor sit amet</li>
								<li>Suspendisse sit amet sem ac tellus</li>
								<li>Nulla malesuada justo sed diam.</li>
							</ul>

						</div>

					</div>
				</div>
				<div class="col-md-6 p-0 m-0">
				
				<div id="carouselExampleIndicators" class="carousel slide mb-3" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
  
  <%for (int i=0;i<3;i++){
  	String isActive ="";
  	if(i==0)
  		isActive="active";
  %>
    <div class="carousel-item <%=isActive%>">
		<div class="card" style="min-height:322px;">
			<div class="card-body">
				<div class="row mb-3">
				<div class="col-md-6 font-weight-bold f-18">Pipeline - 01</div>
				<div class="col-md-6 d-flex justify-content-end">
					<button type="button" class="btn btn-outline-secondary h-29 d-flex justify-content-center align-items-center mr-2 ">
						<i class="fas fa-chevron-left"></i>
					</button>
					<button type="button" class="btn btn-outline-danger h-29 d-flex justify-content-center align-items-center">
						<i class="fas fa-chevron-right"></i>
					</button>
				</div>
				</div>
				
				<div class="row mb-2">
					<div class="col font-weight-bold f-16 brownish-grey">Stage - 01</div>
				</div>
				
				<div class="row mb-4">
					<div class="col-md-3 col-6">
						<div class="font-weight-bold f-30"> <i class="fas fa-dollar-sign"></i> <span class="theme_color"> 7245</span></div>
						<div class="f-14 brownish-grey">Deal Value</div>
					</div>
					<div class="col-md-3 col-6">
						<div class="font-weight-bold f-30"><i class="far fa-flag"></i> 65%</div>
						<div class="f-14 brownish-grey">Confident</div>
					</div>
					<div class="col-md-3 col-6">
						<div class="font-weight-bold f-30"><i class="fas fa-trophy"></i> 25%</div>
						<div class="f-14 brownish-grey">Won Leads</div>
					</div>
					<div class="col-md-3 col-6">
						<div class="font-weight-bold f-30"><i class="far fa-thumbs-down"></i> 75%</div>
						<div class="f-14 brownish-grey">Lost Leads</div>
					</div>
				</div>
				
				<div class="row mb-3">
					<div class="col-md-6">
						<div class="f-14 font-weight-bold">Strong Playbook</div>
						<div class="f-14 brownish-grey">Objection, Price, Qualification, Introduction, Product Features, Value Proposition, </div>
					</div>
					<div class="col-md-6">
						<div class="f-14 font-weight-bold">Weak Playbook</div>
						<div class="f-14 brownish-grey">Need Investigation, Competitor Mapping, Feature Mapping.</div>
					</div>
				</div>
				
			</div>
		</div>
    </div>
    <%} %>
  </div>
<!--   <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a> -->
</div>
				
				<div class="card mb-3" style="min-height: 245px;">
				  <div class="card-body">
				  <div class="row mb-3">
				<div class="col-md-6 font-weight-bold f-18">Team 01 - 	<span class="brown-grey">10 user</span></div>
				<div class="col-md-6 d-flex justify-content-end">
					<button type="button" class="btn btn-secondary h-29 d-flex justify-content-center align-items-center mr-2 ">
						<i class="fas fa-chevron-left"></i>
					</button>
					<button type="button" class="btn btn-outline-danger h-29 d-flex justify-content-center align-items-center">
						<i class="fas fa-chevron-right"></i>
					</button>
				</div>
				</div>
				<div class="row">
				<div class="col-md-8">
				<div class="row mb-4">
					<div class="col-md-3 col-6">
						<div class="font-weight-bold f-20"> <i class="fas fa-dollar-sign"></i> <span class="theme_color"> 345</span></div>
						<div class="f-14 brownish-grey">Deal Value</div>
					</div>
					<div class="col-md-3 col-6">
						<div class="font-weight-bold f-20"> 65%</div>
						<div class="f-14 brownish-grey">Confident</div>
					</div>
					<div class="col-md-3 col-6">
						<div class="font-weight-bold f-20">25%</div>
						<div class="f-14 brownish-grey">Won Leads</div>
					</div>
					<div class="col-md-3 col-6">
						<div class="font-weight-bold f-20"> 75%</div>
						<div class="f-14 brownish-grey">Lost Leads</div>
					</div>
				</div>
				<div class="row mb-3">
					<div class="col-md-6">
						<div class="f-14 font-weight-bold">Strong Playbook</div>
						<div class="f-14 brownish-grey">Objection, Price, Qualification, Introduction, Product Features, Value Proposition, </div>
					</div>
					<div class="col-md-6">
						<div class="f-14 font-weight-bold">Weak Playbook</div>
						<div class="f-14 brownish-grey">Need Investigation, Competitor Mapping, Feature Mapping.</div>
					</div>
				</div>
				
				</div>
				<div class="col-md-4">
				
				<div id="container" style=" height:170px;"></div>
				</div>
				</div>
				
				
				</div>
				</div>
				
				<div class="card" style="min-height: 505px;">
				  <div class="card-body agent">
				  <div class="row mb-3">
				<div class="col-md-6 font-weight-bold f-18">Bottom 5 Agents</div>
				<div class="col-md-6 d-flex justify-content-end">
					<button type="button" class="btn btn-secondary h-29 d-flex justify-content-center align-items-center mr-2 ">
						<i class="fas fa-chevron-left"></i>
					</button>
					<button type="button" class="btn btn-outline-danger h-29 d-flex justify-content-center align-items-center">
						<i class="fas fa-chevron-right"></i>
					</button>
				</div>
				</div>
				<%for(int k=0;k<5;k++){
					String color="#ffffff";
					if(k%2==0){
						color="#f9f9f9";
					}
					%>
				<div class="row align-items-center separation-bottom py-4" style="background: <%=color %>">
					<div class="col-md-4 col-6">
						<div class="d-flex flex-row">
							<img class="mr-2" style="height:40px;width:40px"src="<%=baseURL%>assets/image/37.jpg"/>
							<div>
								<div class="f-14">Stanley Howard</div>
								<div class="f-12">rating bar</div>
							</div>
						</div>
					</div>
					<div class="col-md-8 col-6">
						<div class="row">
							<div class="col-md-4 f-14">
						<strong>12%</strong> - Lead Wins
					</div>
					<div class="col-md-4 f-14"><strong>15%</strong> - Utilisation</div>
					<div class="col-md-4 f-14"><strong>$ 20</strong> - Deal Value</div> 
						</div>
					</div>
					
				</div>
				<%} %>
				
				
				  </div>
				  </div>
				
				
				
				</div>
				<div class="col-md-3"></div>
			</div>


		</div>
	</main>
	<script src="<%=baseURL%>assets/js/jquery-3.4.1.min.js"></script>
	<script src="<%=baseURL%>assets/js/popper.min.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap.min.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap-datepicker.min.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap-datepicker.min.js"></script>
	<script src="<%=baseURL%>assets/js/highcharts.js"></script>
	<script src="<%=baseURL%>assets/js/exporting.js"></script>

	<script>
		$(document).ready(function() {
			$('.salesken>li').click(function() {
				alert($('selector').index(this));

			});
			
			
			
/* 			$('#carouselExampleIndicators').carousel('pause');
 */			
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
			 $("#datepicker").datepicker("update", '<%=incomingDate%>');

					$('#datepicker').on(
							'changeDate',
							function() {
								alert($('#datepicker').datepicker(
										'getFormattedDate'));
								window.location.href = window.location.pathname
										+ "?var="
										+ $('#datepicker').datepicker(
												'getFormattedDate');
							});
					
					Highcharts.setOptions({
						 colors: ['#57b280', '#6297f6', '#f5a82e', '#24CBE5', '#64E572', '#FF9655', '#FFF263', '#6AF9C4']
						});
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
			                color:'#666666'	
			                
			                
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
			            	
			            	enable:false
			            },
			            exporting: { enabled: false },
			            credits: {
			                enabled: false
			            }
			            ,
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
			                states: { hover: { enabled: false } }, // Here is where it goes
			                data: [["Firefox",6],["MSIE",4],["Chrome",7]],
			                size: '100%',
			                innerSize: '66%',
			                showInLegend:false,
			                dataLabels: {
			                    enabled: false
			                }
			            }]
			        });

				});
	</script>
</body>
</html>