window.onload = function(){
  $("<h1>").text("Find a Film!").appendTo( $("body") );

  var form = $("<form>").appendTo( $("body") );

  form.append( $("<label>").text("Movie Title").cljq() );
  form.append( $("<input>").cljq()
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
  $("select").append( $("<option>").attr("value", "none").html("Pick One:") );
  $("select").append( $("<option>").attr("value","displayMovie").html("Show me!") );
  $("select").append( $("<option>").attr("value","alertYear").html("Alert me!") );
  $("select").val("none"); // sets select tags default value to "none"
  form.append( $("<button>")
                .text("Submit!")
                .css({
                  "height":"2em",
                  "width":"5em",
                  "margin-top":"10px"})
              );

  function formSubmitFunction(e) {
    e.preventDefault();
    console.log("SUBMITTED");
    console.log($(this.movieTitle).val());
    console.log($(this.action).val());
  }

  form.submit( formSubmitFunction );
}

