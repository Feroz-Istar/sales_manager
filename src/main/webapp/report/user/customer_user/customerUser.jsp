<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html lang="en" class="h-100">
<html>
   <head>
      <meta charset="utf-8">
      <meta name="viewport"
         content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <meta name="description" content="">
      <title>Reports - User</title>
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
      <link href="<%=baseURL%>assets/css/bootstrap-datepicker3.min.css?xsww"
         rel="stylesheet">
      <link href="<%=baseURL%>assets/css/bootstrap-datepicker3.min.css?xsww"
         rel="stylesheet">
      <link rel="stylesheet" href="<%=baseURL%>assets/css/report.css">
   </head>
   <body onload="load()" data-baseurl=<%=baseURL%>>
      <div class="loader-div d-none">
         <div
            class="inner-circle-div d-flex align-items-center justify-content-center">
            <div class="spinner-border  text-danger">
               <span class="sr-only">Loading...</span>
            </div>
         </div>
      </div>
      <jsp:include page="../../../navbar/nav.jsp"></jsp:include>
      <main role="main">
         <div class="container-fluid salesken_container">
            <div class="row grey-white-bg align-items-center m-0 theme_solid_border_bottom pl-40 pr-40 pt-10 pb-10">
               <div class="col-md-6 col-12 d-flex align-items-center p-0">
                  <i class="fas fa-arrow-left black f-20 cursor-pointer" onclick="window.location.href = '../../report.jsp'"></i>
                  <div class="display-1 black f-20 border-right-separation pr-20  fw-500 pl-20">Team South</div>
                  <div class="f-12 brown-grey pl-20">Dashboard</div>
                  <i class="fas fa-chevron-circle-right pl-2 pr-2 f-12 very-light-pink"></i>
                  <div class="f-12 brown-grey ">User</div>
                  <i class="fas fa-chevron-circle-right pl-2 pr-2 f-12 very-light-pink"></i>
                  <div class=" f-12 brown-grey fw-500 " id="breadcrumb">Team South</div>
               </div>
               <div class="col-md-6 d-flex justify-content-end p-0">
                  <div class="input-group position-relative pl-2 search_width">
                     <img src="<%=baseURL%>assets/image/search.svg" alt="edit"
                        class="searchBox"> <input id="customer_user_search"
                        class="form-control  custom-taskborder brown-grey  f-14 search_height custom-result-selects"
                        type="search" placeholder="Search" style="padding-right: 30px">
                  </div>
               </div>
            </div>
            <div class="row align-items-center  theme_solid_border_bottom pl-40 pr-40 pt-15 pb-15 bg-white  m-0" id="customer_user_filter">
               <div class="col-md-3 text-result-found p-0	">
                  <strong class="number-of-results">03</strong> Results Found
               </div>
               <div class="col-md-9 d-md-flex justify-content-end p-0  filter-dropdown-list-catch">
                  <div class="istar-dropdown-task select_focus mr-10 ">
                     <button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="customerUser_deal" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                     <span class="sr-only"></span><span id="customerUser_deal_drop">All Deal Value</span> <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
                     </button>
                     <div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu 	" aria-labelledby="customerUser_deal">
                        <button class="dropdown-item" type="button" data-id="1000" onclick="customerUser_deal_dropdown(this)">1000</button>
                        <button class="dropdown-item" type="button" data-id="2000" onclick="customerUser_deal_dropdown(this)">2000</button>
                     </div>
                  </div>
                  <div class="istar-dropdown-task select_focus mr-10">
                     <button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="customerUser_stage" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                     <span class="sr-only">Toggle Dropdown</span> <span id="customerUser_stage_drop">All Stages</span> <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
                     </button>
                     <div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="customerUser_stage">
                        <button class="dropdown-item" type="button" data-id="1" onclick="customerUser_stage_dropdown(this)">Stage 1</button>
                        <button class="dropdown-item" type="button" data-id="2" onclick="customerUser_stage_dropdown(this)">stage 2</button>
                     </div>
                  </div>
                  <div class="istar-dropdown-task select_focus mr-10">
                     <button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="customerUser_activity" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                     <span class="sr-only">Toggle Dropdown</span> <span id="customerUser_activity_drop">All Activities </span> <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
                     </button>
                     <div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="customerUser_activity">
                        <button class="dropdown-item" type="button" data-id="1" onclick="customerUser_activity_dropdown(this)">
                        <img src="<%=baseURL%>assets/image/calltask.svg" alt="call" class="task-dropdown"> Call Task
                        </button>
                        <button class="dropdown-item" type="button" data-id="2" onclick="customerUser_activity_dropdown(this)">
                        <img src="<%=baseURL%>assets/image/emailtask.svg" alt="email" class="task-dropdown"> Email Task
                        </button>
                        <button class="dropdown-item" type="button" data-id="3" onclick="customerUser_activity_dropdown(this)">
                        <img src="<%=baseURL%>assets/image/webinartask.svg" alt="webinar" class="task-dropdown"> Webinar Task
                        </button>
                        <button class="dropdown-item" type="button" data-id="4" onclick="customerUser_activity_dropdown(this)">
                        <img src="<%=baseURL%>assets/image/presentation.svg" alt="" class="task-dropdown"> Presentation
                        </button>
                     </div>
                  </div>
                  <div class="istar-dropdown-task select_focus mr-10">
                     <button class="istar-dropdown-arrow dropdown-toggle" data-display="static" id="customerUser_status" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                     <span class="sr-only">Toggle Dropdown</span><span id="customerUser_status_drop"> All Status</span> <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
                     </button>
                     <div class="dropdown-menu dropdown-menu-right istar-dropdown-task-menu" aria-labelledby="customerUser_status">
                        <button class="dropdown-item" type="button" data-id="3" onclick=" customerUser_status_dropdown(this)">customerUser</button>
                        <button class="dropdown-item" type="button" data-id="4" onclick=" customerUser_status_dropdown(this)">Completed</button>
                     </div>
                  </div>
                  <div class="istar-dropdown-task dropdown " id="customerUser-filter">
                     <button class="istar-dropdown-arrow " data-display="static" id="customerUser_dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                     <span class="sr-only">Toggle Dropdown</span> All Agents <img src="<%=baseURL%>assets/image/dropdown_right.svg" alt="call" class=" float-right">
                     </button>
                     <div class="dropdown-menu filter-menu dropdown-menu-right istar-dropdown-task-menu  dropdown-menu-lg-right position-absolute px-4" aria-labelledby="customerUser_dropdown" style="width: 350px;height:660px">
                        <ul class="dropdown-nav nav nav-tabs nav-mytabs filtertabs pt-2 d-flex align-items-end" id="customerUserTab" role="tablist">
                           <li class="nav-item"><a class="nav-item nav-link active" id="customerUser_individual-tab" data-toggle="tab" href="#customerUser_individual" role="tab" aria-controls="customerUser_individual" aria-selected="true">Individual</a></li>
                           <li class="nav-item"><a class="nav-item nav-link" id="customerUser_team-tab" data-toggle="tab" href="#customerUser_team" role="tab" aria-controls="customerUser_team" aria-selected="false">Team</a></li>
                        </ul>
                        <div class="tab-content" id="customerUserTab-tabContent">
                           <div class="tab-pane fade show active px-4 py-3" id="customerUser_individual" role="tabpanel" aria-labelledby="customerUser_individual-tab">
                              <div class="input-group py-2">
                                 <input id="customerUser_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
                                 <div class="input-group-append">
                                    <button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
                                    <i class="fa fa-search f-12 brown-grey"></i>
                                    </button>
                                 </div>
                              </div>
                              <div class="customerUser-agent-list mb-2" style="overflow-x: hidden; overflow-y: auto;"></div>
                           </div>
                           <div class="tab-pane fade px-4 py-3" id="customerUser_team" role="tabpanel" aria-labelledby="customerUser_team-tab">
                              <div class="input-group py-2">
                                 <input id="customerUser_individual_search" class="form-control  custom-taskborder brown-grey  removefocus f-14 search_height" type="search" placeholder="Search" style="border-right: none !important;">
                                 <div class="input-group-append">
                                    <button class="btn removefocus border_except_left search_height d-flex justify-content-center align-items-center" type="button" style="">
                                    <i class="fa fa-search f-12 brown-grey"></i>
                                    </button>
                                 </div>
                              </div>
                              <div class="mb-2 customerUser-team-list" style="overflow-x: hidden; overflow-y: auto;"></div>
                           </div>
                        </div>
                        <div class="w-100 text-center">
                           <button class="btn  rounded-0 theme_bg text-white f-14 font-weight-bold mb-3 text-center px-3" style="min-width: 200px;" id="customerUser_team_submit">Submit</button>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
        <div class="row cream_white m-0 theme_solid_border_bottom justify-content-between align-items-center pl-40 pr-40 pt-10 pb-10" id="customerUser_filter_selections" style="">
							<div class="col-md-10 d-flex p-0 filters-inside-selection"></div>
							<div class="col-md-2 text-right p-0">
								<button type="submit" class="btn theme_color f-14 font-weight-bold p-0" id="customerUser_reset" data-type="customerUser" onclick="resetCustomerUserFilters(this)">Reset</button>
							</div>
						</div>
            <div class="row cream_white m-0" id="customer-user-content">
               <div class="col-md-12 p-0 pt-20" id="customer_user_card">
               </div>
               <div class="col-md-12  d-flex justify-content-end p-0">
                  <div class="page">
                     <ul class="salesken pagination  m-0 pt-30 pb-40 pr-40"></ul>
                  </div>
               </div>
            </div>
         </div>
      </main>
   </body>
   <script src="<%=baseURL%>assets/js/jquery-3.4.1.min.js"></script>
   <script src="<%=baseURL%>assets/js/popper.min.js"></script>
   <script src="<%=baseURL%>assets/js/bootstrap.min.js"></script>
   <script src="<%=baseURL%>assets/js/salesken.js"></script>
   <script src="<%=baseURL%>assets/js/pagination.min.js"></script>
   <script src="<%=baseURL%>assets/js/bootstrap-datepicker.min.js"></script>
   <script>
      var contextPath=$('body').data('baseurl');
         $(document).ready(function() {
          		$('#customerUser_filter_selections').hide();
       	  loadcustomerUserCard()
       	  loadAllAgentFilterTab();
       	 loadAllTeamFilterTab();
         	$('.filter-menu.dropdown-menu').click(function(e) {
         		e.stopPropagation();
         	
         	});
         	$('.salesken.navbar-nav>li').removeClass('active');
         	$($('.salesken.navbar-nav>li')[3]).addClass('active');
         	$('.page').Pagination({ // id to initial draw and use pagination
         		size : 87, // size of list input
         		pageShow : 5, // 5 page-item per page
         		page : 1, // current page (default)
         		limit : 10, // current limit show perpage (default)
         	}, function(obj) { // callback function, you can use it to re-draw table or something
         		console.log(obj)
         	});
         	
         	$('.filtertabs>li>.nav-link').click(function(e) {
         		
         		$($(this).attr('href')+'-tab').tab('show')
         
         	});
         	
         	$('#user_reset').click(function(){
         		 $('#user_selections').addClass('d-none');
         	 });
         	
         	 $('#target_team_submit').click(function(e) {
         			var agent_array=[];
         			var team_array=[];
         			
         			$('.targetagentcheckbox').each(function(){
         				if($(this).prop('checked')===true){
         					agent_array.push($(this).data('id'));
         				}
         			});
         			$('.targetteamcheckbox').each(function(){
         				if($(this).prop('checked')===true){
         					team_array.push($(this).data('id'));
         				}
         			});
         			
         			if(agent_array.length==0 && team_array.length==0){
         				alert("Please select atleast one");
         			}else{
         				$('#target_dropdown').dropdown('hide');
         			}
         			console.log(agent_array)
         			console.log(team_array)
         				
         
         		});
         	 $('#target-filter').on('show.bs.dropdown', function () {
         			var new_height= $('#user_selections').outerHeight() + $('#customer-user-content').outerHeight() ;
         			console.log(new_height);
         			$('#target_dropdown + .dropdown-menu').height(new_height-8);
         			$('.agent-team-list').height(new_height - 200);
         		});
         });
         ////////////////********************************************************
         
         function  loadcustomerUserCard(){
       	  
       		var customerUserCard_array=[];
       		for(var i =0;i<3;i++){
       			var customerUserCard={};
       			customerUserCard.id= i;
       			customerUserCard.username="Stanley Howard"+i;
       		
       			customerUserCard_array.push(customerUserCard);
       		}
       	  var customerUserCard_promises = [];
      	for( var customerUserCard of customerUserCard_array){
      		customerUserCard_promises.push(fetchCustomerUserCard(customerUserCard));
      	}
      	$( "#customer_user_card" ).empty();
      var fetchAllCall = Promise.all(customerUserCard_promises.map(p => p.catch(error => { console.log(error); return null; })));
      fetchAllCall.then((results) =>{
      for(var customeruserCardHtml of results){
      	  $( "#customer_user_card" ).append( customeruserCardHtml );
      
      	}
         		});
         }
      function fetchCustomerUserCard(customerUserCard){
      		return $.post(contextPath+"report/user/customer_user/customer_user_card.jsp",JSON.stringify(customerUserCard));
      	}	
      
  	/*	start of filter drop down*/ 
  	function customerUser_deal_dropdown(elem){
  		var filter = $(elem).text();
  		var filter_id = $(elem).data('id');
  		$('#customerUser_deal').attr('data-id',filter_id);
  		$('#customerUser_deal').attr('data-name',filter);
  		loadcustomerUserTab();
  	};
  	function customerUser_stage_dropdown(elem){
  		var filter = $(elem).text();
  		var filter_id = $(elem).data('id');
  		$('#customerUser_stage').attr('data-id',filter_id);
  		$('#customerUser_stage').attr('data-name',filter);
  		loadcustomerUserTab();
  	};
  	
  	function customerUser_activity_dropdown(elem){
  		var filter = $(elem).text();
  		var filter_id = $(elem).data('id');
  		$('#customerUser_activity').attr('data-id',filter_id);
  		$('#customerUser_activity').attr('data-name',filter);
  		loadcustomerUserTab();
  		
  	};
  	function customerUser_status_dropdown(elem){
  		var filter = $(elem).text();
  		var filter_id = $(elem).data('id');
  		$('#customerUser_status').attr('data-id',filter_id);
  		$('#customerUser_status').attr('data-name',filter);
  		loadcustomerUserTab();
  		
  	};
  	
      function loadcustomerUserTab(){
    	  //<------------------CustomerUser TAB FILTER SELECTIONS
  		$('#customerUser_filter_selections').find('.filters-inside-selection').empty();
  		$('#customerUser_filter_selections').hide();
  		var filterObj={}
  		
  	/*Selection of deal filter*/
  		var deal_value = $('#customerUser_deal').attr('data-name');
  		var deal_value_id = $('#customerUser_deal').attr('data-id');
  		filterObj.deal={};
  		addCustomerUserFilterSelections("customerUser","deal",deal_value,deal_value_id,filterObj.deal)
  		
  		/*Selection of stage filter*/
  		var stage = $('#customerUser_stage').attr('data-name');
  		var stage_id = $('#customerUser_stage').attr('data-id');
  		filterObj.stage={};
  		addCustomerUserFilterSelections("customerUser","stage",stage,stage_id,filterObj.stage)
  		
  		/*Selection of activity filter*/
  		var activity = $('#customerUser_activity').attr('data-name');
  		var activity_id = $('#customerUser_activity').attr('data-id');
  		filterObj.activity={};
  		addCustomerUserFilterSelections("customerUser","activity",activity,activity_id,filterObj.activity)
  		
  		/*Selection of status filter*/
  		var status = $('#customerUser_status').attr('data-name');
  		var status_id = $('#customerUser_status').attr('data-id');
  		filterObj.status={};
  		addCustomerUserFilterSelections("customerUser","status",status,status_id,filterObj.status)
  		
  		/*Selection of All Agents->Individual filter*/
  		if( $('#customerUser_dropdown').attr('data-agents')!=null){
  			var agents = JSON.parse($('#customerUser_dropdown').attr('data-agents'));
  			filterObj.agents=[]
  			if(agents!=null){
  				for(var i=0;i<agents.length;i++){
  					var agent_id=agents[i].id;
  					var agent_name=agents[i].name;
  					var agent={}
  					addCustomerUserFilterSelections("customerUser","agents",agent_name,agent_id,agent)
  					filterObj.agents.push(agent)
  				}
  			}
  		}
  		
  		/*Selection of All Agents->Team filter*/
  		if( $('#customerUser_dropdown').attr('data-teams')!=null){
  			var teams = JSON.parse($('#customerUser_dropdown').attr('data-teams'));
  			filterObj.teams=[]
  			if(teams!=null){
  				for(var i=0;i<teams.length;i++){
  					var team_id=teams[i].id;
  					var team_name=teams[i].name;
  					var team={}
  					addCustomerUserFilterSelections("customerUser","teams",team_name,team_id,team)
  					filterObj.teams.push(team)
  				}
  			}
  		}
      }
      
    //<---------------GLOBAL FUNCTIONS FOR EACH TAB TO ADD FILTER TAGS
      function getfilterhtml(filter, id, filter_type){
      	return '<button class="theme_solid_border bg-white brown-grey rounded f-12 position-relative search-filter ml-10" data-id="'+id+'">'+filter+
      			'<i class="fas fa-times-circle brown-grey bg-white rounded-circle f-14 cross-btn" data-type="'+filter_type+'" onclick="removecustomerUserFilter(this)"></i> </button>'
      }
      function addCustomerUserFilterSelections(tab,filter,name,id,obj){
      	
      	if(name!="" && name!= undefined && id!="" && id != undefined){
      		
      		obj.name=name;
      		obj.id=id;
      		$('#'+tab+'_filter_selections').find('.filters-inside-selection').append(getfilterhtml(name,id,tab+'_'+filter));
      		$('#'+tab+'_filter_selections').show();
      	}
      }
      //--------------------------------------------->
      
      //<------------------------AGENT TEAM FILTER DROP DOWN POPULATE
	//populate agents in all filters
	function loadAllAgentFilterTab(){
		var userList=[{
			id:1,
			name:"Nice",
			image:contextPath+"/assets/image/11.png",
			teamName:"Team - 01"
		},{
			id:2,
			name:"wassup???",
			image:contextPath+"/assets/image/11.png",
			teamName:"Team - 02"
		},{
			id:6,
			name:"Meet",
			image:contextPath+"/assets/image/11.png",
			teamName:"Team - 03"
		},{
			id:192,
			name:"You",
			image:contextPath+"/assets/image/11.png",
			teamName:"Team - 04"
		}]
		populateAgentListDropDown(userList,"customerUser")
	}
	//populate teams in all filters
	function loadAllTeamFilterTab(){
		var teamList=[{
			id:1,
			name:"Team - 01"
		},{
			id:12,
			name:"Team - 02"
		},{
			id:62,
			name:"Team - 03"
		},{
			id:162,
			name:"Team - 04"
		}]
		populateTeamListDropDown(teamList,"customerUser")
	}
	//Common function to populate Agents in Drop down for all tabs
	function populateAgentListDropDown(userList,tabName){
		 for(var i=0;i<userList.length;i++){
			 	
				var html='<div class="d-flex align-items-center pt-3">'+
					'<input class="istar-checkbox '+tabName+'agentcheckbox" data-user=\''+JSON.stringify(userList[i])+'\'data-id="'+userList[i].id+'" id="'+tabName+'_associate-checkbox'+userList[i].id+'" type="checkbox">'+
					'<label class="istar-checkbox-style" for="'+tabName+'_associate-checkbox'+userList[i].id+'"></label>'+
					'<img alt="Agent Image" title="Agent Name" src ="'+userList[i].image+'" class="rounded-circle ml-3 mr-2 hw-40"> <div>'+
					'<div class="f-14 font-weight-bold greyish-brown text-truncate" title="'+userList[i].name+'">'+userList[i].name+'</div>'+
					'<div class="f-12  brownish-grey text-truncate" title="team">'+userList[i].teamName+'</div> </div></div>';
				$('.'+tabName+'-agent-list').append(html);
				console.log('.'+tabName+'-agent-list')
			}
	}
	//Common function to populate Team in Drop down for all tabs
	function populateTeamListDropDown(teamList,tabName){
		 for(var i=0;i<teamList.length;i++){
				var html='<div class="d-flex align-items-center pt-3">'+
					'<input class="istar-checkbox '+tabName+'teamcheckbox" data-team=\''+JSON.stringify(teamList[i])+'\' data-id="'+teamList[i].id+'" id="'+tabName+'_team-checkbox'+teamList[i].id+'" type="checkbox">'+
					'<label class="istar-checkbox-style" for="'+tabName+'_team-checkbox'+teamList[i].id+'"></label><div class="f-12 ml-2 brownish-grey">'+teamList[i].name+'</div></div>';
				$('.'+tabName+'-team-list').append(html);
			}
	}	
//---------------------------------------------->

	$('#customerUser_team_submit').click(function(e) {
		var agent_array=[];
		var agent_name=[];
		var team_array=[];
		
		$('.customerUseragentcheckbox').each(function(){
			if($(this).prop('checked')===true){
				agent_array.push($(this).data('user'));
			}
		});
		$('.customerUserteamcheckbox').each(function(){
			if($(this).prop('checked')===true){
				team_array.push($(this).data('team'));
			}
		});
		if(agent_array.length==0 && team_array.length==0){
			alert("Please select atleast one");
		}else{
			$('#customerUser_dropdown').dropdown('hide');
		}
		$('#customerUser_dropdown').attr('data-agents',JSON.stringify(agent_array));
		$('#customerUser_dropdown').attr('data-teams',JSON.stringify(team_array));
		
		$('.customerUseragentcheckbox').each(function(){
			if($(this).prop('checked')===true){
				$(this).prop("checked", false);
			}
		});
		$('.customerUserteamcheckbox').each(function(){
			if($(this).prop('checked')===true){
				$(this).prop("checked", false);
			}
		});
		loadcustomerUserTab();
		
	});
	

	function removecustomerUserFilter(button){
		var type = $(button).data('type');
		var tabType=type.split('_')[0];
		var id=$(button).parent().data('id')
		console.log(tabType);
		var filter;
		switch(type){
			case tabType+"_deal":
				filter = $('#'+tabType+'_deal')
				break;

			case tabType+"_stage":
				filter = $('#'+tabType+'_stage')
				break;
			case tabType+"_activity":
				filter = $('#'+tabType+'_activity')
				break;
			case tabType+"_status":
				filter = $('#'+tabType+'_status')
				break;
			case tabType+"_agents":
				filter = $('#'+tabType+'_dropdown')
				var agents = JSON.parse($('#'+tabType+'_dropdown').attr('data-agents'));
				agents=agents.filter(function(agent){return agent.id!==id;})
				filter.attr('data-agents',JSON.stringify(agents))
				break;
			case tabType+"_teams":
				filter = $('#'+tabType+'_dropdown')
				var teams = JSON.parse($('#'+tabType+'_dropdown').attr('data-teams'));
				teams=teams.filter(function(team){return team.id!==id;})
				filter.attr('data-teams',JSON.stringify(teams))
				break;
				
		}
		filter.attr('data-id',"");
		filter.attr('data-name',"");
		switch(tabType){
			case "customerUser":
				loadcustomerUserTab();
				break;
		}
		
	}
	//<---------------------------RESET FILTERS LOGIC
//common function to reset each tab's filter
function resetCustomerUserFilters(button){
	var tab = $(button).data('type');
	switch(tab){
	case "customerUser":
			$('#customerUser_filter_selections').hide();
			$('#customer_user_filter').find('.select_focus').each(function(){
				removeAllDataAttributes($(this).find('.istar-dropdown-arrow.dropdown-toggle'));
			});
			removeAllDataAttributes($("#customerUser_dropdown"));
			loadcustomerUserTab();
		break;
	
	}
}
//remove given data attributes from the element given
function removeAllDataAttributes(elem){
		elem.attr('data-id',"");
		elem.attr('data-name',"");
		elem.attr('data-agents',null);
		elem.attr('data-teams',null);
}

$('#customer_user_search').keyup(function() {
	loadcustomerUserTab();
	
});
   </script>