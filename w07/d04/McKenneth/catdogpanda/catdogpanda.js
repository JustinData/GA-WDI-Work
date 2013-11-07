$(function(){
  addAnimals();
});

function addAnimals(){
  var kitty = $("<img>").attr("src", "http://31.media.tumblr.com/a9186ac431436b5646f6260687f5e3ec/tumblr_mpxezeTo3K1qeyp6yo6_400.gif").addClass("cat").appendTo($("body"));
  var doggy = $("<img>").attr("src", "http://upload.wikimedia.org/wikipedia/en/4/45/DJ_Dog.gif").addClass("dog").appendTo($("body"));
  var panda = $("<img>").attr("src", "http://www.pbh2.com/wordpress/wp-content/uploads/2013/04/cutest-panda-gifs-babies.gif").addClass("panda").appendTo($("body")); 

  $("body").mousemove(function(event){
    $("h1#coords").html("X: " + event.pageX +" | Y: " + event.pageY);
    kitty.css("margin-left", (event.pageX / 2) ).css("margin-top", (event.pageY / 8) );
    panda.css("margin-left", (event.pageX / 4) ).css("margin-top", (event.pageY / 10) );
    doggy.css("margin-left", (event.pageX / 8 ) ).css("margin-top", (event.pageY / 4) );
  });
}