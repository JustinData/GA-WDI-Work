window.onload = function(){
  console.log("OOOOOOHHHHH");
};

function GhoulContainer(){
  this.containmentUnit = [];
};

GhoulContainer.prototype.push = function(ghoulName){
  this.containmentUnit.push(ghoulName);
};

var ghouls = new GhoulContainer();

ghouls.push("Jeff");