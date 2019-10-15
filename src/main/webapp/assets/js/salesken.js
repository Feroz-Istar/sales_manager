$( document ).ready(function() {
    console.log( "ready!" );
    
    $('.signout').click(function(){
    	location.href=location.origin;
    });
    
    
    $( ".sales_ken_popover" ).each(function() {
    	$(this).popover({
    	sanitize:false,html:true
    	});
    }); 
    
    /* start of notes popover */
	$('.notespopup').popover({
	    html: true,
	    sanitize: false,
	    container: 'body',
	    trigger: 'manual',
	    content: function() {
	      return $.ajax({url: '../popover/notescontent.jsp',
	                     dataType: 'html',
	                     async: false}).responseText;
	    }
	  }).click(function(e) {
		    $('.popover').popover('hide');
	    $(this).popover('show');
	    
	  });

	
	$('.notespopup').on('hidden.bs.popover', function () {
		  $(this).removeClass('active');
		})
	
	
	$('.notespopup').on('show.bs.popover', function () {
		 $(this).addClass('active');
	});
		
	$('.notespopup').on('shown.bs.popover	', function () {
		  // do something...
		$('.closenotes').click(function () {
			console.log('clicked');
		  $('.notespopup').removeClass('active');
		  $('.notespopup').popover('hide');
		})
	})
	
	
	/* end of notes popover */
	
	/* start of cues popover */
	$('.cuespopover').popover({
	    html: true,
	    sanitize: false,
	    container: 'body',
	    trigger: 'manual',
	    content: function() {
	      return $.ajax({url: '../popover/cuescontent.jsp',
	                     dataType: 'html',
	                     async: false}).responseText;
	    }
	  }).click(function(e) {
		  $('.popover').popover('hide');
		    $(this).popover('show');	  });
	$('.cuespopover').on('hidden.bs.popover', function () {
		  $(this).removeClass('active');
		})
	
	
	$('.cuespopover').on('show.bs.popover', function () {
		 $(this).addClass('active');
	});
		
	$('.cuespopover').on('shown.bs.popover	', function () {
		  // do something...
		$('.closecues').click(function () {
			console.log('clicked');
		  $('.cuespopover').removeClass('active');
		  $('.cuespopover').popover('hide');
		})
	})
	/* end of cues popover */
	
	/* start of crm popover */
	$('.crmpopover').popover({
	    html: true,
	    sanitize: false,
	    container: 'body',
	    trigger: 'manual',
	    content: function() {
	      return $.ajax({url: '../popover/crmcontent.jsp',
	                     dataType: 'html',
	                     async: false}).responseText;
	    }
	  }).click(function(e) {
		  $('.popover').popover('hide');
		    $(this).popover('show');	  });
	$('.crmpopover').on('hidden.bs.popover', function () {
		  $(this).removeClass('active');
		})
	
	
	$('.crmpopover').on('show.bs.popover', function () {
		 $(this).addClass('active');
	});
		
	$('.crmpopover').on('shown.bs.popover	', function () {
		  // do something...
		$('.closecrm').click(function () {
			console.log('clicked');
		  $('.crmpopover').removeClass('active');
		  $('.crmpopover').popover('hide');
		})
	})
	/* end of crm popover */
	
	/* start of chat popover */
	$('.chatpopover').popover({
	    html: true,
	    sanitize: false,
	    container: 'body',
	    trigger: 'manual',
	    content: function() {
	      return $.ajax({url: '../popover/chatcontent.jsp',
	                     dataType: 'html',
	                     async: false}).responseText;
	    }
	  }).click(function(e) {
		  $('.popover').popover('hide');
		    $(this).popover('show');	  });
	
	$('.chatpopover').on('hidden.bs.popover', function () {
		  $(this).removeClass('active');
		})
	
	
	$('.chatpopover').on('show.bs.popover', function () {
		 $(this).addClass('active');
	});
		
	$('.chatpopover').on('shown.bs.popover	', function () {
		  // do something...
		$('.closechat').click(function () {
			console.log('clicked');
		  $('.chatpopover').removeClass('active');
		  $('.chatpopover').popover('hide');
		})
	})
	/* end of chat popover */
	
	
	/*start of task share popover*/
	$('.taskshare').popover({
	    html: true,
	    sanitize: false,
	    container: 'body',
	    placement: 'bottom',
	    trigger: 'manual',
	    content: function() {
	      return $.ajax({url: '../popover/taskshare.jsp',
	                     dataType: 'html',
	                     async: false}).responseText;
	    }
	  }).click(function(e) {
		  $('.popover').popover('hide');
	    $(this).popover('toggle');
	  });
	
	
	$('.taskshare').on('shown.bs.popover', function () {
		  // do something…
		if('.taskcomment:visible'){
			$('.taskcomment	').popover('hide');
		}
		$('.agentsubmit').click(function(e){
			var agentarray=[];
			$('.agentcheckbox:checked').each(function () { 
				if(this.checked){
					agentarray.push($(this).data('id'));
				}
				
			});
		    $('.taskshare').popover('hide');

		})
		
		
	});
	
	

	/*end of task share popover*/

	
	$('.taskcomment').popover({
	    html: true,
	    sanitize: false,
	    container: 'body',
	    placement: 'bottom',
	    trigger: 'manual',
	    content: function() {
	      return $.ajax({url: '../popover/taskcomment.jsp',
	                     dataType: 'html',
	                     async: false}).responseText;
	    }
	  }).click(function(e) {
		  $('.popover').popover('hide');
	    $(this).popover('toggle');
	  });
	
	
	$('.taskcomment').on('shown.bs.popover', function () {
		  // do something…
		
		$('.closecomment').click(function(){
			$('.taskcomment').popover('hide');
		})
		$('.submitcomment').click(function(){
			$('.taskcomment').popover('hide');
		})
	})
		


	
});

