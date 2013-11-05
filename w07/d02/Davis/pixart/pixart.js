window.onload = function() {
  var button = document.getElementById("set-color");
  button.addEventListener('click', function() {
    var userInput = document.querySelector("input#color-field");

    var div = document.querySelector("div.brush");
    div.style.backgroundColor = userInput.value;
    userInput.value = "";
  })
}