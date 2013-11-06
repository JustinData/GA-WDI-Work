window.onload = function(){
  console.log("I GOT DA BEATZZZZZ")

  guessedLettersArray = []; 
  letterField = document.getElementById("letter_field"); 

  letterField.addEventListener('keypress', function(e){
      var key = e.which || e.keyCode;
      if (key === 13 && guessedLettersArray.indexOf(letterField.value) === -1) { 
        guessedLettersArray.push(letterField.value); 
      console.log(guessedLettersArray); 
    };  
    updateGuessedLetters(); 
    letterField.value = null; 
  }); 
}

 function updateGuessedLetters(){
    var guessedLetters = document.getElementById("guessed_letters"); 
    guessedLetters.innerText = guessedLettersArray.join(" ");
    }; 

 