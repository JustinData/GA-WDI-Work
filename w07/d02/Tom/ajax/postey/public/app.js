window.onload = function(){
  submitForm(document.querySelector("form"));
}

function submitForm(formElement) {
  // listening for the form element to be submitted
  formElement.addEventListener("submit", function(event) {
    event.preventDefault();
    console.log("Form Submitted");
    // in this context the value of this is the formElement that is referenced
    postData(this);
  });
}

function postData(formElement) {
  var httpRequest = new XMLHttpRequest();

  //httpRequest.addEventListener("load", callback);

  httpRequest.open("POST", "/");


  var serializedData = new FormData(formElement);
  httpRequest.send(serializedData);
}