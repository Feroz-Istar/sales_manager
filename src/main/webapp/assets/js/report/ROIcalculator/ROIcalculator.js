/*	start of  ROI Calculator function*/
function loadROICalculator() {
	$('#adherence_card').empty();
	$('.adherence_tab_content_div').empty();
	$('#user_tab_summarize_content').empty();
	$('#user_tab_detait_content').empty();
	$('#playbook-insight-content').empty();
	$('#customer_tab_content').empty();
	$('#time_analysis_card').empty();
	$('#comparative_analysis').empty();
	$("#overall_analysis").empty();
	$('#after_search_custom_report').empty();

	var roi_array = [];
	for (var i = 0; i < 2; i++) {
		var roi_calculators = {};
		roi_array.push(roi_calculators);
	}

	var roi_promises = [];
	for (var roi of roi_array) {
		roi_promises.push(fetchRIOContent());
	}
	$("#roi_calculator_tab_content").empty();
	var fetchAllCall = Promise.all(roi_promises.map(p => p.catch(error => {
		return null;
	})));
	fetchAllCall.then((results) => {
		for (var roiTabContent of results) {

			$("#roi_calculator_tab_content").append(roiTabContent);
		}
		rioContentCard();
	});
}

function rioContentCard() {
	var vv = fetchROIContentCard();
	vv.done(function (data) {
		$('#roi_calculator_card').empty();
		$('#roi_calculator_card').append(data);
	});
}

function fetchRIOContent() {
	return $.post(contextPath + "report/roi_calculator/roi_calculator_tab_content.jsp", JSON.stringify());
}

function fetchROIContentCard() {
	return $.post(contextPath + "report/roi_calculator/roi_calculator_card.jsp", JSON.stringify());
}

/*	end of ROI Calculator  function*/