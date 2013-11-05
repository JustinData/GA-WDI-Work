function Art() {

}

var newGame = new Art();

Art.prototype.initialize = function() {
  this.valueWindow = document.getElementById("color-field");
  this.submitButton = document.getElementById("set-color");
  this.colorBox = document.querySelector("div.brush");
  var self = this;
  this.submitButton.addEventListener('click', function(event) {
    self.changeColor( self.valueWindow.value );
  });
}

Art.prototype.changeColor = function( colorStr ) {
 this.colorBox.style.background = colorStr;
}

window.onload = function() {
  console.log("loaded!!");
  newGame.initialize();
}