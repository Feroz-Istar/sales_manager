<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Salesken - Create task</title>
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
<link rel="stylesheet" href="<%=baseURL%>assets/css/createTask.css">
<link href="<%=baseURL%>assets/css/bootstrap-datepicker3.min.css?xsww"
	rel="stylesheet">
<link rel="stylesheet" href="<%=baseURL%>assets/css/all.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/salesken_style_media_query.css">
</head>
<body onload="load()">
<jsp:include page="../navbar/nav.jsp"></jsp:include>

<main role="main">
	<div class="container-fluid salesken_container">
		<div class="row grey-white-bg align-items-center py-3 border-bottom-separation" >
			<div class="col-md-6 col-12 d-flex align-items-center mb-4 mb-md-0" > 
				<i class="fas fa-arrow-left black f-20 pr-3 cursor-pointer" onclick="window.location.href = 'taskDetail.jsp'"></i>
				<div class="display-1 black f-20 fw-500 border-right-separation pr-3 ">Call Task</div>
				<div class="pl-3 pr-2 f-12 brown-grey ">Task Detail</div>
				<i class="fas fa-chevron-circle-right pr-2 f-12 brown-grey"></i>
				<div class=" f-12 brown-grey fw-500" id="breadcrumb">Call Task</div>
			</div>
		</div>
		
		
		<div class="row bg-white">
			<div class="col-md-3 cream_white calltabsize" >
			<!--  start of call dialer -->
				<div  id="calldialer"> 
					<ul class="saleken nav nav-tabs f-16 custom_dash_padding pl-3 pt-3 pb-0" id="pills-tab" role="tablist" >
					  <li class="nav-item">
					    <a class="nav-link active border-istar-left-0" id="dialer-tab" data-toggle="pill" href="#dialer" role="tab" aria-controls="dialer" aria-selected="true">Dialer</a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link border-istar-left-0" id="recent-tab" data-toggle="pill" href="#recent" role="tab" aria-controls="recent" aria-selected="false">Recent</a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link border-istar-left-0" id="leads-tab" data-toggle="pill" href="#leads" role="tab" aria-controls="leads" aria-selected="false">Leads</a>
					  </li>
					</ul>
				
					<div class="tab-content " id="pills-tabContent">
					  <div class="tab-pane fade show active" id="dialer" role="tabpanel" aria-labelledby="dialer-tab">
					  <!-- start of dialer content -->
					  	
					  	<div class="row pt-4 ">
					  		<input disabled type="text" class="col-md-10 col-10 form-control f-16 font-weight-bold border-0 cream_white text-center removefocus" id="exampleFormControlInput1"/>
					  		<button class="col-md-2 col-2 btn">
					  			<i class="fas fa-backspace very-light-pink f-14"></i>
					  		</button>	
					  	</div>
					  
					  	<hr class="m-0">
					  	
				  		<div class="row justify-content-center pt-4">
					  		<button class="col-md-2 col-2 btn">
					  			<div class="f-24 fw-500 bblack">1</div>
					  			<div class="f-12 brown-grey">&nbsp;</div>
					  		</button>
					  		<button class="col-md-3 col-3 btn">
					  			<div class="f-24 fw-500 bblack">2</div>
					  			<div class="f-12 brown-grey fw-300">ABC</div>
					  		</button>
					  		<button class="col-md-2 col-2 btn">
					  			<div class="f-24 fw-500 bblack">3</div>
					  			<div class="f-12 brown-grey fw-300">DEF</div>
					  		</button>
					  	</div>
					  	<div class="row justify-content-center">
					  		<button class="col-md-2 col-2 btn">
					  			<div class="f-24 fw-500 bblack">4</div>
					  			<div class="f-12 brown-grey fw-300">GHI</div>
					  		</button>
					  		<button class="col-md-3 col-3 btn">
					  			<div class="f-24 fw-500 bblack">5</div>
					  			<div class="f-12 brown-grey fw-300">JKL</div>
					  		</button>
					  		<button class="col-md-2 col-2 btn">
					  			<div class="f-24 fw-500 bblack">6</div>
					  			<div class="f-12 brown-grey fw-300">MNO</div>
					  		</button>
					  	</div>
					  	<div class="row justify-content-center">
					  		<button class="col-md-2 col-2 btn">
					  			<div class="f-24 fw-500 bblack">7</div>
					  			<div class="f-12 brown-grey fw-300">PQRS</div>
					  		</button>
					  		<button class="col-md-3 col-3 btn">
					  			<div class="f-24 fw-500 bblack">8</div>
					  			<div class="f-12 brown-grey fw-300">TUV</div>
					  		</button>
					  		<button class="col-md-2 col-2 btn">
					  			<div class="f-24 fw-500 bblack">9</div>
					  			<div class="f-12 brown-grey fw-300	">WXYZ</div>
					  		</button>
					  	</div>
					  	<div class="row justify-content-center">
					  		<button class="col-md-2 col-2 btn">
					  			<div class="f-24 fw-500 bblack">*</div>
					  			<div class="f-12 brown-grey"></div>
					  		</button>
					  		<button class="col-md-3 col-3 btn">
					  			<div class="f-24 fw-500 bblack">0</div>
					  			<div class="f-12 brown-grey"></div>
					  		</button>
					  		<button class="col-md-2 col-2 btn">
					  			<div class="f-24 fw-500 bblack">#</div>
					  			<div class="f-12 brown-grey"></div>
					  		</button>
					  	</div>
					  	<div class="row justify-content-center pt-4">
					  		<button class="btn d-flex justify-content-center align-items-center call-icon green-gradient" onclick="makeCall()">
					  			<i class="fas fa-phone-alt f-22 text-white"></i>
					  		</button>
					  	</div>
					  <!-- end of dialer content -->
					  	
					  </div>
					  
					  
					  <div class="tab-pane fade px-3" id="recent" role="tabpanel" aria-labelledby="recent-tab">
					  	<!-- start of recent content -->
					  	<div class="row py-4  justify-content-center">
					  		<div class="col-md-12 text-center">
					  			<div class="input-group date custom-call-calendar">
									<input type="text" id="calendar" class="form-control custom-call-dateselect" value="12-02-2012"/>
									<div class="input-group-addon" onclick="showCalendar()">
										<img src="<%=baseURL%>assets/image/calendar.svg" class="pr-1"/>
									</div>
								</div>
					  		</div>
					  	</div>
					  	
					  	<div class="h-500">
					  	<%for(int i=0; i<5; i++){ %>
					  	<div class="row align-items-center py-3 px-0 mx-0 bottom-dashed-separation">
				  			<div class="col-md-10 col-10 p-0">
				  				<div class="f-14 bblack">+91 989 898 8789</div>
				  				<div class="f-12 brown-grey">05:10 Min</div>
				  			</div>
				  			<button class="btn col-md-2 col-2 p-0 text-right">
				  				<img src="<%=baseURL%>assets/image/callOutgoing.svg" class="brown-grey hw-24"/>
				  			</button>
				  		</div>
				  		<%} %>
				  		</div>
					  	<!-- end of recent content -->
					  </div>
					  
					  <div class="tab-pane fade px-3" id="leads" role="tabpanel" aria-labelledby="leads-tab">
					  <!-- start of leads content -->
					  <div class="row py-4  justify-content-center">
					  		<div class="col-md-12 text-center">
					  			<div class="input-group">
					                <input id="" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;"/>
					                <div class="input-group-append">
					                    <button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="    " >
					                        <i class="fa fa-search f-12 brown-grey"></i>
					                    </button>
					                </div>
					            </div>
					  		</div>
					  	</div>
					  	
					  	<div class="h-500">
					  	<%for(int i=0; i<5; i++){ %>
					  	<div class="row align-items-center py-3 px-0 mx-0  bottom-dashed-separation">
				  			<div class="col-md-10 col-10 p-0">
				  				<div class="f-14 bblack">+91 989 898 8789</div>
				  				<div class="f-12 brown-grey">05:10 Min</div>
				  			</div>
				  			<button class="btn col-md-2 col-2 p-0 text-right">
				  				<img src="<%=baseURL%>assets/image/call.svg" class="brown-grey hw-24">
				  			</button>
				  		</div>
				  		<%} %>
				  		</div>
					  <!-- end of leads content -->
					  </div>
					  </div>
				</div>			
			<!--  end of call dialer -->
			
			<!-- start of call connected -->
			
				<div id="call_connected" class="d-none">
					<div class="row py-4 justify-content-around">
						<div class="col-md-10">
							<div class="f-14 brown-grey ">Dialing ...</div>
							<div class="f-20  fw-500 black">+91 445 546 9890</div>	
						</div>
						<div class="col-md-2 d-flex justify-content-end">
							<button class="btn d-flex justify-content-center align-items-center call-icon red-gradient m-0" onclick="endCall()">
					  			<i class="fas fa-phone-alt f-22 text-white"></i>
					  		</button>
						</div>
					</div>
				
				<hr class="m-0">
				
				
				<div class="row justify-content-between pt-2">
					<button class="col btn">
						<i class="fal fa-record-vinyl"></i>
					</button>
					<button class="col btn">
						<i class="fas fa-pause"></i>
					</button>
					<button class="col btn">
						<i class="fas fa-microphone"></i>
					</button>
					<button class="col btn">
						<i class="fas fa-volume-up"></i>
					</button>
					<button class="col btn">
						<i class="fas fa-user-friends"></i>
					</button>
					<button class="col btn">
						<i class="fal fa-sort-alt"></i>
					</button>
					<button class="col btn">
						<i class="fas fa-th"></i>
					</button>
				</div>
				
				
				</div>
			
			<!-- end of call connected -->
			
			</div>
			
			
			
			<div class="col-md-9 shadow-left">
				<div class="row align-items-center h-100" id="page_empty">
					<div class="col-md-12 text-center">
						<img src="<%=baseURL%>assets/image/21.svg" class="pb-2"/>
						<div class="f-16  fw-500 black" class="pb-2">Start the process </div>
						<div class="f-12 brownish-grey">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</div>
					</div>
				</div>
			</div>
			
		</div>
		
		
<script src="<%=baseURL%>assets/js/jquery-3.4.1.min.js"></script>
<script src="<%=baseURL%>assets/js/popper.min.js"></script>
<script src="<%=baseURL%>assets/js/bootstrap.min.js"></script>
<script src="<%=baseURL%>assets/js/bootstrap-datepicker.min.js"></script>
<script src="<%=baseURL%>assets/js/createTask.js"></script>
<script src="<%=baseURL%>assets/js/salesken.js"></script>
<script>
$( document ).ready(function() {
	$('.salesken.navbar-nav>li').removeClass('active');
	$('#calendar').datepicker({autoclose:true});
});
function showCalendar(){
	$('#calendar').datepicker('show');
}
function makeCall(){
	$('#calldialer').addClass("d-none");
	$('#call_connected').removeClass('d-none');
}
function endCall(){
	$('#calldialer').removeClass("d-none");
	$('#call_connected').addClass('d-none');
}
</script>

	</div>
</main>
</body>
</html>