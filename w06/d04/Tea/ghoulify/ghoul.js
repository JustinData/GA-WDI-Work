window.onload = function(){
  console.log("oooooooh!")
}

function GhoulContainer(){
  this.containmentUnit = []
}

GhoulContainer.prototype.push = function(userName){
  this.containmentUnit.push(userName);
}
