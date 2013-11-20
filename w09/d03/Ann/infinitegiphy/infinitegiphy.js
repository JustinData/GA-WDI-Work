
function getGIPHY() {
  $('form').on('submit', function(e){
    e.preventDefault(); 

    var searchField = $('search').val(); 
    var querySearch = searchField.replace(" ", "+"); 
    var apiKey = "&api_key=dc6zaTOxFJmzC" 
    // var giphLimit = "&limit=100"

    $.ajax({
      url: "http://api.giphy.com/v1/gifs/search?q=" + querySearch + apiKey,
      method: "GET",
      context: this,
      success: function(response){
        console.log(response);
      }
    });
}); 
 