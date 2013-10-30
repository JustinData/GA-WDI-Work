window.onload = function(){

var deposit = document.getElementById("checking_deposit");
var balance = 0;

deposit.onclick = function(){
  var amount = document.getElementById("checking_amount").value;
    balance += parseInt(amount);

  var displayedBalance = document.getElementById("checking_balance");
  displayedBalance.innerHTML = balance;
};

}