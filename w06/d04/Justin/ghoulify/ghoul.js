function GhoulContainer() {
	this.containmentUnit = [];
}
 
GhoulContainer.prototype.push = function(ghoulName) {
  // OOOOHHHHHH!
	this.containmentUnit.push(ghoulName);
}
 
var ghouls = new GhoulContainer();
 
ghouls.push("Jeff");
ghouls.push("DrRobotMck");
 
// var ul = document.querySelector("ul.containment-unit");
 
function appendLi(newContent, ul) {
	var li = document.createElement("li");
	li.innerHTML = newContent;
	ul.appendChild(li);
}
 
function appendGhouls(ghouls, ul) {
	ul.innerHTML = "";
	WTK.each(ghouls.containmentUnit, function(ghoul) {
		appendLi(ghoul, ul);
	});
}
 
window.onload = function() {
	var ul = document.querySelector("ul.containment-unit");
	var form = document.querySelector("form.add-ghoul");
	form.addEventListener("submit", function(e){
		e.preventDefault();

		var input = this.elements["ghoulName"]

		console.log("form submitted");
		console.log(input.value);
		
		ghouls.push(input.value);
		appendGhouls(ghouls, ul);
		input.value = "";
	});
	
	appendGhouls(ghouls, ul);
}
 
 
//appendLi("Jeff");
 
 
//ghouls.containmentUnit
 
// ["Jeff"]
// Write a function which
// given a string -> li -> attaches to the 
// ul.containment-unit