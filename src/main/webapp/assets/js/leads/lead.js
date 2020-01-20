var contextPath = $('body').data('baseurl');

		$(document).ready(function() {
			
			loadLeadTarget();
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
			
			
/*	-------------------------------------start of Users function--------------------------*/
			function loadLeadTarget() {
				$('#qualified_tab_content_card').empty();
				$('#qualified_tab_content').empty()
				showTargetContentCard();
				var leadtarget_array = [];
				for (var i = 0; i <5; i++) {
					var leadtarget = {};
					leadtarget_array.push(leadtarget);
				}

				var leadtarget_promises = [];
				for (var leadtarget of leadtarget_array) {
					leadtarget_promises.push(fetchLeadTargetContent());
				}
				$("#target_tab_contnet").empty();
				var fetchAllCall = Promise.all(leadtarget_promises.map(p => p.catch(error => {
					console.log(error);
					return null;
				})));
				fetchAllCall.then((results) => {
					for (var leadtargetTabContent of results) {
						
						$("#target_tab_contnet").append(leadtargetTabContent);
					}
				
				});
			}
			function showTargetContentCard() {
				var vv = fetchTargetContentCard();
				vv.done(function (data) {
					$('#target_tab_contnet_card').empty();
					$('#target_tab_contnet_card').append(data);
				});
			}

			function fetchTargetContentCard() {
				return $.post(contextPath + "leads/partials/target_card.jsp", JSON.stringify());
			}
			function fetchLeadTargetContent() {
				return $.post(contextPath + "leads/target/target_tab_content.jsp", JSON.stringify());
			}

/*----------------------------------------	end of Users function----------------------------------*/
			
/*	-------------------------------------start of qualified function--------------------------*/
			function loadLeadQualified() {
			$('#target_tab_contnet_card').empty();
			$('#target_tab_contnet').empty()
			$('#lost_leads_content_card').empty();
			$('#lost_leads_content').empty();
				showQualifiedContentCard();
				var leadqualified_array = [];
				for (var i = 0; i <4; i++) {
					var leadqualified = {};
					leadqualified_array.push(leadqualified);
				}

				var leadqualified_promises = [];
				for (var leadqualified of leadqualified_array) {
					leadqualified_promises.push(fetchLeadQualifiedContent());
				}
				$("#qualified_tab_content").empty();
				var fetchAllCall = Promise.all(leadqualified_promises.map(p => p.catch(error => {
					console.log(error);
					return null;
				})));
				fetchAllCall.then((results) => {
					for (var leadqualifiedTabContent of results) {
						$("#qualified_tab_content").append(leadqualifiedTabContent);
					}
				
				});
			}
			function showQualifiedContentCard() {
				var vv = fetchQualifiedContentCard();
				vv.done(function (data) {
					$('#qualified_tab_content_card').empty();
					$('#qualified_tab_content_card').append(data);
				});
			}

			function fetchQualifiedContentCard() {
				return $.post(contextPath + "leads/partials/qualified_card.jsp", JSON.stringify());
			}
			function fetchLeadQualifiedContent() {
				return $.post(contextPath + "leads/qualified/qualified_tab_content.jsp", JSON.stringify());
			}

/*----------------------------------------	end of Qualified function----------------------------------*/
/*	-------------------------------------start of lost Leads function--------------------------*/
			function loadLostLeads() {
			$('#qualified_tab_content_card').empty();
			$('#qualified_tab_content').empty()
			$('#target_tab_contnet_card').empty();
			$('#target_tab_contnet').empty()
				showLostLeadContentCard();
				var lostlead_array = [];
				for (var i = 0; i <4; i++) {
					var lostlead = {};
					lostlead_array.push(lostlead);
				}

				var lostlead_promises = [];
				for (var lostlead of lostlead_array) {
					lostlead_promises.push(fetchLostLeadContent());
				}
				$("#lost_leads_content").empty();
				var fetchAllCall = Promise.all(lostlead_promises.map(p => p.catch(error => {
					console.log(error);
					return null;
				})));
				fetchAllCall.then((results) => {
					for (var lostleadTabContent of results) {
						$("#lost_leads_content").append(lostleadTabContent);
					}
				
				});
			}
			function showLostLeadContentCard() {
				var vv = fetchLostLeadContentCard();
				vv.done(function (data) {
					$('#lost_leads_content_card').empty();
					$('#lost_leads_content_card').append(data);
				});
			}

			function fetchLostLeadContentCard() {
				return $.post(contextPath + "leads/partials/lost_lead_card.jsp", JSON.stringify());
			}
			function fetchLostLeadContent() {
				return $.post(contextPath + "leads/lost_lead/lost_lead_tab_content.jsp", JSON.stringify());
			}

/*----------------------------------------	end of lost Leads function----------------------------------*/
/*	-------------------------------------start of Won Leads function--------------------------*/
			function loadWonLeads() {
			$('#qualified_tab_content_card').empty();
			$('#qualified_tab_content').empty()
			$('#target_tab_contnet_card').empty();
			$('#target_tab_contnet').empty()
				showWonContentCard();
				var wonlead_array = [];
				for (var i = 0; i <4; i++) {
					var wonlead = {};
					wonlead_array.push(wonlead);
				}

				var wonlead_promises = [];
				for (var wonlead of wonlead_array) {
					wonlead_promises.push(fetchWonLeadContent());
				}
				$("#won_lead_content").empty();
				var fetchAllCall = Promise.all(wonlead_promises.map(p => p.catch(error => {
					console.log(error);
					return null;
				})));
				fetchAllCall.then((results) => {
					for (var wonleadTabContent of results) {
						$("#won_lead_content").append(wonleadTabContent);
					}
				
				});
			}
			function showWonContentCard() {
				var vv = fetchWonContentCard();
				vv.done(function (data) {
					$('#won_lead_content_card').empty();
					$('#won_lead_content_card').append(data);
				});
			}

			function fetchWonContentCard() {
				return $.post(contextPath + "leads/partials/won_lead_card.jsp", JSON.stringify());
			}
			function fetchWonLeadContent() {
				return $.post(contextPath + "leads/won_lead/won_lead_tab_content.jsp", JSON.stringify());
			}

/*----------------------------------------	end of Won Leads function----------------------------------*/
			
//----------------------------------------------------------------------------------------
	$('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
		  var target = $(e.target).html(); // activated tab
		  $('#breadcrumb').html(target);
		    $('.targetpopup').popover('hide');
		    $('.qualifiedpopup').popover('hide');
		    $('.lostpopup').popover('hide');
		    $('.wonpopup').popover('hide');

		    
		});
	$('#target_reset').click(function(){
		$('#target_filter').hide();	
	});
	$('#qualified_reset').click(function(){
		$('#qualified_filter').hide();	
	});
	$('#lost_reset').click(function(){
		$('#lost_filter').hide();	
	});
	$('#won_reset').click(function(){
		$('#won_filter').hide();	
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
			
			$($(this).attr('href')+'-tab').tab('show')

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

  $('#qualified_team_submit').click(function(e) {
		var agent_array=[];
		var team_array=[];
		
		$('.qualifiedagentcheckbox').each(function(){
			if($(this).prop('checked')===true){
				agent_array.push($(this).data('id'));
			}
		});
		$('.qualifiedteamcheckbox').each(function(){
			if($(this).prop('checked')===true){
				team_array.push($(this).data('id'));
			}
		});
		
		if(agent_array.length==0 && team_array.length==0){
			alert("Please select atleast one");
		}else{
			$('#qualified_dropdown').dropdown('hide');
		}
		console.log(agent_array)
		console.log(team_array)

	});
  $('#lost_team_submit').click(function(e) {
		var agent_array=[];
		var team_array=[];
		
		$('.lostagentcheckbox').each(function(){
			if($(this).prop('checked')===true){
				agent_array.push($(this).data('id'));
			}
		});
		$('.lostteamcheckbox').each(function(){
			if($(this).prop('checked')===true){
				team_array.push($(this).data('id'));
			}
		});
		
		if(agent_array.length==0 && team_array.length==0){
			alert("Please select atleast one");
		}else{
			$('#lost_dropdown').dropdown('hide');
		}
		console.log(agent_array)
		console.log(team_array)
	});
  $('#won_team_submit').click(function(e) {
		var agent_array=[];
		var team_array=[];
		
		$('.wonagentcheckbox').each(function(){
			if($(this).prop('checked')===true){
				agent_array.push($(this).data('id'));
			}
		});
		$('.wonteamcheckbox').each(function(){
			if($(this).prop('checked')===true){
				team_array.push($(this).data('id'));
			}
		});
		
		if(agent_array.length==0 && team_array.length==0){
			alert("Please select atleast one");
		}else{
			$('#won_dropdown').dropdown('hide');
		}
		console.log(agent_array)
		console.log(team_array)
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
		
		
		
		$('.page').Pagination({ // id to initial draw and use pagination
            size: 87, // size of list input
            pageShow: 5, // 5 page-item per page
            page: 1, // current page (default)
            limit: 10, // current limit show perpage (default)
    	}, function(obj){ // callback function, you can use it to re-draw table or something
            	console.log(obj)
    	});
		
		
		
		$('#lead_qualified_datepicker').datepicker({autoclose:true});
		$('#lead_lost_datepicker').datepicker({autoclose:true});
		$('#lead_won_datepicker').datepicker({autoclose:true});
		
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
		$('#lead_qualified_datepicker').datepicker('show');
	}
	function showlostCalendar(){
		$('#lead_lost_datepicker').datepicker('show');
	}
	function showwonCalendar(){
		$('#lead_won_datepicker').datepicker('show');
	}
	
	
	
	//----------------------------------------------------------------------------->
	
	