window.onload = function() {
  var button = document.getElementById("set-color");
  // var form = document.querySelector("#form");
  var userInput = document.querySelector("input#color-field");
  var div = document.querySelector("div.brush");

  button.addEventListener('click', function(e) {
    e.preventDefault();
    div.style.backgroundColor = userInput.value;
    userInput.value = "";
  })
}
