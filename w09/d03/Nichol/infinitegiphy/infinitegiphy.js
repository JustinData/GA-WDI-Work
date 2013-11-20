var giphyResults = [];
var count = 0

function storeGiphyResults(serverResponse){
    console.log("these are your results");
    console.log(serverResponse);

    giphyResults = [];
    count = 0;

    for(var i=0; i<serverResponse.data.length; i++){
      giphyResults.push(serverResponse.data[i].images.fixed_height.url);
    } 
}

function addGiphToPage(){
  console.log("look at that beautiful giph added to the page!");

  var myimg = $('<img src=' + giphyResults[count] + '>');

  $('body').append(myimg);

  count++;
  console.log(count);
}

window.onload = function(){

  console.log("giphy");

  var form = $('form');

  form.submit( function( event ) {
    event.preventDefault();

    //get the search term
    var searchTerm = $('input').val();

    // create ajax request with the search term
    // FIXME: Only works for one word searchTerm
    $.ajax({
        url: "http://api.giphy.com/v1/gifs/search?q=" + searchTerm + "&api_key=dc6zaTOxFJmzC&limit=100",
        type: "GET",
        success: storeGiphyResults
    });
  });

  //set up the listener for the attach a gif button
  var button = $('#add')
  button.click(addGiphToPage);


}