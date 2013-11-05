window.onload = function () {
  var inputField = document.getElementById("color-field");
  var button = document.getElementById("set-color");
  var brush= document.querySelector(".brush");

  button.addEventListener('click', function(e){
    var color = inputField.value 
    brush.style.background = color;
  })
  field.addEventListener('keypress', function (e) {
    var key = e.which || e.keyCode;
    if (key == 13) { inputField();
    field.value = null;
    }
}