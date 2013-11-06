window.onload = function () {
  console.log('loaded');
}

function submitForm (formElement) {
  formElement.addEventListener('submit', function (event) {
    event.preventDefault();
    console.log('Form Submitted');
    postData(this);
  });
}

function postData (formElement) {
  var httpRequest = new XMLHttpRequest();

  //httpRequest.addEventListener('load', callback );

  httpRequest.open("POST", '/');

  var serializeData = new FormData(formElement);

  httpRequest.send(serializeData);
}