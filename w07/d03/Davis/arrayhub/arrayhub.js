window.onload = function() {

}

function getStudent(handle) {
  httpRequest = new XMLHttpRequest();

  httpRequest.addEventListener('load', function() {
    var parsed = httpRequest.responseText;
    console.log(parsed);
  })

  httpRequest.open('GET', 'https://api.github.com/users/' + handle);
  httpRequest.send();
}