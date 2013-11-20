window.onload = function(){
  console.log("LOADED!!");


  function getAjax(gif, callback){
  var httpRequest = new XMLHttpRequest();
  httpRequest.addEventListener('click', function(){
    callback(JSON.parse(httpRequest.responseText));
  })
  httpRequest.open("GET", "http://api.giphy.com/v1/gifs/recent?api_key=dc6zaTOxFJmzC")
  httpRequest.send()
  }

  function submitForm(formElement){
  formElement.addEventListener("submit", function(event){
    event.preventDefault();
    console.log("Search Sent!");
    postData(this);
  });
  }

  function postData(formElement){
  var httpRequest = new XMLHttpRequest();
  httpRequest.open("POST", "/");
  var serializedData = new FormData(formElement);
  httpRequest.send(serializedData);
  }

  function displayGif(gif){
  var img = document.createElement("Obj");
  img.src =
  document.body.appendChild(img);
}

}
  button.onclick = inputEvent;
 button.onclick = function(event) {

    };
  
    return button;