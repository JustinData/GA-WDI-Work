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
  console.log(this.suit + " " + this.rank);
}

function Deck(){
  this.cards = [];
}

Deck.prototype.initialize = function() {

  suitNames = ["Diamond", "Spade", "Clubs", "Hearts"];
  faceNames = ["Ace", "Jack", "Queen", "King"];

  for(j=0; j<=3; j++){
    for(i=2; i<=10; i++){
      tempcard = new Card();
      tempcard.rank = i;
      tempcard.suit = suitNames[j];
      this.cards.push(tempcard);
    }
  }

  for(i=0;i<=3;i++){
    for (j=0;j<=3;j++){
      tempcard = new Card();
      tempcard.rank = faceNames[j];
      tempcard.suit = suitNames[i];
      this.cards.push(tempcard);
    }
  }

  // _.each(faceNames, function(face){
  //   _.each(suitNames, function(suit){
  //     tempcard = new Card();
  //     tempcard.rank = face;
  //     tempcard.suit = suit;
  //     this.cards.push(tempcard);
  //   });
  // });
    
}

Deck.prototype.shuffle = function(){
  this.cards = _.shuffle(this.cards);
}

Deck.prototype.read = function(){
  _.each(this.cards, function(card){
    card.read();
  });
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
  _.each(this.cards, function(card){
    card.read();
  });
}

// Hand.prototype.read = function(){
//     _.each(this.cards, this.read);
// }

window.onload = function(){
  console.log("hello and lets play poker");
  
  myDeck = new Deck();
  myHand = new Hand();
  myDeck.initialize();
  myDeck.shuffle();
  myDeck.draw(myHand);
  myHand.read();



}

