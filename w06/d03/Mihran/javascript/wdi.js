window.onload = function(){
  console.log(this);
}

function WDIToolKit(){}

WDIToolKit.prototype.forEach = function(arr,action) {
  for(var i = 0; i< arr.length; i++){
    action(arr[i]);
  }
}

WDIToolKit.prototype.each = WDIToolKit.prototype.forEach

WDIToolKit.prototype.map = function(arr, action){
  var newArray = [];
  this.each(arr, function(element){
    newArray.push(action(element));
  });

  return newArray;
}


WDIToolKit.prototype.sample = function(arr, action){
  var rand = arr[Math.round(Math.random() * arr.length) - 1];
  return rand; 
}


WDIToolKit.prototype.select = function(arr, action){
  var newArray = [];
  this.each(arr, function(element){
    if (action(element) === true){
      newArray.push(action(element));
    }
  });
  return newArray;
}

WDIToolKit.prototype.exists = function(arr, action) {
  var selects_result = this.select(arr, action);

  if (selects_result.length > 0) {
    return selects_result[0];
  } else {
    return false;
  }
}

var WTK = new WDIToolKit();