document.onload = function(){
  console.log("LOADED!!");
}

var hello = function(name) { return "hello: " + name; };
var moeCreator = _.wrap(hello, function(func) {
  return "before, " + func("moe") + ", after";
});