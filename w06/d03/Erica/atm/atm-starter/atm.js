// Account Object
function Account(name) {
  this.name = name;
  this.balance = 0;
}

// Add Deposit function which returns the new balance
Account.prototype.deposit = function(depositAmount){
  this.balance = this.balance + depositAmount;
}

// Add Withdrawal function which returns the new balance
Account.prototype.withdrawal = function(withdrawalAmount){
  if(withdrawalAmount > this.balance){
    alert("YEAH RIGHT");
  } else {
    this.balance = this.balance - withdrawalAmount;
  }
}

