//  Fundamental Objects within Tic Tac Toe

function TicTacToe(){
  this.players = 
  this.board  
  rules
  clicks 
}

function Board(){
  var board = [];
 
  var tiles = document.querySelectorAll("td");
 
  _.each(tiles, function(tile){
    board.push(tile.getAttribute("id"));
  });
 
  _.each(tiles, function(tile){
    attachListener(tile);
  });
 
  var twodboard = [[board[0], board[1], board[2]], [board[3],board[4],board[5]], [board[6], board[7],board[8]]];
 
  return twodboard;
}

function Cell(){
  vacant?
}

function Player(){

}

//  Behaviors of different elements in Tic Tac Toe


//  Bring them together

function newGame(){

}