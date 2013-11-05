function HangMan(){
  this.wordList = ['ruby', 'rails', 'javascript', 'array', 'hash', 'underscore', 'sinatra', 'model', 'controller', 'view', 'devise', 'authentication', 'capybara', 'jasmine', 'cache', 'sublime', 'terminal', 'system', 'twitter', 'facebook', 'function', 'google', 'amazon', 'development', 'data', 'design', 'inheritance', 'prototype', 'gist', 'github', 'agile', 'fizzbuzz', 'route', 'gem', 'deployment', 'database'];
  this.guessedLetters = [];
  this.counter = 0;
  this.correctLetterArray = [];
}

var newGame = new HangMan();

HangMan.prototype.initialize = function() {
  this.letterInput = document.getElementById("letter_field");
  this.guessedLettersWindow = document.getElementById("guessed_letters");
  this.remainingGuessesElement = document.getElementById("guesses_left");
  this.giveUpBtn = document.getElementById("give_up_button");
  this.resetBtn = document.getElementById("reset_button");
  this.wordDisplay = document.getElementById("word_string");
  this.randomIndex = _.random(0, this.wordList.length);
  this.randomWord = this.wordList[this.randomIndex];
  this.randomWordLength = this.randomWord.length;
  this.remainingGuesses = this.randomWordLength;
  this.remainingGuessesElement.innerHTML = this.remainingGuesses;
  _(this.randomWordLength).times(function(){ this.correctLetterArray.push("_"); }, this);
  this.wordDisplay.innerHTML = this.correctLetterArray.join(" ");
  var self = this;
  this.letterInput.addEventListener('keyup', function(e) {
    console.log(String.fromCharCode(e.keyCode));
    console.log("hello i'm a listener");
    console.log(self);
    self.playGame(String.fromCharCode(e.keyCode));
    self.letterInput.value = "";
  }, this);
}

HangMan.prototype.playGame = function(key) {
  if ( this.guessedLetters.indexOf(key) === -1 ) {
    var chosenLetter = key;
    console.log("Guessed Letters Function");
    console.log(this.guessedLetters);
    this.guessedLettersWindow.innerHTML += key + " ";
    this.guessedLetters.push(key);
    this.counter += 1;
    this.remainingGuesses -= 1;
    this.remainingGuessesElement.innerHTML = this.remainingGuesses;
  }
}

HangMan.prototype.getGuessedLetters = function(key){
  
}

HangMan.prototype.guessesRemaining = function(key){

}



window.onload = function(){
  console.log("loaded");
  newGame.initialize();

}