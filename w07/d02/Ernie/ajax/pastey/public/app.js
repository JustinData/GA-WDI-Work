window.onload = function () {
  console.log('loaded');
  submitForm(document.querySelector('form'));
}

function submitForm (formElement) {
  formElement.addEventListener('submit', function (event) {
    event.preventDefault();
    console.log('Form Submitted');
    postData(this);
    this.reset();
  });
}

function postData (formElement) {
  var httpRequest = new XMLHttpRequest();

httpRequest.addEventListener('load', function(){
  window.response = this.responseText;
  console.log(this.responseText);
});

  httpRequest.open("POST", '/');

  var serializeData = new FormData(formElement);

  httpRequest.send(serializeData);
}