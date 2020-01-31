		<%@page import="com.CustomerFeedback"%>
<%@page import="org.apache.commons.io.IOUtils"%>
<%@page import="com.google.gson.GsonBuilder"%>
<%@page import="com.google.gson.Gson"%>
<%
	String url = request.getRequestURL().toString();
	String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
	
	String customerfeedback = IOUtils.toString(request.getReader());	
	 Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm:ss").create();	
	 CustomerFeedback customeFeedback = gson.fromJson(customerfeedback, CustomerFeedback.class);
%>

<div class="tab-pane fade show pl-0 active"  id="products-<%=customeFeedback.getId()%>" role="tabpanel" aria-labelledby="products-<%=customeFeedback.getId()%>-tab">


	<div class="row align-items-center theme_solid_border_bottom py-3 pl-4">
		<div class="col-md-4 col">
			<button class="btn p-0 black f-14 font-weight-bold">
				Lead Name <i class="fas fa-sort brown-grey ml-2"></i>
			</button>
		</div>


		<div class="col-md-8 col">
			<button class="btn p-0 black f-14 font-weight-bold">Customer Feedbak</button>
		</div>
	</div>


	<div class="row py-4 theme_solid_border_bottom align-items-center pl-4 bg-white">
		<div class="col-md-4">
			<div class="f-14 black fw-500 text-truncate" title="Accenture Consulting Inc.">Accenture Consulting Inc.</div>
			<div class="f-14 brownish-grey fw-500">Robert Wolken</div>
		</div>

		<div class="col-md-8">
			<p class="blue-black f-14 mb-0">Sed tempus odio eget mattis scelerisque.Pellentesque pellentesque pharetra elit non fringilla.Sed in libero diam.pellentesque sem quam,</p>
		</div>
	</div>

	<div class="row py-4 theme_solid_border_bottom align-items-center pl-4 very-light-pink-grey-bg">
		<div class="col-md-4">
			<div class="f-14 black fw-500 text-truncate" title="Accenture Consulting Inc.">TEK Consulting Inc.</div>
			<div class="f-14 brownish-grey fw-500">Johnni Owens</div>
		</div>

		<div class="col-md-8">
			<p class="blue-black f-14 mb-0">Vestibulum sagittis mattis nulla, a sagittis lacus placerat at. Proin tincidunt, metus eget ultricies porttitor,augue nisi convallis libero,ut sagittis</p>
		</div>
	</div>

	<div class="row py-4 theme_solid_border_bottom align-items-center pl-4 bg-white">
		<div class="col-md-4">
			<div class="f-14 black fw-500 text-truncate" title="Accenture Consulting Inc.">Vehement Capital Tech</div>
			<div class="f-14 brownish-grey fw-500">Gladys Perkins</div>
		</div>

		<div class="col-md-8">
			<p class="blue-black f-14 mb-0">Aenean diam nisi, facilisis ut euismod sed,fermentum convallis magna.Curabitur ornare vestibulum risus</p>
		</div>
	</div>

	<div class="row py-4 theme_solid_border_bottom align-items-center pl-4 very-light-pink-grey-bg">
		<div class="col-md-4">
			<div class="f-14 black fw-500 text-truncate" title="Accenture Consulting Inc.">Mahiti Consulting Inc.</div>
			<div class="f-14 brownish-grey fw-500">Ray Pearson</div>
		</div>

		<div class="col-md-8">
			<p class="blue-black f-14 mb-0">Fusce dignissim lorem eu lorem solliditudin dictum. Cras commodo vel metus a lacinia</p>
		</div>
	</div>

</div>