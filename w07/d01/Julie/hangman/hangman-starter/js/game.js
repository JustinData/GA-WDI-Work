function Hangman(){
  this.wordBank = ["goat", "llama", "frog", "sheep" ];
  this.guessLeft = 8;
  this.letterGuessedAlready = [];
  this.giveUp = false;

 }

var inputBox = document.getElementById("letter_field");

 Hangman.prototype.chooseSampleWord = function() {
  var sample = _.sample(this.wordBank);
}

Hangman.prototype.inputLetter = function() {
var inputBox = document.getElementById("letter_field");
   inputBox.onkeyup= myfunction;

function myfunction(){
    console.log(inputBox.value);
  }
}

window.onload = function() {

}