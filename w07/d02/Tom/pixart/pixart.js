window.onload = function(){
  var inputField = document.getElementById("color-field");
  var button = document.getElementById("set-color");
  var brush = document.querySelector(".brush");


function setColor(){
  var color = inputField.value;
  brush.style.background = color;
}

  button.addEventListener("click", function(){
    setColor();
  });

  inputField.addEventListener("keypress", function(e){
    var key = e.which || e.keycode
    if (key === 13){
     setColor();
    }
  });

  for (var i = 0; i < 20; i++){
    var box = document.createElement("div");
    box.className = "square";
    box.addEventListener("click", function() {
      this.style.background = "green";
    });
      document.body.appendChild(box);
  }

}







