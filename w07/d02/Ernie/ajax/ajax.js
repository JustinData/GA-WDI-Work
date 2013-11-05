window.onload = function () {
  console.log("loaded");
}

function getMovie(movie,callback) {
window.httpRequest = new XMLHttpRequest();

console.log('Before Request');
console.log(httpRequest.responseText);

httpRequest.addEventListener('load', function () {
  console.log('After Load');
  console.log(httpRequest.responseText);
  callback(JSON.parse(httpRequest.responseText));
});

httpRequest.open("GET", "http://www.omdbapi.com/?t=" + movie);
httpRequest.send();

console.log('After Request');
console.log(httpRequest.responseText);
}

function displayMovie(movieTitle) {
  var movieObj = JSON.parse(movieTitle);
  var img = document.createElement('img');
  img.src = movieObj.Poster;
  document.body.appendChild(img);

}

function alertYear (item) {
  var movie = JSON.parse(item);
  alert(movie.Title + "was made in" + movie.Year)
}