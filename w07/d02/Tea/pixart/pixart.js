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
}

function changeColor(element, color){
   element.style.background = color;
}

function moarSquare(){
  var div = window.document.createElement("div");
  div.className = "square";
}
