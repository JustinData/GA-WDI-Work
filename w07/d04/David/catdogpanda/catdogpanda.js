
$(function(){
  var imgCat = $('<img>');
  imgCat.addClass('cat');
  imgCat.attr('src', 'http://placekitten.com/200/300');

  var imgDog = $('<img>');
  imgDog.addClass('dog');
  imgDog.attr('src', 'http://www.austinpetsalive.org/wp-content/uploads/2010/09/winnicent.jpg');

  var imgPanda = $('<img>');
  imgPanda.addClass('panda');
  imgPanda.attr('src', 'http://media.npr.org/assets/img/2012/01/04/ap99121501386_custom-feedbb6efa738efee47e7828e805758dc427fa60-s6-c30.jpg');

  imgCat.appendTo('body');
  imgDog.appendTo('body');
  imgPanda.appendTo('body');

 $(' body').mousemove(function(event){
  console.log("X Coordinate: " + event.pageX);
  console.log("Y Coordinate: " + event.pageY);
  $('h1').text("X: " + event.pageX + " Y: " + event.pageY);
  $('img.cat').css('margin-left', event.pageX/2 + 'px');
  $('img.cat').css('margin-top', event.pageY/4 + 'px');
  $('img.dog').css('margin-left', -event.pageX/2 + 'px');
  $('img.dog').css('margin-top', -event.pageY/4 + 'px');
  $('img.panda').css('margin-left', -event.pageX/2 + 'px');
  $('img.panda').css('margin-top', event.pageY/2 + 'px');
 });
});