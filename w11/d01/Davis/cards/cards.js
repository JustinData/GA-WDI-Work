function Card(suit, value) {
  this.suit = suit;
  this.val = value;
}
Card.prototype.read = function() {
  console.log(this.val + " of " + this.suit);
}

function Deck() {
  var suits = ["spades", "hearts", "clubs", "diamonds"];
  var values = [2,3,4,5,6,7,8,9,10,"jack", "queen", "king", "ace"]

  this.cards = [];

  for(var i=0; i<values.length; i++) {
  for(var j=0; j<suits.length; j++) {
    // console.log(values[i] + suits[j]);
    this.cards.push( new Card(suits[j], values[i]) );
  }
}
}
Deck.prototype.shuffle = function() {
  this.cards = _.shuffle(this.cards);
}
Deck.prototype.draw = function(hand) {
  hand.addCard(this.cards.pop());
}

function Hand() {
  this.cards = [];
}
Hand.prototype.read = function() {
  for(var i=0; i < this.cards.length; i++) {
    console.log(this.cards[i].read());
  }
}
Hand.prototype.addCard = function(card) {
  if (this.cards.length < 5) {
    this.cards.push(card);
  } else {
    console.log("5 cards: Hand already full");
  }
}


deck = new Deck;
hand = new Hand;