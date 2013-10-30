// ## Part 2 - MTA 


var lines = {n: ["ts", "34th", "28thn", "23rd", "US", "8th"], l: ["8th", "6th", "US", "3rd", "1st"], 6: ["GC", "33rd", "28th", "23rd", "US", "AP"] };

function Line(name) {
  this.name = name;
  this.lines = [];
}

var n = new Line("n", ["ts", "34th", "28thn", "23rd", "US", "8th"]);
var l = new Line("l", ["8th", "6th", "US", "3rd", "1st"]);
var six = new Line("six", ["GC", "33rd", "28th", "23rd", "US", "AP"]);

function SubwaySystem(name) {
  this.name = name;
  this.stations = [];
}

var mta = new SubwaySystem("mta", ["n", "l", "six"]);

SubwaySystem.prototype.takeTrip = function() {
  var onTrain = prompt("From which line would you like to onboard?");
  var onStop = prompt("From which station would you like to onboard?");
  var offTrain = prompt("From which line would you like to get off?");
  var offStop = prompt("From which station would you like to get off?");
  Alert("Your trip will have " + totalTripLength + " stops.");
}

function getTransferPoint(onTrain, offTrain) {
  var intersection = [];
  for(var i = 0; i < onTrain.length; i++){
      for(var k = 0; k < offTrain.length; k++){
          if(onTrain[i] == offTrain[k]){
              intersection.push( onTrain[i]);
              break;
          }
      }
  }
  return intersection;
}

Line.prototype.distance = function(onStop, offStop) {
  if (onTrain != offTrain) {
    //  Find out what the transfer point is
    getTransferPoint(onTrain, offTrain)
  

    // Find out the distance from our on stop to the transfer point
      var onStopIndex = mta[onTrain].indexOf(onStop);
      var onStopIntersectionIndex = mta[onTrain].indexOf(intersection);
      var beforeTransferLength = Math.abs(onStopIndex - onStopIntersectionIndex);

    // Find out the distance from our transfer point to the off stop
      var offStopIndex = mta[offTrain].indexOf(offStop);
      var offStopIntersectionIndex = mta[offTrain].indexOf(intersection);
      var afterTransferLength = Math.abs(offStopIndex - offStopIntersectionIndex);

    // Add our before transfer and after transfer stops to get the total length
      var totalTripLength = beforeTransferLength + afterTransferLength; 
  } else {
      onStopIndex = mta[onTrain].indexOf(onStop);
      offStopIndex = mta[offTrain].indexOf(offStop);
      totalTripLength = Math.abs(onStopIndex - offStopIndex);
  }
}



// run program:
// mta.takeTrip();





