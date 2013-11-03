function TicTacToe() {
  this.r0 = ["aaa", "aaa", "aaa"];
  this.r1 = ["aaa", "aaa", "aaa"];
  this.r2 = ["aaa", "aaa", "aaa"];
  this.allRows = [this.r0, this.r1, this.r2];

  this.currentColor = "black";
}

TicTacToe.prototype.allColumns = function() {
  return _.zip(this.r0, this.r1, this.r2);
}

TicTacToe.prototype.setColor = function() {
  this.currentColor = this.currentColor === "red" ? "black" : "red";
  return this.currentColor;
}

TicTacToe.prototype.makeMove = function(rowNum, columnNum) {
  if ( this.allRows[rowNum][columnNum] === "aaa" ) {
    this.allRows[rowNum][columnNum] = this.setColor();
  } else {
    alert("Spot already taken!");
  }
  
  if ( this.checkWinner() ) {
    alert( "Winner!" );
  } else if ( this.checkTie() ) {
    alert( "A tie!" );
  }
}

TicTacToe.prototype.isCurrentColor = function(item) {
  return item === this.currentColor;
}

TicTacToe.prototype.isEntireRowCurrentColor = function(row) {
  // because "this" inside _ refers to scope defined at function creation
  var game = this;
  return _.every(row, function(e) { return e === game.currentColor; })
}

TicTacToe.prototype.anyThreeInRow = function(allRowsOrColumns) {
  var game = this;
  return _.some(allRowsOrColumns, function(e) {
    return game.isEntireRowCurrentColor(e);
  })
}

TicTacToe.prototype.checkDiagonalCombo = function() {
  var diag1 = [this.r0[0], this.r2[2]];
  var diag2 = [this.r0[2], this.r2[0]];

  if ( this.r1[1] === this.currentColor ) {
    return this.isEntireRowCurrentColor(diag1) || this.isEntireRowCurrentColor(diag2);
  }
}

TicTacToe.prototype.checkWinner = function() {
  return this.anyThreeInRow(this.allRows) || this.anyThreeInRow(this.allColumns()) || this.checkDiagonalCombo();
}

TicTacToe.prototype.checkTie = function() {
  var game = this;
  return _.every(this.allRows, function(row) {
    return _.every(row, function(coordinate) { return coordinate != "aaa"; })
  })
}

TicTacToe.prototype.setDiv = function(id) {
  var div = document.getElementById(id);
  if ( div.style.backgroundColor === "" ) {
    div.style.backgroundColor = this.currentColor;
  }
}

window.onload = function() {
  var tic = new TicTacToe;

  var play = function(div) {
    tic.setDiv(div.id);
    tic.makeMove(div.id[1], div.id[3]);
  }

  r0c0 = document.getElementById("r0c0");
  r0c0.addEventListener('click', function() {
    play(r0c0);
  })
  r0c1 = document.getElementById("r0c1");
  r0c1.addEventListener('click', function() {
    play(r0c1);
  })
  r0c2 = document.getElementById("r0c2");
  r0c2.addEventListener('click', function() {
    play(r0c2);
  })

  r1c0 = document.getElementById("r1c0");
  r1c0.addEventListener('click', function() {
    play(r1c0);
  })
  r1c1 = document.getElementById("r1c1");
  r1c1.addEventListener('click', function() {
    play(r1c1);
  })
  r1c2 = document.getElementById("r1c2");
  r1c2.addEventListener('click', function() {
    play(r1c2);
  })

  r2c0 = document.getElementById("r2c0");
  r2c0.addEventListener('click', function() {
    play(r2c0);
  })
  r2c1 = document.getElementById("r2c1");
  r2c1.addEventListener('click', function() {
    play(r2c1);
  })
  r2c2 = document.getElementById("r2c2");
  r2c2.addEventListener('click', function() {
    play(r2c2);
  })
}