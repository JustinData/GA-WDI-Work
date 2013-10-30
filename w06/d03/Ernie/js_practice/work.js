window.onload = function () {
  console.log("Loaded!");
}

// OUR VERY OWN WDI TOOLKIT!
// *A libarary of functions that include:
// * each() aka forEach(),map()
// *
// *


function WdiToolKit () {};

var WTK =  new WdiToolKit();

WdiToolKit.prototype.forEach = function(arr, action){
  for (var i = 0; i < arr.length; i++) {
   action(arr[i]);
  }
}


WdiToolKit.prototype.each = WdiToolKit.prototype.forEach

WdiToolKit.prototype.select = function (arr) {
  var results = [];
  if (arr == null) return results;
  if (true) {} else{};


}

WdiToolKit.prototype.sample

WdiToolKit.prototype.exists

WdiToolKit.prototype.map = function map (arr,action) {
  var newArray = [];

  this.each (arr,function (element) {
    newArray.push(action(element));
  });
  return newArray;
}


