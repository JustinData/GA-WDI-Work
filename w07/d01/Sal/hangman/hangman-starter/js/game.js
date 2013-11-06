var Word = function() {
  this.wordArray = ['ruby', 'rails', 'javascript', 'array', 'hash', 'underscore', 'sinatra', 'model', 'controller', 'view', 'devise', 'authentication', 'capybara', 'jasmine', 'cache', 'sublime', 'terminal', 'system', 'twitter', 'facebook', 'function', 'google', 'amazon', 'development', 'data', 'design', 'inheritance', 'prototype', 'gist', 'github', 'agile', 'fizzbuzz', 'route', 'gem', 'deployment', 'database']
}

var Player = function() {
  this.guessedLetters = [];
  this.numberOfGuesses = 8; 
}

player = new Player();
word =  new Word(); 

Player.prototype.initialize = function() {
  numbGuessDiv = document.getElementById('guesses_left')
  numbGuessDiv.innerHTML = this.numberOfGuesses;
}

Player.prototype.guessLetter = function() {
  letter = prompt("What letter would you like to guess?")
  console.log(letter)
  if( (this.guessedLetters.indexOf(letter) === -1 ) && letter != "") {
    this.guessedLetters.push(letter)
    numbGuessDiv = document.getElementById('guesses_left')
    numbGuessDiv.innerHTML = this.numberOfGuesses -= 1;
    letterGuessDiv = document.getElementById('guessed_letters')
    letterGuessDiv.innerHTML = this.guessedLetters.join(' ')
  }
}

Player.prototype.showLetters = function() {
  console.log(this.guessedLetters)
}


window.onload = function() {
  console.log("Loaded")
  player.initialize(); 
}