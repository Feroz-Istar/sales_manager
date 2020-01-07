	<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>
	
	<!-- Start of resolve task list 
				initially it will be hidden   
				We will display this container on click of view more click
				-->
				<div class="task_resolve_container position-relative"
					style="display: none;">
					<div class="row">
						<div class="col">

							<div class="d-flex mb-3 border-top-task_list ">
								<div class="mr-auto pt-4 greyish-brown f-16 font-weight-bold">RESOLVE</div>
								<button type="button"
									class="close resolve_task very-light-pink-bg pt-4 removefocus"
									aria-label="Close" style="">
									<img src="<%=baseURL%>assets/image/close.svg" alt="taskicon"
										class="border-0 hw-24 task-icon">
								</button>

							</div>



						</div>

					</div>

					<div class="task_resolve_content"></div>
				</div>
				<!-- End of ongoing task list (view more click on ongoing task card) -->
