// Dramatis Personae
window.onload = function(){
  console.log("loaded!");
};


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

//********* Here is my try. Did not fucking work ********

var lands = ["The Shire", "Rivendell", "Mordor"];

function makeMiddleEarth(lands) {
  //make the section element in the doc
  var section = document.createElement("section");
  //set the id to middle-eath
  section.setAttribute("id", "middle-earth");
  //begin each loop:
      WTK.each(lands, function(land) {
  //make article element;
        var article = document.createElement("article");
  //make h1 element
        var h1 = document.createElement("h1");
  //add inner html to h1
        h1.innerHTML = lands;
  //append h1 to article      
        article.appendChild(h1);
  //append article to section      
        section.appendChild(article);
  //closing loop:
      });
  //query select body    
  var boo = document.querySelector("body");
  //append section to body
  body.appendChild(section);
}

//****** In Console I wrote: 
//makeMiddleEarth(lands);

//****** I got error:
//ReferenceError: body is not defined


//***************** SCRATCH PAD ************************
//I made separate functions but then was told to put it all in
//the makeMiddleEarth function...


//no- h1.appendChild(document.querySelector("lands");

//make section function and add the id to it:
        // function makeSection(lands, section) {
        //   var section = document.createElement("section");
        //   section.setAttribute("id", "middle-earth");
        // }
//make article section:
        // function makeArticle(lands, article){
        //   var article = document.createElement("article");
        // }
//append article to section        
        // function appendToArticle(lands, article) {
        //   var article = document.createElement("article");
        //   article.innerHTML = newContent;
        //   section.appendChild(article);
        // }
// add each land as an article tag
// inside each article tag include an h1 with the name of the land
// append middle-earth to your document body


function makeHobbits(hobbits) {
}

function keepItSecretKeepItSafe() {
}

function makeBuddies(buddies) {
}

function beautifulStranger() {
}

function forgeTheFellowShip() {
}