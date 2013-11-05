
window.onload = function() {
 var inputField = document.getElementById("color-field");
 var button = document.getElementById("set-color");
 var brush  = document.querySelector(".brush");



 function setColor(){
  var color = inputField.value;
  brush.style.background = color;
  inputField.value = "";
 }


button.addEventListener("click", function(){
  setColor();
});

inputField.addEventListener('keyup', function(event){
    if (event.which == 13 || event.keyCode == 13) {
      setColor();
    }
  });



function makeDiv(){
  
  var count = 0
  while(count <= 20){
  var div = document.createElement("div");
  div.setAttribute("class", "square");
  document.body.appendChild(div);
  div.addEventListener("click", function(){
    var color = inputField.value;
    this.style.background = color;
  })
  count ++;
  }

}

makeDiv();


}

// function makeDiv(){
  
//   var count = 0
//   while(count <= 20){
//   var div = document.createElement("div");
//   div.setAttribute("class", "square");
//   document.body.appendChild(div);
//   div.addEventListener("click", function(){
//     var color = inputField.value;
//     this.style.background = color;
//   })
//   count ++;
//   }

// }



