window.onload = console.log( "Loaded!" );

// function Ghoul(name){
//   this.name = name;
//   this.ghouls = [];
// }

function GhoulContainer() {
  this.containmentUnit = [];
}

GhoulContainer.prototype.push = function(ghoulName) {
  this.containmentUnit.push(ghoulName);
}


var ghoulsOne = new GhoulContainer();

ghoulsOne.push("Jeff");
// ghouls.containmentunit