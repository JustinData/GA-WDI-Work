window.onload = function() {
  var inputField = document.getElementById("color-field");
  var button = document.getElementById("set-color");
  var brush= document.querySelector(".brush");


  function setColor(){
      var color = inputField.value;
      brush.style.background = color;
  }
  button.addEventListener('click', function(){
    var color = inputField.value 
    brush.style.background = color;
  });

  inputField.addEventListener('keypress', function(e){
    var key = e.which || e.keyCode;
    if (key === 13){
      setColor();
    }
  });
}