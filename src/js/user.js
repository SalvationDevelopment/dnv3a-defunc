
;(function() {
"use strict";

window.User = Class.extend({
	name: null,
	modStatus: 0,

	init: function(name, mod) {
		this.name = name;
		this.modStatus = mod;
	},

	isFriend: function() {
		return Friends.isFriend(this.name);
	},

	getColor: function() {
		// TODO: Properly color different kinds of admins.
		if (this.modStatus === 0) return 'black';
		return 'darkblue';
	}
});

window.Users = Listenable.extendObject({
	map: {},

	isOnline: function(name) {
		return (this.getUser(name) !== null);
	},

	getUser: function(name) {
		return this.map[',' + name] || null;
	},

	handleMessage: function(ev, data) {
		if (ev === 'Online users') {
			for (var i = 0; i < data.length; ) {
				var name = data[i++], mod = +data[i++];
				var user = this.map[',' + name] = new User(name, mod);
				this.dispatch('online', user);
			}
			return true;
		}

		if (ev === 'Offline users') {
			for (var i = 0; i < data.length; ++i) {
				var name = data[i];
				var user = this.map[',' + name];
				delete this.map[',' + name];
				this.dispatch('offline', user);
			}
			return true;
		}
	},

	sendCurrentInfo: function(handler) {
		var cb = this.getSingleDispatcher(handler);
		for (var ind in this.map) {
			var user = this.map[ind];
			cb('online', user);
		}
	}
});

window.IgnoreList = Listenable.extendObject({
	list: [],
	map: {},

	has: function(name) {
		return this.map.hasOwnProperty(',' + name);
	},

	add: function(name) {
		this.map[',' + name] = true;
		this.list.push(name);
		this.dispatch('add', name);
	}
});

window.Friends = Listenable.extendObject({
	loaded: false,
	map: {},
	friends: [],

	isFriend: function(name) {
		return !!this.map[',' + name];
	},

	handleMessage: function(ev, data) {
		if (ev === 'Friends') {
			console.assert(!this.loaded);
			this.loaded = true;
			this.friends = [];

			var that = this;
			data.forEach(function(name) {
				that.doAddFriend(name);
			});

			Users.listen(function(ev, user) {
				if (that.isFriend(user.name)) {
					// Pass online/offline signals regarding friends on.
					that.dispatch(ev, user);
				}
			});
			return true;
		}

		if (ev === 'Add friend') {
			this.doAddFriend(data[0]);
			return true;
		}
		if (ev === 'Delete friend') {
			this.doRemoveFriend(data[0]);
			return true;
		}
	},

	doAddFriend: function(name) {
		console.assert(!this.map[',' + name]);
		this.friends.push(name);
		this.map[',' + name] = 1;

		this.dispatch('friend', name);
		var user = Users.getUser(name);
		if (user) this.dispatch('online', user);
	},

	doRemoveFriend: function(name) {
		var ind = this.friends.indexOf(name);
		console.assert(ind !== -1);
		this.friends.splice(ind, 1);
		delete this.map[',' + name];

		var user = Users.getUser(name);
		if (user) this.dispatch('offline', user);
		this.dispatch('unfriend', name);
	},

	addFriend: function(name) {
		Communicator.send(['Add friend', name]);
		// We will shortly receive either an 'Add friend' signal back, or one
		// of the following 'Async error's:
		// - ["<user> is not a registered user"]
		// - ["<user> is already your friend"]
	},

	removeFriend: function(name) {
		Communicator.send(['Delete friend', name]);
		// We will shortly receive either an 'Delete friend' signal back, or
		// an 'Async error' with data ["<user> is not your friend"].
	},

	sendCurrentInfo: function(handler) {
		var cb = this.getSingleDispatcher(handler);
		this.friends.forEach(function(name) {
			cb('friend', name);
			var user = Users.getUser(name);
			if (user) cb('online', user);
		});
	}
});

window.addUserContextMenu = function(el, name) {
	el.attr('contextmenu', 'contextmenu').on('contextmenu', function() {
		var menu = $('#contextmenu').empty();

		// Try to trick Firefox into opening a nicer context menu.
		try {
			var range = document.createRange();
			var hiddenEl = document.getElementById('hiddentext');
			hiddenEl.textContent = name;
			range.selectNode(hiddenEl);
			window.getSelection().addRange(range);
		}
		catch(e) {}

		var isSelf = (name === myUserName);

		if (!isSelf && Users.getUser(name)) {
			$('<menuitem>').attr('label', "Chat With \"" + name + "\"").click(function() {
				var user = Users.getUser(name);
				if (user) {
					ChatManager.openUserChat(user, true).focus();
				}
			}).appendTo(menu);
		}

		if (!isSelf && !IgnoreList.has(name)) {
			$('<menuitem>').attr('label', "Add \"" + name + "\" to Ignore List").click(function() {
				IgnoreList.add(name);
			}).appendTo(menu);
		}

		if (Friends.isFriend(name)) {
			$('<menuitem>').attr('label', "Remove From Friend List").click(function() {
				Friends.removeFriend(name);
			}).appendTo(menu);
		}
		else {
			$('<menuitem>').attr('label', "Add \"" + name + "\" as a Friend").click(function() {
				Friends.addFriend(name);
			}).appendTo(menu);
		}
	});
};

window.OnlineList = SidebarWidget.extendObject({
	order: 'c',
	importance: 1,
	title: "Online",

	friendList: null,
	modList: null,
	userCount: null,
	map: null,
	nUsers: 0,
	initialAdding: false,

	init: function() {
		this.ui = $('<div>').addClass('online-widget');
	},

	compareUserRows: function(a, b) {
		if (a.modStatus > b.modStatus)
			return true;
		if (a.modStatus < b.modStatus)
			return false;
		return (a.name < b.name);
	},

	shown: function() {
		$('<h3>').text("Friends:").appendTo(this.ui);
		this.friendList = $('<div>').appendTo(this.ui);
		$('<hr>').appendTo(this.ui);
		$('<h3>').text("Admins:").appendTo(this.ui);
		this.modList = $('<div>').appendTo(this.ui);
		this.userCount = $('<span>');
		$('<div>').addClass('usercount')
			.append(this.userCount).append(" users online.")
			.appendTo(this.ui);

		this.nUsers = 0;
		this.map = {};
		var that = this;
		this.userListener = Users.listen(function(ev, user) {
			if (ev === 'online')
				that.add(user);
			else if (ev === 'offline')
				that.remove(user);
		});
		Users.sendCurrentInfo(this.userListener);
		this.friendListener = Friends.listen(function(ev, name) {
			var user = Users.getUser(name);
			if (user) {
				// We are un-/friending an online user.
				if (ev === 'friend') {
					that.remove(user);
					that.add(user);
				}
				else if (ev === 'unfriend') {
					that.remove(user);
					that.add(user);
				}
			}
		});
	},

	add: function(user) {
		if (this.nUsers === 0) {
			// Delay setting the counter on the first adding, to avoid touching
			// the DOM too much.
			this.initialAdding = true;
			var self = this;
			setTimeout(function() {
				self.initialAdding = false;
				self.setUserCount();
			});
		}

		++this.nUsers;
		this.setUserCount();

		if (!user.isFriend() && user.modStatus === 0)
			return;

		var el = $('<div>').addClass('online-row').text(user.name)
			.css('color', user.getColor());

		addUserContextMenu(el, user.name);

		var holder = (user.isFriend() ? this.friendList : this.modList);

		// Insert the element in the right place to maintain a sorted order.
		// There are too few elements to bother doing this efficiently.
		var lt = this.compareUserRows, before = null;
		holder.children().each(function() {
			var e2 = $(this), u2 = Users.getUser(e2.text());
			if (u2 === null)
				console.log(e2, e2.text());
			if (lt(user, u2)) {
				before = e2;
				return false;
			}
		});
		if (before)
			el.insertBefore(before);
		else
			el.appendTo(holder);

		this.map[',' + user.name] = el;
	},

	remove: function(user) {
		--this.nUsers;
		this.setUserCount();

		var el = this.map[',' + user.name];
		if (el) el.remove();
	},

	setUserCount: function() {
		// Don't set the user count each time when adding lots of users,
		// for performance (a ~1 second lag).
		if (this.initialAdding)
			return;

		this.userCount.text(this.nUsers);
	},

	hidden: function() {
		this.ui.empty();
		this.map = null;
		this.userCount = this.friendList = this.modList = null;
		Users.unlisten(this.userListener);
		Users.unlisten(this.friendListener);
	}
});

})();
