window.onload = function() {
  console.log("ello derr");
  submitForm(document.querySelector("form"));
}

function submitForm(formElement) {
  formElement.addEventListener('submit', function(e){
    e.preventDefault();
    console.log("FORM SUBMITTED!");
    postData(this);
  });
}

function postData(formElement) {
  var httpRequest = new XMLHttpRequest();

  // httpRequest.addEventListener("load", callback);

  httpRequest.open('POST', "/");

  var serializedData = new FormData(formElement);
  httpRequest.send(serializedData);
}

