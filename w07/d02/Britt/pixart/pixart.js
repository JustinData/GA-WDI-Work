function attachListener() {
  var colorDiv = document.querySelector("div.brush");
  var colorField = document.getElementById("color-field");
  var colorButton = document.getElementById("set-color");
  colorButton.addEventListener('click', function(){
    newColor = colorField.value;
    colorDiv.style.background = newColor;
    colorField.value = "";
  });

  colorField.addEventListener('keyup', function(event){
    if (event.keyCode == 13){
      newColor = colorField.value;
      colorDiv.style.background = newColor;
      colorField.value = "";
    };
  });
};

window.onload = function(){
  attachListener();
}