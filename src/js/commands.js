
;(function() {
"use strict";

function keyToString(key, shift) {
	var ch = function(c) {
		return c.charCodeAt(0);
	};
	if (ch('A') <= key && key <= ch('Z')) {
		return String.fromCharCode(key + (shift ? 0 : ch('a') - ch('A')));
	}
	var name = null;
	if (key === 9) name = 'tab';
	else if (key === 13) name = 'enter';
	else if (key === 27) name = 'escape';
	else if (key === 32) name = ' ';
	else if (key === 37) name = 'left';
	else if (key === 38) name = 'up';
	else if (key === 39) name = 'right';
	else if (key === 40) name = 'down';
	else if (key === 191 || key === 173 || key === 109) name = '/'; // or '-'

	if (name) {
		if (shift) name = 'shift-' + name;
		return name;
	}
	return null;
}

function compareCommandPriority(a, b) {
	return a[0] - b[0];
}

window.Commands = {
	ui: null,
	obj: null,
	map: {},
	forceMap: {},

	setMap: function(obj, ar) {
		this.ui.find('div').remove();
		this.obj = obj;
		var map = {}, forceMap = {};
		ar.sort(compareCommandPriority);
		for (var i = 0; i < ar.length; ++i) {
			var mapping = ar[i];
			var key = mapping[1], text = mapping[2], func = mapping[3];
			if (key.startsWith('force;')) {
				key = key.substr(6);
				forceMap[key] = true;
			}
			map[key] = func;

			// Skip hidden entries.
			if (text === '') continue;

			$('<div>')
				.append($('<span class="key">').text(key))
				.append(" - " + text)
				.appendTo(this.ui);
		}
		this.map = map;
		this.forceMap = forceMap;
	},

	keydown: function(key, shift, ev, needForce) {
		key = keyToString(key, shift);
		if (key && this.map[key]) {
			if (needForce && !this.forceMap[key])
				return false;
			this.map[key].call(this.obj, ev);
			return true;
		}
		return false;
	},

	show: function() {
		this.ui.show();
	},

	hide: function() {
		this.ui.hide();
	},

	init: function() {
		this.ui = $('#commands').addClass('border-box');
	}
};

$(document).keydown(function(ev) {
	// We can't handle key bindings with ctrl/meta held.
	if (ev.ctrlKey || ev.metaKey)
		return;

	// If input is already going somewhere, require force to use it.
	var needForce = (ev.target.nodeName === 'INPUT');

	var used = Commands.keydown(ev.keyCode, ev.shiftKey, ev, needForce);
	if (used)
		ev.preventDefault();
});

})();
