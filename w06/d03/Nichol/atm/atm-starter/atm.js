window.onload = function(){
  console.log("loaded!");
  // NOW DO THIS DOM SHIT
  var checkingDepositButton = document.getElementById("checking_deposit");
  var checkingDebitButton = document.getElementById("checking_withdraw");
  var savingsDepositButton = document.getElementById("savings_deposit");
  var savingsDebitButton = document.getElementById("savings_withdraw");

  checkingDepositButton.onclick = function(){
    //get the value
    value = document.getElementById('checking_amount').value;
    value = parseInt(value);
    //do the work
    myChecking.deposit(value);
    //update the display

    //get the elementID
    balanceElement = document.getElementById('checking_balance');
    balanceElement.innerHTML = myChecking.balance;

    //if not 0 update class
    if(myChecking.balance > 0){
      document.getElementById("checking_balance").className = "balance";
      }
  };

  checkingDebitButton.onclick = function(){
    //get the value
    value = document.getElementById('checking_amount').value;
    value = parseInt(value);
    //do the work
    myChecking.debit(value, mySavings);
    //update the display
    balanceElement = document.getElementById('checking_balance');
    balanceElement.innerHTML = myChecking.balance;
    balanceElement = document.getElementById('savings_balance');
    balanceElement.innerHTML = mySavings.balance;

    //if 0 update class
    if(myChecking.balance == 0){
      document.getElementById("checking_balance").className = "zero";
      }

    if(mySavings.balance == 0){
      document.getElementById("savings_balance").className = "zero";
      }  
  };

  savingsDepositButton.onclick = function(){
    //get the value
    value = document.getElementById('savings_amount').value;
    value = parseInt(value);
    //do the work
    mySavings.deposit(value);
    //update the display

    //get the elementID
    balanceElement = document.getElementById('savings_balance');
    balanceElement.innerHTML = mySavings.balance;

    //if not 0 update class
    if(mySavings.balance > 0){
      document.getElementById("savings_balance").className = "balance";
      }

  };

  savingsDebitButton.onclick = function(){
    //get the value
    value = document.getElementById('savings_amount').value;
    value = parseInt(value);
    //do the work
    mySavings.debit(value, myChecking);
    //update the display

    //get the elementID
    balanceElement = document.getElementById('checking_balance');
    balanceElement.innerHTML = myChecking.balance;
    balanceElement = document.getElementById('savings_balance');
    balanceElement.innerHTML = mySavings.balance;
  
    //if 0 update class
    if(mySavings.balance == 0){
      document.getElementById("savings_balance").className = "zero";
      }
    if(myChecking.balance == 0){
      document.getElementById("checking_balance").className = "zero";
      }  
  };

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
        alert("YOU DONT HAVE ENOUGH MONEY");
      }
    }
  return this.balance;
}


//create the two accounts
myChecking = new Account("checking", 0);
mySavings = new Account("savings", 0);


myChecking.deposit(0);
mySavings.deposit(0);









