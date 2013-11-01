
board = [[0,0],[0,1],[0,2],[1,0],[1,1],[1,2],[2,0],[2,1],[2,2]];

// 0 1 2
// 3 4 5
// 6 7 8


function makeMove(index, player){
    var subArray = board[index];
    if (subArray.length == 2) {
    board[index].push(player);
    console.log(board); 
  }
    else {
      return false;
     }
}

function checkIfWon(){
 //  row = 0
 // for(col=0; col<ticTacToeBoard.length; col++){
 //  row = 0;
 //  if(ticTacToeBoard[row][col]==ticTacToeBoard[row+1][col]==ticTacToeBoard[row+2][col]){
 //    win = true;
 //  }
 //  row++;
  
}





window.onload = function() {
  makeMove(2, "X");
}


