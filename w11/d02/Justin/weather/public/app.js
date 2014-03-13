var OhYouRouter = Backbone.Router.extend({
	routes: {
		"clowns" : "clownsSayHi",
		"kittens/:height/:width" : "showKitten"
	},

	clownsSayHi: function() {
		alert("HELLO ADULTS!   >=(");
	},

	showKitten: function(height, width) {
		var elem = document.createElement("img");
		elem.setAttribute("src", "http://placekitten.com/" + height + "/" + width);
		document.body.appendChild(elem);
	}
});

new OhYouRouter();

var WeatherView = new Backbone.View.extend({
	tagName: "div",

	initialize: function(opts) {
		console.log(opts.state, opts.city);
	}
});


var WeatherRouter = Backbone.Router.extend({
	routes: {
		"weather/:state/:city" : "showWeather"
	},

	showWeather: function(state, city) {
		// alert("Weather for " + city + ", " + state);
		new WeatherView({state: state, city: city});
	}
});

new WeatherRouter();

var FormView = Backbone.View.extend({
	el: "form",
	events: {
		"submit": "wasSubmitted"
	},
	wasSubmitted: function(e) {
		e.preventDefault();
		var city = this.$el.find("input[name='city']").val();
		var state = this.$el.find("input[name='state']").val();
		console.log(city + ", " + state);
		Backbone.history.navigate("weather/" + state + "/" + city, {trigger: true});
	}
});

var fromView = new FormView();



// var view = new WeatherView({state: "GA"});


Backbone.history.start();