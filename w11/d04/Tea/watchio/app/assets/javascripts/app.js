$(function(){
   //                  _
   //                 | |
   //  _ __ ___  _   _| |_ ___ _ __ ___
   // | '__/ _ \| | | | __/ _ \ '__/ __|
   // | | | (_) | |_| | ||  __/ |  \__ \
   // |_|  \___/ \__,_|\__\___|_|  |___/

  var MovieRouter = Backbone.Router.extend({
    routes: {
      "search/:title" : "createMovieView"
    },
    createMovieView: function(title) {
      new MovieView({title: title});
      console.log(title);
    }
  });
  //                      _      _
  //                     | |    | |
  //  _ __ ___   ___   __| | ___| |___
  // | '_ ` _ \ / _ \ / _` |/ _ \ / __|
  // | | | | | | (_) | (_| |  __/ \__ \
  // |_| |_| |_|\___/ \__,_|\___|_|___/

  var Movie = Backbone.Model.extend({
    defaults: {
      seen: false
    }
  });

  var lion = new Movie({title: "The Lion King"});

  //            _ _           _   _
  //           | | |         | | (_)
  //   ___ ___ | | | ___  ___| |_ _  ___  _ __  ___
  //  / __/ _ \| | |/ _ \/ __| __| |/ _ \| '_ \/ __|
  // | (_| (_) | | |  __/ (__| |_| | (_) | | | \__ \
  //  \___\___/|_|_|\___|\___|\__|_|\___/|_| |_|___/

  var Watchlist = Backbone.Collection.extend({
    model: Movie
  });

  var watchlist = new Watchlist();

  //        _
  //       (_)
  // __   ___  _____      _____
  // \ \ / / |/ _ \ \ /\ / / __|
  //  \ V /| |  __/\ V  V /\__ \
  //   \_/ |_|\___| \_/\_/ |___/

  var FormView = Backbone.View.extend({
    el: "form",
    events: {
      "submit": "searchMovie"
    },
    searchMovie: function(e) {
      e.preventDefault();
      var title = this.$el.find("input[name='title']").val();
      // console.log(title);
      Backbone.history.navigate("search/" + title, {trigger: true});
    }
  });

  var MovieView = Backbone.View.extend({
    template: _.template($("script[type='text/html']").html()),
    initialize: function(opts) {
      this.title = opts.title;
      this.$el.appendTo($("body"));
      console.log("this is" + opts);
      this.render();
      this.fetchMovieIDs();
    },

    fetchMovieIDs: function(){
      $.getJSON("http://www.omdbapi.com/?s=" + this.title, this.receiveID);
      // $.ajax({
      //   method: "GET",
      //   url: "http://www.omdbapi.com/?s=" + this.title,
      //   dataType: "json",
      //   success: this.receiveID,
      //   context: this
      // })
    },

    // fetchMovieData: function(){
    //    $.getJSON("http://www.omdbapi.com/?i=" + this, function(){console.log(response)});

    // },

    render: function(){
      var compiledTemplate = this.template();
      this.$el.html(compiledTemplate);
    },

    receiveID: function(response) {
      console.log(response.Search);
      var movies = response.Search;
      var i = 0;
      var myMatches = [];
      _.each(movies, function(film){
        i++;
        console.log(film);
        //[object Object]AND THEN
        console.log(this);
        //Object {url: "http://www.omdbapi.com/?s=lion", type: "GET", isLocal: false, global: true, processData: true…}
        $.getJSON("http://www.omdbapi.com/?i=" + film.imdbID, function(somedata){
          var testMovie = new Movie({title: somedata.Title, poster: somedata.Poster, plot: somedata.Plot});
          return testMovie;
          }, this);
      }, this)
      console.log(myMatches);
      // var arrayData = _.map(arrayIDs, fetchMovieData());
      // console.log(arrayData);
    },

    receiveMovie: function() {

    }
  })
  movieRouter = new MovieRouter();
  formView = new FormView();
})

Backbone.history.start();
