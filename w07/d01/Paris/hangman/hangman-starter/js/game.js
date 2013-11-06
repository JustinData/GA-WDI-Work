function GuessContainer() {
  this.containmentUnit = [];
  this.wordArray = []
}

GuessContainer.prototype.push = function(guess) {
  this.containmentUnit.push(guess);
}

window.guesses = new GuessContainer();
window.guesses.wordArray =  ["hash", "array", "ajax", "javascript", "object", "attributes"]

function addLetter() {
  var guessedLetters = document.querySelector("div#guessed_letters");
  var letterField = document.querySelector("input#letter_field")
  letterField.addEventListener("keypress", function(event) {
  console.log( "INPUT TO EVENT LISTENER: '" + letterField.value + "'" )

  if ((letterField.value === '') || (guesses.containmentUnit.indexOf(letterField.value) > -1 )){
    //do nothing!
  } else { // WE GET HERE IF INPUT IS NEW LETTER!

    // if  {  
    // ADDING LETTER TO GUESSED LETTER, SETTING INNERHTML OF GUESSED LETTERS, AND EMPTYING THE LETTER INPUT
    window.guesses.push(letterField.value);
    guessedLetters.innerHTML = guesses.containmentUnit.join(" ");

    // } else if {
    //ELSE IF CORRECT GUESS WE...  
    //if input letter does belong to the word, fill the blanks where that letter is
    currentWordArray = _.toArray(word);
    console.log(currentWordArray)
    if (currentWordArray.indexOf(letterField.value) > -1) {
      console.log("found it!");
      _.each(currentWordArray, function(e, i) {
        if ( e == letterField.value) {
          textArr = spaces.innerHTML.split("")
          textArr[i] = e
          spaces.innerHTML = textArr.join("");
        }
      });
    }
    letterField.value = "";
  } // -------------------------------------------

    // REGARDLESS OF INPUT, WE SET THE INNERHTML OF GUESSES LEFT...
    var sp = document.getElementById("guesses_left");
    // console.log(sp);
    // console.log( letterField.value + " ");
    sp.innerHTML = 8 - guesses.containmentUnit.length; 
  });
} 

function addUnderscores() {
  wordArray = guesses.wordArray;
  word = _.sample(wordArray);
  console.log(word);
  numberOfCharacters = word.length;
  spaces = document.getElementById("word_string");

  for (var i = 0; i < numberOfCharacters; i++){
    spaces.innerHTML += "_" 
    console.log(spaces.innerHTML)
  };

}

function onLoadFunction() {
  console.log("Loaded");
  addLetter();
  var sp = document.getElementById("guesses_left");
  sp.innerHTML = "8";
  addUnderscores();
}

window.onload = onLoadFunction;




