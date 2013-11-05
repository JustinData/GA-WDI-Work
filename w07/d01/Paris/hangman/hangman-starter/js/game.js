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
    guessedLetters.innerHTML += letterField.value + " ";
    letterField.value = "";
    window.guesses.push(guessedLetters.innerHTML);
<<<<<<< HEAD
} 
=======
    counter();
    } 
>>>>>>> w07d02

function counter() {
  var unique = _.uniq(guesses.containmentUnit);
  var currentGuesses = _.compact(unique);
  count = currentGuesses.length;
  var guessesLeft = document.querySelector("div#hangman_area");
<<<<<<< HEAD
  var self = guessesLeft.textContent;
  guessesLeft.textContent = self + " " + (8-count)
  // decrement per each guess:
=======
  // var counterDiv = document.createElement("div");
  // counterDiv.className = "counter-div" 
  // guessesLeft.appendChild(counterDiv)
  var counterText = guessesLeft.textContent;

  // decrement per each guess:
  for (var i = 0; i < 8; i++){
    guessesLeft.textContent = counterText + " " + (8-count)
    // guessesLeft.textContent = ""
  };
>>>>>>> w07d02
}

function onLoadFunction() {
  console.log("Loaded");
  addLetter();
}

window.onload = onLoadFunction;


