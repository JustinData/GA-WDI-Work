function changeColor() {

}

window.onload = function() {
  //GET ELEMENTS TO 
  var inputField = document.getElementById('color-field');
  var brush = document.querySelector('div.brush');
  var button = document.getElementById('set-color');

  // TO ENCAPSULATE THE SET COLOR FUNCTION
  // function setColor() {
  //   var color = inputField.value; 
  //   brush.style.background = color; 
  // }

  // ADD EVENT LISTENER TO BUTTON
  button.addEventListener('click', function(){
   var color = inputField.value;
   brush.style.background = color; 
  });

  // ADD EVENT LISTENER TO FORM TO SUBMIT UPON ENTER
  inputField.addEventListener("keypress", function(e) {
    var key = e.which || e.keycode
    if (key === 13) {
      var color = inputField.value;
      brush.style.background = color; 
    }
  });

  for(var i = 0; i < 20; i++) {
    var box = document.createElement('div');
    box.className = 'square';
    document.body.appendChild(box);
  };
}