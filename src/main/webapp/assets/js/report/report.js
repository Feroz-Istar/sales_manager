var contextPath = $('body').data('baseurl');

$(document).ready(function () {
	loadplaybookInsight();
	$('#reportTab>li>a').on('shown.bs.tab', function (e) {
		var target = $(e.target).html(); // activated tab
		console.log(target);
		switch (target) {
			case "Playbook Insights":
				loadplaybookInsight();
				break;
			case "Users":
				loadUser();
				break;
			case "Customer":
				loadCustomer();
				break;
			case "Timeline Analysis":
				loadTimelineAnalysis();
				break;
			case "ROI Calculator":
				loadROICalculator();
				break;
			case "Custom Report":
				loadCustomReport();
				break;
			case "Adherence":
				loadAdherence();
				break;
			default:
				loadplaybookInsight();
		}
	});

	$(".objections").click(function () {
		location.href = location.protocol + '//' + location.host + '/landing/customerobjection.jsp';
	});
	$($('.reportcol>.border-right-dashed-separation').last()).addClass('border-0');
	$('.salesken.navbar-nav>li').removeClass('active');
	$($('.salesken.navbar-nav>li')[3]).addClass('active');
	$('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
		var target = $(e.target).html(); // activated tab
		$('#breadcrumb').html(target);
	});

	$('.page').Pagination({ // id to initial draw and use pagination
		size: 87, // size of list input
		pageShow: 5, // 5 page-item per page
		page: 1, // current page (default)
		limit: 10, // current limit show perpage (default)
	}, function (obj) { // callback function, you can use it to re-draw table or something
		console.log(obj)
	});
	$('#user_datepicker').datepicker({
		autoclose: true
	});
	$('#timeline_datepicker').datepicker({
		autoclose: true
	});


	/*$('.dropdown-menu').click(function (e) {
		e.stopPropagation();
	});*/

	$('.filtertabs>li>.nav-link').click(function (e) {
		$($(this).attr('href') + '-tab').tab('show')
	});

	$('.close-signal').click(function () {
		$('.signal_details').dropdown('hide');
	})

	$('.comparative_analysis').hide();


	$('#insight_team_submit').click(function (e) {
		var agent_array = [];
		var team_array = [];

		$('.insightagentcheckbox').each(function () {
			if ($(this).prop('checked') === true) {
				agent_array.push($(this).data('id'));
			}
		});
		$('.insightteamcheckbox').each(function () {
			if ($(this).prop('checked') === true) {
				team_array.push($(this).data('id'));
			}
		});

		if (agent_array.length == 0 && team_array.length == 0) {
			alert("Please select atleast one");
		} else {
			$('#insight_dropdown').dropdown('hide');
		}
		console.log(agent_array)
		console.log(team_array)
	});


	$('#overallAnalysis_team_submit').click(function (e) {
		var agent_array = [];
		var team_array = [];

		$('.overallAnalysisagentcheckbox').each(function () {
			if ($(this).prop('checked') === true) {
				agent_array.push($(this).data('id'));
			}
		});
		$('.overallAnalysisteamcheckbox').each(function () {
			if ($(this).prop('checked') === true) {
				team_array.push($(this).data('id'));
			}
		});

		if (agent_array.length == 0 && team_array.length == 0) {
			alert("Please select atleast one");
		} else {
			$('#overallAnalysis_dropdown').dropdown('hide');
		}
		console.log(agent_array)
		console.log(team_array)
	});


	$('#comparativeAnalysis_team_submit').click(function (e) {
		var agent_array = [];
		var team_array = [];

		$('.comparativeAnalysisagentcheckbox').each(function () {
			if ($(this).prop('checked') === true) {
				agent_array.push($(this).data('id'));
			}
		});
		$('.comparativeAnalysisteamcheckbox').each(function () {
			if ($(this).prop('checked') === true) {
				team_array.push($(this).data('id'));
			}
		});

		if (agent_array.length == 0 && team_array.length == 0) {
			alert("Please select atleast one");
		} else {
			$('#comparativeAnalysis_dropdown').dropdown('hide');
		}
		console.log(agent_array)
		console.log(team_array)
	});


	$('#insight_reset').click(function () {
		$('#insight_filter').addClass("d-none");
	});
	$('#user_reset').click(function () {
		$('#user_filter').hide();
	});
	$('#overall_analysis_reset').click(function () {
		$('#overall_analysis_selections').addClass("d-none");
	});
	$('#comparative_analysis_reset').click(function () {
		$('#comparative_analysis_selections').addClass("d-none");
	});


	$('.overall_title').click(function () {
		$('.comparative_analysis').show();
		$('.overall_analysis').hide();
	});

	$('.reset').click(function () {
		$('.overall_analysis').show();
		$('.comparative_analysis').hide();
	});

	$('#playbook-insight-filter').on('show.bs.dropdown', function () {
		var new_height = $('#playbook-insight-content').outerHeight() + $('#insight_filter').outerHeight();
		console.log(new_height);
		$('#insight_dropdown + .dropdown-menu').height(new_height - 13);
		$('.agent-team-list').height(new_height - 200);
	});

	$('#overall-analysis-filter').on('show.bs.dropdown', function () {
		var new_height = $('#overall_analysis_selections').outerHeight() + $('#overall-analysis-scale').outerHeight() + $('#overall-analysis-data').outerHeight();
		console.log(new_height);
		$('#overallAnalysis_dropdown + .dropdown-menu').height(new_height - 4);
		$('.agent-team-list').height(new_height - 200);
	});

	$('#comparative-analysis-filter').on('show.bs.dropdown', function () {
		var new_height = $('.comparative_analysis').outerHeight() - $('#select-row').outerHeight();
		console.log(new_height);
		$('#comparativeAnalysis_dropdown + .dropdown-menu').height(new_height - 4);
		$('.agent-team-list').height(new_height - 200);
	});
});

function showCalendar() {
	$('#user_datepicker').datepicker('show')
}

function showTimelineCalendar() {
	$('#timeline_datepicker').datepicker('show')
}

function showTimelineComparativeCalendar() {
	$('#timeline_comparative_datepicker').datepicker('show')
}

/*	start of filter drop down*/
function report_activity_dropdown(elem) {
	$('#report_activity_drop').html($(elem).text());
	var filter = $(elem).text();
	var filter_id = $(elem).data('id');
	$('#task_activity').attr('data-id', filter_id);
	$('#task_activity').attr('data-name', filter);
	loadplaybookInsight();
};
/*	start of filter drop down*/

/*	start of playbookIsigth function*/
function loadplaybookInsight() {
	$('#user_tab_summarize_content').empty();
	$('#user_tab_detait_content').empty();
	$('#overall_analysis').empty();
	$('#comparative_analysis').empty();
	$('#time_analysis_card').empty();
	$('#customer_tab_content').empty();
	$('#roi_calculator_card').empty();
	$('#roi_calculator_tab_content').empty();
	$('#after_search_custom_report').empty();
	$('#report_insight_filter').find('.col-md-10.d-flex').empty();
	$('#report_insight_filter').hide();
	var task_activity = $('#task_activity').attr('data-name');
	var task_activity_id = $('#task_activity').attr('data-id');
	if (task_activity != "" && task_activity != undefined && task_activity_id != "" && task_activity_id != undefined) {
		$('#report_insight_filter').find('.col-md-10.d-flex').append(getfilterhtml(task_activity, task_activity_id, "report_task_activity"));
		$('#report_insight_filter').show();
	}
	var playbookInsight_array = [];
	for (var i = 0; i < 9; i++) {
		var playbookInsight = {};

		playbookInsight_array.push(playbookInsight);
	}

	var playbookInsight_promises = [];
	for (var playbookInsight of playbookInsight_array) {
		playbookInsight_promises.push(fetchPlaybookContent(playbookInsight));
	}
	$("#playbook-insight-content").empty();
	var fetchAllCall = Promise.all(playbookInsight_promises.map(p => p.catch(error => {
		console.log(error);
		return null;
	})));
	fetchAllCall.then((results) => {
		for (var ongoingTabHtml of results) {
			$("#playbook-insight-content").append(ongoingTabHtml);
		}
	});
}

function getfilterhtml(filter, id, filter_type) {
	return '<button class="theme_solid_border bg-white brown-grey rounded f-12 position-relative search-filter ml-10" data-id="' + id + '">' + filter +
		'<i class="fas fa-times-circle brown-grey bg-white rounded-circle f-14 cross-btn" data-type="' + filter_type + '" onclick="removeReportFilter(this)"></i> </button>'
}

function fetchPlaybookContent(playbookInsight) {
	return $.post(contextPath + "report/playbook_insight/playbook_insight_content.jsp", JSON.stringify(playbookInsight));
}
/*	end of playbookIsigth function*/

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
	$('#report_insight_filter').find('.col-md-10.d-flex').empty();
	$('#report_insight_filter').hide();
	var task_activity = $('#task_activity').attr('data-name');
	var task_activity_id = $('#task_activity').attr('data-id');

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

/*	start of timeline analysis function*/
function loadTimelineAnalysis() {
	$('#user_tab_summarize_content').empty();
	$('#user_tab_detait_content').empty();
	$('#playbook-insight-content').empty();
	$('#customer_tab_content').empty();
	$('#roi_calculator_card').empty();
	$('#roi_calculator_tab_content').empty();
	$('#after_search_custom_report').empty();
	var timeline_array = [];
	for (var i = 0; i < 1; i++) {
		var timelineanalysis = {};
		timeline_array.push(timelineanalysis);
	}

	var timeline_promises = [];
	for (var timeline of timeline_array) {
		timeline_promises.push(fetchTimelineContent());
	}
	$("#overall_analysis").empty();
	var fetchAllCall = Promise.all(timeline_promises.map(p => p.catch(error => {
		console.log(error);
		return null;
	})));
	fetchAllCall.then((results) => {
		for (var timelineTabContent of results) {
			$("#overall_analysis").append(timelineTabContent);
		}
		showTimelineContentCard();
		comparative_analysis();
	});
}

function comparative_analysis() {
	var vv = fetchComparative_analysis();
	vv.done(function (data) {
		$('#comparative_analysis').empty();
		$('#comparative_analysis').append(data);
	});
}

function showTimelineContentCard() {
	var vv = fetchTimelineContentCard();
	vv.done(function (data) {
		$('#time_analysis_card').empty();
		$('#time_analysis_card').append(data);
	});
}

function fetchTimelineContent() {
	return $.post(contextPath + "report/time_analysis/overall_time_analysis.jsp", JSON.stringify());
}

function fetchTimelineContentCard() {
	return $.post(contextPath + "report/time_analysis/time_analysis_card.jsp", JSON.stringify());
}

function fetchComparative_analysis() {
	return $.post(contextPath + "report/partials/comparative_analysis.jsp", JSON.stringify());
}
/*	end of timeline analysis function*/

/*	start of  adherence function*/
function loadAdherence() {
	$('#user_tab_summarize_content').empty();
	$('#roi_calculator_card').empty();
	$('#roi_calculator_tab_content').empty();
	$('#user_tab_detait_content').empty();
	$('#playbook-insight-content').empty();
	$('#customer_tab_content').empty();
	$('#time_analysis_card').empty();
	$('#comparative_analysis').empty();
	$("#overall_analysis").empty();
	$('#after_search_custom_report').empty();

	var adherence_array = [];
	for (var i = 0; i < 2; i++) {
		var adherence_content = {};
		adherence_array.push(adherence_content);
	}

	var adherence_promises = [];
	for (var adherence of adherence_array) {
		adherence_promises.push(fetchAdherenceContent());
	}
	$("#adherence_tab_content_div").empty();
	var fetchAllCall = Promise.all(adherence_promises.map(p => p.catch(error => {
		return null;
	})));
	fetchAllCall.then((results) => {
		for (var adherenceTabContent of results) {

			$("#adherence_tab_content_div").append(adherenceTabContent);
		}
		adherenceContentCard();
	});
}

function adherenceContentCard() {
	var vv = fetchAdherenceContentCard();
	vv.done(function (data) {
		$('#roi_calculator_card').empty();
		$('#roi_calculator_card').append(data);
	});
}

function fetchAdherenceContent() {
	return $.post(contextPath + "report/adherence/adherence_tab_content.jsp", JSON.stringify());
}

function fetchAdherenceContentCard() {
	return $.post(contextPath + "report/adherence/adherence_card.jsp", JSON.stringify());
}

/*	end of adherence  function*/

/*	start of  ROI Calculator function*/
function loadROICalculator() {
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

function resetFilters(button) {
	var type = $(button).data('type');
	var filter;
	switch (type) {
		case "play_book_insight":
			filter = $('#task_activity')
			break;
		case "ongoing_stage":
			filter = $('#ongoing_stage')
			break;
		case "ongoing_activity":
			filter = $('#ongoing_activity')
			break;
		case "ongoing_status":
			filter = $('#ongoing_status')
			break;
	}
	filter.attr('data-id', "");
	filter.attr('data-name', "");
	loadplaybookInsight();
}

function removeReportFilter(button) {
	var type = $(button).data('type');
	var filter;
	switch (type) {
		case "report_task_activity":
			filter = $('#task_activity')
			break;
	}
	filter.attr('data-id', "");
	filter.attr('data-name', "");
	loadplaybookInsight();
}


$.get(contextPath + "report/partials/task_content_filter.jsp", function (data) {
	$('#playbook-insight-filter').html(data)
});

$.get(contextPath + "report/partials/adherence_filter.jsp", function (data) {
	$('#adherence_filter').html(data)
});

$.get(contextPath + "report/adherence/adherence_tab_content.jsp", function (data) {
	$('.adherence_tab_content_div').html(data)
});
$.get(contextPath + "report/adherence/adherence_card.jsp", function (data) {
	$('#adherence_card').html(data)
});
function report_user_dealvalue(elem) {
	$('#report_user__drop').html($(elem).text());

};


function report_timeline_persona(elem) {
	$('#report_timeline_drop').html($(elem).text());

};


function report_timeline_success(elem) {
	$('#report_timeline_success_drop').html($(elem).text());
};