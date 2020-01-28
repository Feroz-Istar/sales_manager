// JAVA SCRIPT FOR CENTER ELEMENTS IN DASHBOARD PAGE

$(document).ready(function() {
//<--------Getting all Cards from top to bottom
	//Pipeline Card
	$.get(contextPath+"/dashboard/partials/pipelineCard.jsp", function( data ) {
		  $( "#pipeline-card" ).html( data );
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

function pipeline_prev(button){
	
	$.get(contextPath+"/dashboard/partials/pipelineCard.jsp", function( data ) {
		 
		$( "#pipeline-card" ).addClass('animated').addClass('fadeOutRight').addClass('faster');
		$( "#pipeline-card" ).on('animationend', function () {
					$( "#pipeline-card" ).removeClass('animated').removeClass('fadeOutRight').removeClass('faster');
					$( "#pipeline-card" ).addClass('animated').addClass('fadeInLeft').addClass('faster');
					$( "#pipeline-card" ).html(data);

					$( "#pipeline-card" ).on('animationend', function () {
						$( "#pipeline-card" ).removeClass('animated').removeClass('fadeInLeft').removeClass('faster');
						 
					});
					 
				
			});
		
		
		});
	
	
	
}

function pipeline_next(button){
	$.get(contextPath+"/dashboard/partials/pipelineCard.jsp", function( data ) {
		$( "#pipeline-card" ).addClass('animated').addClass('fadeOutLeft').addClass('faster');
		$( "#pipeline-card" ).on('animationend', function () {
					$( "#pipeline-card" ).removeClass('animated').removeClass('fadeOutLeft').removeClass('faster');

					$( "#pipeline-card" ).addClass('animated').addClass('fadeInRight').addClass('faster');
					$( "#pipeline-card" ).html(data);

					$( "#pipeline-card" ).on('animationend', function () {
						$( "#pipeline-card" ).removeClass('animated').removeClass('fadeInRight').removeClass('faster');
					});
					 
					
			});
		
		
	});
	
	
	
}