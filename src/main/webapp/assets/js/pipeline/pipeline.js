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
		});
	
	
	$(document).ready(function() {
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
			var team_array=[];
			
			$('.pipelineagentcheckbox').each(function(){
				if($(this).prop('checked')===true){
					agent_array.push($(this).data('id'));
				}
			});
			$('.pipelineteamcheckbox').each(function(){
				if($(this).prop('checked')===true){
					team_array.push($(this).data('id'));
				}
			});
			
			if(agent_array.length==0 && team_array.length==0){
				alert("Please select atleast one");
			}else{
				$('#pipeline_dropdown').dropdown('hide');
			}
			console.log(agent_array)
			console.log(team_array)
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

	$.get(contextPath+"pipeline/partials/pipeline_card.jsp", function( data ) {
		
		  $( "#pipelineCard" ).html( data );
		});
	
	$.get(contextPath+"pipeline/partials/pipeline_filters.jsp", function( data ) {
		  $( "#pipeline_filters" ).html( data );
		});
	
	/*start of pipeline filters drop down*/
	function pipeline_deal_value(elem){
		$('#pipeline_deal_drop').html($(elem).text());
		var filter = $(elem).text();
		var filter_id = $(elem).data('id');
		$('#pipeline_deal_value').attr('data-id',filter_id);
		$('#pipeline_deal_value').attr('data-name',filter);
		pipelineTab();
	};
	
	function pipeline_status(elem){
		$('#pipeline_status_drop').html($(elem).text());
		var filter = $(elem).text();
		var filter_id = $(elem).data('id');
		$('#pipeline_status').attr('data-id',filter_id);
		$('#pipeline_status').attr('data-name',filter);
		pipelineTab();
	};
	
	/*end of pipeline filters drop down*/
	
	
		/* start of  js function for pipeline Tab*/
	function pipelineTab(){
		//empty upcoming tab & completedTab
		
		$('#pipeline_filter_selections').find('.col-md-10.d-flex').empty();
		$('#pipeline_filter_selections').hide();
		var deal_value = $('#pipeline_deal_value').attr('data-name');
		var deal_value_id = $('#pipeline_deal_value').attr('data-id');
		if(deal_value!="" && deal_value!= undefined && deal_value_id!="" && deal_value_id != undefined){
			$('#pipeline_filter_selections').find('.col-md-10.d-flex').append(getpipelinefilterhtml(deal_value,deal_value_id,"pipeline_deal_value"));
			$('#pipeline_filter_selections').show();
		}
		
		var status = $('#pipeline_status').attr('data-name');
		var status_id = $('#pipeline_status').attr('data-id');
		if(status!="" && status!= undefined && status_id!="" && status_id != undefined){
			$('#pipeline_filter_selections').find('.col-md-10.d-flex').append(getpipelinefilterhtml(status,status_id,"pipeline_status"));
			$('#pipeline_filter_selections').show();
		}
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
	
	
function populatePipelineTabContent(first_pipeline_id){
		var pipelineDetails={};
		pipelineDetails.id= first_pipeline_id;
		var vv = fetchPipelineTabContent(pipelineDetails);
		vv.done(function(data){
			$('#piplelinestage-tabContent').empty();
			$('#piplelinestage-tabContent').append(data);
		});
	}
	
	function fetchpipelineTab(pipelineStage){
		return $.post(contextPath+"pipeline/tab/pipeline_tab.jsp",JSON.stringify(pipelineStage));
	}	
	function fetchPipelineTabContent(pipelineDetails){
		
		return $.post(contextPath+"pipeline/tab_content/pipeline_tab_content.jsp",JSON.stringify(pipelineDetails));
	}
	
	/* end of  js function for pipeline Tab*/
	
	function getpipelinefilterhtml(filter, id, filter_type){
		return '<button class="theme_solid_border bg-white brown-grey rounded f-12 position-relative search-filter ml-10" data-id="'+id+'">'+filter+
				'<i class="fas fa-times-circle brown-grey bg-white rounded-circle f-14 cross-btn" data-type="'+filter_type+'" onclick="removePipelineFilter(this)"></i> </button>'
	}
	
	function resetFilters(button){
	var stage = $(button).data('stage');
	switch(stage){
	case 0:
		$('#pipeline_filter_selections').hide();
	default:
		 $('#pipeline_filter_selections').hide();
		break;
	}
}
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