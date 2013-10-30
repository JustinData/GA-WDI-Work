window.onload = function() {
  console.log("LOADED!");
}

var stuff = [1,2,3]

function WDIToolKit() {

}

WDIToolKit.prototype.forEach = function(arr, action) {
  for ( var i = 0; i < arr.length; i++ ) {
    action(arr[i]);
  }
}

WDIToolKit.prototype.each = WDIToolKit.prototype.forEach;

WDIToolKit.prototype.map = function(arr, action) {
  var newArray = [];

  this.each(arr, function(element) {
    newArray.push( action(element) )
  })

  return newArray;
}

WDIToolKit.prototype.sample = function(arr) {
  var index = Math.floor( (Math.random() * (arr.length - 1)) + 1 );
  return arr[index];
}

WDIToolKit.prototype.select = function(arr, condition) {
  var newArray = [];

  this.each(arr, function(element) {
    if ( condition(element) ) {
      newArray.push( element );
    }
  })

  return newArray;
}

WDIToolKit.prototype.exists = function(arr, item) {
  return arr.indexOf(item) != -1;
}

WTK = new WDIToolKit;

