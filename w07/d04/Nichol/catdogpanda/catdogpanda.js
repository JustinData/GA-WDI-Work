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


  $("body").mousemove(function(event){

    $("h1").html(event.pageX + " " + event.pageY);

    var newx = event.pageX/1.2;
    var newy = event.pageY/1.2;

    var dogx = event.pageX/1.4;
    var dogy = event.pageX/1.4;

    var pandax = event.pageX/1.9;
    var panday = event.pageY/1.9;

    $(".cat").css({"margin-left": newx, "margin-top": newy});
    $(".dog").css({"margin-left": dogx, "margin-top": dogy});
    $(".panda").css({"margin-left": pandax, "margin-top": panday});

  });


});