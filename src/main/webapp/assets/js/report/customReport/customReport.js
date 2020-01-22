/*	start of custom report function*/
function loadCustomReport() {
	$('#playbook-insight-content').empty();
	$('#user_tab_summarize_content').empty();
	$('#overall_analysis').empty();
	$('#time_analysis_card').empty();
	$('#comparative_analysis').empty();
	$('#user_tab_detait_content').empty();
	$('#roi_calculator_card').empty();
	$('#roi_calculator_tab_content').empty();
	$('#adherence_card').empty();
	$('.adherence_tab_content_div').empty();
	$('#customer_tab_content').empty();
	var custom_report_array = [];
	for (var i = 0; i < 1; i++) {
		var custom_report = {};
		custom_report_array.push(custom_report);
	}

	var custom_report_promises = [];
	for (var custom_report of custom_report_array) {
		custom_report_promises.push(fetchCustomReportContent());
	}
	$("#after_search_custom_report").empty();
	var fetchAllCall = Promise.all(custom_report_promises.map(p => p.catch(error => {
		console.log(error);
		return null;
	})));
	fetchAllCall.then((results) => {
		for (var costomTabContent of results) {
			$("#after_search_custom_report").append(costomTabContent);
		}
	});
}

function fetchCustomReportContent() {
	return $.post(contextPath + "report/custom_report/after_search_custom_report.jsp", JSON.stringify());
}
/*	end of custom report function*/