// Dramatis Personae

var hobbits = [
  "Frodo Baggins",
  "Samwise 'Sam' Gamgee",
  "Meriadoc \"Merry\" Brandybuck",
  "Peregrin 'Pippin' Took"
];

var buddies = [
  "Gandalf the Grey",
  "Legolas",
  "Gimli",
  "Strider",
  "Boromir"
];

var lands = ["The Shire", "Rivendell", "Mordor"];

var body = document.querySelector("body");

function makeMiddleEarth(lands) {
<<<<<<< HEAD
var middle_earth = document.createElement("section");
middle_earth.setAttribute("id", "middle-earth"); 
var land = document.createElement("article");
var header = document.createElement("h1");
land.appendChild(header);
middle_earth.appendChild(land);
body.appendChild(middle_earth); 

    // add each land as an article tag
    // inside each article tag include an h1 with the name of the land
    // append middle-earth to your document body
}

function makeHobbits(hobbits) {
var list = document.createElement("ul");

for (var i=0; i< hobbits.length; i++)
{
  var line = document.createElement("li");
  line.innerHTML = hobbits[i];
  list.appendChild(line);
}
  body.appendChild(list);
  // display an unordered list of hobbits in the shire
  // give each hobbit a class of hobbit
}
=======
    // create a section tag with an id of middle-earth
    // add each land as an article tag
    // inside each article tag include an h1 with the name of the land
    // append middle-earth to your document body

>>>>>>> 7e588ace3faf9e7939402f1af8e8cebcb7778b20

    section = document.createElement("section");
    section.id = "middle-earth";

    for(var i = 0; i<lands.length; i++){
      landSection = document.createElement("section");
      landSection.innerHTML = "<h1>" + lands[i] + "</h1>";
      section.appendChild(landSection);
    }

    document.appendChild(section);
}

<<<<<<< HEAD
function forgeTheFellowShip() {
}

window.onload =function(){
  makeMiddleEarth(lands);
}
=======
// function makeHobbits(hobbits) {
// }

// function keepItSecretKeepItSafe() {
// }

// function makeBuddies(buddies) {
// }

// function beautifulStranger() {
// }

// function forgeTheFellowShip() {
// }
>>>>>>> 7e588ace3faf9e7939402f1af8e8cebcb7778b20
