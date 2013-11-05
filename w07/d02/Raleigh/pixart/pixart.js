function changeColor() {
   var button = document.getElementById("set-color");
   
   button.addEventListener("click", function(user_color){
      var input = document.getElementById("color-field");
      var brush = document.querySelector("div.brush");

      brush.setAttribute("style", "background: " + input.value + ";");
      input.value = "";
   });
}

window.onload = changeColor;