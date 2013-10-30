// window.onload = ;

function Account(){
   this.balance = 0;
};

Account.prototype.withdraw = function(amount) {
   this.balance -= amount;

};

Account.prototype.deposit = function(amount) {
   this.balance += amount;
};

var checking = new Account(0);
var savings = new Account(0);

var c = document.getElementById("checking_balance");
var s = document.getElementById("savings_balance");

// function updateBalance() {

// }


// c.addEventListener("click", updateBalance, false);



// ##User Stories
// - As a user, I want to deposit money into one of the bank accounts
// - As a user, I want to withdraw money from one of the bank accounts
//   - Make sure the balance in an account can't go negative. If a user tries to withdraw more money than exists in the account, ignore the transaction.
// - As a user, I want overdraft protection
//   - What happens when the user wants to withdraw more money from the checking account than is in the account? 
//   - If a withdrawal can be covered by the balances in both accounts, take the balance of the account withdrawn from down to $0 and take the rest of the withdrawal from the other account.
//   - If the withdrawal amount is more than the combined account balance, ignore it.
// - As a user, I want the color of my back account to reflect it's balance (there's a CSS class called .zero already written for this!)
// - Are there ways to refactor your code to make it DRYer or more Object-Oriented?
