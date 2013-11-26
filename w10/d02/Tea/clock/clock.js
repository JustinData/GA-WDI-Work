$(function(){
  setTimeout(rotateHands,1000);
})
var degrees = 6;

function rotateHands() {
  $('#second-hand').css('-webkit-transform', 'rotate(' + degrees + 'deg)');
  $('#minute-hand').css('-webkit-transform', 'rotate(' + degrees/60 + 'deg)');
  $('#hour-hand').css('-webkit-transform', 'rotate(' + degrees/360 + 'deg)');
  setTimeout(rotateHands,1000);
  degrees = degrees + 6;
}