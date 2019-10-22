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
<title>Customer Feedback</title>
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>
<link rel="icon" href="<%=baseURL%>favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="<%=baseURL%>favicon.ico"
	type="image/x-icon" />
<link rel="stylesheet" href="<%=baseURL%>assets/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/salesken_style.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/all.css">

</head>
<body>
	<jsp:include page="../navbar/nav.jsp"></jsp:include>
	<main role="main">
	<div class="container-fluid salesken_container">
		<div
			class="row grey-white-bg theme_solid_border_bottom align-items-center py-3 px-4">
			<div class="col-md-6 col-12 d-flex align-items-center mb-4 mb-md-0">
				<i class="fas fa-arrow-left black f-20 pr-3 cursor-pointer"
					onclick="window.location.href = 'report.jsp'"></i>
				<div
					class="display-1 black f-20 border-right-separation pr-3  fw-500">Feedback</div>
				<div class="pl-3 pr-2 f-12 brown-grey ">Dashboard</div>
				<i class="fas fa-chevron-circle-right pr-2 f-12 brown-grey"></i>
				<div class=" pr-2 f-12 brown-grey ">Reports</div>
				<i class="fas fa-chevron-circle-right pr-2 f-12 brown-grey"></i>
				<div class="pr-2 f-12 brown-grey ">Customer</div>
				<i class="fas fa-chevron-circle-right pr-2 f-12 brown-grey"></i>
				<div class=" f-12 brown-grey fw-500">Feedback</div>

			</div>
		</div>


		<div
			class="row align-items-center bg-white theme_solid_border_bottom  py-3 px-4">
			<div class="col-md-3 text-result-found ">
				<strong class="number-of-results">06</strong> Results Found
			</div>

		</div>

		<div class="row very-light-pink-grey-bg pl-4">
			<div
				class="col-md-3 col-12 pr-0 tabcol flex-grow-1 border-right pb-5 minh-650">
				<div class="nav flex-column nav-pills h-100" id="piplelinestage-tab"
					role="tablist" aria-orientation="vertical">
					<%
						for (int i = 0; i < 5; i++) {
							String isactive = "";
							if (i == 0) {
								isactive = "active";
							}
					%>
					<a class="nav-link py-3 <%=isactive%> text-truncate"
						title="Stage 01" id="products-<%=i%>-tab" data-toggle="pill"
						href="#products-<%=i%>" role="tab" aria-controls="products-<%=i%>"
						aria-selected="true">Products</a>
					<%
						}
					%>


				</div>
			</div>

			<div class="col-md-9 col-12 bg-white tabcontentcol">
				<div class="tab-content" id="piplelinestage-tabContent">

					<%
						for (int j = 0; j < 5; j++) {
							String isactive = "";
							if (j == 0) {
								isactive = "active";
							}
					%>
					<div class="tab-pane fade show pl-0 <%=isactive%>"
						id="products-<%=j%>" role="tabpanel"
						aria-labelledby="products-<%=j%>-tab">


						<div
							class="row align-items-center theme_solid_border_bottom py-3 pl-4">
							<div class="col-md-4 col">
								<button class="btn p-0 black f-14 font-weight-bold">
									Lead Name <i class="fas fa-sort brown-grey ml-2"></i>
								</button>
							</div>


							<div class="col-md-8 col">
								<button class="btn p-0 black f-14 font-weight-bold">
									Customer Feedbak</button>
							</div>
						</div>


						<div
							class="row py-4 theme_solid_border_bottom align-items-center pl-4 bg-white">
							<div class="col-md-4">
								<div class="f-14 black fw-500 text-truncate"
									title="Accenture Consulting Inc.">Accenture Consulting
									Inc.</div>
								<div class="f-14 brownish-grey fw-500">Robert Wolken</div>
							</div>

							<div class="col-md-8">
								<p class="blue-black f-14 mb-0">Sed tempus odio eget mattis
									scelerisque.Pellentesque pellentesque pharetra elit non
									fringilla.Sed in libero diam.pellentesque sem quam,</p>
							</div>
						</div>

						<div
							class="row py-4 theme_solid_border_bottom align-items-center pl-4 very-light-pink-grey-bg">
							<div class="col-md-4">
								<div class="f-14 black fw-500 text-truncate"
									title="Accenture Consulting Inc.">TEK Consulting Inc.</div>
								<div class="f-14 brownish-grey fw-500">Johnni Owens</div>
							</div>

							<div class="col-md-8">
								<p class="blue-black f-14 mb-0">Vestibulum sagittis mattis
									nulla, a sagittis lacus placerat at. Proin tincidunt, metus
									eget ultricies porttitor,augue nisi convallis libero,ut
									sagittis</p>
							</div>
						</div>

						<div
							class="row py-4 theme_solid_border_bottom align-items-center pl-4 bg-white">
							<div class="col-md-4">
								<div class="f-14 black fw-500 text-truncate"
									title="Accenture Consulting Inc.">Vehement Capital Tech</div>
								<div class="f-14 brownish-grey fw-500">Gladys Perkins</div>
							</div>

							<div class="col-md-8">
								<p class="blue-black f-14 mb-0">Aenean diam nisi, facilisis
									ut euismod sed,fermentum convallis magna.Curabitur ornare
									vestibulum risus</p>
							</div>
						</div>

						<div
							class="row py-4 theme_solid_border_bottom align-items-center pl-4 very-light-pink-grey-bg">
							<div class="col-md-4">
								<div class="f-14 black fw-500 text-truncate"
									title="Accenture Consulting Inc.">Mahiti Consulting Inc.</div>
								<div class="f-14 brownish-grey fw-500">Ray Pearson</div>
							</div>

							<div class="col-md-8">
								<p class="blue-black f-14 mb-0">Fusce dignissim lorem eu
									lorem solliditudin dictum. Cras commodo vel metus a lacinia</p>
							</div>
						</div>

					</div>
					<%
						}
					%>






				</div>
			</div>
		</div>

	</div>
	</main>


	<script src="<%=baseURL%>assets/js/jquery-3.4.1.min.js"></script>
	<script src="<%=baseURL%>assets/js/popper.min.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap.min.js"></script>
	<script src="<%=baseURL%>assets/js/pagination.min.js"></script>
	<script src="<%=baseURL%>assets/js/salesken.js"></script>
</body>
</html>