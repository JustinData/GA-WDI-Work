$(function(){
	clock();
})

function clock(){
	var sec = $("#second-hand")
	var min = $("#minute-hand")
	var hour = $("#hour-hand")
	var i = 6
	var j = 6
	var k = 30
	setInterval(function(){
		sec.css("transform", "rotate("+i+"deg)")
		i = i+6
		}, 1000)
	setInterval(function(){
		min.css("transform", "rotate("+j+"deg)")
		j = j+6
		}, 60000)
	setInterval(function(){
		min.css("transform", "rotate("+k+"deg)")
		k = k+30
		}, 3600000)
}