var suits = ["♥","♦","♣","♠"];
var values = ['A', 2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K'];
var handSize = 5;

function Card() {
	this.cardValue = "";
	this.suit = "";
};

Card.prototype.toString = function() {
	// console.log(this.cardValue + this.suit);
	return this.cardValue + this.suit;
};

function Deck() {
	this.cards = []
};

Deck.prototype.shuffle = function() {
	for(var i = 0; i < 10; i++) {
		this.cards = _.shuffle(this.cards);
	}
}

Deck.prototype.createCards = function() {
	self = this;
	_.each(values, function(v){
		_.each(suits, function(s) {
			card = new Card();
			card.cardValue = v;
			card.suit = s;
			// console.log(self);
			self.cards.push(card);
			// console.log(card.toString());
		})
	})
}

Deck.prototype.initialize = function() {
	this.createCards();
	this.shuffle();
}

Deck.prototype.draw = function() {
	this.cards.shift();
}

function Hand() {
	this.cards = []
};

Hand.prototype.draw = function() {
	var newCard = deck.draw();
	this.cards.push(newCard);
}

Hand.prototype.dealHand = function() {
	for(var i = 0; i < handSize;  i++) {
		this.draw();
	};
}

Hand.prototype.toString = function() {
	var handString = "";
	_.each(this.cards, function(c){
		handString = handString + c.toString();
	});
};

function prepDeck() {
	deck = new Deck();
	deck.initialize();
};


function deal() {
	hand = new Hand();
	hand.dealHand();
};

window.onload = function(){
	prepDeck();
	deal();
};




