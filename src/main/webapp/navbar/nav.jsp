
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>


<nav
	class="salesken navbar navbar-expand-lg navbar-light bg-white  fixed-top pr-0 shadow">
	<a class="navbar-brand f-15 p-0 pr-3" href="/dashboard/dashboard.jsp">
		<img class="appicon img-thumbnail p-0 mr-1 border-0" alt="salesken_logo"
		src="<%=baseURL%>assets/image/nav_icon.png" />
	</a>
	<div class="d-flex flex-row order-2 order-lg-3">
		<ul class="navbar-nav flex-row align-items-center">
			<li class="nav-item istar-dropdown-task mr-2 border-0"><a class="nav-link p-0"
				data-display="static" aria-haspopup="true" aria-expanded="false"
				id="navbarDropdownMenuLink" data-toggle="dropdown"> <img
					class="linkicon" src="<%=baseURL%>assets/image/notification_active.svg" />
			</a>
				<div class="dropdown-menu dropdown-menu-lg-right position-absolute istar-dropdown-task-menu"
					role="menu" aria-labelledby="imageDropdown"  data-display="static"
					style="border: none !important; padding: 0px; margin-top: 26px !important;	 ">
					<div class="card" style="width: 300px;;">

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
				</div></li>
			<li class="nav-item istar-dropdown-task border-0 mr-4" style="line-height: 1 !important;">

				<div class="d-flex flex-row align-items-center nav-link p-0 dropdown-toggle"
					id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false">
					<img
						src="https://res.cloudinary.com/demo/image/upload/q_60/sample.jpg" title="Wade walker" alt="User name"
						class="rounded-circle align-self-center mr-2"
						style="height: 45px; width: 45px;" />
					<div class="d-flex flex-column ">
						<div
							class="f-14 font-weight-bold d-flex flex-row align-items-center">
							<div class="mr-3 text-truncate-1 black">Wade walker</div>
							<img src="<%=baseURL%>assets/image/dropdown-right-black.svg"
							alt="call" class=" float-right">

						</div>
						<div class="f-12 text-truncate-1 ">Manager</div>
					</div>
					
				</div>
				<div class="dropdown-menu dropdown-menu-lg-right position-absolute border-0 p-0 istar-dropdown-task-menu"
					aria-labelledby="dropdownMenuButton" style="margin-top:15px !important; min-width: 200px !important;">


					
						<button class="list-group-item border-0 cursor-pointer p-0 pt-25  w-100" style="pointer-event: none;">
							<div class="d-flex flex-row align-items-center ml-20 mr-20 pb-20 bottom-separation-solid">
								<img
									src="https://res.cloudinary.com/demo/image/upload/q_60/sample.jpg" alt="profile_img"
									class="rounded-circle align-self-center mr-2"
									style="height: 35px; width: 35px;" />
								<div class="d-flex flex-column">
									<div class="f-14 font-weight-bold text-truncate-1 text-left greyish-brown pb-5">Wade walker</div>
									<div class="f-12 text-truncate-1 brownish-grey">wade@gmail.com</div>

								</div>
							</div>
						</button>
						<button
							class="list-group-item border-0 d-flex flex-row cursor-pointer dropdown-item greyish-brown p-0">
							<div class="mr-2 dropdown-icon switch-role"></div>
							<div>Switch to Admin</div>
						</button>
						<button
							class="list-group-item border-0 d-flex flex-row cursor-pointer account dropdown-item greyish-brown p-0">
							<div class="mr-2 dropdown-icon setting"></div>
							<div>My Account</div>
						</button>
						<button
							class="list-group-item border-0 d-flex flex-row cursor-pointer signout dropdown-item greyish-brown p-0">
							<div class="mr-2 dropdown-icon sign-out"></div>
							<div>Sign Out</div>
						</button>
					
				</div>

			</li>


		</ul>

		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavDropdown">
			<span class="navbar-toggler-icon"></span>
		</button>
	</div>
	<div class="collapse navbar-collapse order-3 order-lg-2"
		id="navbarNavDropdown">
		<ul class="salesken navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link f-14"
				href="/dashboard/dashboard.jsp"> <div class="d-flex align-item-center"> <i class="salesken_navicon dashboard"></i> Dashboard </div><span class="sr-only">(current)</span></a></li>
			<li class="nav-item "><a class="nav-link f-14" 
				href="/taskDetails/taskDetail.jsp"><div class="d-flex align-item-center"> <i class="salesken_navicon taskdetail"></i> Task Details </div><span class="sr-only">(current)</span></a></li>
			<li class="nav-item"><a class="nav-link f-14"
				href="/pipeline/pipeline.jsp"><div class="d-flex align-item-center"> <i class="salesken_navicon pipeline"></i> Pipeline </div><span class="sr-only">(current)</span></a></li>
			<li class="nav-item"><a class="nav-link f-14" href="/report/report.jsp">
					<div class="d-flex align-item-center"> <i class="salesken_navicon reports"></i> Reports </div><span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item"><a class="nav-link f-14" href="/leads/leads.jsp">
					 <div class="d-flex align-item-center"> <i class="salesken_navicon leads"></i> Leads </div><span class="sr-only">(current)</span>
			</a></li>

		</ul>
	</div>
</nav>


<script>
	
</script>