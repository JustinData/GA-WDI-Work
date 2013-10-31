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
   var earth = document.createElement("section");
   earth.setAttribute("id", "middle-earth");

   // add each land as an article tag
   WTK.each(lands, function(land){
      var new_land = document.createElement("article");
      // var added_land = document.querySelector("article");

      // inside each article tag include an h1 with the name of the land
      var h1 = document.createElement("h1");
      h1.innerHTML = land;
      
      new_land.appendChild(h1);

      // append article to earth
      earth.appendChild(new_land);

   });

    // append middle-earth to your document body
    var body = document.querySelector("body");
    body.appendChild(earth);
}

function makeHobbits(hobbits) {
   var shire = document.querySelector("article");

   // create an unordered list of hobbits in the shire
   var new_list = document.createElement("ul");

   WTK.each(hobbits, function(hobbit){
      var new_hobbit = document.createElement("li");
      // give each hobbit a class of hobbit
      new_hobbit.setAttribute("class", "hobbit");
      new_hobbit.innerHTML = hobbit;
      
      new_list.appendChild(new_hobbit);
   });
   
   shire.appendChild(new_list);
}

function keepItSecretKeepItSafe() {
}

function makeBuddies(buddies) {
}

function beautifulStranger() {
}

function forgeTheFellowShip() {
}

window.onload = function() {
   makeMiddleEarth(lands);
   makeHobbits(hobbits);
}