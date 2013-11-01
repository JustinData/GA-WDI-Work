var counter = 0;
var player ;

function returnPlayer(){
  if(counter % 2 === 0) {
    player = "red";
  } else {
    player = "black";
  };
  return player;
}

var game = function(){
  cells = document.querySelectorAll("td");

  _.each(cells, function(cell){
    cell.addEventListener("click", function(){
      var player = returnPlayer();
      if (this.className === "box_cell") {
        counter++ ;
        this.className = "box_cell " + player;
      } else {
        return;
      };
    });
  });
}
  
window.onload = function(){ 
  game();
}