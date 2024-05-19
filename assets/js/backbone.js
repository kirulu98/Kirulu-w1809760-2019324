// Define Backbone View for About Section
var AboutView = Backbone.View.extend({
	el: "#about-container",

	template: _.template($("#about-template").html()),

	initialize: function () {
		this.render();
	},

	render: function () {
		this.$el.html(this.template());
		return this;
	},
});

// Instantiate the AboutView
var aboutView = new AboutView();

// Define the FooterView
var FooterView = Backbone.View.extend({
	el: "#content",

	template: _.template($("#footer-template").html()),

	initialize: function () {
		this.render();
	},

	render: function () {
		this.$el.html(this.template());
		return this;
	},
});

// Instantiate the view
var footerView = new FooterView();