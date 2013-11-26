function Clock() {
  this.seconds = 0;  
}

Clock.prototype.rotateSeconds = function() {
  this.seconds ++;

  var sec = $("#second-hand");
  sec.css("transform", "rotate(" + parseInt(this.seconds * 6) + "deg)");
}

Clock.prototype.rotateMinutes = function() {
  var min = $("#minute-hand");

  if ( this.seconds === 60 || (this.seconds / 60) === 1 ) {
    var minutes = this.seconds / 60;
    min.css("transform", "rotate(" + parseInt(minutes * 6) + "deg)");
  }
}

Clock.prototype.rotateHours = function() {
  var hour = $("#hour-hand");

  if ( this.seconds === 3600 || (this.seconds / 60) === 1 ) {
    var hours = this.seconds / 3600;
    hour.css("transform", "rotate(" + parseInt(hours * 6) + "deg)");
  }
}

$(function(){
  var clock = new Clock;

  setInterval(function() {
    clock.rotateSeconds();
    clock.rotateMinutes();
    clock.rotateHours();
  }, 1000);
})