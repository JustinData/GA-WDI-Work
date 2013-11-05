window.onload = function(){
  console.log("LOADED!");
}

function getMovie(movie){
  var httpRequest = new XMLHttpRequest();

  httpRequest.addEventListener("load", function(){
    console.log("After Load.");
    console.log(httpRequest.responseText)
  });

  httpRequest.open("GET", "http://www.omdbapi.com/?t=" + movie);
  httpRequest.send();
};