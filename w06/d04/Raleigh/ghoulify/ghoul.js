window.onload = function() {
   console.log("Boo!");
}



function GhoulContainer() {
   this.containmentUnit = []
}

GhoulContainer.prototype.push = function(ghoul) {
   this.containmentUnit.push(ghoul);
};




ghouls = new GhoulContainer();