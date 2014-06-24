
;(function() {
"use strict";

window.UrlBase = "http://www.duelingnetwork.com:8080/Dueling_Network/";

// An abstract 'view' class - exactly one view is active at a time and
// represents a fullscreen activity like 'Deck Constructor' or 'Duel'.
window.View = Class.extend({

	// A destructor function, called when the view is replaced by another.
	close: function() {},

	// A constructor function, called when the view has been set (after
	// close() has been called on the last view).
	open: function() {},

	// The message handler function, called when a socket message is received.
	// Should return a boolean indicating whether event was handled by the
	// view; if so, it does not bubble on to the global message handler or
	// generate an error.
	handleMessage: function(ev, data) { return false; },

	// A virtual function called when there is a network error (the socket
	// closing prematurely, the server not responding to heartbeats, or so).
	// The connection has been closed when this is called.
	handleError: function(err) {
		if (currentView instanceof ErrorView)
			return;
		setView(new ErrorView("The connection was lost."));
	},

	// A virtual function meant to setup a view's UI. It is called from the
	// View constructor the first time the class is constructed.
	loadUI: function() {},

	// The id of the related DOM element.
	id: null,

	// The DOM element. Equal to $('#' + id) and set by the View constructor.
	ui: null,

	init: function() {
		this.ui = $('#'+this.id);
		if (this.ui.data('loaded') !== 'yes') {
			this.ui.data('loaded', 'yes');
			this.loadUI();
		}
	}
});


var currentView = null;
window.setView = function(view) {
	if (currentView !== null) {
		currentView.close();
		$('#'+currentView.id).removeClass('active');
	}
	window.dbgCurrentView = currentView = view;
	$('#'+currentView.id).addClass('active');
	currentView.open();
};


var Heartbeat = {
	has: null,
	timer: null,
	lost: null,

	listener: function(ev, data) {
		if (ev === 'Heartbeat') {
			this.has = true;
			return true;
		}
		return false;
	},

	beat: function() {
		// TODO: Check for responses after a shorter time, and at least
		// indicate possible disconnection.
		if (!this.has) {
			var cb = this.lost;
			this.stop();
			cb();
		}
		else {
			Communicator.send(['Heartbeat']);
			this.has = false;
		}
	},

	start: function(lost) {
		if (this.timer === null) {
			this.has = true;
			this.lost = lost;
			this.timer = setInterval(this.beat.bind(this), 30000);
		}
	},

	stop: function() {
		if (this.timer !== null) {
			Communicator.close();
			clearInterval(this.timer);
			this.timer = null;
			this.lost = null;
		}
	}
};


// Register a function for checking whether a message is just dropping in late,
// in which case it should not show up as an "Interesting message".
var lateMessageHandler = null;
var lateMessageTimer = null;
window.ignoreLateMessages = function(f) {
	lateMessageHandler = f;
	if (lateMessageTimer !== null)
		clearTimeout(lateMessageTimer);
	lateMessageTimer = setTimeout(function() {
		lateMessageHandler = null;
		lateMessageTimer = null;
	}, 500);
}

function handleErrorMessage(ev, data) {
	if (ev === 'Error' || ev === 'Chat error' || ev === 'Async error') {
		// Do an asynchronous alert() (so we don't break the world).
		setTimeout(function() {
			alert(ev + "\n\n" + data[0]);
		});
		return true;
	}
	if (ev === 'Timed out') {
		setView(new ErrorView("The connection was dropped.", "Timed out"));
		Communicator.closeConnection();
		return true;
	}
	return false;
}

function handleMessage(msg) {
	if (msg.length === 0) return;
	var ev = msg[0];
	var data = msg.slice(1);
	Debug.handleMessage(ev, data, false);
	if (Heartbeat.listener(ev, data))
		return;
	if (Users.handleMessage(ev, data))
		return;
	if (Friends.handleMessage(ev, data))
		return;
	if (currentView.handleMessage(ev, data))
		return;
	if (ChatManager.handleMessage(ev, data))
		return;
	if (handleErrorMessage(ev, data))
		return;

	if (lateMessageHandler && lateMessageHandler(ev, data))
		return;

	console.warn('Interesting message: ', ev, data);
}

function lostConnection() {
	Communicator.closeConnection();
	currentView.handleError('lost-connection');
}

Communicator.openConnection = function(success) {
	function socketStatus(st) {
		if (st === 'connected') {
			Heartbeat.start(lostConnection);
			success();
		}
		else {
			Heartbeat.stop();
			currentView.handleError(st);
		}
	}

	Communicator.open(handleMessage, socketStatus);
};

Communicator.closeConnection = function() {
	Heartbeat.stop();
	Communicator.close();
};

})();
