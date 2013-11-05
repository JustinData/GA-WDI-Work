window.onload = function(){
  
  var changeBrushHandler = function(){
    value = colorField.value;
    brush[0].style.backgroundColor = value;
  }

  console.log("ready to draw");

  elSetColor = document.getElementById("set-color");
  colorField = document.getElementById("color-field");
  brush = document.getElementsByClassName("brush");

  elSetColor.addEventListener("click", function(){
    changeBrushHandler();
  });

  colorField.addEventListener("keypress", function(event){
    if (event.which == 13 || event.keyCode == 13) {
     changeBrushHandler();
    }
  });
}

