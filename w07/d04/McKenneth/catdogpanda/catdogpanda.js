$(function(){
  addAnimals();
});

function addAnimals(){
  $("<img>").attr("src", "http://31.media.tumblr.com/a9186ac431436b5646f6260687f5e3ec/tumblr_mpxezeTo3K1qeyp6yo6_400.gif").addClass("cat").appendTo($("body"));
  $("<img>").attr("src", "http://upload.wikimedia.org/wikipedia/en/4/45/DJ_Dog.gif").addClass("dog").appendTo($("body"));
  $("<img>").attr("src", "http://www.pbh2.com/wordpress/wp-content/uploads/2013/04/cutest-panda-gifs-babies.gif").addClass("panda").appendTo($("body")); 

  $("body").mousemove(function(event){
    console.log(event.pageX, event.pageY);
  });
}