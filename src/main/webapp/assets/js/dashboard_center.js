// JAVA SCRIPT FOR CENTER ELEMENTS IN DASHBOARD PAGE

$(document).ready(function() {
//<--------Getting all Cards from top to bottom
	//Pipeline Card
	$.get(contextPath+"/dashboard/partials/pipelineCard.jsp", function( data ) {
		  $( ".pipeline-card" ).html( data );
		  lefttocenterheight();
		});
	//Signal Card
	$.get(contextPath+"/dashboard/partials/signal_card.jsp", function( data ) {
		  $( "#carouselExampleIndicators" ).html( data );
		  lefttocenterheight();
		});
	//Team Card
	$.get(contextPath+"/dashboard/partials/teamCard.jsp", function( data ) {
		  $( ".team-card" ).html( data );
		  lefttocenterheight();
		});
	//Rock stars, Laggards etc TAB
	$.get(contextPath+"/dashboard/partials/topBottomAgents.jsp", function( data ) {
		  $( ".top-bottom-agent-card" ).html( data );
		  lefttocenterheight();
		});
//------------>
});

//Setting first column of dashboard height equal to second column of dashboard
function lefttocenterheight(){
	var newHeight = $(".center_container").height();
	console.log(newHeight)
	$(".left_container").height(newHeight);
}