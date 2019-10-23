<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
	%>
<div class="card shadow rounded-0">
					<div class="card-body p-0  agent" >
					<div class="position-relative">
						<button type="button" class="istar-btn-icon istar-square"  id="show-bottom" style="right: 68px;position: absolute;top: 28px;">
			                 <i class="fas fa-chevron-left"></i>
			             </button>
			             <button type="button" class="istar-btn-icon istar-square active ml-2"   id="show-top" style="right: 31px;position: absolute;top: 28px;">
			                 <i class="fas fa-chevron-right"></i>
			             </button>
					
					<%for(int j=0;j<2;j++){
						String listType = "Bottom 5 Agents";
						if(j==1){
							listType = "Top 5 Agents";
						}%>
					<div class="bottom-top p-0 m-0 ">
						<div class="row m-0 pt-30 pl-30 pr-30 pb-10">
							<div class="col-md-6  p-0 font-weight-bold f-18"><%=listType%></div>
							
						</div> 
						<div class="agent_container pb-30">
						<%
							for (int k = 0; k < 5; k++) {
								String color = "#ffffff";
								if (k % 2 == 0) {
									color = "#f9f9f9";
								}
						%>
						<div class="row align-items-center separation-bottom m-0 pt-20 pb-20 pl-30 pr-30"
							style="background: <%=color%>">
							<div class="col-md-4 col-6 p-0	">
								<div class="d-flex flex-row">
									<img class="mr-2" style="height: 40px; width: 40px" title="Stanley Howar" alt="associate"
										src="<%=baseURL%>assets/image/37.jpg" />
									<div class="d-flex flex-column">
										<div class="f-14 text-truncate" title="Stanley Howar">Stanley Howard</div>
										<div class="p-0 rateYo" data-rating="<%=k%>"></div>
									</div>
								</div>
							</div>
							<div class="col-md-8 col-6 p-0">
								<div class="row m-0 p-0">
								<div class="col-md-4 f-14 p-0">
										<strong>$ 20</strong> - Deal Value
									</div> 
									<div class="col-md-4 f-14 p-0">
										<strong>12%</strong> - Lead Wins
									</div>
									<div class="col-md-4 f-14 p-0">
										<strong>15%</strong> - Utilisation
									</div>
									
								</div>
							</div>

						</div>
						<%
							}
						%>
						</div>
					</div>
					<%} %>
					</div>
					</div>
				</div>
				
				<script>
				var listCount= $('.bottom-top').length ;
				var listShowing = 0;
				$('.bottom-top').hide();
				$('.bottom-top').eq(0).show();
				
				$('#show-top').click(function(){
					if(listShowing==0){
						$('.bottom-top').hide();
						listShowing++;
						$('#show-top').removeClass('active');
						$('#show-bottom').addClass('active');
						$('.bottom-top').eq(listShowing).show();
					}
										
				})
				
				$('#show-bottom').click(function(){
					if(listShowing==1){
						$('.bottom-top').hide();
						listShowing--;
						$('#show-bottom').removeClass('active');
						$('#show-top').addClass('active');
						$('.bottom-top').eq(listShowing).show();
					}
				})
				/* start of rating bar js code */
				
				$(".rateYo").each(function(index) {
					console.log(typeof $(this).attr('data-rating'))
					$(this).rateYo({
						rating: $(this).attr('data-rating'),
						spacing: "0px",
						    starWidth: "18px",
						    readOnly: true,
						    ratedFill: "#f79c0d",
						    normalFill: "#dddddd",
						'starSvg': '<svg xmlns="http://www.w3.org/2000/svg"  viewBox="0 0 24 24">     <defs>         <style>             .cls-1{fill:none}.cls-2{clip-path:url(#clip-path)}      </style>         <clipPath id="clip-path">             <path d="M0 0h24v24H0z" class="cls-1"/>         </clipPath>     </defs>     <g id="Component" class="cls-2">         <path id="Rectangle_936" d="M0 0h24v24H0z" class="cls-1" data-name="Rectangle 936"/>         <path id="Path_59" d="M965.57 1814.81a.846.846 0 0 1-.461-.136l-4.78-3.1-4.78 3.1a.848.848 0 0 1-1.277-.942l1.5-5.3-4.467-3.776a.848.848 0 0 1 .487-1.494l5.359-.385 2.412-5.276a.848.848 0 0 1 1.543 0l2.412 5.276 5.359.385a.848.848 0 0 1 .487 1.494l-4.468 3.776 1.5 5.3a.848.848 0 0 1-.816 1.078zm-5.241-5.092a.847.847 0 0 1 .461.136l3.353 2.172-1.034-3.664a.848.848 0 0 1 .269-.878l3.294-2.785-3.783-.272a.848.848 0 0 1-.711-.493l-1.849-4.046-1.849 4.046a.848.848 0 0 1-.711.493l-3.783.272 3.294 2.785a.848.848 0 0 1 .269.878l-1.034 3.664 3.353-2.172a.847.847 0 0 1 .461-.136z" class="cls-3" data-name="Path 59" transform="translate(-948 -1794)"/>     </g> </svg> '
					});
				});
				/* end of rating bar js code */
				</script>