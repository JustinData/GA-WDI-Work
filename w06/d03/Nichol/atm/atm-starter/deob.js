var _0x66f4 = ["balance", "name", "checking", "savings", "makeDeposit", "prototype", "value", "amount", "updateDisplay", "zero", "add", "classList", "balanceDisplay", "remove", "innerHTML", "$", "", "initialize", "_balance", "getElementById", "depositButton", "_deposit", "withdrawButton", "_withdraw", "_amount", "click", "addEventListener", "onload"];

var Account = function (name, balance) {
    this.balance = balance;
    this.name = name;
};

var checking_atm = new Account(checking, 0);
var savings_atm = new Account(saavings, 0);

Account.prototype.makeDeposit = function () {
    var _0x381dx6 = parseInt(this.amount.value);
    this.balance += _0x381dx6;
    this.updateDisplay();
};

/////////////////////////////////////////////
/////// http://jsbeautifier.org/  ///////////
/////// STOPPING HERE             //////////
////////////////////////////////////////////

Account[_0x66f4[5]][_0x66f4[8]] = function () {
    if (this[_0x66f4[0]] <= 0) {
        this[_0x66f4[12]][_0x66f4[11]][_0x66f4[10]](_0x66f4[9]);
    } else {
        this[_0x66f4[12]][_0x66f4[11]][_0x66f4[13]](_0x66f4[9]);
    };
    this[_0x66f4[12]][_0x66f4[14]] = _0x66f4[15] + this[_0x66f4[0]];
    this[_0x66f4[7]][_0x66f4[6]] = _0x66f4[16];
};
Account[_0x66f4[5]][_0x66f4[17]] = function () {
    this[_0x66f4[12]] = document[_0x66f4[19]](this[_0x66f4[1]] + _0x66f4[18]);
    this[_0x66f4[20]] = document[_0x66f4[19]](this[_0x66f4[1]] + _0x66f4[21]);
    this[_0x66f4[22]] = document[_0x66f4[19]](this[_0x66f4[1]] + _0x66f4[23]);
    this[_0x66f4[7]] = document[_0x66f4[19]](this[_0x66f4[1]] + _0x66f4[24]);
    var _0x381dx7 = this;
    this[_0x66f4[20]][_0x66f4[26]](_0x66f4[25], function (_0x381dx8) {
        _0x381dx7[_0x66f4[4]]();
    });
};
window[_0x66f4[27]] = function () {
    checking_atm[_0x66f4[17]]();
    savings_atm[_0x66f4[17]]();
    checking_atm[_0x66f4[22]][_0x66f4[26]](_0x66f4[25], function (_0x381dx8) {
        makeWithdrawal(checking_atm, savings_atm);
    });
    savings_atm[_0x66f4[22]][_0x66f4[26]](_0x66f4[25], function (_0x381dx8) {
        makeWithdrawal(savings_atm, checking_atm);
    });
    checking_atm[_0x66f4[8]]();
    savings_atm[_0x66f4[8]]();
};

function makeWithdrawal(_0x381dxa, _0x381dxb) {
    var _0x381dx6 = parseInt(_0x381dxa[_0x66f4[7]][_0x66f4[6]]);
    if (_0x381dx6 <= _0x381dxa[_0x66f4[0]]) {
        _0x381dxa[_0x66f4[0]] -= _0x381dx6;
    } else {
        if ((_0x381dx6 > _0x381dxa[_0x66f4[0]]) && (_0x381dx6 <= (_0x381dxa[_0x66f4[0]] + _0x381dxb[_0x66f4[0]]))) {
            _0x381dxb[_0x66f4[0]] = (_0x381dxa[_0x66f4[0]] + _0x381dxb[_0x66f4[0]]) - _0x381dx6;
            _0x381dxa[_0x66f4[0]] = 0;
        };
    };
    _0x381dxa[_0x66f4[8]]();
    _0x381dxb[_0x66f4[8]]();
};