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

function Question(q, uId, qId) {
  this.details = q;
  this.votes = 0;
  this.answered = false;
  this.paused = false;
  this.userId = uId;
  this.id = qId;
}

//Question object methods

Question.prototype.upVote = function() {
  this.votes = this.votes + 1;
};