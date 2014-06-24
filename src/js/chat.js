
;(function() {
"use strict";

function urlToLink(text) {
	var url;
	if (text.startsWith('http://') || text.startsWith('https://'))
		url = text;
	else
		url = 'http://' + text;
	var attrHTML = url.replace(/"/g, '&quot;');
	return '<a href="' + attrHTML + '" target="_blank">' + text + '</a>';
}

function linkify(text) {
	var rest = text.replace(/&/g, '&amp;').replace(/</g, '&lt;');
	var out = '';

	for (;;) {
		var pos = rest.search(/( |\(|^)(http:\/\/|https:\/\/|www\.)/);
		if (pos < 0) {
			out += rest;
			break;
		}

		if (/[ (]/.test(rest.charAt(pos))) ++pos;
		out += rest.substr(0, pos);
		rest = rest.substr(pos);

		var end = rest.search(/$|,| |\.(\W|$)|\)(\.\W|\.$|[,!?)]|$)/);
		if (/\?!/.test(rest.charAt(end-1))) --end;
		out += urlToLink(rest.substr(0, end));
		rest = rest.substr(end);
	}
	return out;
}

var Chat = SidebarWidget.extend({
	sidebarHandle: null,
	ignoreHandle: null,
	maxlen: 0,
	sendF: null,
	closer: null,

	holder: null,
	cont: null,
	chatField: null,

	init: function(title, order, importance, maxlen, shouldIgnore, closeable, sendF, closer) {
		this.title = title;
		this.order = order;
		this.importance = importance;
		this.maxlen = maxlen;
		this.closeable = closeable;
		this.sendF = sendF;
		this.closer = closer;

		this.ui = $('<div>').addClass('chat');
		this.holder = $('<div>').addClass('sidebar-box-holder border-box')
			.appendTo(this.ui);
		this.cont = $('<div>').addClass('sidebar-box-cont border-box')
			.appendTo(this.holder);
		if (this.sendF) {
			var self = this;
			this.chatField = $('<input>')
				.addClass('sidebar-box-field border-box')
				.prop('value', '').attr('placeholder', "Reply...")
				.keydown(function(e) {
					if (e.which === 13) self.send(this);
				})
				.appendTo(this.holder);
			if (maxlen)
				this.chatField.attr('maxlength', maxlen);
		}
		else {
			this.holder.css('padding-bottom', 0);
		}

		if (shouldIgnore)
			this.ignoreHandle = IgnoreList.listen(this.ignoreListener.bind(this));
	},

	close: function() {
		this._super();
		if (this.ignoreHandle !== null)
			IgnoreList.unlisten(this.ignoreHandle);
		if (this.closer)
			this.closer();
	},

	send: function(field) {
		var value = field.value;
		if (ChatManager.locked || !value)
			return;
		ChatManager.locked = true;
		var available = (this.maxlen ? this.maxlen - value.length : Infinity);
		this.sendF(hideUnicode(value, available));
		field.value = '';
	},

	ignoreListener: function(ev, name) {
		if (ev === 'add') {
			this.ui.find('div').each(function() {
				if ($(this).find('.chat-author').text() === name + ": ") {
					$(this).remove();
				}
			});
		}
	},

	shown: function() {
		var el = this.cont[0];
		el.scrollTop = el.scrollHeight;
	},

	focus: function() {
		this.show();
		this.chatField.focus();
	},

	addLine: function(line) {
		var el = this.cont[0];
		var scrollToBottom = (this.isVisible() &&
			el.scrollTop + el.offsetHeight === el.scrollHeight);

		this.cont.append(line);

		if (scrollToBottom)
			el.scrollTop = el.scrollHeight;
	},

	addMessage: function(from, message, color) {
		if (this.ignoreHandle !== null && IgnoreList.has(from))
			return;

		var html = linkify(unhideUnicode(message));
		var line = $('<div>').addClass('chat-line').append(
			$('<span>').addClass('chat-author').css('color', color).text(from + ": ")
		).append(
			$('<span>').addClass('chat-message').html(html)
		);
		addUserContextMenu(line, from);

		this.addLine(line);
	}
});

window.ChatManager = {
	locked: true,
	globalChat: null,
	userChats: {},

	setupGlobalChat: function() {
		console.assert(!this.globalChat);
		this.globalChat = new Chat("Global chat", 'a', 5, 200, true, false, function(msg) {
			Communicator.send(['Global message', msg]);
		});
		this.globalChat.open(false);
	},

	removeAllChats: function() {
		console.assert(this.globalChat);
		this.globalChat.close();
		this.globalChat = null;
		var uc = this.userChats;
		for (var a in this.userChats) {
			uc[a].close();
		}
	},

	openUserChat: function(user, forceNew) {
		var ch = this.userChats[user.id];
		if (!ch) {
			if (!forceNew)
				return null;
			ch = new Chat(user.name, 'a-' + user.name, 15, 200, false, true, function(msg) {
				Communicator.send(['Private message', user.name, msg]);
			}, function() {
				delete this.userChats[user.id];
			}.bind(this));
			this.userChats[user.id] = ch;
		}
		ch.open(true);
		return ch;
	},

	openDuelLog: function(sendF) {
		var chat = new Chat("Duel log", 'b2', 10, 200, false, false, sendF);
		chat.open(true);
		return chat;
	},

	openWatchChat: function(sendF) {
		var chat = new Chat("Watch chat", 'b1', 9, 200, true, false, sendF);
		chat.open(false);
		var btn = chat.box.find('.sidebar-minimize-button');
		var count = $('<span>').addClass('watch-count').insertBefore(btn);
		chat.setCount = function(value) {
			count.text(" (" + value + ")");
		};
		return chat;
	},

	handleMessage: function(ev, data) {
		if (ev === 'Chat unlock') {
			this.locked = false;
			return true;
		}
		if (ev === 'Global message') {
			var from = data[0], message = data[1];
			var user = Users.getUser(from);
			console.assert(user);
			this.globalChat.addMessage(from, message, user.getColor());
			return true;
		}
		if (ev === 'Private message') {
			var from = data[0], to = data[1], message = data[2];
			from = Users.getUser(from);
			to = Users.getUser(to);
			console.assert(from);
			console.assert(to);
			var other = (from.name === myUserName ? to : from);
			var force = (from === other && !IgnoreList.has(from.name));
			var chat = this.openUserChat(other, force);
			if (chat) {
				chat.addMessage(from.name, message, from.getColor());
			}
			return true;
		}
		if (ev === 'Chat error') {
			if (data[0] !== 'Quick chat')
				this.locked = false;
			return false;
		}
		return false;
	}
};

})();
