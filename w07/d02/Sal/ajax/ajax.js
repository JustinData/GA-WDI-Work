window.onload = function() {
  console.log("Loaded")
}

function getMovie(movie, callback) {
  window.httpRequest = new XMLHttpRequest();

  console.log("Before request.")
  console.log(httpRequest.responseText)

  httpRequest.addEventListener("load", function(){
    callback(JSON.parse(httpRequest.responseText));
  });

  httpRequest.open("GET", "http://www.omdbapi.com/?t=" + movie);
  httpRequest.send();

  console.log(httpRequest.responseText)
}

function displayMovie(movie) {
  var img = document.createElement('img');
  img.src = movie.Poster; 
  document.body.appendChild(img);
}

function alertYear(movie) {
  alert(movie.Title + " was made in " + movie.Year)
}
