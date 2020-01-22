/*	start of Users function*/
function loadUser() {
	$('#playbook-insight-content').empty();
	$('#customer_tab_content').empty();
	$('#overall_analysis').empty();
	$('#comparative_analysis').empty();
	$('#time_analysis_card').empty();
	$('#roi_calculator_card').empty();
	$('#roi_calculator_tab_content').empty();
	$('#after_search_custom_report').empty();
	$('#user_filter').find('.filters-inside-selection').empty();
	$('#user_filter').hide();
	
	var filterObj={}
	
	/*Selection of deal value filter*/
	var deal = $('#user_dealvalue').attr('data-name');
	var deal_id = $('#user_dealvalue').attr('data-id');
	filterObj.deal={}
	addFilterSelections('user','dealvalue',deal,deal_id,filterObj.deal)
	
	/*Selection of date filter*/
	var time_value = $('#user_datepicker').attr('data-name');
	var time_value_id = $('#user_datepicker').attr('data-id');
	filterObj.time={};
	addFilterSelections("user","time",time_value,time_value_id,filterObj.time)
	
	/*the Filter Object*/
	console.log(filterObj)

	var user_array = [];
	for (var i = 0; i < 2; i++) {
		var user = {};
		user_array.push(user);
	}

	var user_promises = [];
	for (var user of user_array) {
		user_promises.push(fetchUserContent());
	}
	$("#user_tab_detait_content").empty();
	var fetchAllCall = Promise.all(user_promises.map(p => p.catch(error => {
		console.log(error);
		return null;
	})));
	fetchAllCall.then((results) => {
		for (var userTabContent of results) {
			$("#user_tab_detait_content").append(userTabContent);
		}
		showUserContentCard();
	});
}

function showUserContentCard() {
	var userCardReport = {};
	var vv = fetchUserContentCard();
	vv.done(function (data) {
		$('#user_tab_summarize_content').empty();
		$('#user_tab_summarize_content').append(data);
	});
}

function fetchUserContent() {
	return $.post(contextPath + "report/user/user_tab_detail_content.jsp", JSON.stringify());
}

function fetchUserContentCard() {
	return $.post(contextPath + "report/user/user_tab_summarize_content.jsp", JSON.stringify());
}
/*	end of Users function*/