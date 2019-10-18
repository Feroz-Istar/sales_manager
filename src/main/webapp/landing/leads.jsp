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
<link rel="stylesheet" href="<%=baseURL%>assets/css/salesken_style_media_query.css">

</head>
<body data-base-url="<%=baseURL%>">
	<jsp:include page="../navbar/nav.jsp"></jsp:include>
	<main role="main">
	<div class="container-fluid salesken_container">
	
	
	
		<div
			class="row grey-white-bg theme_solid_border_bottom align-items-center py-3 px-4">
			<div class="col-md-6 col-12 d-flex align-items-center">
				<div class="display-1 black f-20 border-right-separation pr-3 fw-500 ">Leads</div>
				<div class="pl-3 pr-2 f-12 brown-grey ">Dashboard</div>
				<i class="fas fa-chevron-circle-right pr-2 f-12 brown-grey"></i>
				<div class=" f-12 brown-grey fw-500" id="breadcrumb">Leads</div>

			</div>
			<div class="col-md-6 col-12 d-lg-flex justify-content-md-end ">
				<div class="input-group position-relative pl-2 pr-2 search_width">
				<i class="fa fa-search f-12 brown-grey searchBox" ></i>
					<input id=""
						class="form-control  custom-taskborder brown-grey  f-14 search_height custom-result-selects"
						type="search" placeholder="Search"
						style="padding-right:30px">
				</div>
				<button class="btn btn-style f-12" data-toggle="modal"
					data-target="#addLeadModalCenter">UPLOAD NEW</button>
			</div>
		</div>


		<div class="row mb-5">
			<div class="col-md-12 bg-white ">
				<ul class="nav nav-tabs nav-mytabs  pt-2 mx-4" id="reportTab" role="tablist">
					<li class="nav-item"><a class="nav-item nav-link active" id="nav-target-tab"
							data-toggle="tab" href="#nav-target" role="tab"
							aria-controls="nav-target" aria-selected="true">Target</a></li>
					<li class="nav-item"><a
							class="nav-item nav-link" id="nav-qualified-tab"
							data-toggle="tab" href="#nav-qualified" role="tab"
							aria-controls="nav-qualified" aria-selected="false">Qualified</a></li>
					<li class="nav-item"><a class="nav-item nav-link" id="nav-lost-tab" data-toggle="tab"
							href="#nav-lost" role="tab" aria-controls="nav-lost"
							aria-selected="false">Lost Leads</a></li>
						<li class="nav-item"><a class="nav-item nav-link"
							id="nav-win-tab" data-toggle="tab" href="#nav-win" role="tab"
							aria-controls="nav-win" aria-selected="false">Won Leads</a></li>
				</ul>
				<div class="tab-content p-0 mytab-content" id="nav-tabContent">
					<div class="tab-pane fade show active" id="nav-target"
						role="tabpanel" aria-labelledby="nav-target-tab">
						<!-- start of target content -->

						<div
							class="row align-items-center bg-white   theme_solid_border_bottom pt-3 pb-3 px-4">
							<div class="col-md-3 text-result-found	">
								<strong class="number-of-results">504</strong> Results Found
							</div>
							<div class="col-md-9 d-md-flex justify-content-end  ">

								<select class="custom-result-selects" id="source">
									<option>Filter by Source Type</option>
									<option>Default select</option>
								</select>

								<div class="istar-dropdown-task mr-2 custom-taskborder select_focus">
									<button class="istar-dropdown-arrow dropdown-toggle "
										id="activity" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										<span class="sr-only">Toggle Dropdown</span> Filter by
										Activities &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
									</button>
									<div
										class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu">
										<button class="dropdown-item" type="button">
											<img src="<%=baseURL%>assets/image/calltask.svg" alt="call"
												class="task-dropdown"> Call Task
										</button>
										<button class="dropdown-item" type="button">
											<img src="<%=baseURL%>assets/image/emailtask.svg" alt="email"
												class="task-dropdown"> Email Task
										</button>
										<button class="dropdown-item" type="button">
											<img src="<%=baseURL%>assets/image/webinartask.svg" alt="webinar"
												class="task-dropdown"> Webinar Task
										</button>
										<button class="dropdown-item" type="button">
											<img src="<%=baseURL%>assets/image/presentation.svg" alt="presentation"
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

						<div class="row pl-0 py-4 shadow-bottom theme_dotted_border_bottom px-4 ">
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

						<div class="row align-items-center theme_solid_border_bottom py-4 px-4">
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
							class="row align-items-center theme_solid_border_bottom py-4 px-4 <%=bgcolor%>">
							<div class="col-md-2 col">
								<div class="f-14 fw-500 black text-truncate" title="Vehement Capital">Vehement Capital
									Partners</div>
								<div class="f-14 brownish-grey text-truncate" title="Miriam Franklin">Miriam Franklin</div>
							</div>
							<div class="col-md-2 col">
								<div class="f-14 brownish-grey text-break">
									infotech@gmail.com <i class="fas fa-info-circle soft-blue"></i>
								</div>
							</div>
							<div class="col-md-2 col">
								<div class="f-14 brownish-grey text-break">
									+91 445 546 6456 <i class="fas fa-info-circle soft-blue"></i>
								</div>
							</div>
							<div class="col-md-2 col ">
								<div class="f-14 brownish-grey text-truncate" title="Web Form">Web Form</div>
							</div>
							<div class="col-md-4 col-12 ">
								<div class="row  align-items-center">
									<div class="col-md-11">
										<div class="row">
											<img class="rounded-circle imgsize-40" alt="user-img"
												src="<%=baseURL%>assets/image/11.png">
											<div class="col-md-10">
												<div class="f-14 greyish-brown text-truncate" title="Stanley Howard">Stanley Howard</div>
												<div class="f-12 brown-grey text-truncate" title="Team 01">Team 01</div>
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
												
												<button class="dropdown-item" data-toggle="modal"
													data-target="#editLeadModalCenter">
													<img src="<%=baseURL%>assets/image/edit.svg" alt="edit"
														srcset="" class="mr-2">Edit
												</button>
												<button class="dropdown-item" href="#">
													<img src="<%=baseURL%>assets/image/delete.svg" alt="delete"
														srcset="" class="mr-2">Delete
												</button>
												<button class="dropdown-item"  onclick="window.location.href = 'task_lead_detail.jsp'">
													<img src="<%=baseURL%>assets/image/details.png" alt="details"
														srcset="" class="mr-2">Details
												</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<%} %>

						<div class="row py-4 pb-5 px-4 ">
							<div class="col-md-12  d-flex justify-content-end p-0">
								<div class="page">
									<ul class="salesken pagination mb-0"></ul>
								</div>
							</div>
						</div>
						<!-- end of target content -->
					</div>

					<div class="tab-pane fade" id="nav-qualified" role="tabpanel"
						aria-labelledby="nav-qualified-tab">

						<!-- start of qualified tab content-->

						<div
							class="row align-items-center theme_solid_border_bottom py-3 px-4">
							<div class="col-md-3 text-result-found	">
								<strong class="number-of-results">03</strong> Results Found
							</div>
							<div class="col-md-9 d-md-flex justify-content-end  ">
								<div class="input-group date custom-calendar">
									<input type="text" id="lead_qualified_datepicker"
										class="form-control  custom-dateselect" value="12-02-2012">
									<div class="input-group-addon"
										onclick="showqualifiedCalendar()">
										<img src="<%=baseURL%>/assets/image/calendar.svg" class="pr-1" alt="calendar"/>
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

						<div class="row pl-2 py-4 theme_dotted_border_bottom shadow-bottom px-4">
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

						<div class="row align-items-center theme_solid_border_bottom py-4 px-4">
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
							class="row align-items-center theme_solid_border_bottom py-4 px-4 <%=bgcolor%>">
							<div class="col-md-2 col">
								<div class="f-14 fw-500 black text-truncate" title="Team 01">Zencorporation
									Pot. Ltd.</div>
								<div class="f-14 brownish-grey text-truncate" title="Miriam Franklin">Miriam Franklin</div>
							</div>
							<div class="col-md-2 col">
								<div class="f-14 brownish-grey text-break">
									infotech@gmail.com <i class="fas fa-info-circle soft-blue"></i>
								</div>
							</div>
							<div class="col-md-2 col">
								<div class="f-14 brownish-grey text-break">
									+91 445 546 6456 <i class="fas fa-info-circle soft-blue"></i>
								</div>
							</div>
							<div class="col-md-2 col d-flex align-items-center">
								<img class="hw-24 pr-2" alt="callicon"
									src="<%=baseURL%>assets/image/calltask.svg">
								<div class="f-14 greyish-brown pr-2  text-break">Call -</div>
								<div class="f-12 brown-grey">June 15, 2019 02:45 PM</div>
							</div>
							<div class="col-md-4 col-12 ">
								<div class="row  align-items-center">
									<div class="col-md-11">
										<div class="row">
											<img class="rounded-circle imgsize-40"
												src="<%=baseURL%>assets/image/11.png" alt="user">
											<div class="col-md-10">
												<div class="f-14 greyish-brown text-truncate" title="Stanley Howard">Stanley Howard</div>
												<div class="f-12 brown-grey text-truncate" title="Pipeline - New Sales
													Pipeline">Pipeline - New Sales
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
												<button class="dropdown-item"  data-toggle="modal"
													data-target="#wonLeadModalCenter">
													<img src="<%=baseURL%>assets/image/won.svg" alt="won"
														srcset="" class="mr-2"> Won
												</button>
												<button class="dropdown-item" data-toggle="modal"
													data-target="#lostLeadModalCenter">
													<img src="<%=baseURL%>assets/image/lost.svg" alt="lost"
														srcset="" class="mr-2">Lose
												</button>
												<button class="dropdown-item" data-toggle="modal"
													data-target="#editLeadModalCenter">
													<img src="<%=baseURL%>assets/image/edit.svg" alt="edit"
														srcset="" class="mr-2">Edit
												</button>
												<button class="dropdown-item" href="#">
													<img src="<%=baseURL%>assets/image/delete.svg" alt="delete"
														srcset="" class="mr-2">Delete
												</button>
												<button class="dropdown-item" onclick="window.location.href = 'task_lead_detail.jsp'">
													<img src="<%=baseURL%>assets/image/details.png" alt="detail"
														srcset="" class="mr-2">Details
												</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<%} %>
						<div class="row py-4 pb-5 px-4 ">
							<div class="col-md-12  d-flex justify-content-end p-0">
								<div class="page">
									<ul class="salesken pagination mb-0"></ul>
								</div>
							</div>
						</div>
						<!-- end of qualified tab content -->

					</div>
					<div class="tab-pane fade" id="nav-lost" role="tabpanel"
						aria-labelledby="nav-lost-tab">

						<!-- start of lost leads tab content-->

						<div
							class="row align-items-center  theme_solid_border_bottom py-3 px-4">
							<div class="col-md-2 col-xl-3 text-result-found	font_text_result">
								<strong class="number-of-results">03</strong> Results Found
							</div>
							<div class="col-md-10 col-xl-9 d-md-flex justify-content-end p-0 ">
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

						<div class="row pl-2 py-4 shadow-bottom px-4 theme_dotted_border_bottom">

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

						<div class="row align-items-center theme_solid_border_bottom py-4  px-4">
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
							class="row align-items-center theme_solid_border_bottom py-4  px-4 <%=bgcolor%>">
							<div class="col-md-2 col">
								<div class="f-14 fw-500 black text-truncate" title="Vehement Capital Partners.">Vehement Capital
									Partners.</div>
								<div class="f-14 brownish-grey text-truncate" title="Miriam Franklin">Miriam Franklin</div>
							</div>
							<div class="col-md-2 col">
								<div class="f-14 brownish-grey text-break">
									infotech@gmail.com <i class="fas fa-info-circle soft-blue"></i>
								</div>
							</div>
							<div class="col-md-2 col">
								<div class="f-14 brownish-grey text-break">
									+91 445 546 6456 <i class="fas fa-info-circle soft-blue"></i>
								</div>
							</div>
							<div class="col-md-2 col d-flex align-items-center">
								<img class="hw-24 pr-2" alt="callicon"
									src="<%=baseURL%>assets/image/calltask.svg">
								<div class="f-14 greyish-brown pr-2 text-break">Call -</div>
								<div class="f-12 brown-grey">June 15, 2019 02:45 PM</div>
							</div>
							<div class="col-md-4 col-12 ">
								<div class="row  align-items-center">
									<div class="col-md-11">
										<div class="row">
											<img class="rounded-circle imgsize-40" alt="user-img"
												src="<%=baseURL%>assets/image/11.png">
											<div class="col-md-10">
												<div class="f-14 greyish-brown text-truncate" title="Stanley Howard">Stanley Howard</div>
												<div class="f-12 brown-grey text-truncate" title="Pipeline - New Sales Pipeline">Pipeline - New Sales
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
											
											<button class="dropdown-item" data-toggle="modal"
													data-target="#editLeadModalCenter">
												<img src="<%=baseURL%>assets/image/edit.svg" alt="edit"
													srcset="" class="mr-2">Edit
											</button>
											<button class="dropdown-item" href="#">
												<img src="<%=baseURL%>assets/image/delete.svg" alt="delete"
													srcset="" class="mr-2">Delete
											</button>
											<button class="dropdown-item" onclick="window.location.href = 'task_lead_detail.jsp'">
												<img src="<%=baseURL%>assets/image/details.png" alt="details"
													srcset="" class="mr-2">Details
											</button>
										</div>

									</div>
								</div>
							</div>
						</div>
						<%} %>
						<div class="row py-4 pb-5 px-4 ">
							<div class="col-md-12  d-flex justify-content-end p-0">
								<div class="page">
									<ul class="salesken pagination mb-0"></ul>
								</div>
							</div>
						</div>

						<!-- end of lost leads tab content -->

					</div>
					<div class="tab-pane fade" id="nav-win" role="tabpanel"
						aria-labelledby="nav-win-tab">

						<!-- start of won leads content -->

						<div
							class="row align-items-center  theme_solid_border_bottom py-3 px-4">
							<div class="col-md-2 text-result-found font_text_result	">
								<strong class="number-of-results">03</strong> Results Found
							</div>
							<div class="col-md-10 d-md-flex justify-content-end p-0 ">
								<div class="input-group date custom-calendar">
									<input type="text" id="lead_won_datepicker"
										class="form-control  custom-dateselect" value="12-02-2012">
									<div class="input-group-addon" onclick="showwonCalendar()">
										<img src="<%=baseURL%>/assets/image/calendar.svg" class="pr-1"/>
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

						<div class="row pl-2 py-4 shadow-bottom px-4 theme_dotted_border_bottom shadow-bottom">

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

						<div class="row align-items-center theme_solid_border_bottom py-4 px-4">
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
							class="row align-items-center theme_solid_border_bottom py-4 px-4  <%=bgcolor%>">
							<div class="col-md-2 col">
								<div class="f-14 fw-500 black text-truncate" title="Vehement Capital Partners.">Vehement Capital
									Partners.</div>
								<div class="f-14 brownish-grey text-truncate" title="Miriam Franklin">Miriam Franklin</div>
							</div>
							<div class="col-md-2 col">
								<div class="f-14 brownish-grey text-break">
									infotech@gmail.com <i class="fas fa-info-circle soft-blue"></i>
								</div>
							</div>
							<div class="col-md-2 col">
								<div class="f-14 brownish-grey text-break">
									+91 445 546 6456 <i class="fas fa-info-circle soft-blue"></i>
								</div>
							</div>
							<div class="col-md-2 col ">
							<div class="d-flex align-items-center">
								<img class="hw-24 pr-2" alt="callicon"
									src="<%=baseURL%>assets/image/calltask.svg">
								<div class="f-14 greyish-brown pr-2 text-break">Call -</div>
								<div class="f-12 brown-grey">June 15, 2019 02:45 PM</div>
								</div>
							</div>
							<div class="col-md-4 col-12 ">
								<div class="row  align-items-center">
									<div class="col-md-11">
										<div class="row">
											<img class="rounded-circle imgsize-40"  alt="user-img"
												src="<%=baseURL%>assets/image/11.png">
											<div class="col-md-10">
												<div class="f-14 greyish-brown text-truncate" title="Stanley Howard">Stanley Howard</div>
												<div class="f-12 brown-grey  text-truncate" title="Pipeline - New Sales Pipeline">Pipeline - New Sales
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
											
											<button class="dropdown-item" data-toggle="modal"
													data-target="#editLeadModalCenter">
												<img src="<%=baseURL%>assets/image/edit.svg" alt="edit"
													srcset="" class="mr-2">Edit
											</button>
											<button class="dropdown-item" href="#">
												<img src="<%=baseURL%>assets/image/delete.svg" alt="delete"
													srcset="" class="mr-2">Delete
											</button>
											<button class="dropdown-item" onclick="window.location.href = 'task_lead_detail.jsp'">
												<img src="<%=baseURL%>assets/image/details.png" alt="details"
													srcset="" class="mr-2">Details
											</button>
										</div>

									</div>
								</div>
							</div>
						</div>
						<%} %>
					<div class="row py-4 pb-5 px-4 ">
							<div class="col-md-12  d-flex justify-content-end p-0">
								<div class="page">
									<ul class="salesken pagination mb-0"></ul>
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
					<form id="lostleadmodal">
						<div class="row pb-4">
							<div class="col-md-12 f-18 font-weight-bold greyish-brown text-truncate" title="Zencorporation Pot. Ltd.">
								Zencorporation Pot. Ltd.</div>
						</div>

						<div class="row pb-4">
							<div class="col-md-4 border-right-separation">
								<div class="f-14 brownish-grey">Contact Person</div>
								<div class="f-16 fw-500 black text-truncate" title="">Miriam Franklin</div>
							</div>
							<div class="col-md-4 border-right-separation">
								<div class="f-14 brownish-grey">Recent Task</div>
								<div class="f-16 fw-500 black">Call</div>
							</div>
							<div class="col-md-4 ">
								<div class="f-14 brownish-grey">Deal Value</div>
								<div class="f-16 fw-500 black">$ 208</div>
							</div>
						</div>

						<div class="row pt-4">
							<div class="col-md-12">
								<textarea
									class="custom-modal-textarea f-14 brown-grey w-100 p-2"
									id="reasonforlosing" name="reasonforlosing" rows="6" placeholder="Type Reason"></textarea>
							</div>
						</div>
					</form>
					</div>
					<div class="modal-footer">
						<button type="button"
							class="btn theme_color f-14 font-weight-bold">Reset</button>
						<button type="button"
							class="btn modal-submit-btn f-14 font-weight-bold"
							 id="lostleadsubmit">SUBMIT</button>
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
													<img src="<%=baseURL%>assets/image/arrow_right.svg" alt="arrow-right">
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
												<img src="<%=baseURL%>assets/image/xlsdoc.svg" alt="xmlicon"
													class="doc-image-size">
											</div>
											<div class="col-md-6">
												<div class="f-16 fw-500 greyish-brown">Drag
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

		<!-- start of won lead modal -->

		<div class="modal fade" id="wonLeadModalCenter" tabindex="-1"
			role="dialog" aria-labelledby="wonLeadModalCenterTitle"
			aria-hidden="true">
			<div class="modal-dialog modal-lg modal-dialog-centered"
				role="document">
				<div class="modal-content rounded-0 px-3 lostleadmodalsize">
					<div class="row shadow-sm p-3">
						<div
							class="col-md-11 col-11 modal-title greyish-brown f-18 font-weight-bold"
							id="wonLeadModalCenterTitle">Won Lead</div>
						<button type="button" class="col-md-1 col-1 close"
							data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
					<form id="wonleadmodal">
						<div class="row pb-4">
							<div class="col-md-12 f-18 font-weight-bold greyish-brown text-truncate" title="">
								Zencorporation Pot. Ltd.</div>
						</div>

						<div class="row pb-4">
							<div class="col-md-4 border-right-separation">
								<div class="f-14 brownish-grey">Contact Person</div>
								<div class="f-16 fw-500 black text-truncate" title="">Miriam Franklin</div>
							</div>
							<div class="col-md-4 border-right-separation">
								<div class="f-14 brownish-grey">Recent Task</div>
								<div class="f-16 fw-500 black">Call</div>
							</div>
							<div class="col-md-4 ">
								<div class="f-14 brownish-grey">Deal Value</div>
								<div class="f-16 fw-500 black">$ 208</div>
							</div>
						</div>

						<div class="row pt-4">
							<div class="col-md-12">
								<textarea
									class="custom-modal-textarea f-14 brown-grey w-100 p-2"
									id="reasonforwin" name="reasonforwin" rows="6" placeholder="Type Reason"></textarea>
							</div>
						</div>
					</form>
					</div>
					<div class="modal-footer">
						<button type="button"
							class="btn theme_color f-14 font-weight-bold">Reset</button>
						<button type="button"
							class="btn modal-submit-btn f-14 font-weight-bold"
							 id="wonleadsubmit">SUBMIT</button>
					</div>
				</div>
			</div>
		</div>

		<!-- end of won lead modal -->
		
		
		<!-- start of edit lead modal -->
		<div class="modal fade" id="editLeadModalCenter" tabindex="-1" role="dialog" aria-labelledby="editLeadModalCenterTitle" aria-hidden="true">
		  <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
		    <div class="modal-content rounded-0 px-3 eventmodalsize">
		    	<div class="row shadow-sm p-3" > 
					<div class="col-md-11 col-11 modal-title greyish-brown f-18 font-weight-bold" id="editLeadModalCenterTitle">Edit Lead</div>
					<button type="button" class="col-md-1 col-1 close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
		      <div class="modal-body">
		      <form id="updateLeadForm">
		       	<div class="row pb-4">
		       		<div class="col-md-6">
		       			<div class="f-14 fw-500 pb-1">Company Name</div>
		       			<input type="text" class="custom-modal-input w-100 form-control f-14" id="company_name" name="company_name" aria-describedby="company_name" placeholder="Type here">
		       		</div>
		       		<div class="col-md-6">
		       			<div class="f-14 fw-500 pb-1">Lead Source</div>
		       			<select class="form-control custom-modal-input w-100 f-14 brown-grey" id="leadSource" name="leadSource" >
					      <option value="0">Select here</option>
					      <option value="online">Online</option>
					      <option value="marketing">Marketing</option>
					      <option value="offline">Offline</option>
					    </select>
		       		</div>
		       	</div>
		    	 <div class="row pb-4">
		       		<div class="col-md-6">
		       			<div class="f-14 fw-500 pb-1">City</div>
		       			<input type="text" class="custom-modal-input w-100 form-control f-14" id="city" name="city" aria-describedby="city" placeholder="Type here">
		       		</div>
		       		<div class="col-md-6">
		       			<div class="f-14 fw-500 pb-1">State</div>
		       			<input type="text" class="custom-modal-input w-100 form-control f-14" id="state" name="state" aria-describedby="state" placeholder="Type here">
		       		</div>
		       	</div>
		       	
		       	<div class="row pb-4">
		       		<div class="col-md-6">
		       			<div class="f-14 fw-500 pb-1">Country</div>
		       			<input type="text" class="custom-modal-input w-100 form-control f-14" id="country" name="country" aria-describedby="country" placeholder="Type here">
		       		</div>
		       		<div class="col-md-6">
		       			<div class="f-14 fw-500 pb-1">Website</div>
		       			<input type="text" class="custom-modal-input w-100 form-control f-14" id="website" name="website" aria-describedby="website" placeholder="Type here">
		       		</div>
		       	</div>
				<div class="row pb-4">
					<div class="col-md-12">
						<div class="f-14 fw-500 pb-1">About Company</div>
						<textarea class="custom-modal-textarea w-100" id="aboutcompany" name="aboutcompany" rows="6"></textarea>
					</div>
				</div>
				
				<div class="row pb-4">
					<div class="col-md-12">
						<div class="f-14 fw-500 pb-1">Address</div>
						<textarea class="custom-modal-textarea w-100" id="address" name="address" rows="6"></textarea>
					</div>
				</div>
				</form>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn theme_color f-14 font-weight-bold">Reset</button>
		        <button type="button" class="btn modal-submit-btn f-14 font-weight-bold" id="updateLead">UPDATE</button>
		      </div>
		    </div>
		  </div>
		</div>
	<!-- end of edit lead modal -->

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
			  	<script src="<%=baseURL%>assets/js/jquery.validate.min.js"></script>

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