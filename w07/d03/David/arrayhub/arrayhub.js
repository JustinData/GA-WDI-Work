window.onload = function() {
  console.log("LOADED!!!");
  submitForm(document.querySelector("form"));
}

function submitForm(formElement){
  var formInput = formInput = document.querySelector("input");
  formElement.addEventListener("submit", function(e){
    e.preventDefault();
    getUser(formInput.value, displayUser);
    formInput.value = "";
  }); 
}

function getUser(handle, callback) {
  window.httpRequest = new XMLHttpRequest();
  httpRequest.addEventListener("load", function(){
    callback(JSON.parse(httpRequest.responseText));
  });
  httpRequest.open('GET','https://api.github.com/users/' + handle); 
  httpRequest.send();
}

function displayUser(handleObj){
  var userDiv = document.createElement("div");
  userDiv.className = "user";
  var userImg = document.createElement("img");
  userImg.src = handleObj.avatar_url;
  var h2 = document.createElement("h2");
  var userLink = document.createElement("a");
  userLink.innerHTML = handleObj.login;
  userLink.href = handleObj.html_url

  userDiv.appendChild(userImg);
  h2.appendChild(userLink);
  userDiv.appendChild(h2)
  document.body.appendChild(userDiv);
}

