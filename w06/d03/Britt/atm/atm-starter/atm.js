function Account(){
  this.balance = 0
};

Account.prototype.deposit = function(amount){
  return this.balance += amount;
};

Account.prototype.withdraw = function(amount){
  if (amount > this.balance){
    return false;
  } else{
    return this.balance -= amount;
  };
};

var checking = new Account();

var savings = new Account();