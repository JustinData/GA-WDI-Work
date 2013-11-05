window.onload = function () {
  console.log("loaded");
}

function getAjax(movie) {
window.httpRequest = new XMLHttpRequest();

console.log('Before Request');
console.log(httpRequest.responseText);

httpRequest.addEventListener('load', function () {
  console.log('After Load');
  console.log(httpRequest.responseText);
});

httpRequest.open("GET", "http://www.omdbapi.com/?t=" + movie);
httpRequest.send();

console.log('After Request');
console.log(httpRequest.responseText);
}