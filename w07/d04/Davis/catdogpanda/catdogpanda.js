$(function() {
  var cat = $( "<img class='cat' src='http://eofdreams.com/data_images/dreams/cat/cat-06.jpg'/>" );
  cat.appendTo($("body"));

  var dog = $( "<img class='dog' src='http://puntito131.puntopressllc.netdna-cdn.com/wp-content/uploads/2013/07/Dog123.jpg'/>" );
  dog.appendTo($("body"));

  var panda = $( "<img class='panda' src='http://www.washingtonpost.com/rw/WashingtonPost/Content/Blogs/in-the-loop/Images/2012-09-17T130533Z_01_TOR901_RTRIDSP_3_USA-PANDA-WASHINGTON-218.jpg'/>" );
  panda.appendTo($("body"));

  $("body").mousemove(function(e) {
    console.log(e.pageX, e.pageY);
    $("h1").text(e.pageX + ',' + e.pageY);

    // factor
      // cat = 6, dog = 11, panda = 16
    $(".cat").css("margin-left", e.pageX / 6);
    $(".cat").css("margin-top", e.pageY / 6);

    $(".dog").css("margin-left", e.pageX / 11);
    $(".dog").css("margin-top", e.pageY / 11);

    $(".panda").css("margin-left", e.pageX / 16);
    $(".panda").css("margin-top", e.pageY / 16);    
  });
})

