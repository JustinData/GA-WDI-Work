window.onload = function(){
  game();
}; 

var counter = 0;


function returnCounter(count){

    if(count % 2 === 0){
      piece[count - 1].className = "box_cell black";
    }else{
      piece[count - 1].className = "box_cell red";
    }
  
}

function reply_click(clicked_id){
  var count = counter;
  var piece = document.getElementById(clicked_id);
  if(count % 2 === 0){
      piece.className = "box_cell black";
    }else{
      piece.className = "box_cell red";
    }
}
var game = function(){

  var box = document.querySelector("tbody");
  box.onclick = function(event){
    counter++;
  };

  // var piece = document.querySelectorAll(".box_cell");
  
  // piece.onclick = function(event){
  //   alert("shit");
  //   if (counter % 2 === 0){
  //     piece.className = "box_cell black";
  //   }else{
  //     piece.className = "box_cell red";
  //   };

  // };



};