wordsList = ['ruby', 'rails', 'javascript', 'array', 'hash', 'underscore', 'sinatra', 'model', 'controller', 'view', 'devise', 'authentication', 'capybara', 'jasmine', 'cache', 'sublime', 'terminal', 'system', 'twitter', 'facebook', 'function', 'google', 'amazon', 'development', 'data', 'design', 'inheritance', 'prototype', 'gist', 'github', 'agile', 'fizzbuzz', 'route', 'gem', 'deployment', 'database'];

function HangMan() {
	this.lettersGuessedArr = [];
	this.guessesLeft = 8;
	this.letterInput = "";
};

var newGame = new HangMan();

HangMan.prototype.initialize = function() {
	this.letterField = document.getElementById("letter_field");
	this.guessesLeftSpan = document.getElementById("guesses_left");
	this.lettersGuessed = document.getElementById("guessed_letters");
	this.wordString = document.getElementById("word_string");
	this.word = _.sample(wordsList);
	this.wordArray = this.word.split("");
	console.log(this.wordArray);
	this.wordLength = this.word.length;
	console.log(this.word);

	this.guessesLeftSpan.innerHTML = this.guessesLeft;

	for (var i = 0; i < this.wordLength; i++){
		this.wordString.innerHTML += "_" 
	};

	var self = this;

	this.letterField.onkeyup = function(){
		self.makePlay();
	};
}

HangMan.prototype.makePlay = function() {
	console.log("makePlay run");
	this.letterInput = this.letterField.value;
	console.log(this.letterInput);
		
	if (this.lettersGuessedArr.indexOf(this.letterInput) === -1) {
		console.log("Hello");
		this.lettersGuessedArr.push(this.letterInput);
		this.lettersGuessed.innerHTML = this.lettersGuessed.innerHTML + this.letterInput + " ";

		if (this.wordArray.indexOf(this.letterInput) === -1) {
			console.log("wrong");
			this.guessesLeft = (this.guessesLeft - 1);
			this.guessesLeftSpan.innerHTML = this.guessesLeft;
		}

	}

	//if input letter does belong to the word, fill the blanks where that letter is
	// if (this.wordArray.indexOf(this.letterInput) > -1) {
	// 	_.each(this.wordArray, function(e, i) {
	// 		if ( e == this.letterInput) {
	//     		newArray = this.wordString.innerHTML.split("")
	//     		newArray[i] = e
	//     		this.wordString.innerHTML = newArray.join("");
	// 		}
	// 	});
	// }

	this.letterField.value = "";
}

window.onload = function() {

	newGame.initialize();

	

	// var word = _.sample(words);
	
	
	// console.log(wordLength);

}


