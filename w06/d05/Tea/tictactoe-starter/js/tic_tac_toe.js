
window.onload = function(){
  alert("HELLO");
  game();
  boardToDom();
};

var clicks = 0;
var gameBoard = new Array(9);
var domBoard = [];
var cells = document.getElementsByTagName("td");

function eventListener(clicks, item){
  returnPlayer(clicks, item);
  markCell(item, player);
  markGameBoard(item)
}

function returnPlayer (clicks, item) {
    if(clicks % 2 === 0){
      player = "red";
    } else {
      player = "black";
    };
};

var game = function(){
  var board = document.querySelector("tbody");
  board.onclick = function(event) {
    clicks++;
  };

};

function markCell(item, player){
  if(item.className === "box_cell"){
    item.className = "box_cell " + player;
  } else {
    alert( "This space has already been played!");
    clicks--;
  }
}

function markGameBoard(item){
  gameBoard[domBoard.indexOf(item.id)] = player;

}


// 0 1 2 
// 3 4 5
// 6 7 8


var winningSolutions = [
// Horizontal Wins
(gameBoard[0] == gameBoard[1] && gameBoard[0] == gameBoard[2]),
(gameBoard[3] == gameBoard[4] && gameBoard[3] == gameBoard[5]),
(gameBoard[6] == gameBoard[7] && gameBoard[6] == gameBoard[8]),

// Vertical Wins
(gameBoard[0] == gameBoard[3] && gameBoard[0] == gameBoard[6]),
(gameBoard[1] == gameBoard[4] && gameBoard[1] == gameBoard[7]),
(gameBoard[2] == gameBoard[5] && gameBoard[2] == gameBoard[8]),

// Diagonal Wins
(gameBoard[0] == gameBoard[4] && gameBoard[0] == gameBoard[8]),
(gameBoard[2] == gameBoard[2] && gameBoard[2] == gameBoard[6])]

// ["r0c0", "r0c1", "r0c2", "r1c0", "r1c1", "r1c2", "r2c0", "r2c1", "r2c2"]
function boardToDom(){
  for(i = 0; i < cells.length; i++){
    domBoard[i] = cells[i].id;
  }
}

function checkWinner(){
  if (clicks > 9) {

  }
}