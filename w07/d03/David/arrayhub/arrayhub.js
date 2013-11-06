window.onload = function() {
  console.log("LOADED!!!");
}

function getResponse(){
var request = new XMLHttpRequest();
request.open('GET','https://api.github.com/users/dtothefp'); 
request.send();
return request.responseText;
}

var response = request.responseText;
response = JSON.parse(response);

var userDiv = document.createElement("div");
userDiv.className = "user";
var userImg = document.createElement("img");
userImg.src = response.avatar_url;
var h2 = document.createElement("h2");
var userLink = document.createElement("a");
userLink.innerHTML = response.login;
userLink.href = response.html_url

userDiv.appendChild(userImg);
h2.appendChild(userLink);
userDiv.appendChild(h2)
document.body.appendChild(userDiv);

