// JAVA SCRIPT FOR CENTER ELEMENTS IN DASHBOARD PAGE
var PipelineObj
var teamObj
$(document).ready(function() {
//<--------Getting all Cards from top to bottom
	PipelineObj=[
		{
			id:127,
			name:'Pipeline 01',
			stages:[
				{
					id:1,
					name:'stage 01',	
				},{
					id:2,
					name:'stage 02',	
				},{
					id:3,
					name:'stage 03',	
				},{
					id:4,
					name:'stage 04',	
				}
			]
		},{
			name:'JoJo-Pipeline',
			stages:[
				{
					id:1,
					name:'stage 01',	
				},{
					id:2,
					name:'stage 02',	
				},{
					id:3,
					name:'stage 03',	
				},{
					id:4,
					name:'stage 04',	
				},{
					id:5,
					name:'stage 05',	
				},{
					id:6,
					name:'stage 06',	
				},{
					id:7,
					name:'stage 07',	
				},{
					id:8,
					name:'stage 08',	
				}
			]
		},{
			name:'Pipeline 03'
			
		}
	]
	if(PipelineObj.length==0){
		$('#pipeline-right').attr('disabled',true)
	}
	//Pipeline Card
	$.post(contextPath+"/dashboard/partials/pipelineCard.jsp",JSON.stringify(PipelineObj[0]),function( data ) {
		  $( "#pipeline-card" ).html( data );
		  lefttocenterheight();
		  initializePipelineCarousel();
		})
	//Signal Card
	$.get(contextPath+"/dashboard/partials/signal_card.jsp", function( data ) {
		  $( "#carouselExampleIndicators" ).html( data );
		  lefttocenterheight();
		});
	
	teamObj=[
		{
			name:'Team 01',
			users:[{name:'hello'},{name:'nice'},{name:'to'},{name:'meet'},{name:'you'}]
		},{
			name:'Team 02',
			users:[{name:'nice'},{name:'to'},{name:'meet'},{name:'you'}]
		},{
			name:'Team 03',
			users:[{name:'hello'},{name:'nice'},{name:'to'},{name:'meet'},{name:'you'},{name:'to'}]
		}
	]
	//Team Card
	$.post(contextPath+"/dashboard/partials/teamCard.jsp",JSON.stringify(teamObj[0]), function( data ) {
		  $( "#team-card" ).html( data );
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

//<-----------------PIPELINE CAROUSAL FUNCTIONS--------------
var pipelienCount=0;
function pipeline_prev(button){
	pipelienCount--;
	$('#pipeline-right').addClass('active')
	$('#pipeline-right').attr('disabled',false)
	if(pipelienCount==0){
		$('#pipeline-left').removeClass('active')
		$('#pipeline-left').attr('disabled',true)
		pipelienCount=0;
	}
	$('.salesken_progress').show();
	$.post(contextPath+"dashboard/partials/pipelineCard.jsp",JSON.stringify(PipelineObj[pipelienCount])).done(function( data ) {
		$('.salesken_progress').hide();
		$( "#pipeline-card" ).addClass('animated').addClass('fadeOutRight').addClass('faster');
		$( "#pipeline-card" ).on('animationend', function () {
					$( "#pipeline-card" ).removeClass('animated').removeClass('fadeOutRight').removeClass('faster');
					$( "#pipeline-card" ).addClass('animated').addClass('fadeInLeft').addClass('faster');
					$( "#pipeline-card" ).html(data);
					initializePipelineCarousel();
					$( "#pipeline-card" ).on('animationend', function () {
						$( "#pipeline-card" ).removeClass('animated').removeClass('fadeInLeft').removeClass('faster');
						 
					});
					 
				
			});
		
		
		}).fail(function(){
			$('.salesken_progress').hide();
		});
}

function pipeline_next(button){
	pipelienCount++;
	$('#pipeline-left').addClass('active')
	$('#pipeline-left').attr('disabled',false)
	if(pipelienCount>=PipelineObj.length-1){
		$('#pipeline-right').removeClass('active')
		$('#pipeline-right').attr('disabled',true)
	}
	$('.salesken_progress').show();
	$.post(contextPath+"dashboard/partials/pipelineCard.jsp",JSON.stringify(PipelineObj[pipelienCount])).done(function( data ) {
		$('.salesken_progress').hide();
		$( "#pipeline-card" ).addClass('animated').addClass('fadeOutLeft').addClass('faster');
		$( "#pipeline-card" ).on('animationend', function () {
					$( "#pipeline-card" ).removeClass('animated').removeClass('fadeOutLeft').removeClass('faster');
					$( "#pipeline-card" ).addClass('animated').addClass('fadeInRight').addClass('faster');
					$( "#pipeline-card" ).html(data);
					initializePipelineCarousel();
					$( "#pipeline-card" ).on('animationend', function () {
						$( "#pipeline-card" ).removeClass('animated').removeClass('fadeInRight').removeClass('faster');
					});	
			});
	}).fail(function(){
		$('.salesken_progress').hide();
	});;	
}

function initializePipelineCarousel(){
	$('#pipeline_carousel').carousel({
      interval: 5000
    })
	$('#pipeline_carousel').on('slide.bs.carousel', function () {
	  $('.pipeline-stage-name').html($('.pipeline_stage_radio_button.active').data('stage-name'))
	})
}
//------------------------------------------------>

//<-----------------TEAM CAROUSAL FUNCTIONS--------------
var teamCarauselCount=0;
function team_prev(button){
	teamCarauselCount--;
	$('#team-right').addClass('active')
	$('#team-right').attr('disabled',false)
	if(teamCarauselCount==0){
		$('#team-left').removeClass('active')
		$('#team-left').attr('disabled',true)
		teamCarauselCount=0;
	}
	$('.salesken_progress').show();
	$.post(contextPath+"dashboard/partials/teamCard.jsp",JSON.stringify(teamObj[teamCarauselCount])).done(function( data ) {
		$('.salesken_progress').hide();
		$( "#team-card" ).addClass('animated').addClass('fadeOutRight').addClass('faster');
		$( "#team-card" ).on('animationend', function () {
					$( "#team-card" ).removeClass('animated').removeClass('fadeOutRight').removeClass('faster');
					$( "#team-card" ).addClass('animated').addClass('fadeInLeft').addClass('faster');
					$( "#team-card" ).html(data);
					$( "#team-card" ).on('animationend', function () {
						$( "#team-card" ).removeClass('animated').removeClass('fadeInLeft').removeClass('faster');
					});
			});
		}).fail(function(){
			$('.salesken_progress').hide();
		});
}

function team_next(button){
	teamCarauselCount++;
	$('#team-left').addClass('active')
	$('#team-left').attr('disabled',false)
	if(teamCarauselCount>=teamObj.length-1){
		$('#team-right').removeClass('active')
		$('#team-right').attr('disabled',true)
	}
	$('.salesken_progress').show();
	$.post(contextPath+"dashboard/partials/teamCard.jsp",JSON.stringify(teamObj[teamCarauselCount])).done(function( data ) {
		$('.salesken_progress').hide();
		$( "#team-card" ).addClass('animated').addClass('fadeOutLeft').addClass('faster');
		$( "#team-card" ).on('animationend', function () {
					$( "#team-card" ).removeClass('animated').removeClass('fadeOutLeft').removeClass('faster');
					$( "#team-card" ).addClass('animated').addClass('fadeInRight').addClass('faster');
					$( "#team-card" ).html(data);
					$( "#team-card" ).on('animationend', function () {
						$( "#team-card" ).removeClass('animated').removeClass('fadeInRight').removeClass('faster');
					});	
			});
	}).fail(function(){
		$('.salesken_progress').hide();
	});;	
}

function initializePipelineCarousel(){
	$('#pipeline_carousel').carousel({
      interval: 5000
    })
	$('#pipeline_carousel').on('slid.bs.carousel', function () {
		console.log($('.pipeline_stage_radio_button.active').data('stage-name'))
	  $('.pipeline-stage-name').html($('.pipeline_stage_radio_button.active').data('stage-name'))
	})
}
//------------------------------------------------>