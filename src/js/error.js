
;(function() {
"use strict";

window.ErrorView = View.extend({
	id: 'errorview',
	err: '',
	title: '',

	init: function(err, title) {
		this._super();
		this.err = err;
		this.title = title || "There was an error";
	},

	open: function() {
		$('#error-title').text(this.title);
		$('#error-msg').text(this.err);
		destroyLoggedInState();
	}
});

})();
