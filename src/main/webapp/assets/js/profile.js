$('.salesken.navbar-nav>li').removeClass('active');

$('#security').click(function() {
	$(this).parent().parent().parent().parent().hide();
	$('#security-content').show();
	$('#edit-icon').css('background-image', 'url(../assets/image/edit.svg)');
});
$('#accounts').click(function() {
	$(this).parent().parent().parent().parent().hide();
	$('#account-content').show();
	$('#edit-icon').css('background-image', 'url(../assets/image/edit.svg)');
});
$('#submit-password').click(
		function() {
			$('#security-content').hide();
			$("#my-profile").show();
			$('#edit-icon').css('background-image',
					'url(../assets/image/editcolor.svg)')
		});
$('#submit-account').click(
		function() {
			$('#account-content').hide();
			$("#my-profile").show();
			$('#edit-icon').css('background-image',
					'url(../assets/image/editcolor.svg)')
		});
$('#telephony').click(function() {
	$('#telephony-content').show();
	$("#account-content").hide();
});
$('#email').click(function() {
	$('#email-content').show();
	$("#account-content").hide();
});
$('#webinar').click(function() {
	$('#webinar-content').show();
	$("#account-content").hide();
});
$('#crm').click(function() {
	$('#crm-content').show();
	$("#account-content").hide();
});
$('#submit-telephony').click(function() {
	$('#account-content').show();
	$("#telephony-content").hide();
});
$('#submit-email').click(function() {
	$('#account-content').show();
	$("#email-content").hide();
});
$('#submit-webinar').click(function() {
	$('#account-content').show();
	$("#webinar-content").hide();
});
$('#submit-crm').click(function() {
	$('#account-content').show();
	$("#crm-content").hide();
});

$('#cancel-password').click(
		function() {
			$('#security-content').hide();
			$("#my-profile").show();
			$('#edit-icon').css('background-image',
					'url(../assets/image/editcolor.svg)')
		});
$('#cancel-account').click(
		function() {
			$('#account-content').hide();
			$("#my-profile").show();
			$('#edit-icon').css('background-image',
					'url(../assets/image/editcolor.svg)')
		});
$('#cancel-telephony').click(function() {
	$('#account-content').show();
	$("#telephony-content").hide();
});
$('#cancel-email').click(function() {
	$('#account-content').show();
	$("#email-content").hide();
});
$('#cancel-webinar').click(function() {
	$('#account-content').show();
	$("#webinar-content").hide();
});
$('#cancel-crm').click(function() {
	$('#account-content').show();
	$("#crm-content").hide();
});
function load() {
	$(document)
			.keydown(
					function(event) {
						if (event.ctrlKey == true
								&& (event.which == '173'
										|| event.which == '107'
										|| event.which == '109'
										|| event.which == '187'
										|| event.which == '189'
										|| event.which == '96'
										|| event.which == '61' || event.which == '48')) {
							event.preventDefault();
						}
					});
	document.body.addEventListener("wheel", zoomShortcut, {
		passive : false
	}); // add the event
}

function zoomShortcut(e) {
	if (e.ctrlKey) { // [ctrl] pressed?
		event.preventDefault(); // prevent zoom
		if (e.deltaY < 0) { // scrolling up?
			// do something..
			return false;
		}
		if (e.deltaY > 0) { //scrolling down?
			//do something..
			return false;
		}
	}
}
