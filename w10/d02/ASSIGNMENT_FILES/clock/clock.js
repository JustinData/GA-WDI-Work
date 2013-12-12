count = 6 

setInterval(function () {
  $('#second-hand').css("-webkit-transform", "rotate("+count+"deg)");
  count+=6
}, 1000)

setInterval(function () {
  $('#minute-hand').css("-webkit-transform", "rotate("+count+"deg)");
  count+=6
}, 60000)

setInterval(function () {
  $('#hour-hand').css("-webkit-transform", "rotate("+count+"deg)");
  count+=6
}, 3600000)