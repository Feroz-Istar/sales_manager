<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Salesken - Leads</title>
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>
<link rel="icon" href="<%=baseURL%>favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="<%=baseURL%>favicon.ico"
	type="image/x-icon" />
<link rel="stylesheet" href="<%=baseURL%>assets/css/bootstrap.min.css">
<link href="<%=baseURL%>assets/css/bootstrap-datepicker3.min.css?xsww"
	rel="stylesheet">
<link rel="stylesheet" href="<%=baseURL%>assets/css/salesken_style.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/all.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/leads.css">
<link rel="stylesheet"
	href="<%=baseURL%>assets/css/dropzone.min.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/alertify.css">

</head>
<body data-base-url="<%=baseURL%>">
	<jsp:include page="../navbar/nav.jsp"></jsp:include>
	<main role="main">
	<div class="container-fluid salesken_container">
		<div
			class="row grey-white-bg bottom-separation-solid align-items-center py-3">
			<div class="col-md-6 col-12 d-flex align-items-center mb-4 mb-md-0">
				<div class="display-1 black f-20 border-right-separation pr-3 ">Leads</div>
				<div class="pl-3 pr-2 f-12 brown-grey ">Dashboard</div>
				<i class="fas fa-chevron-circle-right pr-2 f-12 brown-grey"></i>
				<div class=" f-12 brown-grey" id="breadcrumb">Leads</div>

			</div>
			<div class="col-md-6 col-12 d-lg-flex justify-content-md-end">
				<div class="input-group  pl-2 pr-2 search_width">
					<input id=""
						class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height"
						type="search" placeholder="Search"
						style="border-right: none !important;">
					<div class="input-group-append">
						<button
							class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center"
							type="button" style="">
							<i class="fa fa-search f-12 brown-grey"></i>
						</button>
					</div>
				</div>
				<button class="btn btn-style f-12" data-toggle="modal"
					data-target="#addLeadModalCenter">UPLOAD NEW</button>
			</div>
		</div>


		<div class="row">
			<div class="col-md-12 bg-white">
				<nav>
					<div class="nav nav-tabs nav-mytabs pt-2" id="nav-tab"
						role="tablist">
						<a class="nav-item nav-link active" id="nav-target-tab"
							data-toggle="tab" href="#nav-target" role="tab"
							aria-controls="nav-target" aria-selected="true">Target</a> <a
							class="nav-item nav-link" id="nav-qualified-tab"
							data-toggle="tab" href="#nav-qualified" role="tab"
							aria-controls="nav-qualified" aria-selected="false">Qualified</a>
						<a class="nav-item nav-link" id="nav-lost-tab" data-toggle="tab"
							href="#nav-lost" role="tab" aria-controls="nav-lost"
							aria-selected="false">Lost Leads</a> <a class="nav-item nav-link"
							id="nav-win-tab" data-toggle="tab" href="#nav-win" role="tab"
							aria-controls="nav-win" aria-selected="false">Won Leads</a>
					</div>
				</nav>
				<div class="tab-content p-0 mytab-content" id="nav-tabContent">
					<div class="tab-pane fade show active" id="nav-target"
						role="tabpanel" aria-labelledby="nav-target-tab">
						<!-- start of target content -->

						<div
							class="row align-items-center bg-white border-bottom-separation  pt-3 pb-3">
							<div class="col-md-3 text-result-found	">
								<strong class="number-of-results">504</strong> Results Found
							</div>
							<div class="col-md-9 d-md-flex justify-content-end  ">

								<select class="custom-result-selects" id="source">
									<option>Filter by Source Type</option>
									<option>Default select</option>
								</select>

								<div class="istar-dropdown-task mr-2 custom-taskborder ">
									<button class="istar-dropdown-arrow dropdown-toggle"
										id="activity" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										<span class="sr-only">Toggle Dropdown</span> Filter by
										Activities &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
									</button>
									<div
										class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu">
										<button class="dropdown-item" type="button">
											<img src="<%=baseURL%>assets/image/calltask.svg"
												class="task-dropdown"> Call Task
										</button>
										<button class="dropdown-item" type="button">
											<img src="<%=baseURL%>assets/image/emailtask.svg"
												class="task-dropdown"> Email Task
										</button>
										<button class="dropdown-item" type="button">
											<img src="<%=baseURL%>assets/image/webinartask.svg"
												class="task-dropdown"> Webinar Task
										</button>
										<button class="dropdown-item" type="button">
											<img src="<%=baseURL%>assets/image/calltask.svg"
												class="task-dropdown"> Presentation
										</button>
									</div>

								</div>

								<button class="targetpopup filter-btn"
											id="activity"> 
											<i class="fas fa-filter filtericon"></i>
										</button>

							</div>
						</div>

						<div class="row pl-2 py-4 shadow-bottom">
							<div class="col-md-2">
								<div class="f-24 blue-black font-weight-bold">280</div>
								<div class="f-14 brown-grey font-weight-bold">New Leads</div>
							</div>
							<div class="col-md-2">
								<div class="f-24 blue-black font-weight-bold">156</div>
								<div class="f-14 brown-grey font-weight-bold">Engaged lead</div>
							</div>
							<div class="col-md-2">
								<div class="f-24 blue-black font-weight-bold">30 Hrs</div>
								<div class="f-14 brown-grey font-weight-bold">Average time
									spent</div>
							</div>
						</div>

						<div class="row align-items-center bottom-separation-solid py-4">
							<div class="col-md-2 col">
								<button class="btn p-0 black f-14 font-weight-bold">
									Company Name <i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
							<div class="col-md-2 col">
								<button class="btn p-0 black f-14 font-weight-bold">
									Email ID <i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
							<div class="col-md-2 col">
								<button class="btn p-0 black f-14 font-weight-bold">
									Contact No. <i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
							<div class="col-md-2 col ">
								<button class="btn p-0 black f-14 font-weight-bold">
									Lead Source <i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
							<div class="col-md-4 col-12 ">
								<button class="btn p-0 black f-14 font-weight-bold">
									Agent<i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
						</div>

						<%for(int i=0;i<5;i++){ 
							String bgcolor="bg-white";
			      			if(i%2!=0){
			      				bgcolor="very-light-pink-grey-bg";
			      			}
						%>
						<div
							class="row align-items-center bottom-separation-solid py-4 <%=bgcolor%>">
							<div class="col-md-2 col">
								<div class="f-14 font-weight-bold black">Vehement Capital
									Partners</div>
								<div class="f-14 brownish-grey">Miriam Franklin</div>
							</div>
							<div class="col-md-2 col">
								<div class="f-14 brownish-grey">
									infotech@gmail.com <i class="fas fa-info-circle soft-blue"></i>
								</div>
							</div>
							<div class="col-md-2 col">
								<div class="f-14 brownish-grey">
									+91 445 546 6456 <i class="fas fa-info-circle soft-blue"></i>
								</div>
							</div>
							<div class="col-md-2 col ">
								<div class="f-14 brownish-grey">Web Form</div>
							</div>
							<div class="col-md-4 col-12 ">
								<div class="row  align-items-center">
									<div class="col-md-11">
										<div class="d-flex">
											<img class="rounded-circle imgsize-40"
												src="<%=baseURL%>assets/image/11.png">
											<div class="ml-3">
												<div class="f-14 greyish-brown">Stanley Howard</div>
												<div class="f-12 brown-grey">Team 01</div>
											</div>
										</div>
									</div>
									<div class="col-md-1">
										<div class="istar-dropdown dropleft">
											<button class="dropdown-icon-btn " type="button"
												id="dropdownMenuButton" data-display="static"
												data-toggle="dropdown" aria-haspopup="true"
												aria-expanded="false">
												<i class="fas fa-ellipsis-v f-12 brown-grey"></i>
											</button>
											<div
												class="dropdown-menu dropdown-menu-right istar-dropdown-menu"
												aria-labelledby="dropdownMenuButton">
												<button class="dropdown-item" href="#">
													<img src="<%=baseURL%>assets/image/won.svg" alt=""
														srcset="" class="mr-2"> Won
												</button>
												<button class="dropdown-item" href="#">
													<img src="<%=baseURL%>assets/image/lost.svg" alt=""
														srcset="" class="mr-2">Lose
												</button>
												<button class="dropdown-item" href="#">
													<img src="<%=baseURL%>assets/image/edit.svg" alt=""
														srcset="" class="mr-2">Edit
												</button>
												<button class="dropdown-item" href="#">
													<img src="<%=baseURL%>assets/image/delete.svg" alt=""
														srcset="" class="mr-2">Delete
												</button>
												<button class="dropdown-item" href="#">
													<img src="<%=baseURL%>assets/image/details.png" alt=""
														srcset="" class="mr-2">Details
												</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<%} %>

						<div class="row py-3 justify-content-end">
							<div class="col-md-3">
								<div class="page">
									<ul class="salesken pagination"></ul>
								</div>
							</div>
						</div>

						<!-- end of target content -->
					</div>

					<div class="tab-pane fade" id="nav-qualified" role="tabpanel"
						aria-labelledby="nav-qualified-tab">

						<!-- start of qualified tab content-->

						<div
							class="row align-items-center  border-bottom-separation  pt-3 pb-3">
							<div class="col-md-3 text-result-found	">
								<strong class="number-of-results">03</strong> Results Found
							</div>
							<div class="col-md-9 d-md-flex justify-content-end  ">
								<div class="input-group date custom-calendar">
									<input type="text" id="lead_qualified_datepicker"
										class="form-control  custom-dateselect" value="12-02-2012">
									<div class="input-group-addon"
										onclick="showqualifiedCalendar()">
										<img src="<%=baseURL%>/assets/image/calendar.svg" class="pr-1"></i>
									</div>
								</div>
								<select class="  custom-result-selects" id="deal_value">
									<option>Filter by Deal Value</option>
									<option>Default select</option>
								</select> <select class="  custom-result-selects" id="stages">
									<option>Filter by Stages</option>
									<option>Default select</option>
								</select> <select class="  custom-result-selects" id="source">
									<option>Filter by Source Type</option>
									<option>Default select</option>
								</select>

								<button class="qualifiedpopup filter-btn"
									id="activity"> 
									<i class="fas fa-filter filtericon"></i>
								</button>
							</div>
						</div>

						<div class="row pl-2 py-4 shadow-bottom">
							<div class="col-md-2">
								<div class="f-24 blue-black font-weight-bold">120</div>
								<div class="f-14 brown-grey font-weight-bold">New Leads</div>
							</div>
							<div class="col-md-2">
								<div class="f-24 blue-black font-weight-bold">56</div>
								<div class="f-14 brown-grey font-weight-bold">Engaged lead</div>
							</div>
							<div class="col-md-2">
								<div class="f-24 blue-black font-weight-bold">25 Hrs</div>
								<div class="f-14 brown-grey font-weight-bold">Average time
									spent</div>
							</div>
							<div class="col-md-2">
								<div class="f-24 blue-black font-weight-bold">$ 8562</div>
								<div class="f-14 brown-grey font-weight-bold">Deal Value</div>
							</div>
						</div>

						<div class="row align-items-center bottom-separation-solid py-4">
							<div class="col-md-2 col">
								<button class="btn p-0 black f-14 font-weight-bold">
									Company Name <i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
							<div class="col-md-2 col">
								<button class="btn p-0 black f-14 font-weight-bold">
									Email ID <i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
							<div class="col-md-2 col">
								<button class="btn p-0 black f-14 font-weight-bold">
									Contact No. <i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
							<div class="col-md-2 col ">
								<button class="btn p-0 black f-14 font-weight-bold">
									Recent Task <i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
							<div class="col-md-4 col-12 ">
								<button class="btn p-0 black f-14 font-weight-bold">
									Agent<i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
						</div>

						<%for(int i=0;i<5;i++){ 
				  		String bgcolor="bg-white";
		      			if(i%2!=0){
		      				bgcolor="very-light-pink-grey-bg";
		      			}%>
						<div
							class="row align-items-center bottom-separation-solid py-4  <%=bgcolor%>">
							<div class="col-md-2 col">
								<div class="f-14 font-weight-bold black">Zencorporation
									Pot. Ltd.</div>
								<div class="f-14 brownish-grey">Miriam Franklin</div>
							</div>
							<div class="col-md-2 col">
								<div class="f-14 brownish-grey">
									infotech@gmail.com <i class="fas fa-info-circle soft-blue"></i>
								</div>
							</div>
							<div class="col-md-2 col">
								<div class="f-14 brownish-grey">
									+91 445 546 6456 <i class="fas fa-info-circle soft-blue"></i>
								</div>
							</div>
							<div class="col-md-2 col d-flex align-items-center">
								<img class="hw-24 pr-2"
									src="<%=baseURL%>assets/image/calltask.svg">
								<div class="f-14 greyish-brown pr-2">Call -</div>
								<div class="f-12 brown-grey">June 15, 2019 02:45 PM</div>
							</div>
							<div class="col-md-4 col-12 ">
								<div class="row  align-items-center">
									<div class="col-md-11">
										<div class="d-flex">
											<img class="rounded-circle imgsize-40"
												src="<%=baseURL%>assets/image/11.png">
											<div class="ml-3">
												<div class="f-14 greyish-brown">Stanley Howard</div>
												<div class="f-12 brown-grey">Pipeline - New Sales
													Pipeline</div>
											</div>
										</div>
									</div>
									<div class="col-md-1">
										<div class="istar-dropdown dropleft">
											<button class="dropdown-icon-btn " type="button"
												id="dropdownMenuButton" data-display="static"
												data-toggle="dropdown" aria-haspopup="true"
												aria-expanded="false">
												<i class="fas fa-ellipsis-v f-12 brown-grey"></i>
											</button>
											<div
												class="dropdown-menu dropdown-menu-right istar-dropdown-menu"
												aria-labelledby="dropdownMenuButton">
												<button class="dropdown-item" href="#">
													<img src="<%=baseURL%>assets/image/won.svg" alt=""
														srcset="" class="mr-2"> Won
												</button>
												<button class="dropdown-item" data-toggle="modal"
													data-target="#lostLeadModalCenter">
													<img src="<%=baseURL%>assets/image/lost.svg" alt=""
														srcset="" class="mr-2">Lose
												</button>
												<button class="dropdown-item" href="#">
													<img src="<%=baseURL%>assets/image/edit.svg" alt=""
														srcset="" class="mr-2">Edit
												</button>
												<button class="dropdown-item" href="#">
													<img src="<%=baseURL%>assets/image/delete.svg" alt=""
														srcset="" class="mr-2">Delete
												</button>
												<button class="dropdown-item" href="#">
													<img src="<%=baseURL%>assets/image/details.png" alt=""
														srcset="" class="mr-2">Details
												</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<%} %>
						<div class="row py-3 justify-content-end">
							<div class="col-md-3">
								<div class="page">
									<ul class="salesken pagination"></ul>
								</div>
							</div>
						</div>
						<!-- end of qualified tab content -->

					</div>
					<div class="tab-pane fade" id="nav-lost" role="tabpanel"
						aria-labelledby="nav-lost-tab">

						<!-- start of lost leads tab content-->

						<div
							class="row align-items-center  border-bottom-separation  pt-3 pb-3">
							<div class="col-md-3 text-result-found	">
								<strong class="number-of-results">03</strong> Results Found
							</div>
							<div class="col-md-9 d-md-flex justify-content-end  ">
								<div class="input-group date custom-calendar">
									<input type="text" id="lead_lost_datepicker"
										class="form-control  custom-dateselect" value="12-02-2012">
									<div class="input-group-addon" onclick="showlostCalendar()">
										<img src="<%=baseURL%>/assets/image/calendar.svg" class="pr-1"></i>
									</div>
								</div>
								<select class="  custom-result-selects" id="causes">
									<option>Filter by Causes</option>
									<option>Default select</option>
								</select> <select class="  custom-result-selects" id="deal_value">
									<option>Filter by Deal Value</option>
									<option>Default select</option>
								</select> <select class="  custom-result-selects" id="stages">
									<option>Filter by Stages</option>
									<option>Default select</option>
								</select> <select class="  custom-result-selects" id="source">
									<option>Filter by Source Type</option>
									<option>Default select</option>
								</select>

								<button
									class="lostpopup filter-btn"
									id="activity"> 
									<i class="fas fa-filter filtericon"></i>
								</button>
							</div>
						</div>

						<div class="row pl-2 py-4 shadow-bottom">

							<div class="col-md-2">
								<div class="f-24 blue-black font-weight-bold">$ 8562</div>
								<div class="f-14 brown-grey font-weight-bold">Deal Value</div>
							</div>

							<div class="col-md-2">
								<div class="f-24 blue-black font-weight-bold">25 Hrs</div>
								<div class="f-14 brown-grey font-weight-bold">Average time
									spent</div>
							</div>

							<div class="col-md-2">
								<div class="f-24 blue-black font-weight-bold">40%</div>
								<div class="f-14 brown-grey font-weight-bold">Percentage
									of loss</div>
							</div>



						</div>

						<div class="row align-items-center bottom-separation-solid py-4">
							<div class="col-md-2 col">
								<button class="btn p-0 black f-14 font-weight-bold">
									Company Name <i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
							<div class="col-md-2 col">
								<button class="btn p-0 black f-14 font-weight-bold">
									Email ID <i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
							<div class="col-md-2 col">
								<button class="btn p-0 black f-14 font-weight-bold">
									Contact No. <i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
							<div class="col-md-3 col ">
								<button class="btn p-0 black f-14 font-weight-bold">
									Recent Task <i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
							<div class="col-md-3 col-12 ">
								<button class="btn p-0 black f-14 font-weight-bold">
									Agent<i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
						</div>

						<%for(int i=0;i<5;i++){ 
				  		String bgcolor="bg-white";
		      			if(i%2!=0){
		      				bgcolor="very-light-pink-grey-bg";
		      			}%>
						<div
							class="row align-items-center bottom-separation-solid py-4  <%=bgcolor%>">
							<div class="col-md-2 col">
								<div class="f-14 font-weight-bold black">Vehement Capital
									Partners.</div>
								<div class="f-14 brownish-grey">Miriam Franklin</div>
							</div>
							<div class="col-md-2 col">
								<div class="f-14 brownish-grey">
									infotech@gmail.com <i class="fas fa-info-circle soft-blue"></i>
								</div>
							</div>
							<div class="col-md-2 col">
								<div class="f-14 brownish-grey">
									+91 445 546 6456 <i class="fas fa-info-circle soft-blue"></i>
								</div>
							</div>
							<div class="col-md-2 col d-flex align-items-center">
								<img class="hw-24 pr-2"
									src="<%=baseURL%>assets/image/calltask.svg">
								<div class="f-14 greyish-brown pr-2">Call -</div>
								<div class="f-12 brown-grey">June 15, 2019 02:45 PM</div>
							</div>
							<div class="col-md-4 col-12 ">
								<div class="row  align-items-center">
									<div class="col-md-11">
										<div class="d-flex">
											<img class="rounded-circle imgsize-40"
												src="<%=baseURL%>assets/image/11.png">
											<div class="ml-3">
												<div class="f-14 greyish-brown">Stanley Howard</div>
												<div class="f-12 brown-grey">Pipeline - New Sales
													Pipeline</div>
											</div>
										</div>
									</div>
									<div class="col-md-1">
										<button class="btn" type="button" id="dropdownMenuButton"
											data-display="static" data-toggle="dropdown"
											aria-haspopup="true" aria-expanded="false">
											<i class="fas fa-ellipsis-v f-12 brown-grey"></i>
										</button>

									</div>
								</div>
							</div>
						</div>
						<%} %>
						<div class="row py-3 justify-content-end">
							<div class="col-md-3">
								<div class="page">
									<ul class="salesken pagination"></ul>
								</div>
							</div>
						</div>

						<!-- end of lost leads tab content -->

					</div>
					<div class="tab-pane fade" id="nav-win" role="tabpanel"
						aria-labelledby="nav-win-tab">

						<!-- start of won leads content -->

						<div
							class="row align-items-center  border-bottom-separation  pt-3 pb-3">
							<div class="col-md-3 text-result-found	">
								<strong class="number-of-results">03</strong> Results Found
							</div>
							<div class="col-md-9 d-md-flex justify-content-end  ">
								<div class="input-group date custom-calendar">
									<input type="text" id="lead_won_datepicker"
										class="form-control  custom-dateselect" value="12-02-2012">
									<div class="input-group-addon" onclick="showwonCalendar()">
										<img src="<%=baseURL%>/assets/image/calendar.svg" class="pr-1"></i>
									</div>
								</div>
								<select class="  custom-result-selects" id="causes">
									<option>Filter by Causes</option>
									<option>Default select</option>
								</select> <select class="  custom-result-selects" id="deal_value">
									<option>Filter by Deal Value</option>
									<option>Default select</option>
								</select> <select class="  custom-result-selects" id="stages">
									<option>Filter by Stages</option>
									<option>Default select</option>
								</select> <select class="  custom-result-selects" id="source">
									<option>Filter by Source Type</option>
									<option>Default select</option>
								</select>

								<button class="wonpopup filter-btn"
									id="activity"> 
									<i class="fas fa-filter filtericon"></i>
								</button>
							</div>
						</div>

						<div class="row pl-2 py-4 shadow-bottom">

							<div class="col-md-2">
								<div class="f-24 blue-black font-weight-bold">$ 2345</div>
								<div class="f-14 brown-grey font-weight-bold">Deal Value</div>
							</div>

							<div class="col-md-2">
								<div class="f-24 blue-black font-weight-bold">45 Hrs</div>
								<div class="f-14 brown-grey font-weight-bold">Average time
									spent</div>
							</div>

							<div class="col-md-2">
								<div class="f-24 blue-black font-weight-bold">34%</div>
								<div class="f-14 brown-grey font-weight-bold">Percentage
									of Won</div>
							</div>



						</div>

						<div class="row align-items-center bottom-separation-solid py-4">
							<div class="col-md-2 col">
								<button class="btn p-0 black f-14 font-weight-bold">
									Company Name <i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
							<div class="col-md-2 col">
								<button class="btn p-0 black f-14 font-weight-bold">
									Email ID <i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
							<div class="col-md-2 col">
								<button class="btn p-0 black f-14 font-weight-bold">
									Contact No. <i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
							<div class="col-md-3 col ">
								<button class="btn p-0 black f-14 font-weight-bold">
									Recent Task <i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
							<div class="col-md-3 col-12 ">
								<button class="btn p-0 black f-14 font-weight-bold">
									Agent<i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>
						</div>

						<%for(int i=0;i<5;i++){ 
				  		String bgcolor="bg-white";
		      			if(i%2!=0){
		      				bgcolor="very-light-pink-grey-bg";
		      			}%>
						<div
							class="row align-items-center bottom-separation-solid py-4  <%=bgcolor%>">
							<div class="col-md-2 col">
								<div class="f-14 font-weight-bold black">Vehement Capital
									Partners.</div>
								<div class="f-14 brownish-grey">Miriam Franklin</div>
							</div>
							<div class="col-md-2 col">
								<div class="f-14 brownish-grey">
									infotech@gmail.com <i class="fas fa-info-circle soft-blue"></i>
								</div>
							</div>
							<div class="col-md-2 col">
								<div class="f-14 brownish-grey">
									+91 445 546 6456 <i class="fas fa-info-circle soft-blue"></i>
								</div>
							</div>
							<div class="col-md-3 col d-flex align-items-center">
								<img class="hw-24 pr-2"
									src="<%=baseURL%>assets/image/calltask.svg">
								<div class="f-14 greyish-brown pr-2">Call -</div>
								<div class="f-12 brown-grey">June 15, 2019 02:45 PM</div>
							</div>
							<div class="col-md-3 col-12 ">
								<div class="row  align-items-center">
									<div class="col-md-11">
										<div class="d-flex">
											<img class="rounded-circle imgsize-40"
												src="<%=baseURL%>assets/image/11.png">
											<div class="ml-3">
												<div class="f-14 greyish-brown">Stanley Howard</div>
												<div class="f-12 brown-grey">Pipeline - New Sales
													Pipeline</div>
											</div>
										</div>
									</div>
									<div class="col-md-1">
										<button class="dropdown-icon-btn dropleft" type="button"
											id="dropdownMenuButton" data-display="static"
											data-toggle="dropdown" aria-haspopup="true"
											aria-expanded="false">
											<i class="fas fa-ellipsis-v f-12 brown-grey"></i>
										</button>
										<div
											class="dropdown-menu dropdown-menu-right istar-dropdown-menu"
											aria-labelledby="dropdownMenuButton">
											<button class="dropdown-item" href="#">
												<img src="<%=baseURL%>assets/image/won.svg" alt="" srcset=""
													class="mr-2"> Won
											</button>
											<button class="dropdown-item" href="#">
												<img src="<%=baseURL%>assets/image/lost.svg" alt=""
													srcset="" class="mr-2">Lose
											</button>
											<button class="dropdown-item" href="#">
												<img src="<%=baseURL%>assets/image/edit.svg" alt=""
													srcset="" class="mr-2">Edit
											</button>
											<button class="dropdown-item" href="#">
												<img src="<%=baseURL%>assets/image/delete.svg" alt=""
													srcset="" class="mr-2">Delete
											</button>
											<button class="dropdown-item" href="#">
												<img src="<%=baseURL%>assets/image/details.png" alt=""
													srcset="" class="mr-2">Details
											</button>
										</div>

									</div>
								</div>
							</div>
						</div>
						<%} %>
						<div class="row py-3 justify-content-end">
							<div class="col-md-3">
								<div class="page">
									<ul class="salesken pagination"></ul>
								</div>
							</div>
						</div>

						<!-- end of won leads content -->

					</div>
				</div>

			</div>
		</div>

		<!-- start of lost lead modal -->

		<div class="modal fade" id="lostLeadModalCenter" tabindex="-1"
			role="dialog" aria-labelledby="lostLeadModalCenterTitle"
			aria-hidden="true">
			<div class="modal-dialog modal-lg modal-dialog-centered"
				role="document">
				<div class="modal-content rounded-0 px-3 lostleadmodalsize">
					<div class="row shadow-sm p-3">
						<div
							class="col-md-11 col-11 modal-title greyish-brown f-18 font-weight-bold"
							id="lostLeadModalCenterTitle">Lost Lead</div>
						<button type="button" class="col-md-1 col-1 close"
							data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">

						<div class="row pb-4">
							<div class="col-md-12 f-18 font-weight-bold greyish-brown">
								Zencorporation Pot. Ltd.</div>
						</div>

						<div class="row pb-4">
							<div class="col-md-4 border-right-separation">
								<div class="f-14 brownish-grey">Contact Person</div>
								<div class="f-16 font-weight-bold black">Miriam Franklin</div>
							</div>
							<div class="col-md-4 border-right-separation">
								<div class="f-14 brownish-grey">Recent Task</div>
								<div class="f-16 font-weight-bold black">Call</div>
							</div>
							<div class="col-md-4 ">
								<div class="f-14 brownish-grey">Deal Value</div>
								<div class="f-16 font-weight-bold black">$ 208</div>
							</div>
						</div>

						<div class="row pt-4">
							<div class="col-md-12">
								<textarea
									class="custom-modal-textarea f-14 brown-grey w-100 p-2"
									id="reason" rows="6" placeholder="Type Reason"></textarea>
							</div>
						</div>

					</div>
					<div class="modal-footer">
						<button type="button"
							class="btn theme_color f-14 font-weight-bold">Reset</button>
						<button type="button"
							class="btn modal-submit-btn f-14 font-weight-bold"
							data-dismiss="modal">SUBMIT</button>
					</div>
				</div>
			</div>
		</div>

		<!-- end of lost lead modal -->


		<!-- start of add lead modal -->
		<div class="modal fade" id="addLeadModalCenter" tabindex="-1"
			role="dialog" aria-labelledby="addLeadModalCenterTitle"
			aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered  modal-xl  "
				role="document">
				<div class="modal-content rounded-0 px-3 addleadmodalsize">

					<div class="modal-body" id="lostLeadModalCenterTitle">

						<div class="row shadow-bottom py-3 ">
							<div class="col-md-11 leadmodal">
								<ul class="nav nav-pills" id="pills-tab" role="tablist">
									<li class="nav-item"><a class="nav-link px-0 active"
										id="pills-upload-tab" data-toggle="pill" href="#pills-upload"
										role="tab" aria-controls="pills-upload" aria-selected="true">
											<div class="d-flex align-items-center flex-row bd-highlight">
												<div class="bd-highlight pr-2 d-flex align-items-center">
													<div class="circle">01</div>
												</div>
												<div class="bd-highlight pr-2 align-self-center tabtitle">Upload
													Lead List</div>
												<div class="bd-highlight d-flex pr-2">
													<img src="<%=baseURL%>assets/image/arrow_right.svg">
												</div>
											</div>
									</a></li>
									<li class="nav-item "><a class="nav-link disabled px-0"
										id="pills-preview-tab" data-toggle="pill"
										href="#pills-preview" role="tab" aria-controls="pills-preview"
										aria-selected="false">
											<div class="d-flex align-items-center flex-row bd-highlight">
												<div class="bd-highlight pr-2 d-flex align-items-center">
													<div class="circle">02</div>
												</div>
												<div class="bd-highlight pr-2 align-self-center tabtitle">Preview</div>

											</div>
									</a></li>
								</ul>
							</div>
							<button type="button" class="col-md-1 col-1 close"
								data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>

						<div class="tab-content" id="pills-tabContent">
							<div class="tab-pane fade show active" id="pills-upload"
								role="tabpanel" aria-labelledby="pills-upload-tab">
								<!-- start of upload lead content -->
								
								

								<div class="row justify-content-center dropzonediv">
									<div class="col-md-9 my-5 cream_white upload-lead-box"
										style="border: 1px dashed #cccccc;">
										<div
											class="d-flex flex-row align-items-center text-center upload-lead-box">
											<div class="col-md-5" id="previews">
												<img src="<%=baseURL%>assets/image/Group 3614.svg"
													class="doc-image-size">
											</div>
											<div class="col-md-6">
												<div class="f-16 font-weight-bold greyish-brown">Drag
													or Drop a Documents</div>
												<div class="f-14 brown-grey">We support only excel
													file up to 100 mb.</div>
												<div class="f-16 font-weight-bold theme_color browse cursor-pointer">Browse</div>
											</div>
										</div>
									</div>
								</div>



								<!-- end of upload lead content -->
							</div>



							<div class="tab-pane fade" id="pills-preview" role="tabpanel"
								aria-labelledby="pills-preview-tab">

								<table class="table table-striped leadpreview">
									<thead>
										<tr>
											<th scope="col" class="black f-14 font-weight-bold">Lead Name</th>
											<th scope="col" class="black f-14 font-weight-bold">Email ID</th>
											<th scope="col" class="black f-14 font-weight-bold">Contact No.</th>
											<th scope="col" ></th>
										</tr>
									</thead>
									<tbody>
										<%for(int i=0;i<20;i++){ %>
										<tr>
											<th scope="row">3</th>
											<td>Larry</td>
											<td>the Bird</td>
											<td>
												<div class="d-flex">
													<button class="hw-30  border-0 bg-transparent">
														<i class="fal fa-edit text-white f-16 brown-grey"></i>
													</button>
													<button class="hw-30  border-0 bg-transparent">
														<i class="fal fa-trash-alt text-white f-16 brown-grey"></i>
													</button>

												</div>

											</td>
										</tr>
										<%} %>
									</tbody>
								</table>

							</div>



						</div>

					</div>

					<div class="modal-footer">
						<button class="btn modal-submit-btn modal-prev-btn f-14 font-weight-bold my-2 mr-auto " style="display:none" >Prev</button>
						<button class="btn leadsubmit f-14 modal-submit-btn font-weight-bold my-2  " style="display:none" >Submit</button>

						<button class="btn modal-submit-btn f-14 font-weight-bold my-2 continue" disabled>CONTINUE</button>

					</div>


				</div>
			</div>
		</div>
		<!-- end of add lead modal -->

	</div>
	</main>
	<script src="<%=baseURL%>assets/js/jquery-3.4.1.min.js"></script>
	<script src="<%=baseURL%>assets/js/popper.min.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap.min.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap-datepicker.min.js"></script>
	<script src="<%=baseURL%>assets/js/pagination.min.js"></script>
	<script src="<%=baseURL%>assets/js/salesken.js"></script>
	<script
		src="<%=baseURL%>assets/js/dropzone.min.js"></script>
	<script src="<%=baseURL%>assets/js/alertify.min.js"></script>

	<script src="<%=baseURL%>assets/js/lead.js">
	
	</script>
	<script>
	$( document ).ready(function() {
	$('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
		  var target = $(e.target).html(); // activated tab
		  $('#breadcrumb').html(target);
		    $('.targetpopup').popover('hide');
		    $('.qualifiedpopup').popover('hide');
		    $('.lostpopup').popover('hide');
		    $('.wonpopup').popover('hide');

		    
		});
	});
	</script>
	<script>
	

	$( document ).ready(function() {
	
		
		
		

	});
	

	
	</script>
</body>
</html>