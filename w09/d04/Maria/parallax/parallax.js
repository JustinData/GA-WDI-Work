$(document).ready(function(){
  $(window).scrollTop(function(e){
    var scrolled = $(window).scrollTop();
                $('.bg').css('top', -(scrolled * 0.25) + 'px');
                $(this).data('Xposition', $(this).attr('data-Xposition'));
                $(this).data('speed', $(this).attr('data-speed'));
        });
  });
  
}