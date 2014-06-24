
;(function() {
"use strict";

window.SidebarWidget = Class.extend({
	order: '',
	importance: 0,
	title: '',
	closeable: false,
	ui: null,
	box: null,
	handle: null,
	stateChangeCounter: 0,

	shown: function() {},

	hidden: function() {},


	open: function(shown) {
		if (this.isOpen())
			return;
		Sidebar.add(this);
		if (shown)
			this.show();
	},

	close: function() {
		if (!this.isOpen())
			return;
		++this.stateChangeCounter;
		this.hide();
		Sidebar.remove(this);
	},

	isOpen: function() {
		return (!!this.box);
	},


	show: function() {
		if (this.isVisible())
			return;
		++this.stateChangeCounter;
		this.box.addClass('open');
		this.shown();
		Sidebar.layout();
	},

	hide: function() {
		if (!this.isVisible())
			return;
		++this.stateChangeCounter;
		this.box.removeClass('open');
		this.hidden();
		Sidebar.layout();
	},

	isVisible: function() {
		console.assert(this.isOpen());
		return this.box.hasClass('open');
	},

	toggleVisibility: function() {
		if (this.isVisible())
			this.hide();
		else
			this.show();
	}
});

window.Sidebar = {
	ui: null,

	init: function() {
		this.ui = $('<div>').addClass('sidebar-ui border-box');
		$('#sidebar').append(this.ui);
		
		var that = this;
		$('#sidebar').on('click', '.sidebar-minimize-button', function() {
			var widget = $(this).parents('.sidebar-box').data('widget');
			widget.toggleVisibility();
		});
		$('#sidebar').on('click', '.sidebar-close-button', function() {
			var widget = $(this).parents('.sidebar-box').data('widget');
			widget.close();
		});
	},

	show: function() {
		$('#sidebar').css('width', '20%').css('display', 'table-cell');
		$('#views').css('width', '80%');
	},

	hide: function() {
		$('#sidebar').css('width', '0%').css('display', 'none');
		$('#views').css('width', '100%');
	},

	layout: function() {
		var boxes = this.ui.find('.sidebar-box');
		var nvisible = boxes.filter('.open').length;
		var spacing = 7;
		var unavailableHeight = spacing * boxes.length;
		boxes.filter(':not(.open)').css('height', '').each(function() {
			unavailableHeight += $(this).outerHeight();
		});
		var calcExpr = 'calc((100% - ' + unavailableHeight + 'px) / ' + nvisible + ')';
		boxes.filter('.open')
			.css('height', '-moz-' + calcExpr)
			.css('height', '-webkit-' + calcExpr)
			.css('height', calcExpr);
	},

	add: function(widget) {
		var box = widget.box = $('<div>').addClass('sidebar-box border-box');
		box.data('widget', widget);

		var title = $('<div>').addClass('sidebar-title border-box')
			.text(widget.title).appendTo(box);
		if (widget.closeable)
			$('<div>').addClass('sidebar-close-button').appendTo(title);
		$('<div>').addClass('sidebar-minimize-button').appendTo(title);

		widget.ui.addClass('sidebar-content border-box').appendTo(box);

		// Add the box at the right place sorted by 'order'.
		var greaterBoxes = this.ui.children().filter(function() {
			return widget.order < $(this).data('widget').order;
		});
		if (greaterBoxes.length)
			box.insertBefore(greaterBoxes[0]);
		else
			this.ui.append(box);

		this.layout();
	},

	remove: function(widget) {
		widget.box.remove();
		widget.box = null;

		this.layout();
	},

	collapseUnimportant: function() {
		// Collapse all but the 2 most important visible boxes, and return
		// a value that uncollapseUnimportant can use for uncollapsing them
		// again.
		var vis = this.ui.find('.sidebar-box.open'), hidden = [];
		vis.toArray().map(function(x) {
			return $(x).data('widget');
		}).sort(function(a, b) {
			return b.importance - a.importance;
		}).forEach(function(widget, ind) {
			if (ind < 2)
				return;
			widget.hide();
			hidden.push([widget, widget.stateChangeCounter]);
		});
		return hidden;
	},

	uncollapseUnimportant: function(hidden) {
		// Show again all boxes that haven't been touched since their collapse.
		hidden.forEach(function(ar) {
			var widget = ar[0];
			if (widget.stateChangeCounter === ar[1])
				widget.show();
		});
	}
};

})();
