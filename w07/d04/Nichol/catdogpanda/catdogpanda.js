//Code In Here gets executed once code is ready. This is like window.onload.
$(function() {
  
  var cat = $("<img class='cat' src='http://placekitten.com/200/200' />");
  $("body").append(cat);

  var dog = $("<img class='dog' src='http://placedog.com/200/200' />");
  
  // var dog = $("<img>").addClass("dog")
  //                     .attr("src", "http://placedog.com/200/200");
  
  $("body").append(dog);

  var panda = $("<img class='panda' src='http://allipadwallpapers.com/wp-content/uploads/wallpapers/Animals/thumbs/thumbs_Panda.jpg' />");
  $("body").append(panda);


});