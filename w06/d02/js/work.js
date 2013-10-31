window.onload = function() {
  console.log("FULLY LOADED!");
}

var dwarrow = ["Doc", "Grumpy", "Happy", "Sneezy", "Dopey", "Sleepy", "Bashful"];

// say "Hi ho! My name is..."

function announceDwarrow() {
  for (var i = 0; i <= dwarrow.length-1; i++) {
    console.log("Hi ho! My name is " + dwarrow[i]);
  }
  return "All dwarrow announced!";
}

function forEach(arr, action) {
  for (var i = 0; i < arr.length - 1; i++) {
    action(arr[i]);
  }
  return "All dwarrow announced!";
}

function announceDwarrow2() {
  forEach(dwarrow, function (dwarf) { 
    console.log("Hi ho! My name is " + dwarf);
  });
  return "All dwarrow announced!";
}

var colors =  ["red", "blue", "green", "orange"];
function map(colors, function(color) {

});
