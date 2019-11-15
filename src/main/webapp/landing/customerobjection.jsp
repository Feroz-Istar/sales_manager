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
<title>Customer Objection</title>
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
<body onload="load()">
	<jsp:include page="../navbar/nav.jsp"></jsp:include>
	<main role="main">
<div class="container-fluid salesken_container">
<div class="row grey-white-bg theme_solid_border_bottom align-items-center m-0 pt-15 pb-15 pl-40 pr-40">
<div class="col-md-6 col-12 d-flex align-items-center mb-4 mb-md-0 p-0">
<i class="fas fa-arrow-left black f-20 cursor-pointer" onclick="window.location.href = 'report.jsp'"></i>
<div class="display-1 black f-20 border-right-separation pr-20 pl-20 fw-500">Objections</div>
<div class=" f-12 brown-grey pl-20">Dashboard</div>
<i class="fas fa-chevron-circle-right f-12 brown-grey pl-2 pr-2"></i>
<div class=" f-12 brown-grey ">Reports</div>
<i class="fas fa-chevron-circle-right f-12 brown-grey pl-2 pr-2"></i>
<div class=" f-12 brown-grey ">Customer</div>
<i class="fas fa-chevron-circle-right f-12 brown-grey pl-2 pr-2"></i>
<div class=" f-12 brown-grey fw-500">Objections</div>

</div>
</div>


<div class="row align-items-center bg-white theme_solid_border_bottom m-0 pt-15 pb-15 pl-40 pr-40">
<div class="col-md-3 text-result-found p-0">
<strong class="number-of-results">05</strong> Result Found
</div>

</div>

<div class="row very-light-pink-grey-bg m-0">
 <div class="col-md-3 col-12 pr-0 tabcol flex-grow-1 border-right pb-5 minh-650 p-0 pl-20">
   <div class="nav flex-column nav-pills h-100" id="piplelinestage-tab" role="tablist" aria-orientation="vertical">
   <%for(int i=0;i<5;i++){
    String isactive="";
    if(i==0){
    isactive="active";
    }%>
     <a class="nav-link p-0 pt-20 pb-20 <%=isactive%> text-truncate" title="Stage 01" id="objection-<%=i%>-tab" data-toggle="pill" href="#objection-<%=i%>" role="tab" aria-controls="objection-<%=i%>" aria-selected="true">
     <div class="row m-0 ">
     <div class="col-3 p-0 col objection_count f-42 font-weight-bold pl-20 greyish-brown">04</div>
     <div class="col-9 p-0 col d-flex align-items-center objection_text fw-500 f-14 pl-40 pr-20"><p class="mb-0 blue-black">It is too expensive</p></div>
     </div></a>
    <% }%>
   
   
    </div>
 </div>
 <div class="col-md-9 col-12 bg-white tabcontentcol p-0">
   <div class="tab-content" id="piplelinestage-tabContent">
   
   <%for(int j=0;j<5;j++){ String isactive="" ;
   if(j==0){
    isactive="active";
   }
   %>
     <div class="tab-pane fade show pl-0 <%=isactive%>" id="objection-<%=j%>" role="tabpanel" aria-labelledby="objection-<%=j%>-tab">
     
     
      <div class="row align-items-center theme_solid_border_bottom m-0 pl-40 pr-40 pt-25 pb-25">
      <div class="col-md-4 col p-0">
      <button class="btn p-0 black f-14 font-weight-bold">
      Lead Name <i class="fas fa-sort brown-grey ml-2"></i>
      </button>
      </div>
     
     
<div class="col-md-8 col p-0">
      <button class="btn p-0 black f-14 font-weight-bold">
      Objections
      </button>
      </div>
</div>
     
     <%for(int k=0;k<6;k++){
    	 String bgcolor="bg-white";
    	 if(k%2!=0){
    	 	bgcolor="cream_white";
    	 }%>
    	 
      <div class="row theme_solid_border_bottom align-items-center pt-30 pb-30 pl-40 pr-40 <%=bgcolor%> m-0">
      <div class="col-md-4 p-0">
      <div class="f-14 black fw-500 text-truncate" title="Accenture Consulting Inc.">Accenture Consulting Inc.</div>
      <div class="f-14 brownish-grey fw-500">Robert Wolken</div>
      </div>
 
      <div class="col-md-8 p-0">
      <p class="blue-black f-14 mb-0">Sed tempus odio eget mattis scelerisque.Pellentesque pellentesque pharetra elit non fringilla.Sed in libero diam.pellentesque sem quam,</p>
      </div>
      </div>
     <%} %>
	</div>
    <% } %>
   
   
     
   

   
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