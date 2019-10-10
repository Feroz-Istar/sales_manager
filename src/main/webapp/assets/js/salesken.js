$( document ).ready(function() {
    console.log( "ready!" );
    
    $('.signout').click(function(){
    	location.href=location.origin;
    });
    
    
   
    attachfilter();
		 
		 
});

function attachfilter(){
	 $('.agentteamsubmit').click(function(){
			var agentarray=[];
			$('.agentcheckbox:checked').each(function () { 
				if(this.checked){
					agentarray.push($(this).data('id'));
				}
				
			});
			var teamarray=[];
			$('.teamcheckbox:checked').each(function () { 
				if(this.checked){
					teamarray.push($(this).data('id'));
				}
				
			});
			alert('agent submit ids are '+agentarray.join(',')+" team submit are "+teamarray.join(','));
			$("body").trigger("click")



		});
		$('.filter-menu').on('click.bs.dropdown', function (e) {
		     e.stopPropagation(); 
		});
			 $('.filter-menu > ul > li > a').on('click', function(event){
			  event.stopPropagation();
			  $(this).tab('show')
			 });
}