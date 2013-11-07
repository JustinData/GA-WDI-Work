
$(function(){
  var imgCat = $('<img>');
  imgCat.addClass('cat');
  imgCat.attr('src', 'http://placekitten.com/200/300');

  var imgDog = $('<img>');
  imgDog.addClass('dog');
  imgDog.attr('src', 'http://placedog.com/g/400/300');

  imgCat.appendTo('body');
  imgDog.appendTo('body');
});