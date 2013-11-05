function setColor(elem){
  var colorField = document.getElementById("color-field");
  var newColor = colorField.value;
  elem.style.background = newColor;
  colorField.value = "";
}

function attachListener() {
  var colorDiv = document.querySelector("div.brush");
  var colorField = document.getElementById("color-field");
  var colorButton = document.getElementById("set-color");
  colorButton.addEventListener('click', function(){
    setColor(colorDiv);
  });

  colorField.addEventListener('keyup', function(event){
    if (event.keyCode == 13){
      setColor();
    };
  });
};

function create20Divs(){
  var body = document.querySelector("body");
  for (i = 0; i < 20; i++) {
    var div = document.createElement("div");
    div.classList.add("square");
    div.addEventListener('click', function(){
      setColor(this)
    });
    body.appendChild(div);
  };
};

window.onload = function(){
  attachListener();
  create20Divs();
};