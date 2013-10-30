window.onload = function(){
var balance = 0;
var deposit = document.getElementById("checking_deposit");
var withdraw = document.getElementById("checking_withdraw");
// var amount = document.getElementById("checking_amount").value;
var displayedBalance = document.getElementById("checking_balance");

deposit.onclick = function(){
  var amount = document.getElementById("checking_amount").value;
    balance += parseInt(amount);

  // var displayedBalance = document.getElementById("checking_balance");
  displayedBalance.innerHTML = balance;
};

withdraw.onclick = function(){
  var amount = document.getElementById("checking_amount").value;
    if (amount <= balance ){
    balance -= parseInt(amount);
    }
  // var displayedBalance = document.getElementById("checking_balance");
  displayedBalance.innerHTML = balance;
};






}