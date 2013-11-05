function Art() {

}

var newGame = new Art();

Art.prototype.initialize = function() {
  this.valueWindow = document.getElementById("color-field");
  this.submitButton = document.getElementById("set-color");
  this.colorBox = document.querySelector("div.brush");
  this.form = document.getElementById("color-form");
  var self = this;
  this.form.addEventListener('submit', function(event) {
    event.preventDefault();
    self.changeColor( self.valueWindow.value );
  });
}

Art.prototype.changeColor = function( colorStr ) {
 this.colorBox.style.background = colorStr;
}

Art.prototype.createDiv = function() {
  console.log("create div function");
  for (var i = 0; i < 20; i++) {
    var body = document.querySelector("body");
    var divSquare = document.createElement("div");
    divSquare.className = "square";
    body.appendChild(divSquare);
  }
}
  
window.onload = function() {
  console.log("loaded!!");
  newGame.initialize();
  newGame.createDiv();
}