<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<style>



</style>
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>

<div class="card  rounded-0 shadow">
	<div class="card-body ongoingtaskcard cursor-pointer p-0 pl-30 pr-30 pb-30 pt-10">
		<%
			List<String> headings = new ArrayList<String>();
			headings.add("Rockstars");
			headings.add("Laggards");
			headings.add("Trending Up");
			headings.add("Trending Down");

			for (String heading : headings) {
		%>
		<div class=" font-weight-bold f-18 black pb-20 pt-20"><%=heading%></div>

		<div class="row m-0 theme_dashed_border_bottom  <%=heading.replaceAll(" ","_")%> headingrow ">
			<%
				for (int i = 0; i < 5; i++) {
					String ispadding="";
					
					if(i!=0){
					ispadding="pl-20";	
					}
			%>
			<div
				class="col p-0 pb-20 ">
						<div class="d-flex flex-column border-right-dashed-separation mb-10 <%=ispadding %> pr-20 ">
						<img alt="" src="<%=baseURL%>assets/image/layer.png"
							class="hw-60  rounded-circle align-self-center"
							style="position: relative; top: 5px; z-index: 2; left: 0px;">
						<div class="btn-group " role="group" aria-label="Basic example">
							<button type="button"
								class="btn btn-secondary d-flex justify-content-center bg-white p-0  removefocus d-flex align-items-center theme_solid_border">
								<img alt="Heart" style="width: 21px; height: 21px;"
									src="<%=baseURL%>assets/image/heart.svg">
							</button>
							<button type="button"
								class="btn btn-secondary d-flex justify-content-center btn btn-secondary theme_solid_border bg-white p-0  removefocus d-flex align-items-center ">
								<img alt="Heart" style="width: 21px; height: 21px;"
									src="<%=baseURL%>assets/image/message.svg">
							</button>
						</div>
						</div>
						<div class="f-14 greyish-brown text-center ">Stanley
							Howard</div>

			</div>
	<%
				}
			%>
		</div>
		<%
			}
		%>

	</div>
</div>