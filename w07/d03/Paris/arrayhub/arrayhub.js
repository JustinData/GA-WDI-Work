window.onload = function() {
  console.log( "Loaded!" );
}


// function submitForm(formElement) {
//   formElement.addEventListener("submit", function(event) {
//     event.preventDefault();
//     console.log("FORM SUBMITTED!");
//     httpRequest.addEventListener("submit", function(){
//     callback(JSON.parse(httpRequest.responseText));
//     // this is the object on which we are listening. 
//     // event listeners: the value of this is the object. 
//     // post data which is the function below encodes the submitted data and sends it to the server. 
//     postData(this);
//   });
// }


// function postData(formElement) {
//   var httpRequest = new XMLHttpRequest();

//   httpRequest.addEventListener("submit");

//   httpRequest.open("POST", "/");

//   var serializedData = new FormData(formElement);
//   httpRequest.send(serializedData);
//   // need serialized data as the server is looking for a form data type, a crazy string called form-encoded data.

// } 

function getProfile(handle) {
  window.httpRequest = new XMLHttpRequest();
  httpRequest.addEventListener("load", function(){
    console.log(httpRequest.responseText);
    // call the displayMovie function within here as a callback
    // displayMovie(httpRequest.responseText);
      // callback(JSON.parse(httpRequest.responseText));
  });

  httpRequest.open("GET", "https://api.github.com/users/" + handle);
  httpRequest.send();
}

function displayImg(username){
  var img = document.createElement("img");
  img.src = username.avatar_url;
  document.div.appendChild(img);
}

function displayLink(username) {
  var url = document.createElement("a")
  url.src = username.url
  document.div.appendChild(url)
}


