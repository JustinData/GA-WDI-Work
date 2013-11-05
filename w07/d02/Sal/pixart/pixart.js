function changeColor() {

}

window.onload = function() {
  var inputField = document.getElementById('color-field');
  var brush = document.querySelector('div.brush');
  var button = document.getElementById('set-color');

  button.addEventListener('click', function(){
   var color = inputField.value;
   brush.style.background = color; 
  })
}