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
      <title>Customer Objection</title>
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
   <body onload="load()" data-baseurl="<%=baseURL%>" >
     <jsp:include page="../../../navbar/nav.jsp"></jsp:include>
      <main role="main">
         <div class="container-fluid salesken_container">
            <div class="row grey-white-bg theme_solid_border_bottom align-items-center m-0 pt-15 pb-15 pl-40 pr-40">
               <div class="col-md-6 col-12 d-flex align-items-center mb-4 mb-md-0 p-0">
                  <i class="fas fa-arrow-left black f-20 cursor-pointer" onclick="window.location.href = '../../report.jsp'"></i>
                  <div class="display-1 black f-20 border-right-separation pr-20 pl-20 fw-500">Objections</div>
                  <div class=" f-12 brown-grey pl-20">Dashboard</div>
                  <i class="fas fa-chevron-circle-right f-12 brown-grey pl-2 pr-2"></i>
                  <div class=" f-12 brown-grey ">Reports</div>
                  <i class="fas fa-chevron-circle-right f-12 brown-grey pl-2 pr-2"></i>
                  <div class=" f-12 brown-grey ">Customer</div>
                  <i class="fas fa-chevron-circle-right f-12 brown-grey pl-2 pr-2"></i>
                  <div class=" f-12 brown-grey fw-500">Objections</div>
               </div>
            </div>
            
            <div class="row very-light-pink-grey-bg m-0">
               <div class="col-md-3 col-12 pr-0 tabcol flex-grow-1 border-right pb-5 minh-650 p-0 pl-20">
                  <div class="nav flex-column nav-pills h-100 taskdetail-tab-list" id="report_objection-tab" role="tablist" aria-orientation="vertical">
                   
                  </div>
               </div>
               <div class="col-md-9 col-12 bg-white tabcontentcol p-0">
               <div class="row align-items-center bg-white theme_solid_border_bottom m-0 pt-15 pb-15 pl-40 pr-40">
               <div class="col-md-3 text-result-found p-0">
                  <strong class="number-of-results">05</strong> Result Found
               </div>
            </div>
                   <div class="row align-items-center theme_solid_border_bottom m-0 pl-40 pr-40 pt-25 pb-25">
                           <div class="col-md-4 col p-0">
                              <button class="btn p-0 black f-14 font-weight-bold">
                              Lead Name <i class="fas fa-sort brown-grey ml-2"></i>
                              </button>
                           </div>
                           <div class="col-md-8 col p-0">
                              <button class="btn p-0 black f-14 font-weight-bold">
                              Objections
                              </button>
                           </div>
                        </div>
                 <div class="tab-content" id="report_objection-tabContent"></div>

					<div class="row m-0 pt-40 ">
						<div class="col-md-12 d-flex justify-content-end p-0 target-pagination">
							<div class="page">
								<nav>
									<ul class="pagination bootpag">
										<li data-lp="1" class="prev page-item disabled"><a class="page-link" href="javascript:void(0);">prev</a></li>
										<li data-lp="1" class="page-item active"><a class="page-link" href="javascript:void(0);">1</a></li>
										<li data-lp="2" class="page-item"><a class="page-link" href="javascript:void(0);">2</a></li>
										<li data-lp="3" class="page-item"><a class="page-link" href="javascript:void(0);">3</a></li>
										<li data-lp="4" class="page-item"><a class="page-link" href="javascript:void(0);">4</a></li>
										<li data-lp="5" class="page-item"><a class="page-link" href="javascript:void(0);">5</a></li>
										<li data-lp="2" class="next page-item"><a class="page-link" href="javascript:void(0);">next</a></li>
									</ul>
								</nav>
							</div>
						</div>
					</div>
				</div>
            </div>
         </div>
      </main>
      <script src="<%=baseURL%>assets/js/jquery-3.4.1.min.js"></script>
      <script src="<%=baseURL%>assets/js/popper.min.js"></script>
      <script src="<%=baseURL%>assets/js/bootstrap.min.js"></script>
      <script src="<%=baseURL%>assets/js/pagination.min.js"></script>
      <script src="<%=baseURL%>assets/js/salesken.js"></script>
      <script type="text/javascript">
      var contextPath=$('body').data('baseurl');
      $(document).ready(function() {
      loadCostumerObjTab()
      })
      function loadCostumerObjTab(){
    	  var customerobj_array=[];
  		for(var i =0;i<4;i++){
  			var customerObj={};
  			customerObj.id= i;
  			customerObj.count=i;
  			customerobj_array.push(customerObj);
  		} 
  	
  		var costumerobjReport_promises = [];
		for(var customerObj1 of customerobj_array){
			costumerobjReport_promises.push(fetchCostumerObjTab(customerObj1));
		}
		  $( "#report_objection-tab" ).empty();
  		var fetchAllCall = Promise.all(costumerobjReport_promises.map(p => p.catch(error => { console.log(error); return null; })));
  		fetchAllCall.then((results) =>{
  			for(var costumerobjTabHtml of results){
  				  $( "#report_objection-tab" ).append( costumerobjTabHtml );
    
  			}
  			

			var first_objection_id = $($( "#report_objection-tab" ).children()[0]).data('id');
			console.log(first_objection_id);
			$('#customer_objection'+first_objection_id+'-tabs').tab('show')

			populateObjectionTabContent(first_objection_id);
			/*Objection tab change event*/
		 	 $('#report_objection-tab').on('shown.bs.tab', function (e) {
				
				 var id =  $(e.target).data('id');
				 populateObjectionTabContent(id);
				});   
  			
  		});	
		
      }
      
      function populateObjectionTabContent(first_objection_id){
  		var customerObj={};
  		customerObj.id= first_objection_id;
  		var vv = fetchObjectionTabContent(customerObj);
  		vv.done(function(data){
  			$('#report_objection-tabContent').empty();
  			$('#report_objection-tabContent').append(data);
  		});
  	}
      
      function fetchCostumerObjTab(customerObj){
    		return $.post(contextPath+"report/customer/customer_objection/customer_obj_tab.jsp",JSON.stringify(customerObj));
      }
      
      function fetchObjectionTabContent(customerObj){
  		return $.post(contextPath+"report/customer/customer_objection/customer_obj_tabcontent.jsp",JSON.stringify(customerObj));
  	}
 
      </script>
   </body>
</html>