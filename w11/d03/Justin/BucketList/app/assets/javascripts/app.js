var Activity = Backbone.Model.extend({
  defaults: {
    done: false
  },

  toggleDone: function() {
    this.save({"done": !this.get("done")});
  }
});

var BucketList = Backbone.Collection.extend({
  model: Activity,

  url: "activities"
});

var list = new BucketList();

// var skyDiving = new Activity({title: "Sky Diving"});

// list.add(skyDiving);

// list.on("add", function() {
//   console.log(this.pluck("title"));
// });

var ActivityView = Backbone.View.extend({
  tagName: "li",

  template: _.template($("script[type='text/html']").html()),

  events: {
    "click :checkbox": "toggleDoneRainbows"
  },

  toggleDoneRainbows: function() {
    this.model.toggleDone();
  },

  initialize: function() {
    this.listenTo(this.model, "change", this.render);
    this.render();
  },

  render: function() {
    //this.$el.text(this.model.get("title"));
    var compiledTemp = this.template(this.model.toJSON());
    this.$el.html(compiledTemp);
  }
});

var ListView = Backbone.View.extend({
  el: "ul",

  initialize: function() {
    this.listenTo(this.collection, "add", this.addOne);
    this.listenTo(this.collection, "reset", this.addAll);
  },

  addOne: function(activity) {
    var view = new ActivityView({model: activity});
    this.$el.append(view.el);
  },

  addAll: function() {
    this.collection.each(this.addOne, this);
  }
});

var FormView = Backbone.View.extend({
  el: "form",

  events: {
    "submit": "newActivity"
  },

  newActivity: function(e) {
    e.preventDefault();
    var title = this.$el.find("input[name='activity']").val();
    this.collection.create({title: title});
    this.el.reset();
  }

});

var form = new FormView({collection: list});
var theList = new ListView({collection: list});

list.fetch({reset: true});


