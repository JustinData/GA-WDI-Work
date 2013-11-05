window.onload = function(){
  var setColorButton = document.getElementById('set-color');
  
  setColorButton.addEventListener('click', function(e){
    e.preventDefault();
    var colorField = document.getElementById("color-field");
    var color = colorField.value
    var brushBox = document.querySelector(".brush");
    changeColor(brushBox,colorField.value);
    colorField.value = null;
  });

  moarSquares();


}

function changeColor(element, color){
   element.style.background = color;
}

function moarSquares(){
  for(i = 0; i < 21; i ++) {
    var div = window.document.createElement("div");
    div.className = "square";
    var squareBox = document.querySelector(".controls");
    squareBox.appendChild(div);
  }
}
