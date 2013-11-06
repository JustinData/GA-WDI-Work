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
  var parsed = JSON.parse(httpReq.responseText);
  return parsed
};