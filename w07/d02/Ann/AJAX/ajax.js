window.onload = function() {
  console.log("LOADED!"); 

  var movie = JSON.parse(item); 

} 

function getMovie(movie, callback){
    window.httpRequest = new XMLHttpRequest();

    httpRequest.addEventListener("load", function(){
      callback(JSON.parse(httpRequest.responseText)); 
    }); 
    
    httpRequest.open("GET", "http://omdbapi.com/?t=" + movie);
    httpRequest.send();
  }


  function displayMovie(movie){
        var img = document.createElement("img");
        img.src = movie.Poster; 
        document.body.appendChild(img); 
    } 

  function alertYear(movie){
    alert(movie.Title + " was made in " + movie.Year); 
  }

