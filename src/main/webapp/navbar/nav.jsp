
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>


<nav
	class="salesken navbar navbar-expand-lg navbar-light bg-white  fixed-top pr-0 shadow">
	<a class="navbar-brand f-15 p-0 pr-3" href="/landing/dashboard.jsp">
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
							<img src="<%=baseURL%>assets/image/switch-role.svg" alt="switch" class="pr-3" />
							<div>Switch to Admin</div>
						</button>
						<button
							class="list-group-item border-0 d-flex flex-row cursor-pointer account dropdown-item greyish-brown p-0">
							<img src="<%=baseURL%>assets/image/my-account.svg" alt="setting" class="pr-3" />
							<div>My Account</div>
						</button>
						<button
							class="list-group-item border-0 d-flex flex-row cursor-pointer signout dropdown-item greyish-brown p-0">
							<img src="<%=baseURL%>assets/image/sign-out.svg" alt="signout" class="pr-3" />
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
				href="dashboard.jsp"> <svg class="menu_icon"
						xmlns="http://www.w3.org/2000/svg" width="18" height="15.509"
						viewBox="0 0 18 15.509">
<path id="Path_429"
							d="M15.178 17.17h-4.521a.908.908 0 0 1-.908-.907v-3.62H8.25v3.619a.908.908 0 0 1-.907.907H2.821a.908.908 0 0 1-.907-.907v-5.31H.871a.866.866 0 0 1-.811-.55.859.859 0 0 1 .215-.949l2.296-2.245V2.965a.909.909 0 0 1 .907-.907h2.87a.91.91 0 0 1 .908.892L8.381 1.9a.911.911 0 0 1 1.237 0l8.106 7.552a.866.866 0 0 1-.6 1.5h-1.038v5.31a.908.908 0 0 1-.908.908zm-4.067-1.361h3.613V10.5a.907.907 0 0 1 .9-.908h.246L9 3.186 5.9 6.079v-2.66H3.932V7.4a.912.912 0 0 1-.272.648L2.083 9.59h.287a.908.908 0 0 1 .905.908v5.31h3.614v-3.619a.909.909 0 0 1 .907-.908H10.2a.909.909 0 0 1 .908.908z"
							class="cls-1" data-name="Path 429" transform="translate(0 -1.66)" />
</svg> Dashboard <span class="sr-only">(current)</span></a></li>
			<li class="nav-item"><a class="nav-link f-14"
				href="taskDetail.jsp"><svg style="height: 24px; width: 24px;"
						class="menu_icon " xmlns="http://www.w3.org/2000/svg" width="24"
						height="24" viewBox="0 0 24 24">
    
    <g id="Component" class="cls-2">
        <path id="Union_17"
							d="M-2195.262 1386.958a.738.738 0 0 1-.738-.737v-13.791a.767.767 0 0 1 .738-.771h2.914l.29-.779a1.354 1.354 0 0 1 1.282-.88h2.624a1.352 1.352 0 0 1 1.281.88l.291.779h2.748a.766.766 0 0 1 .737.771v13.792a.737.737 0 0 1-.737.737zm.737-1.474h9.954v-12.351h-.285l-.888 1.752c-.006.012-.012.028-.019.039a1.973 1.973 0 0 1-1.722.974h-4a1.966 1.966 0 0 1-1.676-.906c-.006-.011-.013-.006-.019-.017l-1.041-1.841h-.308zm2.619-11.281a.507.507 0 0 0 .425.221h4a.512.512 0 0 0 .437-.24l.537-1.05h-.587a.723.723 0 0 1-.693-.468l-.441-1.191h-2.468l-.441 1.191a.722.722 0 0 1-.692.468h-.687zm.384 9.182a.48.48 0 0 1-.483-.476.48.48 0 0 1 .483-.477h2.628a.48.48 0 0 1 .482.477.479.479 0 0 1-.482.476zm0-2.085a.48.48 0 0 1-.483-.476.48.48 0 0 1 .483-.477h4.287a.481.481 0 0 1 .484.477.48.48 0 0 1-.484.476zm0-2.144a.481.481 0 0 1-.483-.477.481.481 0 0 1 .483-.477h4.287a.481.481 0 0 1 .484.477.481.481 0 0 1-.484.477z"
							class="cls-3" data-name="Union 17"
							transform="translate(2201 -1366.466)" />
        <path id="Rectangle_936" d="M0 0h24v24H0z" class="cls-1"
							data-name="Rectangle 936" />
    </g>
</svg>Task Details<span class="sr-only">(current)</span></a></li>
			<li class="nav-item"><a class="nav-link f-14"
				href="pipeline.jsp"><svg style="height: 24px;"
						class="menu_icon mr-1" xmlns="http://www.w3.org/2000/svg"
						width="24" height="24" viewBox="0 0 24 24">
    <defs>
        <style>

</style>
        <clipPath id="clip-path">
            <path d="M0 0h24v24H0z" class="cls-1" />
        </clipPath>
    </defs>
    <g id="Component" class="cls-2">
        <g id="Group_1076" data-name="Group 1076"
							transform="translate(2.879 3)">
            <path id="Path_430"
							d="M3.817 4.983H.876a.842.842 0 0 1-.84-.84V1.2a.842.842 0 0 1 .84-.84h2.941a.842.842 0 0 1 .84.84v2.943a.842.842 0 0 1-.84.84zM1.3 3.723h2.1v-2.1H1.3z"
							class="cls-3" data-name="Path 430"
							transform="translate(-.036 -.362)" />
            <path id="Path_431"
							d="M3.817 13.266H.876a.841.841 0 0 1-.84-.84V9.485a.842.842 0 0 1 .84-.84h2.941a.842.842 0 0 1 .84.84v2.941a.841.841 0 0 1-.84.84zM1.3 12.006h2.1v-2.1H1.3z"
							class="cls-3" data-name="Path 431"
							transform="translate(-.036 -2.171)" />
            <path id="Path_432"
							d="M3.817 21.549H.876a.841.841 0 0 1-.84-.84v-2.941a.841.841 0 0 1 .84-.84h2.941a.841.841 0 0 1 .84.84v2.941a.841.841 0 0 1-.84.84zM1.3 20.289h2.1v-2.1H1.3z"
							class="cls-3" data-name="Path 432"
							transform="translate(-.036 -3.981)" />
            <path id="Path_433"
							d="M18.583 4.744h-9.25c-.348 0-.63-.435-.63-.971s.282-.971.63-.971h9.249c.348 0 .63.435.63.971s-.282.971-.629.971z"
							class="cls-3" data-name="Path 433"
							transform="translate(-.578 -1.507)" />
            <path id="Path_434"
							d="M18.4 13.027H9.153c-.348 0-.629-.435-.629-.971s.282-.971.629-.971H18.4c.348 0 .63.435.63.971s-.279.971-.63.971z"
							class="cls-3" data-name="Path 434"
							transform="translate(-.522 -3.317)" />
            <path id="Path_435"
							d="M18.583 21.31h-9.25c-.348 0-.63-.435-.63-.971s.282-.971.63-.971h9.249c.348 0 .63.435.63.971s-.282.971-.629.971z"
							class="cls-3" data-name="Path 435"
							transform="translate(-.578 -5.126)" />
        </g>
        <path id="Rectangle_936" d="M0 0h24v24H0z" class="cls-1"
							data-name="Rectangle 936" />
    </g>
</svg>Pipeline<span class="sr-only">(current)</span></a></li>
			<li class="nav-item"><a class="nav-link f-14" href="report.jsp">
					<svg class="menu_icon" xmlns="http://www.w3.org/2000/svg"
						viewBox="0 0 24.029 24"
						style="width: 24px; height: 24px !important;">
    <defs>
        <style>

</style>
        <clipPath id="clip-path">
            <path d="M0 0h24.03v24H0z" class="cls-1" />
        </clipPath>
    </defs>
    <g id="Component" class="cls-2">
        <g id="Group_1079" data-name="Group 1079"
							transform="translate(0 6)">
            <path id="Path_442"
							d="M2.172 17.633a2.187 2.187 0 1 1 2.187-2.187 2.189 2.189 0 0 1-2.187 2.187zm0-3.181a.994.994 0 1 0 .994.994 1 1 0 0 0-.994-.994z"
							class="cls-3" data-name="Path 442"
							transform="translate(.015 -6.367)" />
            <path id="Path_443"
							d="M9.576 10.741a2.187 2.187 0 1 1 2.188-2.187 2.189 2.189 0 0 1-2.188 2.187zm0-3.181a.994.994 0 1 0 .995.994 1 1 0 0 0-.995-.994z"
							class="cls-3" data-name="Path 443"
							transform="translate(.015 -6.367)" />
            <path id="Path_444"
							d="M14.789 17.633a2.187 2.187 0 1 1 2.188-2.187 2.189 2.189 0 0 1-2.188 2.187zm0-3.181a.994.994 0 1 0 1 .994 1 1 0 0 0-1-.994z"
							class="cls-3" data-name="Path 444"
							transform="translate(.015 -6.367)" />
            <path id="Path_445"
							d="M21.828 11.486A2.187 2.187 0 1 1 24.015 9.3a2.189 2.189 0 0 1-2.187 2.186zm0-3.181a.994.994 0 1 0 .994.994.994.994 0 0 0-.994-.994z"
							class="cls-3" data-name="Path 445"
							transform="translate(.015 -6.367)" />
            <path id="Path_446"
							d="M3.874 14.57a.6.6 0 0 1-.417-1.022L7.8 9.3a.6.6 0 0 1 .834.853L4.291 14.4a.591.591 0 0 1-.417.17z"
							class="cls-3" data-name="Path 446"
							transform="translate(.015 -6.367)" />
            <path id="Path_447"
							d="M14.125 14.452a.591.591 0 0 1-.464-.223l-3.188-3.959a.6.6 0 1 1 .929-.748l3.188 3.96a.6.6 0 0 1-.465.97z"
							class="cls-3" data-name="Path 447"
							transform="translate(.015 -6.367)" />
            <path id="Path_448"
							d="M16.29 15.065a.6.6 0 0 1-.4-1.035l4.31-3.977a.6.6 0 1 1 .808.878l-4.315 3.976a.592.592 0 0 1-.403.158z"
							class="cls-3" data-name="Path 448"
							transform="translate(.015 -6.367)" />
        </g>
        <path id="Rectangle_936" d="M0 0h24v24H0z" class="cls-1"
							data-name="Rectangle 936" />
    </g>
</svg> Reports<span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item"><a class="nav-link f-14" href="leads.jsp">
					<svg class="menu_icon" xmlns="http://www.w3.org/2000/svg"
						width="14.57" height="14.57" viewBox="0 0 14.57 14.57"
						style="height: 24px !important;">
    <defs>
        <style>
.cls-1 {
	fill: #999
}
</style>
    </defs>
    <g id="Group_1078" data-name="Group 1078"
							transform="translate(-.516 -.652)">
        <path id="Path_439"
							d="M7.863 15.222H7.8A7.293 7.293 0 0 1 .525 8.008v-.019c-.009-.008-.009-.025-.009-.053A7.31 7.31 0 0 1 7.722.652H7.8a7.287 7.287 0 0 1 2.464.423.662.662 0 0 1 .4.848.672.672 0 0 1-.848.4 5.94 5.94 0 0 0-2-.344h-.059a5.983 5.983 0 0 0-5.917 5.96v.053A5.982 5.982 0 0 0 7.8 13.9h.053a5.976 5.976 0 0 0 5.907-5.961v-.056a6.041 6.041 0 0 0-.247-1.677.716.716 0 0 1-.035-.195.663.663 0 0 1 1.3-.185 6.935 6.935 0 0 1 .31 2.057v.053a7.308 7.308 0 0 1-7.225 7.286z"
							data-name="Path 439" />
        <path id="Path_440"
							d="M9.73 13.806a3.951 3.951 0 0 1-3.93-3.673c-.009-.1-.009-.185-.009-.273a3.952 3.952 0 0 1 3.665-3.939 3.37 3.37 0 0 1 .513 0 .668.668 0 0 1 .459.221.631.631 0 0 1 .159.477.657.657 0 0 1-.7.619c-.106 0-.2 0-.336.008a2.616 2.616 0 0 0-2.434 2.613v.177a2.637 2.637 0 0 0 2.613 2.446c.062 0 .124-.008.185-.008a2.624 2.624 0 0 0 2.437-2.614v-.177a.662.662 0 0 1 .61-.707.674.674 0 0 1 .706.609 2.66 2.66 0 0 1 .009.274A3.966 3.966 0 0 1 10 13.8c-.1.006-.208.006-.27.006z"
							data-name="Path 440" transform="translate(-1.929 -1.923)" />
        <path id="Path_441"
							d="M11.625 8.77a.662.662 0 0 1-.462-1.136l6.482-6.327a.663.663 0 0 1 .926.948l-6.483 6.327a.662.662 0 0 1-.463.188z"
							data-name="Path 441" transform="translate(-3.82 -.171)" />
    </g>
</svg> Leads<span class="sr-only">(current)</span>
			</a></li>

		</ul>
	</div>
</nav>