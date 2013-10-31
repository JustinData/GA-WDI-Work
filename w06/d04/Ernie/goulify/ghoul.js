window.onload = function () {
  console.log("OOOHHHHHHH");
}

function GhoulContainer () {
  this.containmentUnit = [];
}

GhoulList.prototype.push = function(ghoulName) {
  this.containmentUnit.push(ghoulName)
};

var ghoulsOne = new GhoulContainer();
ghouls.push("Jeff");
