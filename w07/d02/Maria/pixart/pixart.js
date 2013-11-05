//div class "brush"
window.onload = function(){
var inputField = document.getElementById("color-field");
var button = document.getElementById("set-color");
var brush = document.querySelector("div.brush");

button.addEventListener(click, function(){
  var color = inputField.value;
  brush.style.background = color;
 });
};


