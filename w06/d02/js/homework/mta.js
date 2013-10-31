var lline = ["8th", "6th", "Union Square", "3rd", "1st"];
var nline = ["Times Square", "34th", "28th-n", "23rd-n", "Union Square", "8th"];
var sline = ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"];

function Lines(array){
  this.stops = []
  for(var x = 0; x < array.length; x++){
    this.stops.push(array[x]);
}

function MTA(){
  this.lines = []; 
}

var l = new Line(lline);
var n = new Line(nline);
var s = new Line(sline);

var MTALine = new MTA();

MTALine.lines.push(l);
MTALine.lines.push(n);
MTALine.lines.push(s);

Line.prototype.distance = function(on, off, line) {
  var tripDistance = Math.abs( MTALine.lines[line].stops.indexOf(on) - MTALine.lines[line].stops.indexOf(off) );
  return tripDistance; 
};

MTALine.prototype.trip = function(){
  var startLine = prompt("What train do you want to take?");
  var getOn = prompt("What stop do you want to get on?");
  var getOff = prompt("What stop do you want to get off?");
  if( startLine === 'l'){
    var i = 0;
  }else if( startLine === 'n'){
    var i = 1;
  }else{
    var i = 2;
  }
  alert( "Your trip is: " + MTALine.lines[i].distance(getOn,getOff,i)+ " stops.");

}
MTALine.trip();

