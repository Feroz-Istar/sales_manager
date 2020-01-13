// JAVA SCRIPT FOR RIGHT ELEMENTS IN DASHBOARD PAGE

$(document).ready(function() {
//<--------Getting all Cards from top to bottom
	//Ongoing Task Card
	$.get(contextPath+"/dashboard/partials/ongoing_task_card.jsp", function( data ) {
		  $( "#ongoing_task_card" ).html( data );
		
		});
	//Raise Issue Card
	$.get(contextPath+"/dashboard/partials/raise_issue_card.jsp", function( data ) {
		  $( "#raise_issue_card" ).html( data );
		
		});
	//Chat Card
	$.get(contextPath+"/dashboard/partials/chat_card.jsp", function( data ) {
		  $( "#chat_card" ).html( data );
		
		});
	//Upcoming Meeting Card
	$.get(contextPath+"/dashboard/partials/upcoming_meeting_card.jsp", function( data ) {
		  $( "#upcoming_meeting" ).html( data );
		
		});
//---------------------->
});

//On click closes All View More cards
function onCloseClick(){
	$( ".third_main_container_behind" ).hide();
	$('.third_main_container').show();
	$('.showmore_close').hide();
}

//Click on view more to display list of ongoing task card 
function view_more_ongoing_task(){
	$('.showmore_close').show();
	$( ".third_main_container_behind" ).empty();
	for(var i =0;i<4;i++){
	$.get(contextPath+"/dashboard/partials/ongoing_task_card.jsp", function( data ) {
		  $( ".third_main_container_behind" ).append( data );
		  $( ".third_main_container_behind" ).show();
			$('.third_main_container').hide();
	
		});
	}
};

//Click on view more to display list of resolve task card 
function view_more_resolve_task(){
	$('.showmore_close').show();
	$( ".third_main_container_behind" ).empty();
	for(var i =0;i<4;i++){
	$.get(contextPath+"/dashboard/partials/raise_issue_card.jsp", function( data ) {
		  $( ".third_main_container_behind" ).append( data );
		  $( ".third_main_container_behind" ).show();
			$('.third_main_container').hide();

		});
	}
};

function loadOngoingTaskDetail(){
	
	$('.ongoingtaskcard').unbind().click(function (){
		//window.location.href = location.href + 'landing/task_lead_detail.jsp'
		window.location.replace("ongoingJoined.jsp");
	});
}


//<-----------RESOLVE ISSUE MODAL
	//On click
	function loadResolveModal(){
		$('#resolvecardmodal').modal('show').find('.modal-body').empty();
		$.get(contextPath+"/dashboard/modal/resolvetask.jsp", function( data ) {
		  $('#resolvecardmodal').modal('show').find('.modal-body').append(data);
		});
	}
	function loadResolveModal_reset(){
		$('#resolvedescription').val('');
	}
//----------------->