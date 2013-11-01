var counter = 0;
var player ;

function returnPlayer(counter){
  if(counter % 2 === 0) {
    player = "Red"
  } else {
    player = "Black";
  };
  return player;
}

var game = function(){
  box = document.querySelector("tbody");
  box.onclick = function(event) {
  counter++ ;
  // console.log(counter);
  returnPlayer(counter);
  };
}
  
window.onload = function(){ 
  alert("loaded")
  game();
}

