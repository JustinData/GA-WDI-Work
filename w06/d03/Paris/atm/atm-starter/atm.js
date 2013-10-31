
window.onload = console.log( "Loaded!" );

// checkingDebit = document.getElementById("checking_withdraw")
// checkingBalance = document.getElementById("checking_balance")
// checkingAmount = document.getElementById("checking_amount")
// savingsDeposit = document.getElementById("savings_deposit")
// savingsDebit = document.getElementById("savings_withdraw")
// savingsBalance = document.getElementById("savings_balance")
// savingsAmount = document.getElementById("savings_amount") 

window.onload = function(){

// Account object
function Account(name){
  this.name = name;
  this.balance = 0;
}

// instances of Account
checking = new Account("checking");
savings = new Account("savings");

// Account functions
Account.prototype.deposit = function( val ){
  return (this.balance += val);
}

Account.prototype.debit = function( val, otheraccount ){
  if ((this.balance -= val) >= 0) {
    return (this.balance -= val); 
  } else if ((this.balance + otheraccount.balance) <  val) {
    return (this.balance + otheraccount.balance -= 0);
    } else { ((this.balance + otheraccount.balance -= 0) < 0);
    return null;
  };
}

// checking deposit button functionality
checkingDeposit = document.getElementById("checking_deposit");
checking.deposit = document.getElementById("checking_amount").value;
currentBalanceString = checking_balance.innerHTML;
currentBalance = parseInt(currentBalanceString[1]);
newBalance = checking.deposit + currentBalance;
checkingDeposit.onclick = newBalance;




