// This is one way you could approach this. 
// This is more of a functional approach than an object-oriented one, but it works well in this scenario.
// If you don't like this approach feel free to throw this code out and write your own :)

//Code In Here gets executed once code is ready. This is like window.onload.
$(function(){
  startGame();
});

//array of letters in the game
var letters = ['A', 'A', 'B', 'B', 'C', 'C', 'D', 'D', 'E', 'E' ];
var shuffled = _.shuffle(letters);
//Id of the last card you clicked on.
var lastCardId = ''

// Code that runs to set up the game
function startGame() {
    var cardBox = document.body.querySelector("#game");
    $('button').click(function(){
      for(var i=0; i < 10; i ++){
        var card = $("<div>").attr("id", i).attr("class", "column");
        $(cardBox).append(card);
      };
    });
    // get card ID and set it to a shuffled letter
    $(cardBox).on( "click", "div", function(){
      console.log(shuffled[this.id]);
    });
  }


// //Code that runs when you click on a card
function cardClick(lala) {

    alert(shuffled[lala.id]);

}