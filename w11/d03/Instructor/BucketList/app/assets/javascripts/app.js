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
    $("ul").append(this.el);
    this.render();
  },

  render: function() {
    this.$el.text(this.model.get("title"));
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
    var newActivity = this.collection.add({title: title});
    new ActivityView({model: newActivity});
    this.el.reset();
  }

});

var form = new FormView({collection: list});



