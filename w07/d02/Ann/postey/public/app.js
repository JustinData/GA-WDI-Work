window.onload = function(){
  console.log("JS Loaded"); 
  submitForm(document.querySelector("form")); 
}

function submitForm(formElement){
  formElement.addEventListener("submit", function(event){
    event.preventDefault(); 
    //saying DON'T submit form yet 
    console.log("FORM SUBMITTED"); 
    postData(this); 
    //the value of this will be the form element itself 
  }); 
}

function postData(formElement){
  var httpRequest = new XMLHttpRequest(); 

  //httpRequest.addEventListener("load", callback); 

  httpRequest.open("POST", "/"); 

  var serializedData = new FormData(formElement); 
  httpRequest.send(serializedData); 
}