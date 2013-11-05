function attachListener() {
  var colorDiv = document.querySelector("div.brush");
  var colorField = document.getElementById("color-field");
  var colorButton = document.getElementById("set-color");
  colorButton.addEventListener('click', function(){
    newColor = colorField.value;
    colorDiv.setAttribute("style", "background-color: " + newColor + ";");
  });
};

window.onload = function(){
  attachListener();
}