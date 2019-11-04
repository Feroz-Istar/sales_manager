<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%><%@ page language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
<body onload="load()">
	<jsp:include page="../navbar/nav.jsp"></jsp:include>
	<main role="main">
	<div class="container-fluid salesken_container">

	<div class="row m-0">
		<div class="col-md-3"></div>
		<div class="col-md-6 p-0">
		
			<%-- <div class="card  rounded-0 shadow mb-20">
			<div class="card-body ongoingtaskcard cursor-pointer p-0 p-30">
				<div class=" font-weight-bold f-18 black pb-20">Rockstars</div>

				<div class="w-100 d-flex theme_dashed_border_bottom ">
					<%
						for (int h = 0; h < 5; h++) {
					%>
					<div class="div">

						<div class="d-flex flex-column">
							<div class="border-right-dashed-separation pr-15">
								<img alt=""
									src="https://res.cloudinary.com/demo/image/upload/q_60/sample.jpg"
									class="hw-60 align-self-center rounded-circle"
									style="position: relative; top: 5px; z-index: 1; left: 18px;">

								<div class="btn-group d-flex justify-content-center  "
									role="group" aria-label="Basic example">
									<button type="button"
										class="bg-white  removefocus d-flex align-items-center"
										style="border: 1px solid #cccccc; height: 25px; width: 45px;">
										<img alt="Heart" style="width: 14.6px; height: 12.8px;"
											src="<%=baseURL%>assets/image/heart.svg">
									</button>
									<button type="button"
										class="bg-white  removefocus d-flex align-items-center "
										style="border: 1px solid #cccccc; height: 25px; width: 45px;">
										<img alt="Heart" style="width: 14.6px; height: 12.8px;"
											src="<%=baseURL%>assets/image/message.svg">
									</button>

								</div>
							</div>
							<div class="f-14 greyish-brown align-self-center pb-20">Stanley
								Howard</div>
						</div>
					</div>
					<%
						}
					%>


				</div>



			</div>

		</div> --%>
		
		<div class="card  rounded-0 shadow mb-20">
			<div class="card-body ongoingtaskcard cursor-pointer p-0 pl-30 pr-30">
			
				<%for(int i=0;i<4; i++){ %>
				<div class=" font-weight-bold f-18 black pt-30 pb-20">Rockstars</div>

				<div class="w-100 d-flex justify-content-between theme_dashed_border_bottom ">
					<%
						for (int h = 0; h < 5; h++) {
							String border="border-right-dashed-separation";
							if(h==4){
								border="d-none";
							}
					%>
					
							<div class="div w-20" >
							
								<div class="d-flex flex-column ">
										<img alt="associate"
											src="<%=baseURL%>assets/image/11.png"
											class="hw-60 align-self-center rounded-circle"
											style="position: relative; top: 13px; z-index: 1;">
		
										<div class="btn-group d-flex  "
											role="group" aria-label="Basic example">
											<button type="button"
												class="bg-white pl-15 pr-20 justify-content-center removefocus d-flex align-items-center rounded-left"
												style="border: 1px solid #cccccc;">
												<img alt="Heart"
													src="<%=baseURL%>assets/image/heart.svg">
											</button>
											<button type="button"
												class="bg-white pl-20 pr-15 rounded-right	 justify-content-center removefocus d-flex align-items-center "
												style="border: 1px solid #cccccc;">
												<img alt="Heart"
													src="<%=baseURL%>assets/image/message.svg">
											</button>
		
										</div>
																		
										
									<div class="f-14 greyish-brown text-center pt-10 pb-20">Stanley
										Howard</div>
								</div>
								
								
							</div>

														<div class="<%=border%>" style="margin-bottom: 45px;margin-top: 10px;">
					</div>
					
					<%} %>
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
	<script type="text/javascript"
		src="http://botmonster.com/jquery-bootpag/jquery.bootpag.js"></script>

	<script src="<%=baseURL%>assets/js/popper.min.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap.min.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap-datepicker.min.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap-datepicker.min.js"></script>
	<script src="<%=baseURL%>assets/js/highcharts.js"></script>
	<script src="<%=baseURL%>assets/js/exporting.js"></script>
	<script src="<%=baseURL%>assets/js/pagination.min.js"></script>

	<script>
		$(document).ready(function() {
			$('#page').Pagination({ // id to initial draw and use pagination
				size : 87, // size of list input
				pageShow : 5, // 5 page-item per page
				page : 1, // current page (default)
				limit : 10, // current limit show perpage (default)
			}, function(obj) { // callback function, you can use it to re-draw table or something
				console.log(obj)
			});
		});
	</script>
</body>
</html>