window.onload = function(){

console.log("loaded!!!");

function Account(name, startingBalance) {
  this.name = name;
  this.balance = startingBalance;
}

checking = new Account("checking", 0);
savings = new Account("savings", 0);

Account.prototype.deposit = function(){
    var amountWindow = document.getElementById(this.name + "_amount");
    var balanceWindow = document.getElementById(this.name + "_balance");
    balanceWindow.innerHTML = "$" + (this.balance + parseInt(amountWindow.value));
    var displayValue = balanceWindow.innerHTML;
    displayValue = displayValue.replace('$', '');
    this.balance = parseInt(displayValue);
}

Account.prototype.withdraw = function() {
  var amountWindow = document.getElementById(this.name + "_amount");
  console.log("amount window element: " + amountWindow )
  var balanceWindow = document.getElementById(this.name + "_balance");
  if (this.balance >= parseInt(amountWindow.value)) {
    balanceWindow.innerHTML = "$" + (this.balance - parseInt(amountWindow.value));
    var displayValue = balanceWindow.innerHTML;
    displayValue = displayValue.replace('$', '');
    this.balance = parseInt(displayValue);
  } else {
    balanceWindow.innerHTML = "$" + 0;
    this.balance  = 0;
  } 
}


/******** EVENT LISTENERS *********/
var checkingDepositButton = document.getElementById("checking_deposit");
checkingDepositButton.addEventListener("click", function(){checking.deposit();}, false);

var savingsDepositButton = document.getElementById("savings_deposit");
savingsDepositButton.addEventListener("click", function(){savings.deposit();}, false);

var checkingWithdrawButton = document.getElementById("checking_withdraw");
checkingWithdrawButton.addEventListener("click", function(){checking.withdraw();}, false);

var savingsWithdrawButton = document.getElementById("savings_withdraw");
savingsWithdrawButton.addEventListener("click", function(){savings.withdraw();}, false);

// checking_balance => div where balance is diplayed
// checking_amount => form where balance is entered









var checkingWithdraw = document.getElementById("checking_deposit");
var savingsWithdraw = document.getElementById("savings_deposit");

var checkingDeposit = document.getElementById("checking_withdraw");
var savingsDeposit = document.getElementById("savings_withdraw");

var checkingAmout = document.getElementById("checking_amount");
var checkingAmout = document.getElementById("savings_amount");

// var withdraw = function(account, amount) {

// }

}