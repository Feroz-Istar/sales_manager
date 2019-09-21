
<%
String url = request.getRequestURL().toString();
String baseURL = url.substring(0, url.length() - request.getRequestURI().length()) + request.getContextPath() + "/";
%>
 <nav class="salesken navbar navbar-expand-lg navbar-light bg-white ">
<a class="navbar-brand f-15 p-0 pr-3" href="#">
    <img class="appicon img-thumbnail p-0 mr-1 border-0" src="<%=baseURL %>assets/image/app.png" />Salesken</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarsExampleDefault">
   <ul class="salesken navbar-nav mr-auto ">
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
<div class="dropdown dropleft  mr-3">
      <a href="#" id="imageDropdown" data-toggle="dropdown">
        <img  class="linkicon" src="<%=baseURL %>assets/image/notification.png" >
      </a>
     <div class="dropdown-menu" role="menu" aria-labelledby="imageDropdown" style="width: 20rem;max-height:350px;overflow-y:auto;">
     <%for(int i=0;i<10;i++){ %>
    <div class="card border-0 mb-3">
  <div class="card-header">Header</div>
  <div class="card-body text-primary">
    <h5 class="card-title">Primary card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div>
</div>
<%} %>
     </div>
    </div>
    
    
    <div class="dropdown dropleft mr-5">
      <a href="#" class="d-flex " id="imageDropdown1" data-toggle="dropdown"  aria-expanded="false" aria-haspopup="true">
        <img  class="user_profile_img rounded-circle mr-2 " src="https://www.instituteofphotography.in/wp-content/uploads/2015/05/dummy-profile-pic.jpg" >
      	<div class="d-flex flex-column">
  <div class="f-14">Flex item 1</div>
  <div class="f-14">Flex item 2</div>
  
</div>
               <span class="caret"></span>
      
      </a>
     <div class="dropdown-menu" role="menu" aria-labelledby="imageDropdown1" style="width: 20rem;max-height:350px;overflow-y:auto;">
     <%for(int i=0;i<10;i++){ %>
    <div class="card border-0 mb-3">
  <div class="card-header">Header</div>
  <div class="card-body text-primary">
    <h5 class="card-title">Primary card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div>
</div>
<%} %>
     </div>
    </div>
    
    
  </div>
</nav>
