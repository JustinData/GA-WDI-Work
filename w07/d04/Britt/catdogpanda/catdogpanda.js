$( function(){
  var cat = $("<img>").attr({"src": "http://placekitten.com/500/500", "class": "cat"});

  var dog = $("<img>").attr({"src": "http://placedog.com/480/500", "class": "dog"});

  var panda = $("<img>").attr({"src": "http://www.cutepandapictures.com/wp-content/uploads/2012/07/babypandahugsatree.jpg", "class": "panda"});

  cat.appendTo( $("body") );
  dog.appendTo( $("body") );
  panda.appendTo( $("body") );

  $("img").mousemove( function(ev){
      console.log("x: " + ev.pageX + ", y: " + ev.pageY);
  } );
} )
