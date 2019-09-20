
<%
String url = request.getRequestURL().toString();
String baseURL = url.substring(0, url.length() - request.getRequestURI().length()) + request.getContextPath() + "/";
%>
<nav class="salesken navbar navbar-expand-lg navbar-light bg-white p-0 m-0">
 <a class="navbar-brand f-15 p-0 pr-4 pt-2 mb-2" href="#">
    <img class="appicon img-thumbnail p-0 mr-1 border-0" src="<%=baseURL %>assets/image/app.png" />Salesken</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
    
    <ul class="navbar-nav mr-auto ">
      <li class="nav-item active">
        <a class="nav-link d-flex align-items-center f-14" href="#"><img class="linkicon mr-1 " src="<%=baseURL %>assets/image/home.png" />      <h4 class="my-0 f-14">Dashboard</h4>
</a>
      </li>
      <li class="nav-item">
        <a class="nav-link f-14" href="#"><img class="linkicon" src="<%=baseURL %>assets/image/task.png" /> Task Details </a>
      </li>
      <li class="nav-item">
        <a class="nav-link f-14" href="#"><img class="linkicon" src="<%=baseURL %>assets/image/pipeline.png" /> Pipeline <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link f-14" href="#"><img class="linkicon" src="<%=baseURL %>assets/image/report.png" /> Reports <span class="sr-only">(current)</span></a>
      </li>
       <li class="nav-item">
        <a class="nav-link f-14" href="#"><img class="linkicon" src="<%=baseURL %>assets/image/lead.png" /> Leads <span class="sr-only">(current)</span></a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>