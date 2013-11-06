window.onload = function(){
  alert("poop");
}

function getMovie(movie){
  // new XMLHttpRequest object -- adding window. makes it global
  window.httpRequest = new XMLHttpRequest();

  // adds event listener -- load event fired when response received
  httpRequest.addEventListener("load", function(){
    console.log(httpRequest.responseText);
  })
  // opens and sends request to the server provided
  httpRequest.open("GET", "http://www.omdbapi.com/?t=" + movie);
  httpRequest.send();
  
}