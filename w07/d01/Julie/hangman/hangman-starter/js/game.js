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
var array = this.letterGuessedAlready

function myfunction(){
    var guessedLetters = document.getElementById("guessed_letters");
    var guessedLetterValue = inputBox.value;

    if(_.indexOf(array, guessedLetterValue) === -1){
    guessedLetters.innerHTML += guessedLetterValue;
    array.push(guessedLetterValue);
    this.value = " ";
  }
   else{
    this.value = " ";
   }
  
  }

}



window.onload = function() {

}