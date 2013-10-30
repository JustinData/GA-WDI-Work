window.onload = function(){
  console.log("loaded!");
  // NOW DO THIS DOM SHIT
  var checkingDepositButton = document.getElementById("checking_deposit");
  var checkingDebitButton = document.getElementById("checking_withdraw");
  var savingsDepositButton = document.getElementById("savings_deposit");
  var savingsDebitButton = document.getElementById("savings_withdraw");
}

// Define Account Object
function Account (type, balance){
  this.type = type;
  this.balance = balance;
}

// Add Prototype to Deposit to Account
// expect that it returns the new balance if the deposit was successful.
Account.prototype.deposit = function(amount){
  this.balance += amount;
  return this.balance;
}

// Add Prototype to Debit from Account
// can't go negative
// overdraft protection
Account.prototype.debit = function(amount, otherAccount){
  if((this.balance - amount) >= 0){
    this.balance = this.balance - amount;  
  } else {
      total = this.balance + otherAccount.balance;
      if((total - amount) >= 0) {
        this.balance -= amount;
        otherAccount.balance += this.balance;
        this.balance = 0;
      } else {
        console.log("YOU DONT HAVE ENOUGH MONEY");
      }
    }
  return this.balance;
}


//create the two accounts
myChecking = new Account("checking", 0);
mySavings = new Account("savings", 0);

myChecking.deposit(100);
mySavings.deposit(100);





// checkingDepositButton.onclick = function(){
//   //take the value from the field box
//   value = document.getElementById('checking_amount').value;
//   myChecking.deposit(value); 
// };

// set up checking deposit on click to get amount from input id = checking amount and do checking.deposit
// set up checking debit on click to get amount from input id = checking amount and do checking.debit

//inside an infinite loop
//  wait for onclicks do action
//  update display









