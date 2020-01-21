var teamCount= $('.team-container').length ;
var teamShowing = 0;
$('.team-container').hide();
$('.team-container').eq(teamShowing).show();
if(teamCount == 0){
	$('.team-card').hide();
}
if(teamCount>1){
	$('#team-right').click(function(){
		$('.team-container').hide();
		if(teamShowing < teamCount-1){
			teamShowing++;
			$('.team-container').eq(teamShowing).show();
			$('#team-left').addClass('active');
		}
		if(teamShowing == teamCount-1){
			$('.team-container').eq(teamCount -1).show();
			$('#team-right').removeClass('active');
		}
	})
		
	$('#team-left').click(function(){
		$('.team-container').hide();
		if(teamShowing > 0 ){
			teamShowing--;
			$('.team-container').eq(teamShowing).show();
			$('#team-right').addClass('active');
		}
		if(teamShowing == 0){
			$('.team-container').eq(0).show();
			$('#team-left').removeClass('active');
		}
	})
}else{
	$('#team-left').removeClass('active');
	$('#team-right').removeClass('active');

}
