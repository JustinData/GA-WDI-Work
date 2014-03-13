function addUnderscores() {
  var wordArray = guesses.wordArray;
  var word = _.sample(wordArray);
  console.log(word);
  numberOfCharacters = word.length;
  var spaces = document.getElementById("word_string");

  for (var i = 0; i < numberOfCharacters; i++){
    spaces.innerHTML += "_" 
  };