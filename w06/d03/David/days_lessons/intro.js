window.onload = function() {
  console.log(this);
}

/* OUR VERY OWN WDI TOOLKIT */

/*
 * A library of functions that inclued:
 * each() aka forEach(), map()
 *
 *
 */

function WDIToolKit(){

}

var WTK = new WDIToolKit();

WDIToolKit.prototype.forEach = function(arr, action) {
  for( var i = 0; i < arr.length; i++ ){
    action(arr[i]);
  }
 }

WDIToolKit.prototype.each = WDIToolKit.prototype.forEach

WDIToolKit.prototype.map = function map(arr, action){
  var newArray = [];
  
  this.each( arr, function(element){
    newArray.push( action(element) )
  });

  return newArray;
 }


WDIToolKit.prototype.sample = function(arr) {
  var random_index = Math.floor(Math.random() * arr.length);
  return arr[random_index];
}

WDIToolKit.prototype.select = function(arr, action) {
  var new_array = [];
  this.each(arr, function(element){
    if (action(element) === true ) {
      newArray.push( element )
    };
  });
  return new_array;
}

WDIToolKit.prototype.exists = function(arr, action) {
  
}






