var Activity = Backbone.Model.extend({
  defaults: {
    done: false
  }
});

var BucketList = Backbone.Collection.extend({
  model: Activity
});

var list = new BucketList();

var skyDiving = new Activity({title: "Sky Diving"});

list.add(skyDiving);

list.on("add", function() {
  console.log(this.pluck("title"));
});

var ActivityView = Backbone.View.extend({
  tagName: "li",

  initialize: function() {
    this.render();
  },

  render: function() {
    this.$el.text(this.model.get("title"));
  }
});

var ListView = Backbone.View.extend({
  el: "ul",

  initialize: function() {
    this.listenTo(this.collection, "add", this.addOne);
  },

  addOne: function(activity) {
    var view = new ActivityView({model: activity});
    this.$el.append(view.el);
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
    this.collection.add({title: title});
    this.el.reset();
  }

});

var form = new FormView({collection: list});
var theList = new ListView({collection: list});


