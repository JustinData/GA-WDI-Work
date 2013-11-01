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

function makeMiddleEarth(lands) {
    // create a section tag with an id of middle-earth
    // add each land as an article tag
    // inside each article tag include an h1 with the name of the land
    // append middle-earth to your document body


    section = document.createElement("section");
    section.id = "middle-earth";

    for(var i = 0; i<lands.length; i++){
      landSection = document.createElement("section");
      landSection.innerHTML = "<h1>" + lands[i] + "</h1>";
      section.appendChild(landSection);
    }

    document.appendChild(section);
}

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