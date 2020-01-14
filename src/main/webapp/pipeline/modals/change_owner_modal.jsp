
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>
<div class="modal fade" id="assignOwnerModal" tabindex="-1" role="dialog" aria-labelledby="assignOwnerModalTitle"
			aria-hidden="true">
			<div class="modal-dialog modal-lg modal-dialog-centered"
				role="document">
				<div class="modal-content rounded-0 ">
					<div class="modal-header shadow-bottom pt-25 pb-25  pl-30 pr-30 ">
						<h5 class="modal-title greyish-brown f-18 font-weight-bold mb-0">Assign Owner</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<img src="<%=baseURL%>assets/image/close.svg" alt="taskicon"
								class="rounded-circle hw-24 task-icon">
						</button>
					</div>
					<div class="modal-body p-0">
						<div class="row m-0 align-items-center cream_white pt-10 pb-10 pr-30 pl-30">
							<div class="col-md-6 text-result-found p-0">
									<strong class="number-of-results ">504</strong> Results Found
							</div>
							<div class="col-md-6 d-lg-flex justify-content-md-end p-0">
								<div class="input-group position-relative search_width ">
								<img src="<%=baseURL%>assets/image/search.svg" alt="edit" class=" searchBox">
									<input id="" class="form-control  custom-taskborder brown-grey  f-14 search_height custom-result-selects"
										type="search" placeholder="Search" style="padding-right:30px">
								</div>
							</div>
						</div>
						
						<div style="height:360px; overflow-x: none; overflow-y:auto;">
						<%for(int j=0; j<20;j++){ %>
						<div class="d-flex align-items-center pt-10 pb-10 pr-30 pl-30 border-bottom-separation " >
                             <input class="istar-checkbox" data-id="<%=j %>" id="owner-checkbox<%=j %>" type="checkbox">
                             <label class="istar-checkbox-style" for="owner-checkbox<%=j%>"></label>
                             <div class="d-flex w-100 m-0 align-items-center" >
                             	<div class="col-md-4">
                             		<div class="d-flex align-items-center">
                             			<img src="<%=baseURL%>assets/image/37.jpg" class="rounded-circle hw-40">
                             			<div class="ml-2">
                             				<div class="f-14 greyish-brown">Stanley Howard</div>
                             				<div class="f-12 brown-grey">Associate</div>
                             			</div>
                             		</div>
                             	</div>
                             	<div class="col-md-4 f-14 greyish-brown">stanley@gmail.com</div>
                             	<div class="col-md-4 f-14 greyish-brown">+91 445 546 6456</div>
                             </div>
                         </div>
                         <%} %>
						</div>
					</div>
					<div class="modal-footer p-0 pt-30 pb-30 pl-30	pr-30">
						<button type="button"
							class="btn theme_color f-14 font-weight-bold m-0 pr-20"  data-dismiss="modal">Reset All</button>
						<button type="button"
							class="btn big_button rounded-0 f-14 font-weight-bold m-0"  data-dismiss="modal"
							id="submit">SUBMIT</button>
					</div>
				</div>
			</div>
		</div>