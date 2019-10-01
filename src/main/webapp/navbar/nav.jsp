
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>


<nav class="salesken navbar navbar-expand-lg navbar-light bg-white  fixed-top pr-0 shadow">
    <a class="navbar-brand f-15 p-0 pr-3" href="/landing/dashboard.jsp"> <img
		class="appicon img-thumbnail p-0 mr-1 border-0"
		src="<%=baseURL%>assets/image/nav_icon.png" /></a>
    <div class="d-flex flex-row order-2 order-lg-3">
        <ul class="navbar-nav flex-row align-items-center">
         <li class="nav-item dropdown mr-2 ">
                <a class="nav-link p-0 " data-display="static" aria-haspopup="true" aria-expanded="false" id="navbarDropdownMenuLink" data-toggle="dropdown">
                 <img
				class="linkicon" src="<%=baseURL%>assets/image/notification.png"/>
                </a>
                	<div class="dropdown-menu dropdown-menu-lg-right position-absolute " role="menu"
				aria-labelledby="imageDropdown" style="border: none !important;">
				<div class="card" style="width: 300px;">

					<div class="card-body py-0">
						<div class="d-flex py-3 border-bottom f-14 font-weight-bold">Notifications</div>
						<%
							for (int i = 0; i < 6; i++) {
						%>
						<div class="d-flex flex-column border-bottom py-2"
							data-notificationid="228766" onclick="null">
							<div class="f-12 text-secondary">3 days ago</div>
							<div class="f-14 font-weight-bold">A call is inititated by
								Rohit kumar</div>
							<div class="f-12 text-secondary">By Rohit kumar</div>
						</div>
						<%
							}
						%>
						<div class="d-flex flex-row py-2">
							<a href="/inc/notification_detail.jsp"
								class="dropdown-item  text-danger p-0 istar_font-12 font-weight-bold">More
								&gt;</a>
						</div>
					</div>

				</div>
			</div>
            </li>
            <li class="nav-item dropdown mr-4">
            
            	<div class="d-flex flex-row align-items-center nav-link p-0"
			id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true"
			aria-expanded="false">
			<img
				src="https://res.cloudinary.com/demo/image/upload/q_60/sample.jpg"
				class="rounded-circle align-self-center mr-2"
				style="height: 45px; width: 45px;" />
			<div class="d-flex flex-column  ">
				<div
					class="f-14 font-weight-bold d-flex flex-row align-items-center">
					<div class="mr-3">Wade walker</div>
					<div class="dropdown-toggle"></div>

				</div>
				<div class="f-12">Manager</div>
			</div>
		</div>
		<div class="dropdown-menu dropdown-menu-lg-right position-absolute border-0 p-0"
			aria-labelledby="dropdownMenuButton">


			<ul class="list-group dropdown-item profile_dropdown w-100 p-0">
				<li class="list-group-item  border-0 cursor-pointer">
					<div class="d-flex flex-row align-items-center">
						<img
							src="https://res.cloudinary.com/demo/image/upload/q_60/sample.jpg"
							class="rounded-circle align-self-center mr-2"
							style="height: 35px; width: 35px;" />
						<div class="d-flex flex-column">
							<div class="f-14 font-weight-bold">
								Wade walker</div>
								<div class="f-12">wade@gmail.com</div>
							
						</div>
						</div>
				</li>
				<li class="list-group-item border-0 d-flex flex-row cursor-pointer">
					<img src="<%=baseURL%>assets/image/person.svg" class="pr-3"/>
					<div>Switch to Manager</div>
				</li>
				<li class="list-group-item border-0 d-flex flex-row cursor-pointer">
					<img src="<%=baseURL%>assets/image/setting.svg" class="pr-3"/>
					<div>My Account</div>
				</li>
				<li class="list-group-item border-0 d-flex flex-row cursor-pointer">
					<img src="<%=baseURL%>assets/image/signout.svg" class="pr-3"/>
					<div>Sign Out</div>
				</li>
			</ul>
		</div>
            
            </li>
           
              
        </ul>
     
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown">
            <span class="navbar-toggler-icon"></span>
        </button>
    </div>
    <div class="collapse navbar-collapse order-3 order-lg-2" id="navbarNavDropdown">
        <ul class="salesken navbar-nav mr-auto">
           <li class="nav-item active"><a class="nav-link f-14" href="dashboard.jsp"><img
					class="menu_icon mr-1"
					src="<%=baseURL%>assets/image/dashboard.svg" />Dashboard <span
					class="sr-only">(current)</span></a></li>
			<li class="nav-item"><a class="nav-link f-14" href="taskDetail.jsp"><img
					class="menu_icon mr-1" src="<%=baseURL%>assets/image/task.svg" style="width:24px;height: 24px !important;" />Task
					Details<span class="sr-only">(current)</span></a></li>
			<li class="nav-item"><a class="nav-link f-14" href="pipeline.jsp"><img
					class="menu_icon mr-1" src="<%=baseURL%>assets/image/pipeline.svg" style="height: 24px !important;"/>Pipeline<span
					class="sr-only">(current)</span></a></li>
			<li class="nav-item"><a class="nav-link f-14" href="report.jsp"><img
					class="menu_icon mr-1" src="<%=baseURL%>assets/image/report.svg" style="width:24px;height: 24px !important;"/>Reports<span
					class="sr-only">(current)</span></a></li>
			<li class="nav-item"><a class="nav-link f-14" href="leads.jsp"><img
					class="menu_icon mr-1" src="<%=baseURL%>assets/image/leads.svg" style="height: 24px !important;" />Leads<span
					class="sr-only">(current)</span></a></li>

        </ul>
    </div>
</nav>