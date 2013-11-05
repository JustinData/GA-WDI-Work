window.onload = function() {
  console.log( "JS Loaded!" );
  submitForm(document.querySelector("form"));
}

function submitForm(formElement) {
  formElement.addEventListener("submit", function(event) {
    event.preventDefault();
    console.log("FORM SUBMITTED!");
    // this is the ojbect on which we are listening. 
    // event listeners: the value of this is the object. 
    postData(this);
  });
}


function postData(formElement) {
  var httpRequest = new XMLHttpRequest();

  httpRequest.addEventListener("load");

  httpRequest.open("POST", "/");

  var serializedData = new FormData(formElement);
  httpRequest.send(serializedData);

} 