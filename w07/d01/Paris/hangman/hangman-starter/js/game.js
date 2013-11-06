// input a letter
// see letters that I've guessed
// see incorrect guesses left (and decrement)

///

// see how many letters in the word
// fill in letter I've guessed correctly
// give up
// rest
// win

function GuessContainer() {
  this.containmentUnit = [];
  this.word_array = ["hash", "array", "ajax", "javascript"]

}

GuessContainer.prototype.push = function(guess) {
  this.containmentUnit.push(guess);
}

window.guesses = new GuessContainer();

function addLetter() {
  var guessedLetters = document.querySelector("div#guessed_letters");
  var letterField = document.querySelector("input#letter_field")
  letterField.addEventListener("keypress", function(event) {
    console.log( "INPUT TO EVENT LISTENER: '" + letterField.value + "'" )

    if ((letterField.value === '') || (guesses.containmentUnit.indexOf(letterField.value) > -1 )){
      //do nothing!
    } else {
      window.guesses.push(letterField.value);
      //console.log( guesses.containmentUnit );
      guessedLetters.innerHTML = guesses.containmentUnit.join(" ");
      letterField.value = "";
    }
    var sp = document.getElementById("guesses_left");
    console.log(sp);
    console.log( letterField.value + " ")
    sp.innerHTML = 8 - guesses.containmentUnit.length; 
  });
} 



function onLoadFunction() {
  console.log("Loaded");
  addLetter();
  var sp = document.getElementById("guesses_left");
  sp.innerHTML = "8";
}

window.onload = onLoadFunction;


