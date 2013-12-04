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

// This will just display on the console anytime something is added
list.on("add", function(){
		console.log(this.pluck("title"));
});
// end of console dispaly code

var FormView = Backbone.View.extend({
	el: "form",

	events: {
		"submit" : "getForm"
	},

	getForm: function(e){
		e.preventDefault();
		var title = this.$el.find("input[name='activity']").val();
		var activity = new Activity({title: title});
		var newActivity = this.collection.add(activity);
		console.log(newActivity)
		new ActivityView({model: newActivity})
		this.el.reset();
	}
});

var ActivityView = Backbone.View.extend({
	tagName: "li",

	initialize: function(){
		$("ul").append( this.el );
		this.render();
	},

	render: function(){
		this.$el.text(this.model.get("title"));
	}
});
var form = new FormView({collection: list})