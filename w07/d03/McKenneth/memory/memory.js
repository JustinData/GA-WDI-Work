// This is one way you could approach this. 
// This is more of a functional approach than an object-oriented one, but it works well in this scenario.
// If you don't like this approach feel free to throw this code out and write your own :)

//Code In Here gets executed once code is ready. This is like window.onload.
$(function() {
  startGame();
});

//array of letters in the game
var letters = ['A', 'A', 'B', 'B', 'C', 'C', 'D', 'D', 'E', 'E' ];
var mixedUp = _.shuffle(letters);
//Id of the last card you clicked on.
var lastCardId = '';

// Code that runs to set up the game
function startGame() {
  var arrayOfTiles = [];
   
  for(var i = 0; i < letters.length; i++){
  arrayOfTiles.push($( "<div>" ).attr( "id", i ).addClass("column").appendTo($("#game")));
  }
  cardClick();
}

//Code that runs when you click on a card
function cardClick() {

  for(var i = 0; i< letters.length; i++){
    $(".column")[i].addEventListener("click", function(){

      if ($(".column found"))
      
      if(mixedUp[lastCardId] === mixedUp[this.id]){
       this.innerText = mixedUp[this.id]

        // var set = document.querySelector("this.id");
        // set.className = "column found";
        lastCardId = '';
       }
      else if(lastCardId === ''){
      this.innerText = mixedUp[this.id];
      lastCardId = this.id;
      }
      else if(mixedUp[lastCardId] != mixedUp[this.id]){
        this.innerText = mixedUp[this.id];
        var reset = document.getElementById(lastCardId);
        reset.innerText = "";
        lastCardId = this.id;
      }
    })
  }
}