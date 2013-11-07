function getMovie(movie, actionFunction){

  jQuery.getJSON("http://www.omdbapi.com/?t=" + movie, function(data){ actionFunction(data); 
  });

}


function displayMovie(movie){
  var img = document.createElement("img");
  img.src = movie.Poster;
  document.body.appendChild(img);
}

function alertYear(movie) {
  alert(movie.Title + " was made in " + movie.Year);
}

window.onload = function(){

// console.log the jQuery object
// jQuery.protoype.cljq = function(){
//   console.log(this);
//   return this;
// }

// Form
var h1 = $("<h1>").text("Find a film").appendTo($("body"));
var form = $("<form>").appendTo($("body"));
form.append( $("<label>").text("Movie Title"));
form.append( $("<input>")
              .attr({"name":"movieTitle", "type":"text"})
              .css({
                "width":"30em",
                "height":"1.2em",
                "display":"block",
                "background-color":"lightblue"
                  })
            );
form.append( $("<label>").text("Action!") );
form.append( $("<select>")
              .attr("name","action")
              .css({
                "width":"10em",
                "height":"2em",
                "display":"block"
                  })
            );
form.append( $("<button>")
              .text("Submit!")
              .css({
                "height":"2em",
                "width":"5em",
                "margin-top":"10px"})
            );

$("select").append($("<option>").attr("value", "none").html("Pck One:") );
$("select").append($("<option>").attr("value", "none").html("Show Me:") );
$("select").append($("<option>").attr("value", "none").html("Alert Me:") );

function validate(e) {
    e.preventDefault();

    if ($(this.movieTitle).val() === ""){
      alert("You need to enter a movie title!");
    } else if ($(this.typeOfAction).val() === "none") {
      alert("You need to choose an action!");
    } else {
      console.log("SUCCESSFULLY SUBMITTED");
      if ($(this.typeOfAction).val() === "alertYear") {
        getMovie( $(this.movieTitle).val(), alertYear );
      } else {
        getMovie( $(this.movieTitle).val(), displayMovie );
      }
    }
  }


// using submit instead of eventListener
form.submit( validate );

}







