var PlayingAroundRouter = Backbone.Router.extend({
  routes: { //map a route to an action
    "clowns" : "clownsSayHi",
    "kittens/:height/:width" : "showMeTheKittens"
  },

  clownsSayHi: function() {
    alert("Hello Adults <%:o");
  },
  showMeTheKittens: function(height, width){
    $("<img>")
    .attr("src", "http://placekitten.com/" + height + "/" + width)
    .appendTo($("body"));
  }
});

 new PlayingAroundRouter();

Backbone.history.start();

//#kittens
//weather/Ma/Boston

var WeatherRouter = Backbone.Router.extend({
  routes: {
    "weather/:state/:city" : "weather"
  },
  weather: function(state, city){
    new WeatherView({state: state, city: city})
  }
});

new WeatherRouter();

var FormView = Backbone.View.extend({
  el: "form", //this is a jquery css selector
  events:{
    "submit" : "wasSubmitted"
  },
  wasSubmitted: function(e){
    e.preventDefault();
    var city = this.$el.find("input[name='city']").val();
    var state = this.$el.find("input[name='state']").val();
    Backbone.history.navigate("weather/" + state + "/" + city, {trigger: true});
  }
});
var formview = new FormView();

var WeatherView = Backbone.View.extend({
  tagName: "div",

  template: _.template($("script[type='text/html']")),

  initialize: function(opts){

    //this.$el.html(this.template({state: opts.state, city: opts}));
    this.state = opts.state;
    this.city = opts.city;
    this.$el.appendTo($("body"));
    this.render();
    this.fetchWeather();
  },

  render: function(){
    var compiledTemplate = this.template();
    this.$el.html(compiledTemplate);
  }
  fetchWeather: function(){
    $.ajax({
      method: "GET",
      url: "/weather:q=" + this.city + "," + this.state,
      dataType: "json",
      success: this.receiveWeather,
      conext: this
    });
  },

  receiveWeather: function(weather){
    this.temperature = (weather.main.temp - 273) * 9/5 + 32;
    this.render();
  }
  
});
//var view = new WeatherView();


Backbone.history.start();





