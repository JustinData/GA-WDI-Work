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




