window.onload = function() {
  console.log("OOOOOH");
}


function GhoulContainer(name){
  this.containmentUnit = [];
}


GhoulContainer.prototype.push  = function(ghoulName) {
  this.containmentUnit.push(ghoulName);
}

var ghoulsOne = new GhoulContainer();
ghoulsOne.push("Jeff");