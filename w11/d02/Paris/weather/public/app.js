// kitten stuff #############################

var PlayingAroundRouter = Backbone.Router.extend({
  routes: {
    "clowns" : "clownsSayHi",
    "kittens/:height/:width" : "addKitten"
  },

clownsSayHi: function() {
  alert("Hello adults <%:b");
},

addKitten: function(height, width) {

  $("<img>")
    .attr("src", "http://placekitten.com/" + height + "/" + width)
    .appendTo($("body"));
}

});


// weather stuff ##########################
var WeatherRouter = Backbone.Router.extend({
routes: {    
    "weather/:state/:city" : "getPlace"
    
},

getPlace : function(state, city){
  new WeatherView({state: state, city: city});
}
  });

new PlayingAroundRouter();
new WeatherRouter();
Backbone.history.start();

var FormView = Backbone.View.extend({
  el: "form",
  events: {
    "submit" : "weatherThing"
  },


weatherThing : function(e){
  e.preventDefault();
  var city = this.$el.find("input[name='city']").val();
  var state = this.$el.find("input[name='state']").val();
  Backbone.history.navigate("weather/" + state + "/" + city, {trigger: true});
  alert(city + " " + state);
},
});


var formView = new FormView();

var WeatherView = Backbone.View.extend({
  tagName: "div",

// turns the template defined in the html into a string.
  template: _.template($("script[type='text/html']").html()),

  initialize: function(opts) {
    this.state = opts.state;
    this.city = opts.city;
    this.$el.appendTo($("body"));
    // the render fills the empty el html object with the stuff defined in the render function.
    this.render();
},

render : function() {
  var compiledTemplate = this.template();
  this.$el.html(compiledTemplate);
  }
});

// el is an html element and we tell it what to find via selectors.
// Backbone will now take over the browser and start listening for on hash events. 







