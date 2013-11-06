window.onload = function(){
  console.log("LOADED");
};

function attachListeners(){
  var searchBar = document.querySelector("input[name='handle']");
  var button = document.querySelector("button");
  // add event listener to button for "submit"

  // add event listener to search bar for enter keyup event

  // both: grab input, check value, and pass to getGithub(handle)
};

function getGithub(handle){
  var apiAddress = "https://api.github.com/users/"

  var httpReq = new XMLHttpRequest();
  httpReq.open(apiAddress);
  httpReq.send();
  var account = JSON.parse(httpReq.responseText);
  return account
};

function displayGithub(account){
  var div = document.createElement("div");
  var img = document.createElement("img");
  var h2 = document.createElement("h2");
  var a = document.createElement("a");

  div.class = "user";
  img.src = account.avatar_url;
  a.href = account.url;
  a.innerHTML = account.login;

  h2.appendChild(a);
  div.appendChild(img);
  div.appendChild(h2);
  document.body.appendChild(div);
};