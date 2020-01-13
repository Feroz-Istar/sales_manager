	<%@page import="org.apache.commons.io.IOUtils"%>
<%@page import="com.google.gson.GsonBuilder"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="pojos.TaskItemList"%>
	<%
	
	String userdata = IOUtils.toString(request.getReader());
	Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm:ss").create();
	TaskItemList taskItem = gson.fromJson(userdata, TaskItemList.class);
	
	
	%>
	
	<!-- Start of creation to do items card -->
							<div class="taskitem  pt-20 pb-20" style="">
								<div class="d-flex flex-row align-items-center ">
									<div class="font-weight-bold f-14 bblack">Title</div>
									<div class="dropdown ml-auto istar-dropdown dropleft f-12 brown-grey">
										<button class="dropdown-icon-btn " type="button"
											id="dropdownMenuButton" data-display="static"
											data-toggle="dropdown" aria-haspopup="true"
											aria-expanded="false">
											<i class="fas fa-ellipsis-v f-12 brown-grey"></i>
										</button>
										<div
											class="dropdown-menu dropdown-menu-right istar-dropdown-menu arrow-left" style="margin-top:-8px;"
											aria-labelledby="dropdownMenuButton">

											<button class="dropdown-item" href="#">
												<div class="mr-2 dropdown-icon edit"></div>Edit
											</button>
											<button class="dropdown-item" href="#"  data-toggle="modal" data-target="#deleteModal">
												<div class="mr-2 dropdown-icon delete"></div>Delete
											</button>

										</div>
									</div>

								</div>
								<div class="f-12 bblack">11:00 AM</div>
								<div class="d-flex flex-row  mb-1">
									<%
										for (int i = 0; i < 3; i++) {
												String img_mar = "";
												if (i != 0) {
													img_mar = "ml_10";
												}
									%>
									<img class="rounded-circle imgsize <%=img_mar%> theme_solid_border_2px border-white"
										alt="associate-name" title="associate-name"
										src="https://res.cloudinary.com/demo/image/upload/q_60/sample.jpg">
									<%
										}
									%>
									<div
										class="rounded-circle imgsize mr-1 ml_10 theme_bg f-10 font-weight-bold text-white d-flex align-items-center justify-content-center theme_solid_border_2px border-white">
										+05</div>
								</div>
							</div>
							<!-- start of no-data for todo list -->