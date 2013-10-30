var n_line = ["times square", "34th-n", "28th-n", "23rd-n", "union square", "8th-n"]

var l_line = ["8th-l", "union square", "3rd-l", "1st-l"]

var six_line = ["grand central", "33rd-6", "28th-6", "22rd-6", "union square", "astor place"]


function Line(stops_list) {
  this.stops = stops_list;
}

// .distance method that returns number of stops bet 2 stops
  // take subway line w/ end at 2nd stop
  // iterate through from begin index to end index
    // add +1 to counter in each iteration
Line.prototype.distance = function(stop1, stop2) {
  return Math.abs( this.stops.indexOf(stop1) - this.stops.indexOf(stop2) );
}
