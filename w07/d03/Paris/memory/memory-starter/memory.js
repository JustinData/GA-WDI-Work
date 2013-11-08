$(function() {
  console.log("loaded")
  appendCards();
});

function appendCards() {
  for (var i = 0; i < 10; i++) {
  var card = $("<div id=i class='column'>").appendTo($('#game'));
  };
}







