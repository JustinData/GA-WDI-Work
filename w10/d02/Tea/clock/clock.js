$(function(){
  setTimeout(rotate,1000);
})
var degrees = 6;
 
function rotate() {
  $('#second-hand').css('-webkit-transform', 'rotate(' + degrees + 'deg)');
  setTimeout(rotate,1000);
  degrees = degrees + 6;
}

