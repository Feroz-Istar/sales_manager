
<%
String url = request.getRequestURL().toString();
String baseURL = url.substring(0, url.length() - request.getRequestURI().length()) + request.getContextPath() + "/";
%>
    <nav class="salesken navbar navbar-expand-lg navbar-light bg-white">
 <a class="navbar-brand f-15 p-0 pr-3" href="#">
    <img class="appicon img-thumbnail p-0 mr-1 border-0" src="<%=baseURL %>assets/image/app.png" /><span>Sales<span style="color:red">ken</span></span></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarsExampleDefault">
    <ul class="salesken navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link f-14" href="#"><img class="menu_icon mr-1" src="<%=baseURL %>assets/image/dashboard.svg" />Dashboard <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link f-14" href="#"><img class="menu_icon mr-1" src="<%=baseURL %>assets/image/task.svg" />Task Details<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link f-14" href="#"><img class="menu_icon mr-1" src="<%=baseURL %>assets/image/pipeline.svg" />Pipeline<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link f-14" href="#"><img class="menu_icon mr-1" src="<%=baseURL %>assets/image/report.svg" />Reports<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link f-14" href="#"><img class="menu_icon mr-1" src="<%=baseURL %>assets/image/leads.svg" />Leads<span class="sr-only">(current)</span></a>
      </li>
      
    </ul>
   <div class="dropdown  mr-2">
      <a href="#" id="imageDropdown" data-toggle="dropdown">
        <img  class="linkicon" src="<%=baseURL %>assets/image/notification.png" >
      </a>
     <div class="dropdown-menu dropdown-menu-lg-right" role="menu" aria-labelledby="imageDropdown" style="   border: none !important;">
   <div class="card" style="width: 300px;">

	<div class="card-body py-0">
		<div class="d-flex py-3 border-bottom f-14 font-weight-bold">Notifications</div>
		<%for(int i=0;i<6;i++){ %>
		<div class="d-flex flex-column border-bottom py-2" data-notificationid="228766" onclick="null">
			<div class="f-12 text-secondary">3 days ago</div>
			<div class="f-14 font-weight-bold">A call is inititated by Rohit kumar</div>
			<div class="f-12 text-secondary">By Rohit kumar</div>
		</div>
		<%} %>
		<div class="d-flex flex-row py-2"> <a href="/inc/notification_detail.jsp" class="dropdown-item  text-danger p-0 istar_font-12 font-weight-bold">More &gt;</a></div>
	</div>

</div>
     </div>
    </div>
     
 
  </div>
</nav>
 
