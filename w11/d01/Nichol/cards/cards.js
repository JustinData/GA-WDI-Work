// objects:
// deck
// card
// hand

// attr
// deck has 52 cards
// hand has 0 cards
// card has suit and cardinal

// behavior
// deck.shuffle shuffles the cards
// deck.draw(5) removes 5 cards from deck and puts it in hand
// hand.read tells us what cards are in our hand.

function Card() {
  this.suit = "";
  this.rank = 0;
}

Card.prototype.read = function() {

}

function Deck(){
  this.cards = [];
}

Deck.prototype.initialize = function() {

  for(i=1; i<=10; i++){
    tempcard = new Card();
    tempcard.rank = i;
    tempcard.suit = "Diamond";
    this.cards.push(tempcard);
  }

    tempcard = new Card();
    tempcard.rank = "A";
    tempcard.suit = "Diamond";
    this.cards.push(tempcard);

    tempcard = new Card();
    tempcard.rank = "K";
    tempcard.suit = "Diamond";
    this.cards.push(tempcard);

    tempcard = new Card();
    tempcard.rank = "Q";
    tempcard.suit = "Diamond";
    this.cards.push(tempcard);

    tempcard = new Card();
    tempcard.rank = "J";
    tempcard.suit = "Diamond";
    this.cards.push(tempcard);

}

Deck.prototype.shuffle = function(){
  this.cards = _.shuffle(this.cards);

}

Deck.prototype.draw = function(hand){
  for(i=0; i<=4; i++){
    hand.cards.push(this.cards.pop());
  }
}

function Hand(){
  this.cards = [];
}

Hand.prototype.read = function(){
  _.each(this.cards, function(x){
    console.log(x);
  });
}

window.onload = function(){
  console.log("hello and lets play poker");
  
  myDeck = new Deck();
  myHand = new Hand();
  myDeck.initialize();
  myDeck.shuffle();
  myDeck.draw(myHand);

}

