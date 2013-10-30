window.onload = function () {
  
function Account(startingBalance){
    this.balance = startingBalance;
 };

Account.prototype.balance = function(account) {
  return this.balance
 };

Account.prototype.deposit = function(amount) {
  this.balance = this.balance + amount;
  return this.balance;
};

Account.prototype.withdraw = function (amount) {
 if(this.balance >= amount){
    this.balance = this.balance - amount
    return this.balance;
  }else{
    (this.balance < amount)
    return "We cannot process your transaction!"
  }
}

};

checking = new Account(0);
savings = new Account(0);