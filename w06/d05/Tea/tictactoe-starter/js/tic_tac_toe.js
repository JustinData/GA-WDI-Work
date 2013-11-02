var currentPlayer;
var clicks = 0;
// var gameBoard = new Array(9);
var domBoard = [];
var playerBoard = new Array(9);
var cells = document.getElementsByTagName("td");

// Objects
function TicTacToe(){
  domBoard: boardToDom(),
  player1 = new Player("red"),
  player2 = new Player("black")

  // winningSolutions
}

function Player(playerColor){
  // board
  this.color = playerColor,
  this.board = playerBoard
}

function eventListener(spot){
  clicks++;
  setCurrentPlayer();
  currentPlayer.markCell(spot);
  currentPlayer.markOwnBoard(spot);
}

function setCurrentPlayer() {
    if(clicks % 2 === 0){
      currentPlayer = player1;
    } else {
      currentPlayer = player2;
    }
}

// // TicTacToe.prototype.returnWinner =   function(clicks, item) {
// //     if(clicks % 2 === 0){
// //       currentPlayer = "red";
// //     } else {
// //       currentPlayer = "black";
// //     };
// // };
// // }

Player.prototype.markCell = function(item){
  if(item.className === "box_cell"){
    item.className = "box_cell " + currentPlayer.color;
  } else {
    alert( "This space has already been played!");
    clicks--;
  }
}

Player.prototype.markOwnBoard = function (item){
  this.board[domBoard.indexOf(item.id)] = 1;

}


// // 0 1 2 
// // 3 4 5
// // 6 7 8


// var winningSolutions = [
// // Horizontal Wins
// (gameBoard[0] == gameBoard[1] && gameBoard[0] == gameBoard[2]),
// (gameBoard[3] == gameBoard[4] && gameBoard[3] == gameBoard[5]),
// (gameBoard[6] == gameBoard[7] && gameBoard[6] == gameBoard[8]),

// // Vertical Wins
// (gameBoard[0] == gameBoard[3] && gameBoard[0] == gameBoard[6]),
// (gameBoard[1] == gameBoard[4] && gameBoard[1] == gameBoard[7]),
// (gameBoard[2] == gameBoard[5] && gameBoard[2] == gameBoard[8]),

// // Diagonal Wins
// (gameBoard[0] == gameBoard[4] && gameBoard[0] == gameBoard[8]),
// (gameBoard[2] == gameBoard[2] && gameBoard[2] == gameBoard[6])]

// ["r0c0", "r0c1", "r0c2", "r1c0", "r1c1", "r1c2", "r2c0", "r2c1", "r2c2"]
function boardToDom(){
  for(i = 0; i < cells.length; i++){
    domBoard[i] = cells[i].id;
  }
}

// function checkWinner(){
//   if (clicks > 9) {

//   }
// }

window.onload = function(){
  alert("HELLO");
  var newGame = new TicTacToe;
  newGame;
};