$(document).ready(function(){
  $(window).scroll(function(e){
    var scrolled = $(window).scrollTop();
    $('.bg').css('top', -(scrolled * 0.25) + 'px');
    $('.top-left').css('top', -(scrolled * 1.5) + 'px');
    $('.top-center').css('top', -(scrolled * -1.5) + 'px');
    $('.top-right').css('top', -(scrolled * 1.5 ) + 'px');
  });
});