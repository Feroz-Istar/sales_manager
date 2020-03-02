var teamCount= $('.team-container').length ;
var teamShowing = 0;
//$('.team-container').hide();
$('.team-container').eq(teamShowing).show();
if(teamCount == 0){
	//$('.team-card').hide();
}



if(teamCount>1){
	var owl=$('.team-carousel')
	
	var obj=[
		{	
			name:'Team 01',
			achievedValue:'50K'
		},{
			name:'Team 02',
			achievedValue:'60K'
		},{
			name:'Team 03',
			achievedValue:'20K'
		},{
			name:'Team 04',
			achievedValue:'100K'
		}
	]
	var current_item=0
	$(document).on('click', '#team-right', function () {
		current_item+=1
		if(current_item>=obj.length){
			current_item=current_item-obj.length;
		}
		
		$('.team-container').find('.team-name').html(obj[current_item].name)
		$('.team-container').find('.achieved-value').html(obj[current_item].achievedValue)
		 owl.trigger('next.owl.carousel');
	});
	$(document).on('click', '#team-left', function () {
		current_item-=1
		if(current_item<0){
			current_item=current_item+obj.length;
		}
		$('.team-container').find('.team-name').html(obj[current_item].name)
		 owl.trigger('prev.owl.carousel');
	});
	/*$('#team-right').click(function(){
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
	})*/
}else{
	$('#team-left').removeClass('active');
	$('#team-right').removeClass('active');

}
