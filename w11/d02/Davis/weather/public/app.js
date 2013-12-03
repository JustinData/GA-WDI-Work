var PlayingAroundRouter = Backbone.Router.extend({
  routes: {
    "clowns": "clownsSayHi",
    "kittens/:height/:width": "placeKitten"
  }, 

  clownsSayHi: function() {
    alert("HELLO ADULTS");
  },

  placeKitten: function(height, width) {
    $("<img>")
    .attr("src", "http://placekitten.com/" + height + "/" + width)
    .appendTo($("body"));
  }
});

new PlayingAroundRouter();

var WeatherRouter = Backbone.Router.extend({
  routes: {
    "weather/:state/:city": "getWeather"
  },

  getWeather: function(state, city) {
    console.log(state, city);
  }
});

new WeatherRouter();

var FormView = Backbone.View.extend({
  
});

Backbone.history.start();
