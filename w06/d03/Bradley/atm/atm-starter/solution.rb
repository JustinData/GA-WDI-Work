["balance", "name", "checking", "savings", "makeDeposit", "prototype", "value", "amount", "updateDisplay", "zero", "add", "classList", "balanceDisplay", "remove", "innerHTML", "$", "", "initialize", "_balance", "getElementById", "depositButton", "_deposit", "withdrawButton", "_withdraw", "_amount", "click", "addEventListener", "onload"];
var Account = function (name, balance) {
    this.balance = balance;
    this.name = name;
};
var checking_atm = new Account(checking, 0);
var savings_atm = new Account(savings, 0);
Account.prototype.makeDeposit = function () {
    var _0x381dx6 = parseInt(this.amount.value); 
    this.balance += _0x381dx6;
    this.updateDisplay();
};
Account.prototype.updateDisplay = function () {
    if (this.balance <= 0) {
        this.balanceDisplay.classList.add(zero);
    } else {
        this.balanceDisplay.classList.remove(zero);
    };
    this.balanceDisplay.innerHTML = "$" + this.balance;
    this.amount.value = "";
};
Account.prototype.initialize = function () {
    this.balanceDisplay = document.getElementById(this.name + _0x66f4[18]);
    this.depositButton = document.getElementById(this.name + _0x66f4[21]);
    this[_0x66f4[22]] = document.getElementById(this.name + _0x66f4[23]);
    this.amount = document.getElementById(this.name + _0x66f4[24]);
    var _0x381dx7 = this;
    this.depositButton.addEventListener(_0x66f4[25], function (_0x381dx8) {
        _0x381dx7.makeDeposit();
    });
};
window[_0x66f4[27]] = function () {
    checking_atm.initialize();
    savings_atm.initialize();
    checking_atm[_0x66f4[22]].addEventListener(_0x66f4[25], function (_0x381dx8) {
        makeWithdrawal(checking_atm, savings_atm);
    });
    savings_atm[_0x66f4[22]].addEventListener(_0x66f4[25], function (_0x381dx8) {
        makeWithdrawal(savings_atm, checking_atm);
    });
    checking_atm.updateDisplay();
    savings_atm.updateDisplay();
};

function makeWithdrawal(_0x381dxa, _0x381dxb) {
    var _0x381dx6 = parseInt(_0x381dxa.amount.value);
    if (_0x381dx6 <= _0x381dxa.balance) {
        _0x381dxa.balance -= _0x381dx6;
    } else {
        if ((_0x381dx6 > _0x381dxa.balance) && (_0x381dx6 <= (_0x381dxa.balance + _0x381dxb.balance))) {
            _0x381dxb.balance = (_0x381dxa.balance + _0x381dxb.balance) - _0x381dx6;
            _0x381dxa.balance = 0;
        };
    };
    _0x381dxa.updateDisplay();
    _0x381dxb.updateDisplay();
};