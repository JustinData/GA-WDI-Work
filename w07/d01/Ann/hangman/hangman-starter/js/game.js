window.onload = function(){
  console.log("I GOT DA BEATZZZZZ")

  wordsArray = ['ruby', 'rails', 'javascript', 'array', 'hash', 'underscore', 'sinatra', 'model', 'controller', 'view', 'devise', 'authentication', 'capybara', 'jasmine', 'cache', 'sublime', 'terminal', 'system', 'twitter', 'facebook', 'function', 'google', 'amazon', 'development', 'data', 'design', 'inheritance', 'prototype', 'gist', 'github', 'agile', 'fizzbuzz', 'route', 'gem', 'deployment', 'database']; 

  guessedLettersArray = []; 
  letterField = document.getElementById("letter_field"); 
  resetButton = document.getElementById("reset_button"); 

  letterField.addEventListener('keypress', function(e){
      var key = e.which || e.keyCode;
      if (key === 13 && guessedLettersArray.indexOf(letterField.value) === -1) { 
        guessedLettersArray.push(letterField.value); 
      console.log(guessedLettersArray); 
    };  
    updateGuessedLetters();
    remainingGuesses();  
    letterField.value = null; 
  });
  randomWord(); 
}



  function randomWord(){
    resetButton.addEventListener('click', function(e){
      var word = wordsArray[Math.floor(Math.random() * wordsArray.length)];
      var wordToGuess = document.getElementById("word_string");
      wordToGuess.innerText = word 
    }); 
  }; 


 function updateGuessedLetters(){
    var guessedLetters = document.getElementById("guessed_letters"); 
    guessedLetters.innerText = guessedLettersArray.join(" ");
    }; 

 function remainingGuesses(){
    var guesses = (9 - (guessedLettersArray.length + 1)); 
    var numberofguesses = document.getElementById("guesses_left"); 
    numberofguesses.innerText = guesses; 
 }; 






