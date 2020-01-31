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
<body onload="load()" data-baseurl="<%=baseURL %>">
	<jsp:include page="../../../navbar/nav.jsp"></jsp:include>
	<main role="main">
	<div class="container-fluid salesken_container">
		<div
			class="row grey-white-bg theme_solid_border_bottom align-items-center py-3 px-4">
			<div class="col-md-6 col-12 d-flex align-items-center mb-4 mb-md-0">
				<i class="fas fa-arrow-left black f-20 pr-3 cursor-pointer"
					onclick="window.location.href = '../../report.jsp'"></i>
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
				<div class="nav flex-column nav-pills h-100  taskdetail-tab-list" id="feedback-tab"
					role="tablist" aria-orientation="vertical">
					
				</div>
			</div>

			<div class="col-md-9 col-12 bg-white tabcontentcol">
				<div class="tab-content" id="feedback-tabContent">

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
	
	 <script type="text/javascript">
      var contextPath=$('body').data('baseurl');
      $(document).ready(function() {
      loadCostumerFeedbackTab()
      })
      function loadCostumerFeedbackTab(){
    	  var customerfeedback_array=[];
  		for(var i =0;i<4;i++){
  			var customerFeedback={};
  			customerFeedback.id= i;
  			customerFeedback.count=i;
  			customerfeedback_array.push(customerFeedback);
  		} 
  	
  		var costumerfeedbackReport_promises = [];
		for(var customerFeedback1 of customerfeedback_array){
			costumerfeedbackReport_promises.push(fetchCostumerFeedbackTab(customerFeedback1));
		}
		  $( "#feedback-tab" ).empty();
  		var fetchAllCall = Promise.all(costumerfeedbackReport_promises.map(p => p.catch(error => { console.log(error); return null; })));
  		fetchAllCall.then((results) =>{
  			for(var costumerfeedbackTabHtml of results){
  				  $( "#feedback-tab" ).append( costumerfeedbackTabHtml );
    
  			}
  			

			var first_feedback_id = $($( "#feedback-tab" ).children()[0]).data('id');
			console.log(first_feedback_id);
			$('#customer_feedback'+first_feedback_id+'-tabs').tab('show')

			populateFeedbackTabContent(first_feedback_id);
			/*Feedbackection tab change event*/
		 	 $('#feedback-tab').on('shown.bs.tab', function (e) {
				
				 var id =  $(e.target).data('id');
				 populateFeedbackTabContent(id);
				});   
  			
  		});	
		
      }
      
      function populateFeedbackTabContent(first_feedback_id){
  		var customerFeedback={};
  		customerFeedback.id= first_feedback_id;
  		var vv = fetchFeedbackTabContent(customerFeedback);
  		vv.done(function(data){
  			$('#feedback-tabContent').empty();
  			$('#feedback-tabContent').append(data);
  		});
  	}
      
      function fetchCostumerFeedbackTab(customerFeedback){
    		return $.post(contextPath+"report/customer/customer_feedback/customer_feedback_tab.jsp",JSON.stringify(customerFeedback));
      }
      
      function fetchFeedbackTabContent(customerFeedback){
  		return $.post(contextPath+"report/customer/customer_feedback/customer_feedback_tabcontent.jsp",JSON.stringify(customerFeedback));
  	}
 
      </script>
	
</body>
</html>