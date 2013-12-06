var Movie = Backbone.Model.extend({
	defaults: {
		seen: false
	}
});

var WatchList = Backbone.Collection.extend({
	model: Movie,

	url: "watchlists"
});

var FormView = Backbone.View.extend({
	el: "form",

	events: {
		"submit": "movieSearch"
	},

	movieSearch: function(e) {
		e.preventDefault();
		var title = this.$el.find("input[name='search']").val();
		// console.log(title);
		this.$el.find("input[name='search']").val('');
		Backbone.history.navigate("movie/" + title, {trigger: true});
	}
});

var MovieView = Backbone.View.extend({
	tagName: "div",

	initialize: function(opts) {
		this.tit1le = opts.title;
		this.fetchMovie();
	},

	fetchMovie: function() {
		$.ajax({
			method: "GET",
			url: "/moviesearch?q1=" + this.title,
			dataType: "json",
			success: function(){console.log(response)},
			context: this
		});
	}
});

var MovieRouter = Backbone.Router.extend({
	routes: {
		"movie/:title": "getMovie"
	},

	getMovie: function(title) {
		console.log(title);
		var mainView = new MovieView({title: title});
	}
});

new MovieRouter();

Backbone.history.start();

window.onload = function() {
	var form = new FormView();

}