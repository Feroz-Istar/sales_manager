/*	start of Customer function*/
function loadCustomer() {
	$('#playbook-insight-content').empty();
	$('#user_tab_summarize_content').empty();
	$('#overall_analysis').empty();
	$('#time_analysis_card').empty();
	$('#comparative_analysis').empty();
	$('#user_tab_detait_content').empty();
	$('#roi_calculator_card').empty();
	$('#roi_calculator_tab_content').empty();
	$('#after_search_custom_report').empty();
	$('#adherence_card').empty();
	$('.adherence_tab_content_div').empty();
	var customer_report_array = [];
	for (var i = 0; i < 3; i++) {
		var customer_report = {};
		customer_report_array.push(customer_report);
	}

	var customer_report_promises = [];
	for (var customer_report of customer_report_array) {
		customer_report_promises.push(fetchCustomerReportContent());
	}
	$("#customer_tab_content").empty();
	var fetchAllCall = Promise.all(customer_report_promises.map(p => p.catch(error => {
		return null;
	})));
	fetchAllCall.then((results) => {
		for (var costomerTabContent of results) {
			$("#customer_tab_content").append(costomerTabContent);
		}
	});
}

function fetchCustomerReportContent() {
	return $.post(contextPath + "report/customer/customer_tab_content.jsp", JSON.stringify());
}
/*	end of Customer function*/