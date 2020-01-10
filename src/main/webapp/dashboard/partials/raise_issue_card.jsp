<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>
<div class="card  rounded-0 shadow mb-10" id="">
<div class="card-body p-0 p-20">
								<h6 class="card-subtitle m-0 brown-grey f-12 pb-10 fw-300">June 12, 2019</h6>
								<p class="card-text greyish-brown f-14 text-truncate mb-0" title="Product Price in too expensive">Product Price in too expensive, and agents are not supportive and they are not providing
									information !</p>
								<div class="f-18 pt-20 greyish-brown text-truncate font-weight-bold" title="Martin Franklin">Martin Franklin</div>
								<div class="f-16 brownish-grey text-truncate" title="Infogen Consulting Pvt.">Infogen Consulting Pvt. Ltd</div>
								<div class="pt-25">
									<button type="button" class="btn small_button rounded-0 f-12 font-weight-bold resolvecardmodal"  onclick="loadResolveModal()" >RESOLVE</button>
								</div>
							</div>
							<div class="card-footer cream_white p-0 pt-10 pb-10">
								<div class="d-flex justify-content-end pr-20">
									<div class="dark_theme_color f-14 font-weight-bold cursor-pointer view_more_resolve_task" onclick="view_more_resolve_task()">
										04 More<i class="fas fa-chevron-circle-right theme_color ml-2"></i>
									</div>
								</div>
							</div></div>