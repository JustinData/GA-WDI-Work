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
    // new MovieView({title: title});
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

// var MovieView = Backbone.View.extend({
//   template: _.template($("script[type='text/html']").html()),
//   initialize: function(opts) {
//     this.title = opts.title;
//     this.$el.appendTo($("body"));
//     alert(opts)
//     // this.fetchMovie();
//   },
//   fetchMovie: function(){
//     $.ajax({
//       method: "GET",
//       url: "/search?title=" + this.title,
//       dataType: "json",
//       success: console.log(this),
//       context: this
//     })
//   }
// })


$(function(){
  movieRouter = new MovieRouter();
  formView = new FormView();
})

Backbone.history.start();
