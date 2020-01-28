/*$(document).ready(
			function() {

				var pipelineCount = $('.pipeline-container').length;
				var pipelineShowing = 0;
				$('.pipeline-container').hide();
				$('.pipeline-container').eq(pipelineShowing).show();
				
				if (pipelineCount == 0) {
					$('.pipeline-card').hide();
				}
				if (pipelineCount > 1) {
					$('#pipeline-right').click(
							function() {
								$('.pipeline-container').hide();
								if (pipelineShowing < pipelineCount - 1) {
									pipelineShowing++;
									$('.pipeline-container')
											.eq(pipelineShowing).show();
									$('#pipeline-left').addClass('active');
								}
								if (pipelineShowing == pipelineCount - 1) {
									$('.pipeline-container').eq(
											pipelineCount - 1).show();
									$('#pipeline-right').removeClass('active');
								}

							})

					$('#pipeline-left').click(
							function() {
								$('.pipeline-container').hide();
								if (pipelineShowing > 0) {
									pipelineShowing--;
									$('.pipeline-container')
											.eq(pipelineShowing).show();
									$('#pipeline-right').addClass('active');
								}
								if (pipelineShowing == 0) {
									$('.pipeline-container').eq(0).show();
									$('#pipeline-left').removeClass('active');
								}
								
							})
				} else {
					$('#pipeline-right').removeClass('active');
					$('#pipeline-left').removeClass('active');
				}
			});*/

