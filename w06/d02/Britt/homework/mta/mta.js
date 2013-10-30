function SubwayLine(stops_ary) {
  this.stops = stops_ary;
};

SubwayLine.prototype.distance = function(station1, station2) {
  return Math.abs(this.stops.indexOf(station1) - this.stops.indexOf(station2));
};

var lTrain = new SubwayLine(["8th", "6th", "us", "3rd", "1st"]);
var nTrain = new SubwayLine(["ts", "34th", "28th-n", "23rd-n", "us", "8th-n"]);
var sTrain = new SubwayLine(["gc", "33rd", "28th-s", "23rd-s", "us", "astor"]);

var mta = {
  l: lTrain,
  n: nTrain,
  s: sTrain,
  takeTrip: tripPrompter
};

function tripPrompter() {
  var lineStart = prompt("What line are you starting at?\nfor N, type 'n'\nfor L, type 'l'\nfor 6, type 's'");

  switch(lineStart) {
    case "l":
      choice1 = mta.l;
      break;
    case "n":
      choice1 = mta.n;
      break;
    case "s":
      choice1 = mta.s;
      break;
  };

  var stationStart = prompt("What station are you starting at?\n" + choice1.stops);
  var lineEnd = prompt("What line are you getting off at?\nAgain, for N, type 'n'\nfor L, type 'l'\nfor 6, type 's'");

  switch(lineEnd) {
    case "l":
      choice2 = mta.l;
      break;
    case "n":
      choice2 = mta.n;
      break;
    case "s":
      choice2 = mta.s;
      break;
  };
  var stationEnd = prompt("What station are you getting off at?\n" + choice2.stops);

  function tripLength() {
    if(choice1 === choice2) {
      return choice1.distance(stationStart, stationEnd);
    }else {
      return choice1.distance(stationStart, "us") + choice2.distance("us", stationEnd)
    };
  };
  alert("Your trip is " + tripLength() + " stops long.");
};