var WeatherRouter = Backbone.Router.extend({
  routes: {
    "clowns" : "clownsSayHi",
    "kittens/:height/:width" : "showKittens"
  },

  clownsSayHi: function(){
    alert("HELLO ADULTS <%:P ");
  },

  showKittens: function(height, width){
    $("<img>").attr("src", "http://placekitten.com/g/" + height + "/" + width).appendTo($("body"));
  }
});

new WeatherRouter();

Backbone.history.start();