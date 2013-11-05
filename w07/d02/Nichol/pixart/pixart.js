window.onload = function(){
  
  console.log("ready to draw");

  var elSetColor = document.getElementById("set-color");
  var colorField = document.getElementById("color-field");
  var brush = document.querySelector(".brush");

  var changeBrushHandler = function(){
    var value = colorField.value;
    brush.style.background = value;
  }

  elSetColor.addEventListener("click", function(){
    changeBrushHandler();
  });

  colorField.addEventListener("keypress", function(event){
    if (event.which == 13 || event.keyCode == 13) {
     changeBrushHandler();
    }
  });

  for(var i=0; i<20; i++){
    var newDiv = document.createElement("div");
    newDiv.className = "square";
    newDiv.addEventListener("click", function(){
      var color = document.querySelector(".brush").style.background;
      this.style.background = color;
    
    });

    document.getElementsByTagName("body")[0].appendChild(newDiv);



  }

}

