
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>

<link rel="icon" href="<%=baseURL%>favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="<%=baseURL%>favicon.ico" type="image/x-icon" />

<link href="<%=baseURL%>assets/css/bootstrap-datepicker3.min.css?xsww" rel="stylesheet">
<link rel="stylesheet" href="<%=baseURL%>assets/css/dashboard.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/all.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/alertify.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/jquery.rateyo.css">
<link href="<%=baseURL%>assets/css/bootstrap-datepicker3.min.css?xsww" rel="stylesheet">
<link rel="stylesheet" href="<%=baseURL%>assets/css/wickedpicker.min.css">
<link href="<%=baseURL%>assets/css/summernote-bs4.css" rel="stylesheet">
<link href="<%=baseURL%>assets/css/bootstrap-select.min.css" rel="stylesheet">
<link rel="stylesheet" href="<%=baseURL%>assets/css/salesken_style_media_query.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/multiselect.css">
<link rel="stylesheet" href="https://daneden.github.io/animate.css/animate.min.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/taskDetail.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/createTask.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/report.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/salesken_style.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/createTask.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/pipeline.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/report.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/leads.css">