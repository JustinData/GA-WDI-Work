window.onload = console.log( "Loaded!" );


// var add = document.getElementById("checking_balance")
// <div class="balance" id="checking_balance">$0</div>

function Account(name){
  this.name = name;
  this.balance = 0;
}

this.balance = Account.prototype.checkingdeposit = function( val ){
  return (this.balance += val);
}

this.balance = Account.prototype.checkingdebit = function( val ){
  if ((this.balance -= val) >= 0) {
    return (this.balance -= val);
  } else {
    return false;
  }
}

this.balance = Account.prototype.savingsdeposit = function( val ){
  return (this.balance += val);
}

this.balance = Account.prototype.savingsdebit = function( val ){
  if ((this.balance -= val) >= 0) {
    return (this.balance -= val);
  } else {
    return false;
  }
}

var checking = new Account("checking");
var savings = new Account("savings");


