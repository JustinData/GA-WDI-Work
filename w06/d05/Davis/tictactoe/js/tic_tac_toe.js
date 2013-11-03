// instantiate object
  // inside array
    // r0, r1, r2 arrays
    // _.zip method
      // c0, c1, c2
    // check to see if all color
      // r1[1] == color
        // r0[0] == color && r2[2] == color || r2[0] == color && r0[2] == color

function TicTacToe() {
  this.r0 = ["aaa", "aaa", "aaa"];
  this.r1 = ["aaa", "aaa", "aaa"];
  this.r2 = ["aaa", "aaa", "aaa"];
  this.allRows = [this.r0, this.r1, this.r2];
  // this.allColumns = _.zip(this.allRows);

  this.currentColor = "black";

}

TicTacToe.prototype.allColumns = function() {
  return _.zip(this.r0, this.r1, this.r2);
}

TicTacToe.prototype.setColor = function() {
  this.currentColor = this.currentColor === "red" ? "black" : "red";
  return this.currentColor;
}

var checkIfColor = function(item, color) {
  return item === color;
}

var checkIfAllColor = function(row, color) {
  _.every(row, function(coordinate) { checkIfColor(coordinate, color); });
}

TicTacToe.prototype.makeMove = function(rowNum, columnNum) {
  if ( this.allRows[rowNum][columnNum] != "aaa" ) { alert("Spot already taken!") };
  
}

// var anyThreeInARow = function

TicTacToe.prototype.checkWinner = function(color) {
  _.any(this.allRows, function(row) {
    // check if every coordinate is color
    checkIfAllColor(row, color);
  })

  _.any(this.allColumns, function(row) {
    // check if every coordinate is color
    if ( checkIfAllColor(row, color) ) { alert( color + " wins!" ); }
  })
}

var tic = new TicTacToe;