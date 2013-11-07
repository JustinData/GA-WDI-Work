$(function() {




  var cat = $("<img class='cat' src= 'http://placekitten.com/300/400'/>");
  $("body").append(cat);
  var dog = $("<img class='dog' src= 'http://placedog.com/400/300'/>");
  $("body").append(dog);
  var panda = $("<img class='panda' src= 'http://www.thepetcollective.tv/wp-content/uploads/2013/05/china-panda-researchers-4.jpg'/>");
  $("body").append(panda);


  $("body").mousemove(function(event) {
  var pageCoords = "( " + event.pageX + ", " + event.pageY + " )";
  var clientCoords = "( " + event.clientX + ", " + event.clientY + " )";
  $( "span:first" ).text( "( event.pageX, event.pageY ) : " + pageCoords );
  $( "span:last" ).text( "( event.clientX, event.clientY ) : " + clientCoords );
  console.log(clientCoords);
  $( "#coords" ).text( clientCoords );
  $(".cat").css({"margin-left": event.pageX/4, "margin-top": event.pageY/4});
  $(".dog").css({"margin-left": event.pageX/10, "margin-top": event.pageY/10});
  $(".panda").css({"margin-left": event.pageX/20, "margin-top": event.pageY/20});
});

  

});

