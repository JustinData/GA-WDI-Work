window.onload = function(){
  
  console.log("ready to draw");

  elSetColor = document.getElementById("set-color");
  colorField = document.getElementById("color-field");
  brush = document.getElementsByClassName("brush");

  elSetColor.addEventListener("click", function(){
    //get the value
    value = colorField.value
    brush[0].style.backgroundColor = value;

    console.log("you clicked");
  });
}