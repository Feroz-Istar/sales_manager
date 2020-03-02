var contextPath = $('body').data('baseurl');

		$(document).ready(function() {
			
			loadLeadTarget();
			loadAllTeamFilterTab();
			loadAllAgentFilterTab();
			$('#leadsTab>li>a').on('shown.bs.tab', function (e) {
				var target = $(e.target).html(); // activated tab
				console.log(target);
				switch (target) {
					case "Target":
						loadLeadTarget();
						break;
					case "Qualified":
						loadLeadQualified();
						break;
					case "Lost Leads":
						loadLostLeads();
						break;
					case "Won Leads":
						loadWonLeads();
						break;
					default:
						loadLeadTarget();
				}
			});
			
	});
	
	function openEditModal(){
		$('#editLeadModalCenter').modal('show');
	}
	function openLostModal(){
		$('#lostLeadModalCenter').modal('show');
	}
	function openWonModal(){
		$('#wonLeadModalCenter').modal('show');
	}
//------------------------------------------------------------------------->	
	$( document ).ready(function() {
	
		$('.filter-menu.dropdown-menu').click(function(e) {
		    e.stopPropagation();
		});
			
$('.filtertabs>li>.nav-link').click(function(e) {
	e.preventDefault();

			$($(this).attr('href')+'-tab').tab('show')

		});

  
	});
	

	

//----------------------------------------------------------------------------------------------------------------------
var filename="";
var target_agents=[];
var target_teams=[];
var qualified_agents=[];
var qualified_teams=[];
var lost_agents=[];
var lost_teams=[];
var won_agents=[];
var won_teams=[];
$( document ).ready(function() {
	/*start of validation*/
	
	
	$("#lostleadmodal").validate({
		rules: {
			reasonforlosing:{
				required: true	
			},
			
		}
	});
	
	$('#lostleadsubmit').click(function(){
	    var isreasonforlosingvalid = $("#reasonforlosing").valid();
	    if(isreasonforlosingvalid){
	    	$('#lostLeadModalCenter').modal('hide');
	    }

	});	
	
	$("#wonleadmodal").validate({
		rules: {
			reasonforwin:{
				required: true	
			},
			
		}
	});
	
	$('#wonleadsubmit').click(function(){
	   var isreasonforwinvalid = $("#reasonforwin").valid();
	   if(isreasonforwinvalid){
		   $('#wonLeadModalCenter').modal('hide');
	   }
	});	
	
	
	/*end of validation*/
	
	
	/*start of file upload dropzone code*/
	Dropzone.autoDiscover = false;
		var myDropzone = new Dropzone(".dropzonediv", 
				{ 
			maxFiles:1,
			init: function() {
			      this.on("maxfilesexceeded", function(file) {
			            this.removeAllFiles();
			            this.addFile(file);
			      })},
			acceptedFiles: ".xlsx, .xls, .csv",
			url: "/fileUploadServlet",
		    previewsContainer: "#previews", // Define the container to display the previews
		    previewTemplate: '<div class="preview"><img class="mb-4" data-dz-thumbnail height="60" width="60"/>  <div class="filename"></div></div>     ',
		    clickable: ".browse",
		     addRemoveLinks: true,
		     error: function (file, response) {
	        	    file.previewElement.remove();
	        	    alertify.error('Please use only xlsx,xls or csv file');


		        // file.previewElement.classList.add("dz-error");
		         },
		         success: function (file, response, data) {
		        	 $('.doc-image-size').hide();		        	 
		        	    file.previewElement.querySelector("img").src = '/assets/image/CSV.png'; // after file uploaded successfully show csv icon
		        	    file.previewElement.querySelector(".filename").innerHTML=file.name;  // after file uploaded successfully show file name
		        	    $('.continue').prop("disabled", false); // enable the continue button after file uploaded successfully
		        	    $('#pills-preview-tab').removeClass('disabled'); // enable preview Tab after file uploaded successfully
		         },
		          removedfile: function (file) {
		        	    file.previewElement.remove();
			        	 $('.doc-image-size').show(); // display default image after file uploaded failed
			        	    $('.continue').prop("disabled", true);// disable the continue button after file uploaded failed
			        	    $('#pills-preview-tab').addClass('disabled');// disable preview Tab after file uploaded failed


		        	} 

			
				});
		/*end of file upload dropzone code*/

		$('.continue').click(function(){
			$('#pills-preview-tab').removeClass('disabled'); //enable preview tab
			$('#pills-preview-tab').tab('show')			//display preview tab
		});
		$('.modal-prev-btn').click(function(){
			$('#pills-upload-tab').tab('show')			//display upload tab
		});
		$('.leadmodal>.nav-pills').on('shown.bs.tab', function (e) {
			if($($(e.target).html()).find('.tabtitle').html() ==='Preview'){
				$('.modal-prev-btn').show(); //show previous button
				$('.leadsubmit').show();//show submit button
				$('.continue').hide();//hide continue button 
			}else{
				$('.modal-prev-btn').hide();
				$('.leadsubmit').hide();
				$('.continue').show();
			}
		});
		
		$('.leadsubmit').click(function (){
			$('#addLeadModalCenter').modal('hide'); //final submission of lead modal tab
			location.reload();
		});

		//underline Lead link in navbar
		$('.salesken.navbar-nav>li').removeClass('active');
		$($('.salesken.navbar-nav>li')[4]).addClass('active');
		
		
		
		
		
		
		
		$('#qualified_datepicker').datepicker({autoclose:true});
		$('#qualified_datepicker').change(function(){
			$('#qualified_datepicker').attr('data-id',this.value)
			$('#qualified_datepicker').attr('data-name',this.value)
			loadLeadQualified();
		})
		
		$('#lost_datepicker').datepicker({autoclose:true});
		$('#lost_datepicker').change(function(){
			$('#lost_datepicker').attr('data-id',this.value)
			$('#lost_datepicker').attr('data-name',this.value)
			loadLostLeads();
		})
		$('#won_datepicker').datepicker({autoclose:true});
		$('#won_datepicker').change(function(){
			$('#won_datepicker').attr('data-id',this.value)
			$('#won_datepicker').attr('data-name',this.value)
			loadWonLeads();
		})
		
		$('#target-filter').on('show.bs.dropdown', function () {
			var new_height= $('#nav-target').outerHeight() - $('#target-selection').outerHeight() ;
			console.log(new_height);
			$('#target_dropdown + .dropdown-menu').height(new_height-13);
			$('.agent-team-list').height(new_height - 200);
		});
		
		$('#qualified-filter').on('show.bs.dropdown', function () {
			var new_height= $('#nav-qualified').outerHeight() - $('#qualified-selection').outerHeight() ;
			console.log(new_height);
			$('#qualified_dropdown + .dropdown-menu').height(new_height-13);
			$('.agent-team-list').height(new_height - 200);
		});
		
		$('#lost-filter').on('show.bs.dropdown', function () {
			var new_height= $('#nav-lost').outerHeight() - $('#lost-selection').outerHeight() ;
			console.log(new_height);
			$('#lost_dropdown + .dropdown-menu').height(new_height-13);
			$('.agent-team-list').height(new_height - 200);
		});
		
		$('#won-filter').on('show.bs.dropdown', function () {
			var new_height= $('#nav-win').outerHeight() - $('#won-selection').outerHeight() ;
			console.log(new_height);
			$('#won_dropdown + .dropdown-menu').height(new_height-13);
			$('.agent-team-list').height(new_height - 200);
		});
		
		
		$('.add-number.dropdown-menu').click(function(e) {
		    e.stopPropagation();
		});
		$('#addContactNumber').click(function(){
			var number= $('#contact-number').val();
			var html='<button type="button"  class="theme_solid_border bg-white brown-grey rounded f-12 position-relative search-filter ml-10">'+number+'&nbsp;&nbsp;<i class="fas fa-times-circle brown-grey f-14 cross-btn"></i></button>'
			if(number != ""){
				$('#number-list').append(html);
			};
			$('#add_number_dropdown').dropdown('hide');
		});
		
		$('#add-scp').click(function(){
			var html='<div class="col-md-6 p-0 pt-10 pr-15"><input type="text" class="custom-modal-input w-100 form-control f-14" id="contact_person_name" name="contact_person_name" aria-describedby="contact_person_name" placeholder="Type here"></div>       		<div class="col-md-6 p-0 pt-10"><input type="text" class="custom-modal-input w-100 form-control f-14" id="designation" name="designation" aria-describedby="designation" placeholder="Type here"></div>';
			$('#contact-person-row').append(html);
		})
		
});
		
	function showqualifiedCalendar(){
		$('#qualified_datepicker').datepicker('show');
	}
	function showlostCalendar(){
		$('#lost_datepicker').datepicker('show');
	}
	function showwonCalendar(){
		$('#won_datepicker').datepicker('show');
	}
	
	
	
	//----------------------------------------------------------------------------->
	
	//<---------------------------RESET FILTERS LOGIC
//common function to reset each tab's filter
function resetFilters(button){
	var tab = $(button).data('type');
	switch(tab){
	case "target":
			$('#target_filter').hide();
			$('#nav-target').find('.select_focus').each(function(){
				removeAllDataAttributes($(this).find('.istar-dropdown-arrow.dropdown-toggle'));
			});
			removeAllDataAttributes($("#target_dropdown"));
			loadLeadTarget();
		break;
	case "qualified":
		$('#qualified_filter').hide();
		$('#nav-qualified').find('.select_focus').each(function(){
			removeAllDataAttributes($(this).find('.istar-dropdown-arrow.dropdown-toggle'));
		});
		removeAllDataAttributes($("#qualified_dropdown"));
		removeAllDataAttributes($("#qualified_datepicker"));
		loadLeadQualified();
	break;
	case "lost":
		$('#lost_filter').hide();
		$('#nav-lost').find('.select_focus').each(function(){
			removeAllDataAttributes($(this).find('.istar-dropdown-arrow.dropdown-toggle'));
		});
		removeAllDataAttributes($("#lost_dropdown"));
		removeAllDataAttributes($("#lost_datepicker"));
		loadLostLeads();
	break;
	case "won":
		$('#won_filter').hide();
		$('#nav-win').find('.select_focus').each(function(){
			removeAllDataAttributes($(this).find('.istar-dropdown-arrow.dropdown-toggle'));
		});
		removeAllDataAttributes($("#won_dropdown"));
		removeAllDataAttributes($("#won_datepicker"));
		loadWonLeads();
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
//------------------------------------------------------>
	
	
	function removeOngoingFilter(button){
		var type = $(button).data('type');
		var tabType=type.split('_')[0];
		console.log(tabType);
		var id=$(button).parent().data('id')
		console.log(id);
		 var filter;
		switch(type){
			case tabType+"_sourcetype":
				filter = $('#'+tabType+'SourceType')
				break;
			case tabType+"_activity":
				filter = $('#'+tabType+'_activity')
				break;
			case tabType+"_deal":
				filter = $('#'+tabType+'_deal_value')
				break;
			case tabType+"_stage":
				filter = $('#'+tabType+'_stage')
			break;
			case tabType+"_time":
				filter = $('#'+tabType+'_datepicker')
				break;
			case tabType+"_causes":
				filter = $('#'+tabType+'_causes')
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
			case "target":
				loadLeadTarget();
				break;
			case "qualified":
				loadLeadQualified();
				break;
			case "lost":
				loadLostLeads();
				break;
			case "won":
				loadWonLeads();
				break;
		}
		
	}
	
	
	//<---------------GLOBAL FUNCTIONS FOR EACH TAB TO ADD FILTER TAGS
	function getfilterhtml(filter, id, filter_type){
		return '<button class="theme_solid_border bg-white brown-grey rounded f-12 position-relative search-filter ml-10" data-id="'+id+'">'+filter+
				'<i class="fas fa-times-circle brown-grey bg-white rounded-circle f-14 cross-btn" data-type="'+filter_type+'" onclick="removeOngoingFilter(this)"></i> </button>'
	}
	function addFilterSelections(tab,filter,name,id,obj){
		
		if(name!="" && name!= undefined && id!="" && id != undefined){
			obj.name=name;
			obj.id=id;
			$('#'+tab+'_filter').find('.filters-inside-selection').append(getfilterhtml(name,id,tab+'_'+filter));
			$('#'+tab+'_filter').show();
		}
	}
	//--------------------------------------------->
	
	/*	start of filter drop down*/ 
	function target_sourcetype_dropdown(elem){
		var filter = $(elem).text();
		var filter_id = $(elem).data('id');
		$('#targetSourceType').attr('data-id',filter_id);
		$('#targetSourceType').attr('data-name',filter);
		loadLeadTarget();
	};
	function target_activity_dropdown(elem){
		var filter = $(elem).text();
		var filter_id = $(elem).data('id');
		$('#target_activity').attr('data-id',filter_id);
		$('#target_activity').attr('data-name',filter);
		loadLeadTarget();
	};
	
	function qualified_deal_dropdown(elem){
		var filter = $(elem).text();
		var filter_id = $(elem).data('id');
		$('#qualified_deal_value').attr('data-id',filter_id);
		$('#qualified_deal_value').attr('data-name',filter);
		loadLeadQualified();
	};
	function qualified_stage_dropdown(elem){
		var filter = $(elem).text();
		var filter_id = $(elem).data('id');
		$('#qualified_stage').attr('data-id',filter_id);
		$('#qualified_stage').attr('data-name',filter);
		loadLeadQualified();
	};
	function qualified_sourcetype_dropdown(elem){
		var filter = $(elem).text();
		var filter_id = $(elem).data('id');
		$('#qualifiedSourceType').attr('data-id',filter_id);
		$('#qualifiedSourceType').attr('data-name',filter);
		loadLeadQualified();
	};
	
	function lost_cause_dropdown(elem){
		var filter = $(elem).text();
		var filter_id = $(elem).data('id');
		$('#lost_causes').attr('data-id',filter_id);
		$('#lost_causes').attr('data-name',filter);
		loadLostLeads();
	};
	function lost_deal_dropdown(elem){
		var filter = $(elem).text();
		var filter_id = $(elem).data('id');
		$('#lost_deal_value').attr('data-id',filter_id);
		$('#lost_deal_value').attr('data-name',filter);
		loadLostLeads();
	};
	function lost_stage_dropdown(elem){
		var filter = $(elem).text();
		var filter_id = $(elem).data('id');
		$('#lost_stage').attr('data-id',filter_id);
		$('#lost_stage').attr('data-name',filter);
		loadLostLeads();
	};
	function lost_sourcetype_dropdown(elem){
		var filter = $(elem).text();
		var filter_id = $(elem).data('id');
		$('#lostSourceType').attr('data-id',filter_id);
		$('#lostSourceType').attr('data-name',filter);
		loadLostLeads();
	};
	
	function won_cause_dropdown(elem){
		var filter = $(elem).text();
		var filter_id = $(elem).data('id');
		$('#won_causes').attr('data-id',filter_id);
		$('#won_causes').attr('data-name',filter);
		loadWonLeads();
	};
	function won_deal_dropdown(elem){
		var filter = $(elem).text();
		var filter_id = $(elem).data('id');
		$('#won_deal_value').attr('data-id',filter_id);
		$('#won_deal_value').attr('data-name',filter);
		loadWonLeads();
	};
	function won_stage_dropdown(elem){
		var filter = $(elem).text();
		var filter_id = $(elem).data('id');
		$('#won_stage').attr('data-id',filter_id);
		$('#won_stage').attr('data-name',filter);
		loadWonLeads();
	};
	function won_sourcetype_dropdown(elem){
		var filter = $(elem).text();
		var filter_id = $(elem).data('id');
		$('#wonSourceType').attr('data-id',filter_id);
		$('#wonSourceType').attr('data-name',filter);
		loadWonLeads();
	};
	
	
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
		populateAgentListDropDown(userList,"target")
		populateAgentListDropDown(userList,"qualified")
		populateAgentListDropDown(userList,"lost")
		populateAgentListDropDown(userList,"won")
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
		populateTeamListDropDown(teamList,"target")
		populateTeamListDropDown(teamList,"qualified")
		populateTeamListDropDown(teamList,"lost")
		populateTeamListDropDown(teamList,"won")
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
	

	
	

	

	

