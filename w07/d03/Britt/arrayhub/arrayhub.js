window.onload = function(){
  console.log("LOADED");
  attachListeners();
};

function attachListeners(){
  var searchBar = document.querySelector("input[name='handle']");
  var form = document.querySelector("form");

  form.addEventListener("submit", function(event){
    event.preventDefault();
    var handle = searchBar.value;
    displayGithub(handle);
  });

  // add event listener to search bar for enter keyup event

  // both: grab input, check value, and pass to getGithub(handle)
};

function getGithub(handle, callback){
  var apiAddress = "https://api.github.com/users/";

  var httpReq = new XMLHttpRequest();

  httpReq.addEventListener("load", function(){
    callback(JSON.parse(httpReq.responseText));
  });

  httpReq.open("get", apiAddress + handle);
  httpReq.send();
};

function appendGithub(account){
  var div = document.createElement("div");
  var img = document.createElement("img");
  var h2 = document.createElement("h2");
  var a = document.createElement("a");

  div.class = "user";
  div.id = account.login;
  img.src = account.avatar_url;
  a.href = account.html_url;
  a.target = "_blank"
  a.innerHTML = account.login;

  // addEventListener to img tag, "dblclick", to removeChild from body
  img.addEventListener("dblclick", function(){
    var thisAccount = document.querySelector("div#" + account.login);
    document.body.removeChild(thisAccount);
  });

  h2.appendChild(a);
  div.appendChild(img);
  div.appendChild(h2);
  document.body.appendChild(div);
};

function displayGithub(handle){
  getGithub(handle, appendGithub);
};