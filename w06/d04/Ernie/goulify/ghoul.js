window.onload = function () {
  console.log("OOOHHHHHHH");
}

function GhoulContainer () {
  this.containmentUnit = [];
}

GhoulContainer.prototype.push = function(ghoulName) {
  this.containmentUnit.push(ghoulName);
}

var ghouls = new GhoulContainer();
ghouls.push("Jeff");
ghouls.push("Ernie");


function nameChange (name) {
 document.querySelector("ul.containment-unit li").innerHTML = name;
}

function appendLi (newContent) {
  var newLI = document.createElement("li");
  newLI.innerHTML = newContent;
  var ul = document.querySelector("ul.containment-unit li")
  ul.appendChild(newLI);
}


appendLi(ghouls);