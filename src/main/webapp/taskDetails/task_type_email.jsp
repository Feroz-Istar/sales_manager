<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Email task</title>
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>
<link rel="icon" href="<%=baseURL%>favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="<%=baseURL%>favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="<%=baseURL%>assets/css/bootstrap.min.css">
<link href="<%=baseURL%>assets/css/bootstrap-datepicker3.min.css?xsww" rel="stylesheet">
<link rel="stylesheet" href="<%=baseURL%>assets/css/salesken_style.css">
<link rel="stylesheet" href="<%=baseURL%>assets/css/all.css">
<link href="<%=baseURL%>assets/css/summernote-bs4.css" rel="stylesheet">
<link rel="stylesheet" href="<%=baseURL%>assets/css/salesken_style_media_query.css">
<style type="text/css">

.templete_shadow{
box-shadow:0 2px 10px 0 rgba(0, 0, 0, 0.2);
}
</style>

</head>
<body data-base-url="<%=baseURL%>">
	<!-- start of circular progress bar for page loading -->
	<div class="salesken_progress h-100 w-100 " style="display: none">
		<div class="d-flex align-items-center justify-content-center  h-100 w-100">
			<div class="spinner-border text-danger" role="status">
				<span class="sr-only">Loading...</span>
			</div>
		</div>
	</div>
	<!-- end of circular progress bar for page loading -->
	<jsp:include page="../navbar/nav.jsp"></jsp:include>
	<main role="main">
		<div class="container-fluid salesken_container">
			<div class="row grey-white-bg align-items-center m-0 theme_solid_border_bottom pl-40 pr-40 pt-10 pb-10">
				<div class="col-md-6 col-12 d-flex align-items-center p-0">
					<i class="fas fa-arrow-left black f-20 cursor-pointer" onclick="window.location.href = 'taskDetail.jsp'"></i>
					<div class="display-1 black f-20 border-right-separation pr-20  fw-500 pl-20">Donquadtech Pvt. Ltd.</div>
					<div class="f-12 brown-grey pl-20">Dashboard</div>
					<i class="fas fa-chevron-circle-right pl-2 pr-2 f-12 very-light-pink"></i>
					<div class="f-12 brown-grey ">Donquadtech Pvt. Ltd.</div>
				</div>
			</div>
			<div class="row m-0 bg-white " style="min-height: 650px">
				<div class="col-md-9 p-0 border-right pl-40 pr-30 pt-30">
					<div class="form-group ">
						<input type="text" class="form-control  border-top-0  border-right-0 border-left-0 rounded-0 removefocus" id="recipients" placeholder="Recipients" aria-label="recipients">
					</div>
					<div class="form-group ">
						<input type="text" class="form-control  border-top-0  border-right-0 border-left-0 rounded-0  removefocus" id="subject" placeholder="Subject" aria-label="recipients">
					</div>
					<div id="summernote"></div>
				</div>
				<div class="col-md-2 p-0 pl-15 pt-15 pr-45 ">
					<div class="input-group position-relative theme_solid_border_bottom_2px pb-20 mb-10  ">
						<img src="<%=baseURL %>assets/image/search.svg" alt="edit" class=" searchBox" style="top: 7px !important"> <input id="manual_cues_search"
							class="form-control  custom-taskborder brown-grey  f-14  custom-result-selects" type="search" placeholder="Search Manual Cues" style="padding-right: 30px; height: 35px !important">
					</div>
					<div class="f-16 greyish-brown fw-500 pb-10">Templete 01</div>
					<%for(int i=1;i<4;i++){ %>
					<div class="theme_solid_border p-10 d-flex mb-10 align-items-center cursor-pointer templete_card" id="templete_card<%=i %>" onclick="templete_card(this)"
						style="width: 245px; height: 80px; border-radius: 10px;">
						<div class="hw-60 theme_solid_border d-flex align-items-center justify-content-center" style="border-radius: 10px; background: #eeeeee">
							<img src="<%=baseURL %>assets/image/camera.svg" alt="edit" class="hw-50">
						</div>
						<div class="d-flex flex-column pl-10">
							<div class="f-14 black font-weight-bold">
								Template 0<%=i %></div>
							<div class="f-14 brown-grey">Lorem ipsum dolor sit</div>
						</div>
					</div>
					<%} %>
				</div>
				<div class="col-md-1 p-0">
					<div class=" dropleft">
						<button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="display: none" id="completed_call_task_content">Dropleft</button>
						<div class="dropdown-menu completed_call_task_content m-0" aria-labelledby="completed_call_task_content">
							<!-- Dropdown menu links -->
						</div>
					</div>
					<ul class="list-group shadow d-flex flex-column h-100  taskpopup">


						<li class="notesdropdown list-group-item p-0 pt-10 pb-10">
							<div class=" d-flex flex-column justify-content-center align-items-center minh-80 " data-dropdown_id="completed_call_task_content">
								<img src="<%=baseURL%>assets/image/notes.svg" alt="notes" />
								<div class="f-12 pt-1 greyish-brown">Notes</div>

							</div>
						</li>
						<li class=" cuesdropdown list-group-item p-0 pt-10 pb-10">
							<div class=" d-flex flex-column justify-content-center align-items-center minh-80" data-dropdown_id="completed_call_task_content">
								<img src="<%=baseURL%>assets/image/cues.svg" alt="cues" />
								<div class="f-12 pt-1 greyish-brown">Cues</div>

							</div>
						</li>
						<li class="crmdropdown list-group-item p-0 pt-10 pb-10">
							<div class=" d-flex flex-column justify-content-center align-items-center minh-80" data-dropdown_id="completed_call_task_content">
								<img src="<%=baseURL%>assets/image/crm.svg" alt="crm" />
								<div class="f-12 pt-1 greyish-brown">CRM</div>

							</div>
						</li>
						<li class="chatdropdown list-group-item  p-0 pt-10 pb-10 ">
							<div class="  d-flex flex-column justify-content-center align-items-center minh-80" data-dropdown_id="completed_call_task_content">
								<img src="<%=baseURL%>assets/image/chat.svg" alt="presentation" />
								<div class="f-12 pt-1 greyish-brown">Chat</div>

							</div>
						</li>


						<li class=" flex-grow list-group-item d-flex flex-column justify-content-center align-items-center minh-100" style="height: calc(100% - 80px);"></li>


					</ul>
				</div>

			</div>
			<div class="templet_1 " style="display: none">

				<p>
					Hi Jane, <br> <br> Congratulations on your new role at ABC Inc <br> <br> As you get your strategic plans in place for your new role at ABC Inc. we thought it would be an
					important time to consider how you’re instrumenting the team for the success <br> <br> Best,<br>Salesken Pvt. Ltd.
				</p>
			</div>

			<div class="templet_2" style="display: none">

				<p>
					Hi Jack, <br> <br> As you put in place your plans for XYZ Inc.’s sales sales initiative for the next year, I was wondering if you would be<br> interested in considering a strategic
					initiative to boost your pipeline conversion rates by up to 30%?  <br> <br> Best,<br>Salesken Pvt. Ltd.
				</p>
			</div>
		</div>

	</main>
	<script src="<%=baseURL%>assets/js/jquery-3.4.1.min.js"></script>
	<script src="<%=baseURL%>assets/js/popper.min.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap.min.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap-datepicker.min.js"></script>
		<script src="<%=baseURL%>assets/js/summernote-bs4.js"></script>
	
	<script type="text/javascript">
	$('#summernote').summernote({
        placeholder: 'Tyepe Here',
        tabsize: 2,
        height: 500,
        callbacks: {
            onChange: function(contents, $editable) {
            	localStorage.setItem("notes", $('#summernote').summernote('code'))	            	
            }
        }
      });
	$('.note-toolbar').prepend('<div class="note-btn-group btn-group note-view"><button type="button" class="btn btn-primary">Send</button></div>')  
	$('.note-toolbar').css("top","490px");
	$('.note-editing-area').css("top","-64px");
	$('.note-statusbar').hide();
	
	function templete_card(elem){
		var ids=$(elem).attr('id');
		$('.note-editable').children().empty()
		 switch(ids)
		{
		case 'templete_card1':
			$('.note-placeholder').hide();
			$('.note-editable').children().addClass("brownish-grey");
			$('.note-editable').children().append($('.templet_2').html());
			break;
		default:
			$('.note-placeholder').hide();
		$('.note-editable').children().addClass("brownish-grey");
			$('.note-editable').children().append($('.templet_1').html());
	
		} 
		$(".templete_shadow").each(function(){
		    $(this).removeClass('templete_shadow');
		  });
		$(elem).toggleClass("templete_shadow");
	}
	</script>
</body>
</html>