var Search = Backbone.Model.extend({

});

var SearchList = Backbone.Collection.extend({
  model: Search

});

mySearchList = new SearchList();


var SearchFormView = Backbone.View.extend({
  el: "form",

  events: {
    "submit": "searchOMDBForMovie"
  },

  fetchMovie: function(title) {
    $.ajax({
      method: "GET",
      url: "http://www.omdbapi.com/?s=" + title,
      dataType: "json",
      success: this.receiveSearchResults,
      context: this
    });
  },
  
  searchOMDBForMovie: function(e) {
    e.preventDefault();
    var title = this.$el.find("input[name='movie']").val();
    this.fetchMovie(title);
    
  },

  receiveSearchResults: function(response){
    console.log(response)
    for(var i=0; i<response.Search.length; i++){
      console.log(response.Search[i]);
      this.collection.add({title: response.Search[i].Title, year: response.Search[i].Year, imdbID: response.Search[i].imdbID});
    }
    this.el.reset();
  }

});

var SearchListView = Backbone.View.extend({
  el: "ul",

  initialize: function(){
    this.listenTo(this.collection, "add", this.addOne);
  },

  addOne: function(movie){
    console.log(movie);
    var view = new MovieSearchView({model: movie});
    this.$el.append(view.el);
  }
});

var MovieSearchView = Backbone.View.extend({
  tagName: "li",

  events: {
    "click :button": "addItemToWatchList" 
  },

  initialize: function(){
    this.render();
  },

  render: function(){
    this.$el.html(this.model.get("title") + " : " + this.model.get("year") + " : " + this.model.get("imdbID") + "<button>ADD</button>");
  },

  addItemToWatchList: function(){
    console.log("lets add this movie to our watchlist, cool?");
    console.log(this.model.get("title") + this.model.get("imdbID"));
  }

});


// movie model 
var Movie = Backbone.Model.extend({

});

//movie model collection
var MovieList = Backbone.Collection.extend({
  model: Movie,
  url: "movies"

});

// creating a new movie list instance
var watchList = new MovieList();

// create a new view to control the form
var FormView = Backbone.View.extend({
  el: "form",

  events: {
    "submit": "searchOMDBForMovie"
  },

  fetchMovie: function(title) {
    $.ajax({
      method: "GET",
      url: "http://www.omdbapi.com/?t=" + title,
      dataType: "json",
      success: this.receiveMovie,
      context: this
    });
  },
  
  searchOMDBForMovie: function(e) {//e is the event of the submit
    e.preventDefault();// so that the page does not get submitted to our server so we can control what happens next.
    var title = this.$el.find("input[name='movie']").val();//on the form find the input w/name movie.
    this.fetchMovie(title);
    
  },

  receiveMovie: function(response){//receive the movie and builda model for that movie begin to do so.
    this.collection.create({title: response.Title, plot: response.Plot, poster: response.Poster});
    //this.col = (JSON.parse(stock))["Data"]["LastPrice"];
    this.el.reset();
  }
  //receive searchlist
  //for each JSON obj create model in collection


});

var WatchListView = Backbone.View.extend({
  el: "ul",
  initialize: function(){
    this.listenTo(this.collection, "add", this.addOne);
  },

  addOne: function(movie){
    console.log(movie);
    var view = new MovieView({model: movie});
    this.$el.append(view.el);
  }
});

//our movie VIEW!
var MovieView = Backbone.View.extend({
  tagName: "li",

  initialize: function(){
    this.render();
  },

  render: function(){
    this.$el.html(this.model.get("title"));
  }
});

window.onload = function(){

  form = new FormView({collection: watchList});
  watchview = new WatchListView({collection: watchList});
};




