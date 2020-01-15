	/* start of  js function for pipeline Tab*/
	function pipelineTab(){
		//empty upcoming tab & completedTab
		$('#pipeline_filter_selections').find('.col-md-10.d-flex').empty();
		$('#pipeline_filter_selections').hide();
		
	/*	start of pipeline deal value filtering*/
		var deal_value = $('#pipeline_deal_value').attr('data-name');
		var deal_value_id = $('#pipeline_deal_value').attr('data-id');
		if(deal_value!="" && deal_value!= undefined && deal_value_id!="" && deal_value_id != undefined){
			$('#pipeline_filter_selections').find('.col-md-10.d-flex').append(getpipelinefilterhtml(deal_value,deal_value_id,"pipeline_deal_value"));
			$('#pipeline_filter_selections').show();
		}
		
	/*	start of pipeline stage filtering*/
		var status = $('#pipeline_status').attr('data-name');
		var status_id = $('#pipeline_status').attr('data-id');
		if(status!="" && status!= undefined && status_id!="" && status_id != undefined){
			$('#pipeline_filter_selections').find('.col-md-10.d-flex').append(getpipelinefilterhtml(status,status_id,"pipeline_status"));
			$('#pipeline_filter_selections').show();
		}
		
	/*	start of Date filtering*/
		var time_value = $('#pipeline_datepicker').attr('data-name');
		var time_value_id = $('#pipeline_datepicker').attr('data-id');
		if(time_value!="" && time_value!= undefined && time_value_id!="" && time_value_id != undefined){
			$('#pipeline_filter_selections').find('.col-md-10.d-flex').append(getpipelinefilterhtml(time_value,time_value_id,"upcoming_time"));
			$('#pipeline_filter_selections').show();
		}
		
	/*	start of All Agents->Individual filtering*/
		if( $('#pipeline_dropdown').attr('data-agents')!=null){
			var agents = JSON.parse($('#pipeline_dropdown').attr('data-agents'));
			if(agents!=null){
				for(var i=0;i<agents.length;i++){
					var activity_id=agents[i].id;
					var activity=agents[i].name;
					if(activity!="" && activity!= undefined && activity_id!="" && activity_id != undefined){
						$('#pipeline_filter_selections').find('.col-md-10.d-flex').append(getpipelinefilterhtml(activity,activity_id,"pipeline_agents"));
						$('#pipeline_filter_selections').show();
					}
				}
			}
		}
		
	/*	start of All Agents->Teams filtering*/
		if( $('#pipeline_dropdown').attr('data-teams')!=null){
			var teams = JSON.parse($('#pipeline_dropdown').attr('data-teams'));
			if(teams!=null){
				for(var i=0;i<teams.length;i++){
					var activity_id=teams[i].id;
					var activity=teams[i].name;
					if(activity!="" && activity!= undefined && activity_id!="" && activity_id != undefined){
						$('#pipeline_filter_selections').find('.col-md-10.d-flex').append(getpipelinefilterhtml(activity,activity_id,"pipeline_teams"));
						$('#pipeline_filter_selections').show();
					}
				}
			}
		}
		
	/*	start of pipeline Card population*/
		 $( "#pipelineCard" ).empty();
		$.get(contextPath+"pipeline/partials/pipeline_card.jsp", function( data ) {
			
			  $( "#pipelineCard" ).html( data );
			});
	/*	start of pipeline stage tab and content population*/
		var pipeline_array=[];
		for(var i =0;i<5;i++){
			var pipelineStage={};
			pipelineStage.id=i;
			pipelineStage.stageName= "Stage"+i;
			pipeline_array.push(pipelineStage);
		}
		
		var pipeline_promises = [];
		for(var pipelineStage of pipeline_array){
			pipeline_promises.push(fetchpipelineTab(pipelineStage));
		}
		$( "#piplelinestage-tab" ).empty();
		var fetchAllCall = Promise.all(pipeline_promises.map(p => p.catch(error => { console.log(error); return null; })));
		fetchAllCall.then((results) =>{
			for(var pipelineTabHtml of results){
				  $( "#piplelinestage-tab" ).append( pipelineTabHtml );
			}
			
			
			var first_pipeline_id = $($( "#piplelinestage-tab" ).children()[0]).data('id');
			$('#stage-'+first_pipeline_id+'-tab').tab('show');
			populatePipelineTabContent(first_pipeline_id);
			//pipeline tab change event
			 $('#piplelinestage-tab').on('shown.bs.tab', function (e) {
				 var id =  $(e.target).data('id');
				 populatePipelineTabContent(id);
				});
		});	
	}

$(document).ready(function() {
		pipelineTab();
		
		$('.salesken.navbar-nav>li').removeClass('active');
		$($('.salesken.navbar-nav>li')[2]).addClass('active')
		$('.page').Pagination({ // id to initial draw and use pagination
			size : 87, // size of list input
			pageShow : 5, // 5 page-item per page
			page : 1, // current page (default)
			limit : 10, // current limit show perpage (default)
		}, function(obj) { // callback function, you can use it to re-draw table or something
			console.log(obj)
		});

		
		loadAllAgentFilterTab();
		loadAllTeamFilterTab();
		
		var contextPath=$('body').data('baseurl');
		$('#pipeline_datepicker').datepicker({
			autoclose : true
		});

		$('.filter-menu.dropdown-menu').click(function(e) {
			e.stopPropagation();
		});

		$('.filtertabs>li>.nav-link').click(function(e) {
			$($(this).attr('href') + '-tab').tab('show')
		});
		$('.agentteamsubmit').click(function(e) {
			$('#activity').dropdown('hide');
		});
		$('#pipeline_reset').click(function() {
			$('#pipeline_filter').addClass("d-none");
		});
		
		$('#pipeline_team_submit').click(function(e) {
			var agent_array=[];
			var agent_name=[];
			var team_array=[];
			
			$('.pipelineagentcheckbox').each(function(){
				if($(this).prop('checked')===true){
					agent_array.push($(this).data('user'));
				}
			});
			$('.pipelineteamcheckbox').each(function(){
				if($(this).prop('checked')===true){
					team_array.push($(this).data('team'));
				}
			});
			console.log(agent_array.length==0)
			console.log(team_array)
			if(agent_array.length==0 && team_array.length==0){
				//alert("Please select atleast one");
			}else{
				$('#pipeline_dropdown').dropdown('hide');
			}
			$('#pipeline_dropdown').attr('data-agents',JSON.stringify(agent_array));
			$('#pipeline_dropdown').attr('data-teams',JSON.stringify(team_array));
			
			$('.pipelineagentcheckbox').each(function(){
				if($(this).prop('checked')===true){
					$(this).prop("checked", false);
				}
			});
			$('.pipelineteamcheckbox').each(function(){
				if($(this).prop('checked')===true){
					$(this).prop("checked", false);
				}
			});
			pipelineTab();
			
		});
		
		$('#pipeline-filter').on('show.bs.dropdown', function () {
			var new_height= $('#pipeline_filter').outerHeight() + $('#pipelineCard').outerHeight() + $('#piplelinestage-tab').outerHeight() ;
			console.log(new_height);
			$('#pipeline_dropdown + .dropdown-menu').height(new_height-8);
			$('.agent-team-list').height(new_height - 200);
		});
			
	});


	function showCalendar() {
		$('#pipeline_datepicker').datepicker('show')
	}

	$('#pipeline_datepicker').change(function(dateText) {
		$('#pipeline_datepicker').attr('data-id',this.value)
		$('#pipeline_datepicker').attr('data-name',this.value)
		pipelineTab();
    });
	
	/*start of pipeline filters drop down*/
	function pipeline_deal_value(elem){
		var filter = $(elem).text();
		var filter_id = $(elem).data('id');
		$('#pipeline_deal_value').attr('data-id',filter_id);
		$('#pipeline_deal_value').attr('data-name',filter);
		pipelineTab();
	};
	
	function pipeline_status(elem){
		var filter = $(elem).text();
		var filter_id = $(elem).data('id');
		$('#pipeline_status').attr('data-id',filter_id);
		$('#pipeline_status').attr('data-name',filter);
		pipelineTab();
	};
	
	/*end of pipeline filters drop down*/
	
	
	$("#pipeline_search").keyup(function(){
		console.log($('#pipeline_search').val());
		pipelineTab();
	}); 
	
	
	
/*	start of pipeline tab content populate*/
	function populatePipelineTabContent(first_pipeline_id){
		var pipelineDetails={};
		pipelineDetails.id= first_pipeline_id;
		var vv = fetchPipelineTabContent(pipelineDetails);
		vv.done(function(data){
			$('#piplelinestage-tabContent').empty();
			$('#piplelinestage-tabContent').append(data);
		});
	}
				/*	start of pipeline tab fetching*/
	function fetchpipelineTab(pipelineStage){
		return $.post(contextPath+"pipeline/tab/pipeline_tab.jsp",JSON.stringify(pipelineStage));
	}	
	
				/*	start of pipeline tab content fetching*/
	function fetchPipelineTabContent(pipelineDetails){
		
		return $.post(contextPath+"pipeline/tab_content/pipeline_tab_content.jsp",JSON.stringify(pipelineDetails));
	}
	
	/* end of  js function for pipeline Tab*/
	
/*	start of  pipeline filter button label*/	
	function getpipelinefilterhtml(filter, id, filter_type){
		return '<button class="theme_solid_border bg-white brown-grey rounded f-12 position-relative search-filter ml-10" data-id="'+id+'">'+filter+
				'<i class="fas fa-times-circle brown-grey bg-white rounded-circle f-14 cross-btn" data-type="'+filter_type+'" onclick="removePipelineFilter(this)"></i> </button>'
	}
	
	/*	start of reset pipeline filter button label*/
	function resetFilters(button){

		$('#pipeline_filter_selections').hide();
		
		removeAllDataAttributes($('#pipeline_datepicker'));
		removeAllDataAttributes($("#pipeline_dropdown"));
		removeAllDataAttributes($("#pipeline_deal_value"));
		removeAllDataAttributes($("#pipeline_status"));
	}
	function removeAllDataAttributes(elem){
		elem.attr('data-id',"");
		elem.attr('data-name',"");
		elem.attr('data-agents',null);
		elem.attr('data-teams',null);
	}
	/*	start of remove pipeline filter button label*/

	function removePipelineFilter(button){
		var type = $(button).data('type');
		var filter;
		switch(type){
			case "pipeline_deal_value":
				filter = $('#pipeline_deal_value')
				break;
			case "pipeline_status":
				filter = $('#pipeline_status')
				break;
		}
		filter.attr('data-id',"");
		filter.attr('data-name',"");
		pipelineTab();
		
	}
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
		populateAgentListDropDown(userList,"pipeline")

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
		populateTeamListDropDown(teamList,"pipeline")

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
		
		