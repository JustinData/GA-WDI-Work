window.onload = function() {
// form input field
var inputField = document.getElementById("color-field");
// button
var button = document.getElementById("set-color");
// square color
var brush = document.querySelector(".brush");


// add event listener to button on click
button.addEventListener('click', function(){
// create a variable for the value of the input field 
  var color = inputField.value;
// set the background to the input value 
  brush.style.background = color;
  });
}
