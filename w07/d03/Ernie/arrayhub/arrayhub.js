window.onload = function () {
  
}

function getUser (handle) {
  window.httpRequest = new XMLHttpRequest();
  httpRequest.addEventListener('load',function(){
    console.log(httpRequest.responseText);
  });
  httpRequest.open('GET', "https://api.github.com/users/" + handle)
  httpRequest.send();
}

function displayUser (){
  
}