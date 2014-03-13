var seconds = 0;
var timerId = 0;

function updateTime(){
	seconds++;
	$('#timer').html("TIme elapsesd: " + seconds);
}

$(function() {
	console.log("love stuff");

	$("#reset").on('click', function(){
		console.log("reset");
		seconds = 0;
		clearInterval(timerId);
		$('#timer').html("Time Keeper");
	});

	$("#start").on('click', function(){
		console.log("start");
		$('#timer').html("TIme elapsesd: " + seconds);
		timerId = setInterval(updateTime, 1000);
	});

	$("#pause").on('click', function(){
		console.log("pause");
		clearInterval(timerId);
	});
});