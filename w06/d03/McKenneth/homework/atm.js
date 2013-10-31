window.onload = function(){

// CHECKING ACCOUNT
  var checkingBalance = 0;
  var depositChecking = document.getElementById("checking_deposit");
  var withdrawChecking = document.getElementById("checking_withdraw");
  var displayedChecking = document.getElementById("checking_balance");
  var overdraft = 0;
// Checking Buttons

depositChecking.onclick = function(){
  var amount = document.getElementById("checking_amount").value;
    checkingBalance += parseInt(amount);
    displayedChecking.innerHTML = checkingBalance;
};

withdrawChecking.onclick = function(){
  var amount = document.getElementById("checking_amount").value;
    if (amount <= checkingBalance ){
    checkingBalance -= parseInt(amount);
    }else if (amount > checkingBalance && savingsBalance >= (amount-checkingBalance)){
      savingsBalance -= (parseInt(amount)-checkingBalance);
      checkingBalance -= checkingBalance;
    }
    displayedChecking.innerHTML = checkingBalance;
    displayedSavings.innerHTML = savingsBalance;
};

// SAVINGS ACCOUNT

var savingsBalance = 0;
var depositSavings = document.getElementById("savings_deposit");
var withdrawSavings = document.getElementById("savings_withdraw");
var displayedSavings = document.getElementById("savings_balance");

 // Savings Buttons 

 depositSavings.onclick = function(){
  var amount = document.getElementById("savings_amount").value;
    savingsBalance += parseInt(amount);
    displayedSavings.innerHTML = savingsBalance;
 };

 withdrawSavings.onclick = function(){
  var amount = document.getElementById("savings_amount").value;
  if (amount <= savingsBalance){
  savingsBalance -= parseInt(amount);
  }
  displayedSavings.innerHTML = savingsBalance;
 };




}