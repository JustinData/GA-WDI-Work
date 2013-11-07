$(document).ready(function(){
   var cat_img = $('<img class="cat">');
   cat_img.attr('src', "http://placekitten.com/500/500");
   $("body").append(cat_img);

   var dog_img = $('<img class="dog">');
   dog_img.attr('src', "http://placedog.com/400/400");
   $("body").append(dog_img);

   var panda_img = $('<img class="panda">');
   panda_img.attr('src', "http://www.cutepandapictures.com/wp-content/uploads/2012/05/cutepandamombaby.jpg");
   $("body").append(panda_img);

   $("body").on('mousemove', function(e){
      var msg = "(" + event.pageX + ", " + event.pageY + ")";
      $("h1#coords").text(msg);
   })
});