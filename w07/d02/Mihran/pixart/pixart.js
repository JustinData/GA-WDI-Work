window.onload =function(){

  var inputField = document.getElementById("color-field");
  var button = document.getElementById("set-color");
  var brush = document.querySelector(".brush");

  button.addEventListener('click', changeColor)

  inputField.addEventListener('keypress', function (e) {
    var key = e.which || e.keyCode;
    if (key == 13) { changeColor();
    }
  });

  function changeColor(){
      brush.style.backgroundColor = inputField.value;
      inputField.value = null;
    }
}
