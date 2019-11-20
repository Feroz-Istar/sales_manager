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
<title>My Account</title>
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
	<main role="main" class="">

	<div class="container-fluid salesken_container">
		<div
			class="row grey-white-bg theme_solid_border_bottom align-items-center m-0 pt-15 pb-15 pl-40 pr-40">
			<div
				class="col-md-6 col-12 d-flex align-items-center mb-4 mb-md-0 p-0">
				<div
					class="display-1 black f-20 border-right-separation pr-20 fw-500">My
					Account</div>
				<div class=" f-12 brown-grey pl-20">Dashboard</div>
				<i class="fas fa-chevron-circle-right f-12 brown-grey pl-2 pr-2"></i>
				<div class=" f-12 brown-grey fw-500">My Account</div>
			</div>
		</div>

		<div class="row  m-0   minh-650">
			<div class="col-md-4 p-0 bg-white pl-40 pr-20 pt-20 minh-550">

				<div class="row m-0   pb-30 border_bottom_1_dashed">
					<div class="col-md-11 p-0">
						<div class="d-flex align-items-center ">
							<div class="mr-10">
								<img src="<%=baseURL%>assets/image/man.jpg"
									class="rounded-circle position-relative" height="100"
									width="100">
								<button class="btn rounded-circle hw-30 theme_bg p-0  border border-white"
									style="left: 67px; position: absolute; top: 67px;">
									<img src="<%=baseURL%>assets/image/camera-white.svg">
								</button>
							</div>
							<div class="ml-10">
								<div class="greyish-brown f-18 font-weight-bold">Wade
									Wolkers</div>
								<div class="brownish-grey f-14">Manager</div>
							</div>
						</div>
					</div>
					<div class="col-md-1  p-0">
						<div id="edit-icon" data-toggle="modal" data-target="#editAccount"
							class="profile_edit float-right cursor-pointer" style=""></div>
					</div>
				</div>
				<div class="d-flex pt-30">
					<img src="<%=baseURL%>assets/image/mail.svg">
					<div class="greyish-brown f-16 pl-15">wadewalkers@gmail.com</div>
				</div>
				<div class="d-flex pt-20">
					<img src="<%=baseURL%>assets/image/call.svg">
					<div class="greyish-brown f-16 pl-15">+91 945 950 9509</div>
				</div>
				<div class="d-flex pt-20">
					<img src="<%=baseURL%>assets/image/building.svg">
					<div class="greyish-brown f-16 pl-15">Istarindia Pvt. Ltd.</div>
				</div>
				<div class="d-flex pt-20">
					<img src="<%=baseURL%>assets/image/suitcase.svg">
					<div class="greyish-brown f-16 pl-15">Sales Department</div>
				</div>
				<div class="d-flex pt-20">
					<img src="<%=baseURL%>assets/image/location.svg">
					<div class="greyish-brown f-16 pl-15">Bangalore</div>
				</div>

			</div>
			<div class="col-md-8 p-0  cream_white">
				<div id="my-profile" class="ml-20 mt-20   ">
					<div
						class="card rounded-0  pl-30 pt-30 mr-30 pr-30 pb-30 mb-20  bg-white">
						<div class="d-flex">
							<div class="pr-10">
								<div class="greyish-brown f-18 fw-500">Security</div>
								<div class="pt-10 brown-grey f-14 pb-15">Lorem ipsum dolor
									sit amet, consectetur adipiscing elit. In vitae sapien in nibh
									consequat condimentum et quis turpis. Etiam tellus lorem,
									dapibus at lorem non</div>
								<div
									class="f-14 theme_color font-weight-bold pt-10 cursor-pointer d-inline"
									id="security">
									Click Here &nbsp;<i
										class="fas fa-chevron-circle-right f-14 theme_color"></i>
								</div>
							</div>
							<div class="pl-10">
								<img src="<%=baseURL%>assets/image/account-setting.svg">
							</div>
						</div>

					</div>
					<div class="card pl-30 pt-30 mr-30 pb-30  pr-30 rounded-0 bg-white">
						<div class="d-flex">
							<div class="pr-10">
								<div class="greyish-brown f-18 fw-500">Accounts</div>
								<div class="pt-10 brown-grey f-14 pb-15">Lorem ipsum dolor
									sit amet, consectetur adipiscing elit. In vitae sapien in nibh
									consequat condimentum et quis turpis. Etiam tellus lorem,
									dapibus at lorem non</div>
								<div
									class="f-14 theme_color font-weight-bold pt-10 cursor-pointer d-inline"
									id="accounts">
									Click Here &nbsp;<i
										class="fas fa-chevron-circle-right f-14 theme_color"></i>
								</div>
							</div>
							<div class="pl-10">
								<img src="<%=baseURL%>assets/image/account-setting.svg">
							</div>
						</div>
					</div>

				</div>
				<div id="account-content" class="" style="display: none">
					<div
						class="card  minh-550 bg-white ml-20 mr-20 mt-20 mb-20 shadow ">
						<div class="card-body ">
							<div class="ml-30 pr-30 pb-40 border_bottom_1_dashed pt-60">
								<div class="greyish-brown f-18 fw-500">Accounts Setting</div>
								<div class="pt-10 brown-grey f-14">Lorem ipsum dolor sit
									amet, consectetur adipiscing elit. In vitae sapien in nibh
									consequat condimentum et quis turpis. Etiam tellus lorem,
									dapibus at lorem non</div>
							</div>
							<div class="d-flex m-0 pr-90 justify-content-between pt-30 pl-30">
								<div class="col p-0 mr-10" style="max-width: 160px;">
									<div class="dotted-2 text-center pt-10 pb-10">
										<img src="<%=baseURL%>assets/image/positive_response.svg"
											height="95" width="110">
										<div class="fw-500 f-16 greyish-brown pt-10">Telephony</div>
									</div>
									<div
										class="f-14 theme_color font-weight-bold pt-10 cursor-pointer"
										id="telephony">
										Add Credential &nbsp;<i
											class="fas fa-chevron-circle-right f-14 theme_color"></i>
									</div>
								</div>
								<div class="col p-0 mr-10" style="max-width: 160px;">
									<div class="dotted-2 text-center pt-10 pb-10">
										<img
											src="<%=baseURL%>assets/image/webinar-illustration.svg"
											height="95" width="110">
										<div class="fw-500 f-16 greyish-brown pt-10">Webinar</div>
									</div>
									<div
										class="f-14 theme_color font-weight-bold pt-10 cursor-pointer"
										id="webinar">
										Add Credential &nbsp;<i
											class="fas fa-chevron-circle-right f-14 theme_color"></i>
									</div>
								</div>
								<div class="col p-0 mr-10" style="max-width: 160px;">
									<div class="dotted-2 text-center pt-10 pb-10">
										<img src="<%=baseURL%>assets/image/email-illustration.svg"
											height="95" width="110">
										<div class="fw-500 f-16 greyish-brown pt-10">Email</div>
									</div>
									<div
										class="f-14 theme_color font-weight-bold pt-10 cursor-pointer"
										id="email">
										Add Credential &nbsp;<i
											class="fas fa-chevron-circle-right f-14 theme_color"></i>
									</div>
								</div>
								<div class="col p-0 mr-10" style="max-width: 160px;">
									<div class="dotted-2 text-center pt-10 pb-10">
										<img src="<%=baseURL%>assets/image/crm-illustration.svg"
											height="95" width="110">
										<div class="fw-500 f-16 greyish-brown pt-10">CRM</div>
									</div>
									<div
										class="f-14 theme_color font-weight-bold pt-10 cursor-pointer"
										id="crm">
										Add Credential &nbsp;<i
											class="fas fa-chevron-circle-right f-14 theme_color"></i>
									</div>
								</div>

							</div>
						</div>
						<div
							class="card-footer p-0 m-0 pt-20 pb-20 pr-30  text-right bg-white">
							<button type="submit" id="cancel-account"
								class="btn theme_color f-14 font-weight-bold m-0 pr-20">Back</button>
							<button type="button"
								class="btn big_button rounded-0 f-14 font-weight-bold m-0"
								id="submit-account">SUBMIT</button>

						</div>
					</div>
				</div>

				<div id="telephony-content" class="" style="display: none">
					<div class="card minh-550 bg-white ml-20 mr-20 mt-20 mb-20 shadow ">
						<div class="card-body ">
							<form>
								<div
									class="mr-200  ml-30 pr-30 pb-40 border_bottom_1_dashed pt-60">
									<div class="greyish-brown f-18 fw-500">Telephony</div>
									<div class="pt-10 brown-grey f-14">Lorem ipsum dolor sit
										amet, consectetur adipiscing elit. In vitae sapien in nibh
										consequat condimentum et quis turpis. Etiam tellus lorem,
										dapibus at lorem non</div>
								</div>
								<div class="row m-0 pl-30 pr-30">
									<div class="col-md-7 p-0">
										<label class="m-0 pb-10 fw-500 f-14 black pt-30">Username</label>
										<input type="text"
											class="custom-modal-input w-100 form-control f-14 istar-form-control"
											name="telephony-username" id="telephony-username"
											aria-describedby="telephony-username" placeholder="Type here">
									</div>
								</div>
								<div class="row m-0 pl-30 pr-30">
									<div class="col-md-7 p-0">
										<label class="m-0 pb-10 fw-500 f-14 black pt-30">Password</label>
										<input type="password"
											class="custom-modal-input w-100 form-control f-14 istar-form-control"
											name="telephony-password" id="telephony-password"
											aria-describedby="telephony-password" placeholder="Type here">
									</div>
								</div>
							</form>
						</div>
						<div
							class="card-footer p-0 m-0 pt-20 pb-20 pr-30  text-right bg-white">
							<button type="submit" id="cancel-telephony"
								class="btn theme_color f-14 font-weight-bold m-0 pr-20">Cancel</button>
							<button type="button"
								class="btn big_button rounded-0 f-14 font-weight-bold m-0"
								id="submit-telephony">SUBMIT</button>

						</div>
					</div>

				</div>


				<div id="email-content" class="" style="display: none">
					<div
						class="card  minh-550 bg-white ml-20 mr-20 mt-20 mb-20 shadow ">
						<div class="card-body ">
							<div class="ml-30 pr-30 pb-40 border_bottom_1_dashed pt-60">
								<div class="greyish-brown f-18 fw-500">Email</div>
								<div class="pt-10 brown-grey f-14">Lorem ipsum dolor sit
									amet, consectetur adipiscing elit. In vitae sapien in nibh
									consequat condimentum et quis turpis. Etiam tellus lorem,
									dapibus at lorem non</div>
							</div>
							<form id="emailCredentials">
								<div class="row m-0 pl-30 pr-30">
									<div class="col-md-7 p-0">
										<label class="m-0 pb-10 fw-500 f-14 black pt-30">Username</label>
										<input type="text"
											class="custom-modal-input w-100 form-control f-14 istar-form-control"
											name="email-username" id="email-username"
											aria-describedby="email-username" placeholder="Type here">
									</div>
								</div>
								<div class="row m-0 pl-30 pr-30">
									<div class="col-md-7 p-0">
										<label class="m-0 pb-10 fw-500 f-14 black pt-30">Password</label>
										<input type="password"
											class="custom-modal-input w-100 form-control f-14 istar-form-control"
											name="email-password" id="email-password"
											aria-describedby="email-password" placeholder="Type here">
									</div>
								</div>

							</form>

						</div>
						<div
							class="card-footer p-0 m-0 pt-20 pb-20 pr-30  text-right bg-white">
							<button type="submit" id="cancel-email"
								class="btn theme_color f-14 font-weight-bold m-0 pr-20">Cancel</button>
							<button type="button"
								class="btn big_button rounded-0 f-14 font-weight-bold m-0"
								id="submit-email">SUBMIT</button>

						</div>
					</div>
				</div>


				<div id="webinar-content" class="" style="display: none;">
					<div
						class="card  minh-550 bg-white ml-20 mr-20 mt-20 mb-20 shadow ">
						<div class="card-body ">
							<div class=" ml-30 pr-30 pb-40 border_bottom_1_dashed pt-60">
								<div class="greyish-brown f-18 fw-500">Webinar</div>
								<div class="pt-10 brown-grey f-14">Lorem ipsum dolor sit
									amet, consectetur adipiscing elit. In vitae sapien in nibh
									consequat condimentum et quis turpis. Etiam tellus lorem,
									dapibus at lorem non</div>
							</div>
							<form id="webinarCredentials">
								<div class="row m-0 pl-30 pr-30">
									<div class="col-md-7 p-0">
										<label class="m-0 pb-10 fw-500 f-14 black pt-30">Username</label>
										<input type="text"
											class="custom-modal-input w-100 form-control f-14 istar-form-control"
											name="webinar-username" id="webinar-username"
											aria-describedby="webinar-username" placeholder="Type here">
									</div>
								</div>
								<div class="row m-0 pl-30 pr-30">
									<div class="col-md-7 p-0">
										<label class="m-0 pb-10 fw-500 f-14 black pt-30">Password</label>
										<input type="password"
											class="custom-modal-input w-100 form-control f-14 istar-form-control"
											name="webinar-password" id="webinar-password"
											aria-describedby="webinar-password" placeholder="Type here">
									</div>
								</div>

							</form>

						</div>
						<div
							class="card-footer p-0 m-0 pt-20 pb-20 pr-30  text-right bg-white">
							<button type="submit" id="cancel-webinar"
								class="btn theme_color f-14 font-weight-bold m-0 pr-20">Cancel</button>
							<button type="button"
								class="btn big_button rounded-0 f-14 font-weight-bold m-0"
								id="submit-webinar">SUBMIT</button>

						</div>
					</div>
				</div>

				<div id="crm-content" class="" style="display: none">
					<div
						class="card  minh-550 bg-white ml-20 mr-20 mt-20 mb-20 shadow ">
						<div class="card-body ">
							<div class=" ml-30 pr-30 pb-40 border_bottom_1_dashed pt-60">
								<div class="greyish-brown f-18 fw-500">CRM</div>
								<div class="pt-10 brown-grey f-14">Lorem ipsum dolor sit
									amet, consectetur adipiscing elit. In vitae sapien in nibh
									consequat condimentum et quis turpis. Etiam tellus lorem,
									dapibus at lorem non</div>
							</div>
							<form id="crmCredentials">
								<div class="row m-0 pl-30 pr-30">
									<div class="col-md-7 p-0">
										<label class="m-0 pb-10 fw-500 f-14 black pt-30">Username</label>
										<input type="text"
											class="custom-modal-input w-100 form-control f-14 istar-form-control"
											name="crm-username" id="crm-username"
											aria-describedby="crm-username" placeholder="Type here">
									</div>
								</div>
								<div class="row m-0 pl-30 pr-30">
									<div class="col-md-7 p-0">
										<label class="m-0 pb-10 fw-500 f-14 black pt-30">Password</label>
										<input type="password"
											class="custom-modal-input w-100 form-control f-14 istar-form-control"
											name="crm-password" id="crm-password"
											aria-describedby="crm-password" placeholder="Type here">
									</div>
								</div>

							</form>

						</div>
						<div
							class="card-footer p-0 m-0 pt-20 pb-20 pr-30  text-right bg-white">
							<button type="submit" id="cancel-crm"
								class="btn theme_color f-14 font-weight-bold m-0 pr-20">Cancel</button>
							<button type="button"
								class="btn big_button rounded-0 f-14 font-weight-bold m-0"
								id="submit-crm">SUBMIT</button>

						</div>
					</div>
				</div>

				<div id="security-content" class="" style="display: none">
					<div
						class="card  minh-550 bg-white ml-20 mr-20 mt-20 mb-20 shadow ">
						<div class="card-body ">
							<div
								class="mr-200  ml-30 pr-30 pb-40 border_bottom_1_dashed pt-60">
								<div class="greyish-brown f-18 fw-500">Security</div>
								<div class="pt-10 brown-grey f-14">Lorem ipsum dolor sit
									amet, consectetur adipiscing elit. In vitae sapien in nibh
									consequat condimentum et quis turpis. Etiam tellus lorem,
									dapibus at lorem non</div>
							</div>
							<form id="security-form">
								<div class="row m-0 pl-30 pr-30">
									<div class="col-md-7 p-0">
										<label class="m-0 pb-10 fw-500 f-14 black pt-30">Old
											Password</label> <input type="password"
											class="custom-modal-input w-100 form-control f-14 istar-form-control"
											name="old-password" id="old-password"
											aria-describedby="old-password" placeholder="Type here">
									</div>
								</div>
								<div class="row m-0 pl-30 pr-30">
									<div class="col-md-7 p-0">
										<label class="m-0 pb-10 fw-500 f-14 black pt-30">New
											Password</label> <input type="password"
											class="custom-modal-input w-100 form-control f-14 istar-form-control"
											name="new-password" id="new-password"
											aria-describedby="new-password" placeholder="Type here">
									</div>
								</div>
								<div class="row m-0 pl-30 pr-30">
									<div class="col-md-7 p-0">
										<label class="m-0 pb-10 fw-500 f-14 black pt-30">Confirm
											Password</label> <input type="password"
											class="custom-modal-input w-100 form-control f-14 istar-form-control"
											name="confirm-password" id="confirm-password"
											aria-describedby="confirm-password" placeholder="Type here">
									</div>
								</div>

							</form>

						</div>
						<div
							class="card-footer p-0 m-0 pt-20 pb-20 pr-30  text-right bg-white">
							<button type="submit" id="cancel-password"
								class="btn theme_color f-14 font-weight-bold m-0 pr-20">Cancel</button>
							<button type="button"
								class="btn big_button rounded-0 f-14 font-weight-bold m-0"
								id="submit-password">SUBMIT</button>

						</div>
					</div>
				</div>


			</div>
		</div>



		<!-- start of edit account modal -->
		<div class="modal fade" id="editAccount" tabindex="-1" role="dialog"
			aria-labelledby="editAccountTitle" aria-hidden="true">
			<div class="modal-dialog modal-lg modal-dialog-centered"
				role="document">
				<div class="modal-content rounded-0 ">
					<div class="modal-header shadow-bottom pt-25 pb-25  pl-30 pr-30 ">
						<h5 class="modal-title greyish-brown f-18 font-weight-bold mb-0">Edit
							My Account</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<img src="<%=baseURL%>assets/image/close.svg" alt="taskicon"
								class="rounded-circle hw-24 task-icon">
						</button>
					</div>
					<div class="modal-body p-0 pr-30 pl-30 pt-20 pb-40">
						<form id="editAccountForm">
							<div class="row m-0">
								<div class="col-md-6 p-0 pr-15">
									<label class="f-14 fw-500 pb-10 black m-0">Full Name</label> <input
										type="text" class="custom-modal-input w-100 form-control f-14"
										id="name" name="name" aria-describedby="name"
										placeholder="Type here" value="Wade Wolkers">
								</div>
								<div class="col-md-6 p-0">
									<label class="f-14 fw-500 pb-10 black m-0">Designation</label>
									<input type="text"
										class="custom-modal-input w-100 form-control f-14"
										id="designation" name="designation"
										aria-describedby="designation" placeholder="Type here"
										value="Manager">
								</div>
							</div>
							<div class="row m-0 pt-20">
								<div class="col-md-6 p-0 pr-15">
									<label class="f-14 fw-500 pb-10 black m-0">Contact
										Number</label> <input type="text"
										class="custom-modal-input w-100 form-control f-14" id="number"
										name="number" aria-describedby="number"
										placeholder="Type here" value="+91 945 950 9509">
								</div>
								<div class="col-md-6 p-0">
									<label class="f-14 fw-500 pb-10 black m-0">Email</label> <input
										type="text" class="custom-modal-input w-100 form-control f-14"
										id="email" name="email" aria-describedby="email"
										placeholder="Type here" value="wade@gmail.com">
								</div>
							</div>
							<div class="row m-0 pt-20">
								<div class="col-md-6 p-0 pr-15">
									<label class="f-14 fw-500 pb-10 black m-0">Organization</label>
									<input type="text"
										class="custom-modal-input w-100 form-control f-14"
										id="organization" name="organization"
										aria-describedby="organization" placeholder="Type here"
										value="Istarindia">
								</div>
								<div class="col-md-6 p-0">
									<label class="f-14 fw-500 pb-10 black m-0">Department</label> <input
										type="text" class="custom-modal-input w-100 form-control f-14"
										id="department" name="department"
										aria-describedby="department" placeholder="Type here"
										value="Sales">
								</div>
							</div>
							<div class="row m-0 pt-20">
								<div class="col-md-6 p-0 pr-15">
									<label class="f-14 fw-500 pb-10 black m-0">Location</label> <input
										type="text" class="custom-modal-input w-100 form-control f-14"
										id="location" name="location" aria-describedby="location"
										placeholder="Type here" value="Bangalore">
								</div>
							</div>
						</form>
					</div>

					<div class="modal-footer p-0 pt-30 pb-30 pl-30 pr-30">
						<button type="button"
							class="btn theme_color f-14 font-weight-bold m-0 pr-20">Reset
							All</button>
						<button type="button"
							class="btn big_button rounded-0 f-14 font-weight-bold m-0"
							data-dismiss="modal" id="submit">SUBMIT</button>
					</div>
				</div>
			</div>
		</div>
		<!-- end of edit account modal -->

	</div>
	</main>
	<script src="<%=baseURL%>assets/js/jquery-3.4.1.min.js"></script>
	<script src="<%=baseURL%>assets/js/popper.min.js"></script>
	<script src="<%=baseURL%>assets/js/bootstrap.min.js"></script>
	<script src="<%=baseURL%>assets/js/pagination.min.js"></script>
	<script src="<%=baseURL%>assets/js/salesken.js"></script>
<script src="<%=baseURL%>assets/js/profile.js"></script>
</body>
</html>