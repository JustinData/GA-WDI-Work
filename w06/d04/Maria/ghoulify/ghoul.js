window.onload = function(){
  console.log("ooooooh!");
};


function GhoulContainer(){
  this.containmentUnit = [];
}

GhoulContainer.prototype.push = function(ghoulname) {
  this.containmentUnit.push(ghoulname);
};
var ghouls = new GhoulContainer();

ghoulsOne.push("Jeff");

// ghouls.collection