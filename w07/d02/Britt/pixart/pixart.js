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

function create20Divs(){
  var body = document.querySelector("body");
  for (i = 0; i < 20; i++) {
    var div = document.createElement("div");
    div.classList.add("square");
    body.appendChild(div);
  };
};

window.onload = function(){
  attachListener();
  create20Divs();
};