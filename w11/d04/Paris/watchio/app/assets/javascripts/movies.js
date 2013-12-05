//#MovieRouter
var MovieRouter = Backbone.Router.extend({
  routes: {
    "results/:title" : "searchMovie" 
  },

  searchMovie: function(title){
    console.log(title);
    new SearchResultsView({ title: title });
  }
});

// ################################# START #MODELS HERE!!!!! ################################

var Movie = Backbone.Model.extend({
  default: {
    seen: false
  }
});


// ################################# START #VIEWS HERE!!!!! ################################
//#FormView
var FormView = Backbone.View.extend({
  el: "form",

  events: {
    'submit': 'submitted'
  },

  submitted: function(e) {
    e.preventDefault();
    // user's movie search input title
    var title = this.$el.find("input[name='title']").val();
  
    Backbone.history.navigate("results/" + title, {trigger: true});
  }
});

//#MovieView
var MovieView = Backbone.View.extend({
  tagName: "li",

  template: _.template($("script[type='text/html']").html()),

  initialize: function(){
    this.$el.appendTo($(".search-results"));
    this.render();
    // this.getMovie();
  },

  render: function(){
    this.$el.html( this.template() );
  }
});

//#SearchResultsView
var SearchResultsView = Backbone.View.extend({
  el: "ul",

  initialize: function(opts){
    this.title = opts.title;
    console.log("SearchResultsView INSTANTIATED");
    this.getMovies();
  },

  getMovies: function(){
    var route = "/movies/results?q=" + this.title;

    $.ajax({
      method: "GET",
      url: route,
      dataType: "json",
      success: this.receiveMovies,
      context: this
    })
  },

  receiveMovies: function(movieJSON){
    console.log("AJAX");
    console.log(movieJSON);
  }

})

// ################################# START #INSTANTIATED!!!!! ################################

console.log("loaded!");
new MovieRouter();
new FormView();  
Backbone.history.start();








