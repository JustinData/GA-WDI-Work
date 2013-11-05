function changeColor() {
   var button = document.getElementById("set-color");
   var input = document.getElementById("color-field");
   var brush = document.querySelector("div.brush");

   button.addEventListener('click', function(){
      // brush.setAttribute("style", "background: " + input.value + ";");
      brush.style.background = input.value;
      input.value = "";
   });

   input.addEventListener('keypress', function(e) {
      var key = e.which || e.keyCode;
      if(key === 13) { // 13 is enter
         brush.style.background = input.value;
         input.value = "";
      }
   });

   addSquares();
}


function addSquares() {
   var body = document.querySelector("body");
   for(i=0; i<=25; i++) {
      var square = document.createElement("div");
      square.setAttribute("class", "square");
      // square.className = "square";
      square.addEventListener('click', function(){
         this.style.background = "MediumSpringGreen";
      });
      body.appendChild(square);
   }
}


window.onload = changeColor;
