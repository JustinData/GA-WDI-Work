$(function() {
  console.log("loaded")

});

var letters = ['A', 'A', 'B', 'B', 'C', 'C', 'D', 'D', 'E', 'E'];

function appendCards() {
  counter = -1
  for (var i = 0; i < 10; i++) {
  var card = $("<div class='column'>").appendTo($('#game'));
  var cardId = $(card).attr('id', counter + 1);
  counter++;
  };
 
}







