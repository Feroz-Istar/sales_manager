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
	<link rel="stylesheet" href="<%=baseURL%>assets/css/jquery.rateyo.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/salesken_style_media_query.css">

</head>
<body>
	<jsp:include page="../navbar/nav.jsp"></jsp:include>
	<main role="main">
	<div class="container-fluid salesken_container">
		<div class="row my-4" style="border:1px solid #000;">
		        <input class="form-control col-md-11 border-0" type="text" placeholder="Search" aria-label="Search" id="search">
		        <button class="btn text-mute col-md-1  border-0" type="submit">
		        	<i class="fas fa-search"></i>
		        </button>
		</div>
		
		
		 <div class="row" id="myrow">
		 
        </div>
	
	
	</div>
	</main>

	<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	  <div class="modal-dialog modal-dialog-centered" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalCenterTitle">Modal title</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
	        <div class="form-row">
			    <div class="col">
			      <input type="text" class="form-control" placeholder="name" id="name">
			    </div>
			    <div class="col">
			      <input type="text" class="form-control" placeholder="Email" id="email">
			    </div>
			  </div>
			  <div class="form-row my-3">
			    <div class="col">
			      <input type="text" class="form-control" placeholder="phone" id="phone">
			    </div>
			    </div>
	      </div>
	    <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
	    </div>
	  </div>
	</div>
	<script src="<%=baseURL%>assets/js/jquery-3.4.1.min.js"></script>
	<script type="text/javascript" src="http://botmonster.com/jquery-bootpag/jquery.bootpag.js"></script>
	
	<script src="<%=baseURL%>assets/js/popper.min.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap.min.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap-datepicker.min.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap-datepicker.min.js"></script>
	<script src="<%=baseURL%>assets/js/highcharts.js"></script>
	<script src="<%=baseURL%>assets/js/exporting.js"></script>
	<script src="<%=baseURL%>assets/js/pagination.min.js"></script>
	
	<script>
	$( document ).ready(function() {
		$('#page').Pagination({ // id to initial draw and use pagination
            size: 87, // size of list input
            pageShow: 5, // 5 page-item per page
            page: 1, // current page (default)
            limit: 10, // current limit show perpage (default)
    	}, function(obj){ // callback function, you can use it to re-draw table or something
            	console.log(obj)
    	});
		
		$.get( "https://jsonplaceholder.typicode.com/users", function( data ) {
			  for (var key of data) {
				  console.log(key);
					var myobjectHtml =' <div class="riya col-md-4" > <div class="card mb-4 shadow-sm" > <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Thumbnail"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg> <div class="card-body"> <p class="card-text username mb-1" >'+key.username+'</p> <p class="card-text email mb-1">'+key.email+'</p> <p class="card-text phone">'+key.phone+'</p> <p class="p-0 rateYo" data-rating="3"></p> <div class="d-flex justify-content-between align-items-center"> <div class="btn-group"> <button type="button" class="btn btn-sm btn-outline-secondary">View</button> <button type="button" class="btn edit btn-sm btn-outline-secondary" data-username="'+key.username+'" data-email="'+key.email+'" data-phone="'+key.phone+'"onclick="openModal()">Edit</button> </div> <small class="text-muted">9 mins</small> </div> </div> </div> </div>';
					
					
					$('#myrow').append(myobjectHtml)
			  }
			});
		
		
		
		
		$("#search").keyup(function() {
			console.log($(this).val());
			var searchkey = $(this).val();
			
			$(".riya").each(function() {
			    console.log($(this).children().find('.username').html());
			    
			    if(searchkey != ""){
			    	var username = $(this).children().find('.username').html();
			    	var email = $(this).children().find('.email').html();
			    	var phone = $(this).children().find('.phone').html();
			    	
			    	if(username != null && username.toLowerCase().indexOf(searchkey.toLowerCase()) != -1){
			    		$(this).show();
			    	}
			    	else if(email != null && email.toLowerCase().indexOf(searchkey.toLowerCase()) != -1)	{
			    		$(this).show();
			    	}
			    	else if(phone != null && phone.toLowerCase().indexOf(searchkey.toLowerCase()) != -1 ){
				    	$(this).show();
			    	}
				    else{
					   	$(this).hide();
					}
				    
				}else{
					$(this).show();
				}
					    
			    /* if(searchkey != ""){
				    if($(this).data('username').toLowerCase().indexOf(searchkey.toLowerCase()) != -1 ||
				    	$(this).data('email').toLowerCase().indexOf(searchkey.toLowerCase()) != -1  ||
				    	$(this).data('phone').toLowerCase().indexOf(searchkey.toLowerCase()) != -1  ){
				   
				    	console.log('search results......... '+$(this).data('username'));
				    	$(this).show();
				    	
				    }else{
				    	$(this).hide();
				    }
			    }else{
			    	$(this).show();
			    } */
			});
			
		});
		
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
		
	});
	
	function openModal(obj){
		console.log($('.edit').data('username'));
		var username = $('.edit').data('username');
		var email = $('.edit').data('email');
		var phone = $('.edit').data('phone');
	
		$('#exampleModalCenter').on('show.bs.modal	', function (e) {
			  // do something...
			 $('#name').val(username);
			 $('#email').val(email);
			 $('#phone').val(phone);
		});
		
		$('#exampleModalCenter').modal('show');
	}
	
	</script>
		<script src="<%=baseURL%>assets/js/jquery.rateyo.min.js"></script>
	
</body>
</html>