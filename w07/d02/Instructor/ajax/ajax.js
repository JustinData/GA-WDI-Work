window.onload = function() {
  console.log("Loaded!");
}

function getMovie(movie) {
  window.httpRequest = new XMLHttpRequest();

  console.log("Before request.");
  console.log(httpRequest.responseText);

  httpRequest.addEventListener("load", function(){
    console.log("After Load.");
    console.log(httpRequest.responseText);
  });

  httpRequest.open("GET", "http://www.omdbapi.com/?t=" + movie);
  httpRequest.send();

  console.log("After request.");
  console.log(httpRequest.responseText);
}