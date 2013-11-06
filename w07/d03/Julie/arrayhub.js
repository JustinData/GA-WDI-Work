



function makeDiv(requestData){
    var text = requestData.responseText;
    var objResponse = JSON.parse(text);
    var gitDiv = document.createElement("div");
    gitDiv.setAttribute("class", "user");
    document.body.appendChild(gitDiv);
    var img = document.createElement("img");
    img.src = objResponse.avatar_url;
    gitDiv.appendChild(img);
    var header = document.createElement("h2");
    var link = document.createElement("a");
    link.href = objResponse.url;
    link.innerText = objResponse.login;
    gitDiv.appendChild(header);
    header.appendChild(link);
}



function getUser(handle){
  window.httpRequest = new XMLHttpRequest();
  httpRequest.addEventListener("load", function(){


    makeDiv(httpRequest);


  });
  httpRequest.open("GET", "https://api.github.com/users/" + handle);

  httpRequest.send();
}


