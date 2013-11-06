window.onload = function() {
  console.log("LOADED!!!");
}

function getResponse(){
var request = new XMLHttpRequest();
request.open('GET','https://api.github.com/users/dtothefp'); 
request.send();
return request.responseText;
}