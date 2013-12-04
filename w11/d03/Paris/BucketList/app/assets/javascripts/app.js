// alert("Hello");

var Activity = Backbone.Model.extend({
  defaults: {
    done: false
  }
});


var Bucketlist = Backbone.Collection.extend({ model: Activity });
var list = new Bucketlist();

var skyDiving = new Activity({title: "Sky Diving"});

list.add(skyDiving);

list.on("add", function() {
  console.log(this.pluck("title"));
});

var FormView = Backbone.View.extend ({
  el: "form",
  events: {
    "submit": "wasSubmitted"
  },

  wasSubmitted: function(e) {
    e.preventDefault();
    var newActivity = this.$el.find("input[name='activity']").val();
    // var newThing = new Activity({title: newActivity});
    this.collection.add({title: newActivity});
    this.el.reset();
  }

})

var formView = new FormView({collection: list});