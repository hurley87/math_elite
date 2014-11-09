$(document).ready(function() {
  $('#play-modal').hide().trigger('click');
 	$('#end-modal').hide();

	var clock = $('.clock').FlipClock(10, {
		countdown: true,
		clockFace: 'MinuteCounter'

	});
	clock.stop();

	$('#begin').hide().trigger('click');
	$('#end').hide();

	 $('#start-level').on('click', function() {
      $('.modal').modal('hide');
      clock.start();
      setTimeout(function() { stopRound() }, 3000);
  });

	function stopRound() {
		clock.stop()
		var seconds = clock.getTime().getSeconds();
		var min = clock.getTime().getMinutes();

		$('#end').trigger('click');
		$('#your-time').text(seconds);
		console.log(seconds);
		console.log(min);
	}	



		

});