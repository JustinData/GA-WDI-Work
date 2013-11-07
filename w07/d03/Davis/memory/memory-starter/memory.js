// 10 divs: 5 top, 5 bottom upon click start button
  // randomly assign each a letter
// when click on div, render letter
// on next click
  // render current div
  // when value of clicked div != rendered div
    // unrender previous div
  // else,
    // render previous div

$(function() {
  $("button").click(function(){
    startGame();
  })

});

//array of letters in the game
var letters = ['A', 'A', 'B', 'B', 'C', 'C', 'D', 'D', 'E', 'E' ];

//Id of the last card you clicked on.
var lastCardId = ''

function startGame() {
  // create 10 divs & render
  var shuffledLetters = _.shuffle(letters);
  for(var i=0; i<shuffledLetters.length; i++) {
    // setup divs w/ unique id
    var div = ($("<div class='column' id=" + i + "></div>"));
    div.css("color", "white");
    $("div#game").append(div);
  }
}

//Code that runs when you click on a card
function cardClick() {

}

