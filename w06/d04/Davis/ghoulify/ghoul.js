window.onload = function() {
  console.log( "oooh" )
}

function GhoulContainer() {
  this.containmentUnit = []; 
}

GhoulContainer.prototype.push = function(element) {
  this.containmentUnit.push(element);
}

var ghouls = new GhoulContainer;
