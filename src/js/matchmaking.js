
;(function() {
"use strict";

function convertTitleToUsers(title) {
	// Extract the person(s) dueling from a duel title field given by DN.
	// In duel mode this is the person hosting, in watch mode the two persons
	// dueling.
	var i = title.indexOf('|'), names = [title];
	if (i !== -1) {
		names = [title.substring(0, title.lastIndexOf('(', i) - 1),
		         title.substring(i+2, title.lastIndexOf('(') - 1)];
	}
	return names.map(function(name) {
		var user = Users.getUser(name);
		return user;
	});
}

function getRating(duel, part) {
	if (duel.ratingData) {
		return duel.ratingData.split('/')[part]-0;
	}
	var both = duel.title.split(' | ');
	return Math.max.apply(Math, both.map(function(data) {
		data = data.slice(data.lastIndexOf('(')+1, -1);
		return data.split('/')[part]-0;
	}));
}

// An abstract tab class, representing a main tab in the UI.
var Tab = Class.extend({
	view: null,
	tab: null,

	init: function(view, name) {
		this.view = view;
		this.tab = $('<li>').text(name).css('display', 'none')
			.appendTo(view.tabHolder);
		this.contentHolder = $('<div>').addClass('mm-tab').hide()
			.appendTo(view.mainBox);
	},

	destroy: function() {
		this.contentHolder.remove();
		this.tab.remove();
	},

	addCommands: function(map) {},
	addSearchDuelCommands: function(map) {},

	show: function() {
		this.contentHolder.show();
		this.tab.addClass('selected');
	},

	hide: function() {
		this.contentHolder.hide();
		this.tab.removeClass('selected');
	},

	isVisible: function() {
		return this.tab.hasClass('selected');
	},

	setTabVisibility: function(vis) {
		this.tab.toggle(vis);
	},

	isTabVisible: function(vis) {
		return (this.tab.css('display') !== 'none');
	},

	fadeSetTabVisibility: function(vis) {
		var tab = this.tab;
		if (this.isTabVisible() === vis) return;

		var hidden = {'left': -10, 'opacity': 0, 'width': 0},
		    shown = {'left': 0, 'opacity': 1, 'width': tab.width()};
		tab.css({'z-index': 1, 'overflow': 'hidden'})
		   .css(vis ? hidden : shown);

		if (vis) tab.show();
		tab.animate((vis ? shown : hidden), (vis ? 100 : 190), function() {
			tab.css({'z-index': '', 'overflow': ''})
			   .css({'opacity': '', 'left': '', 'width': ''});
			if (!vis) tab.hide();
		});
	}
});

var MatchTab = Tab.extend({
	table: null,
	tbody: null,
	duelMap: null,
	watch: null,
	userHasScrolled: true,
	initialDuels: false,

	// A jQuery wrapper around the currently selected row, or null for no
	// selection (when the tab is hidden).
	selection: null,

	init: function(view, watch, name) {
		this._super(view, name);
		this.watch = watch;
		this.duelMap = {};

		this.contentHolder.addClass('duel');
		this.table = $('<table>').addClass('mm-table').appendTo(this.contentHolder);

		this.headSelection = $('<tr>');
		if (this.watch) {
			this.headSelection.addClass('watch').append(
				$('<th>').addClass('mm-th-title').text('Duelist 1')
			).append(
				$('<th>').addClass('mm-th-title').text('Duelist 2')
			).append(
				$('<th>').addClass('mm-th-icons')
			);
		}
		else {
			this.headSelection.append(
				$('<th>').addClass('mm-th-name').text('Name')
			).append(
				$('<th>').addClass('mm-th-note').text('Note')
			).append(
				$('<th>').addClass('mm-th-rating').text('Rating')
			).append(
				$('<th>').addClass('mm-th-icons')
			);
		}
		$('<thead>').append(this.headSelection).appendTo(this.table);

		this.tbody = $('<tbody>').appendTo(this.table);

		var that = this;
		var selectClickedRow = function(e) {
			that.select($(this), (this === that.headSelection[0]));

			// Fake focusing the row.
			document.activeElement.blur();
			e.preventDefault();
		};
		this.table.on('mousedown', 'tr', selectClickedRow);

		var markScroll = function() {
			that.userHasScrolled = true;
		};
		this.contentHolder.mousedown(markScroll).mousewheel(markScroll);
	},

	destroy: function() {
		this._super();
	},

	show: function() {
		this._super();
		this.userHasScrolled = false;
		this.selectHead();
	},

	hide: function() {
		this.select(null, false);
		this.userHasScrolled = true;
		this._super();
	},

	selectRel: function(dir) {
		var next;
		if (this.isSelection(this.headSelection)) {
			next = (dir < 0 ? $() : $(this.tbody[0].firstChild));
		}
		else {
			next = (dir < 0 ? this.selection.prev() : this.selection.next());
		}

		// Skip hidden rows.
		while (next.length && next.css('display') === 'none') {
			next = (dir < 0 ? next.prev() : next.next());
		}

		if (next.length)
			this.select(next, true);
		else if (dir === -1)
			this.select(this.headSelection, true);
	},

	selectHead: function() {
		this.select(this.headSelection, true);
	},

	isSelection: function(sel) {
		return (this.selection ? sel && this.selection[0] === sel[0] : !sel);
	},

	select: function(sel, scrollIntoView) {
		if (this.selection)
			this.selection.removeClass('selected');
		this.selection = sel;
		if (this.selection)
			this.selection.addClass('selected');

		if (scrollIntoView)
			this.scrollSelectionIntoView(true);
		this.view.setCommands();
	},

	scrollSelectionIntoView: function(force) {
		// When doing the initial population of lots rows, approximately 90%
		// of the time is consumed by the calculation of layout data in here.
		// Therefore, avoid scrolling things into view for every added row,
		// and only do it when finished adding all of them.
		if (this.initialDuels) return;

		// Unless forced, don't scroll the selection into view if the user is
		// using the mouse to move around.
		if (!force && this.userHasScrolled) return;
		this.userHasScrolled = false;

		var holder = this.contentHolder;
		var pos = this.selection.prop('offsetTop'),
		    selSize = this.selection.height(),
		    height = holder.height();

		var pad = Math.min(Math.floor(height*0.1), 30);
		var min = pos + selSize + pad - height, max = pos - pad;

		// Try to scroll to a position such that the selection is 'pad' away
		// from the border. When this scroll position is not possible,
		// scrollTop clamps to the nearest possible value.
		if (holder.scrollTop() < min) holder.scrollTop(min);
		if (holder.scrollTop() > max) holder.scrollTop(max);
	},

	addCommands: function(map) {
		var that = this;
		if (this.watch && !this.isSelection(this.headSelection)) {
			map.push(
				[10, 'w', "Watch duel", function() { that.joinWatch(); }]
			);
		}
		map.push(
			[21, "↑/↓", "Move selection"],
			[22, 'g', "Reset selection", function() { that.selectHead(); }],
			[0, 'up', '', function() { that.selectRel(-1); }],
			[0, 'down', '', function() { that.selectRel(1); }],
			[0, 'k', '', function() { that.selectRel(-1); }],
			[0, 'j', '', function() { that.selectRel(1); }]
		);
	},

	addSearchDuelCommands: function(map) {
		var that = this;
		map.push(
			[10, "↑/↓", "Move selection"],
			[0, 'force;up', '', function() { that.selectRel(-1); }],
			[0, 'force;down', '', function() { that.selectRel(1); }]
		);
		if (this.watch && !this.isSelection(this.headSelection)) {
			map.push(
				[20, "<enter>", "Watch duel"],
				[0, "force;enter", '', function() { that.joinWatch(); }]
			);
		}
	},

	joinWatch: function() {
		var sel = this.selection;
		var duel = sel[0].duel, pwd = '';
		if (duel.pwdProtected) {
			pwd = window.prompt("Enter watch password:");
			if (pwd === null || pwd === "") {
				// No password given.
				return;
			}
			if (!this.isSelection(sel)) {
				// Duel has disappeared. We could try it anyway, knowingly
				// receiving an error message, to simplify the code.
			}
		}
		Communicator.send(['Watch duel', duel.mode, duel.title, duel.token, pwd]);
	},

	removeDuel: function(token) {
		var row = this.duelMap[token];
		if (!row) return false;
		delete this.duelMap[token];

		row = $(row);
		if (this.isSelection(row)) {
			var prev = row.prev();
			this.select(prev.length ? prev : this.headSelection, false);
		}

		row.remove();
		this.scrollSelectionIntoView(false);
		return true;
	},

	addInitialDuels: function(duels) {
		this.initialDuels = true;
		var that = this;
		duels.forEach(function(duel) {
			that.addDuel(duel);
		});
		this.initialDuels = false;
		this.scrollSelectionIntoView(false);
	},

	addDuel: function(duel) {
		if (!this.canHandleDuel(duel)) return false;

		// Create the duel with raw DOM since jQuery is too slow here
		// (particularly when adding the initial watch list).
		var row = document.createElement('tr');

		var titles = (this.watch ? duel.title.split(' | ') : [duel.title]);
		titles.forEach(function(t) {
			var el = document.createElement('td');
			el.textContent = t;
			row.appendChild(el);
		});

		if (!this.watch) {
			var noteEl = document.createElement('td');
			noteEl.textContent = duel.note;
			row.appendChild(noteEl);
			var ratingEl = document.createElement('td');
			ratingEl.textContent = duel.ratingData;
			row.appendChild(ratingEl);
		}

		// XXX: In watch mode, 'note' should perhaps have an icon, and somehow
		// be viewable.
		var iconsEl = document.createElement('td');
		var iconNoWatch = (!this.watch && !duel.allowWatch);
		var iconPwd = duel.pwdProtected;
		if (iconNoWatch) {
			iconsEl.className = 'icon-nowatch';
		}
		if (iconPwd) {
			iconsEl.className += ' icon-pwd';
		}

		row.appendChild(iconsEl);

		// Add the duel.
		var tbody = this.tbody[0];
		tbody.insertBefore(row, tbody.firstChild);
		row.duel = duel;
		this.duelMap[duel.token] = row;

		var visible = this.filterRow(row);
		if (visible)
			this.scrollSelectionIntoView(false);
		return true;
	},

	rowMatchesFilter: function(row) {
		var f = this.view.filter;
		var duel = row.duel;
		if (f.nameOrDesc) {
			var s = f.nameOrDesc;
			if (duel.note.indexOf(s) === -1 && duel.users.every(function(u) {
					return u.name.indexOf(s) === -1;
				}))
			{
				return false;
			}
		}

		if (!isNaN(f.rating[0]) && getRating(duel, 0) < f.rating[0])
			return false;
		if (!isNaN(f.rating[1]) && getRating(duel, 0) > f.rating[1])
			return false;

		if (!isNaN(f.exp[0]) && getRating(duel, 1) < f.exp[0])
			return false;
		if (!isNaN(f.exp[1]) && getRating(duel, 1) > f.exp[1])
			return false;

		return true;
	},

	filterRow: function(row) {
		var duel = row.duel;
		var vis = (!this.view.filter || this.rowMatchesFilter(row));
		if (!vis && this.selection && this.selection[0] === row) {
			this.selectRel(-1);
		}
		row.style.display = (vis ? '' : 'none');
		return vis;
	},

	refilterDuels: function() {
		var rows = this.tbody[0].children, len = rows.length;
		for (var i = 0; i < len; ++i) {
			this.filterRow(rows[i]);
		}
	}
});

var GlobalMatchTab = MatchTab.extend({
	mode: null,
	init: function(view, watch, modes, name) {
		this._super(view, watch, name);
		this.modes = modes;
		this.setTabVisibility(true);
	},

	canHandleDuel: function(duel) {
		return ~this.modes.indexOf(duel.mode);
	}
});


var FriendTab = MatchTab.extend({
	currentDuelists: null,
	friendListener: null,

	init: function(view, watch) {
		this._super(view, watch, '');
		this.currentDuelists = {};

		var that = this;
		this.friendListener = Friends.listen(function(ev, data) {
			if (ev === 'friend' || ev === 'unfriend') {
				var user = Users.getUser(data);
				if (!user || !user.currentDuel) return;
				if (ev === 'friend')
					that.addDuel(user.currentDuel, true);
				else
					that.removeDuel(user.currentDuel.token, true);
			}
		});
	},

	destroy: function() {
		Friends.unlisten(this.friendListener);
		for (var token in this.currentDuelists) {
			this.currentDuelists[token].forEach(function(user) {
				delete user.currentDuel;
			});
		}
		this._super();
	},

	count: function() {
		return this.tbody.children().length;
	},

	addInitialDuels: function(duels) {
		this._super(duels);
		this.update();
	},

	addDuel: function(duel, existent) {
		if (existent) {
			// Make sure not to add the duel if it already exists.
			if (this.duelMap[duel.token]) return;
		}
		else {
			duel.users.forEach(function(user) {
				user.currentDuel = duel;
			});
			this.currentDuelists[duel.token] = duel.users;
		}

		if (this._super(duel))
			this.update();
	},

	removeDuel: function(token, existent) {
		if (existent) {
			// Don't remove duels we can still handle.
			var duel = this.duelMap[token].duel;
			if (this.canHandleDuel(duel)) return;
		}
		else {
			this.currentDuelists[token].forEach(function(user) {
				delete user.currentDuel;
			});
			delete this.currentDuelists[token];
		}

		if (this._super(token))
			this.update();
	},

	update: function() {
		// Avoid unnecessary use of the DOM during the initial adding of duels
		// (postpone it to the end of addInitialDuels, instead).
		if (this.initialDuels) return;

		this.tab.text("Friends (" + this.count() + ")");

		if (this.count() > 0) {
			if (!this.isTabVisible()) {
				this.fadeSetTabVisibility(true);
			}
		}
		else {
			if (!this.isVisible()) {
				this.fadeSetTabVisibility(false);
			}
		}
	},

	hide: function() {
		this._super();
		if (this.count() === 0) {
			this.fadeSetTabVisibility(false);
		}
	},

	canHandleDuel: function(duel) {
		return duel.users.some(function(u) { return u.isFriend(); });
	}
});

var HostTab = Tab.extend({
	init: function(view) {
		this._super(view, "Host duel");
		this.setTabVisibility(false);
		this.contentHolder.addClass('host').text("Unimplemented.");
	}
});

window.SearchPanel = Class.extend({
	view: null,
	ui: null,
	nextFilter: null,
	isOpen: false,

	init: function(view) {
		this.view = view;
		this.ui = $('#mm-search').hide();
		var update = view.setCommands.bind(view);
		this.searchField = this.ui.find('#mm-search-field > input');
		this.ratingFields = this.ui.find('#mm-search-rating > input');
		this.expFields = this.ui.find('#mm-search-exp > input');
		var that = this;
		this.ui.find('input')
			.focus(update).blur(update)
			.on('input', this.changeFilter.bind(this));
		this.clear();
	},

	destroy: function() {
		this.ui.find('input').off();
	},

	open: function() {
		this.isOpen = true;
		this.ui.show();
		$('#mm-side').stop().animate({width: 240}, 70);
		this.searchField.focus();
		this.view.setCommands();
	},

	setCommands: function() {
		var focused = this.ui.find('input:focus');
		if (!focused.length)
			return false;
		var map = [];
		map.push(
			[31, "<tab>", "Next field"],
			[32, "<s-tab>", "Previous field"],
			[33, "<esc>", "Unfocus field"],
			[0, 'force;escape', '', function(ev) {
				ev.target.blur();

				// Also close the search box if there is no active filter.
				if (!this.nextFilter)
					this.close();
			}]
		);

		// Prevent default tab behavior at the edges.
		if (focused[0] === this.expFields[1])
			map.push([0, 'force;tab', '', function() {}]);
		if (focused[0] === this.searchField[0])
			map.push([0, 'force;shift-tab', '', function() {}]);

		this.view.addSearchDuelCommands(map);

		Commands.setMap(this, map);
		return true;
	},

	close: function() {
		// Clear the filter. For whatever reason, this fails in Firefox unless
		// done on a timer.
		setTimeout(function() {
			this.clear();
		}.bind(this));

		$('#mm-side').animate({width: 0}, 70, function() {
			this.ui.hide();
			this.isOpen = false;
			this.view.setCommands();
		}.bind(this));
	},

	changeFilter: function() {
		var filter = {
			nameOrDesc: this.searchField.val(),
			rating: [
				parseInt(this.ratingFields[0].value, 10),
				parseInt(this.ratingFields[1].value, 10)
			],
			exp: [
				parseInt(this.expFields[0].value, 10),
				parseInt(this.expFields[1].value, 10)
			]
		};
		if (filter.nameOrDesc === '' &&
			filter.rating.every(isNaN) &&
			filter.exp.every(isNaN))
		{
			filter = null;
		}

		this.delayedSetFilter(filter);
	},

	delayedSetFilter: function(filter) {
		this.nextFilter = filter;
		var that = this;
		setTimeout(function() {
			that.view.refilterDuels(that.nextFilter);
		}, 100);
	},

	clear: function() {
		this.ui.find('input').val('');
		this.delayedSetFilter(null);
	}
});

window.MatchmakingView = View.extend({
	id: 'matchmakingview',
	inited: false,
	hasFirstDuels: false,
	canDuel: true,
	switchingDeck: false,
	searchPanel: null,
	filter: null,
	watch: false,
	deck: null,
	tabs: null,
	activeTab: null,
	Tabs: {'AR':0, 'AU':1, 'TU':2, 'FRIEND':3, 'HOST':4},

	open: function() {
		this.tabHolder = $('#mm-tabs');
		this.mainBox = $('#mm-main-box');
		this.searchPanel = new SearchPanel(this);
		this.initMode();
		Communicator.send(['Load duel room']);
	},

	close: function() {
		$('#mm-deck').empty().off();
		this.destroyMode();
		this.searchPanel.destroy();
	},

	loadUI: function() {
		$('#mm-main').addClass('border-box');
		$('#mm-main-box').addClass('border-box');
		$('#mm-side-cont').addClass('border-box');
	},

	initTabs: function() {
		var w = this.watch;
		var tabs = this.tabs = [];
		tabs[this.Tabs.AR] = new GlobalMatchTab(this, w, ['ar'], "Adv. Rated");
		tabs[this.Tabs.AU] = new GlobalMatchTab(this, w, ['au'], "Adv. Unrated");
		tabs[this.Tabs.TU] = new GlobalMatchTab(this, w, ['tu', 'uu'], "Traditional");
		tabs[this.Tabs.FRIEND] = new FriendTab(this, w);
		tabs[this.Tabs.HOST] = new HostTab(this, w);

		this.activeTab = this.Tabs.AR;
		tabs[this.activeTab].show();
	},

	setDeck: function(deck) {
		this.deck = deck;
	},

	goBack: function() {
		ignoreLateMessages(this.ignoreLateMessage);
		Communicator.send(['Exit duel room']);
		setView(new MenuView());
	},

	switchDeck: function() {
		var deckList = $('#mm-deck');
		var sel = deckList.prop('selectedIndex');
		deckList.prop('size', deckList.find('option').length);
		deckList.focus();
		setTimeout(function() {
			deckList.prop('selectedIndex', sel);
		});
		this.switchingDeck = true;
		this.setCommands();
	},

	stopSwitchingDeck: function() {
		var deckList = $('#mm-deck');
		deckList.prop('size', '');
		this.switchingDeck = false;
		this.setCommands();
	},

	hostDuel: function() {
		this.tabs[this.Tabs.HOST].fadeSetTabVisibility(true);
		this.changeTab(this.Tabs.HOST);
	},

	initMode: function() {
		var watch = this.watch;
		this.ui.find('h1').each(function(i) {
			var sel = (watch ? 1 : 0);
			$(this).toggleClass('selected', i === sel);
		});

		this.initTabs();
		this.setCommands();

		this.hasFirstDuels = false;
		if (watch) {
			Communicator.send(['Watch mode']);
		}
		else if (this.inited) {
			Communicator.send(['Duel mode']);
		}
	},

	destroyMode: function() {
		this.tabs[this.activeTab].hide();
		this.tabs.forEach(function(tab) {
			tab.destroy();
		});
		this.tabs = this.activeTab = null;
	},

	setWatch: function(watch) {
		if (this.watch === watch) return;
		ignoreLateMessages(this.ignoreLateMessage);
		var lastTab = this.activeTab;
		this.destroyMode();
		this.watch = watch;
		this.initMode();

		// Restore the previous tab selection if it one of the global match tabs.
		if (lastTab < 3) {
			this.changeTab(lastTab);
		}
	},

	refilterDuels: function(filter) {
		if (JSON.stringify(filter) === JSON.stringify(this.filter)) {
			// Nothing has changed, don't bother traversing all that DOM.
			return;
		}
		this.filter = filter;

		this.tabs.forEach(function(tab) {
			if (tab instanceof MatchTab)
				tab.refilterDuels(filter);
		});
	},

	setCommands: function() {
		if (this.switchingDeck) {
			Commands.setMap(this, [
				[0, "↑/↓", "Change deck"],
				[1, "<enter>", "Finish"],
				[0, 'enter', '', function(ev) { ev.target.blur(); }],
				[0, 'escape', '', function(ev) { ev.target.blur(); }],
			]);
			return;
		}

		if (this.searchPanel.setCommands())
			return;

		var map = [];
		if (this.watch) {
			if (this.canDuel) {
				map.push(
					[0, 'D', "Switch to duel mode", function() { this.setWatch(false); }]
				);
			}
		}
		else {
			map.push(
				[0, 'W', "Switch to watch mode", function() { this.setWatch(true); }],
				[10, 'd', "Switch deck", this.switchDeck]
			);

			if (!this.tabs[this.Tabs.HOST].isTabVisible()) {
				map.push(
					[11, 'H', "Host duel", this.hostDuel]
				);
			}
		}

		if (!this.searchPanel.isOpen) {
			map.push(
				[12, '/', "Filter", function() { this.searchPanel.open(); }]
			);
		}
		else {
			map.push(
				[12, "<esc>", "Stop filtering"],
				[0, 'force;escape', '', function() { this.searchPanel.close(); }],
				[0, '/', '', function() { this.searchPanel.open(); }]
			);
		}

		map.push(
			[20, "←/→", "Change tabs"],
			[0, 'left', '', function() { this.changeTabRel(-1); }],
			[0, 'h', '', function() { this.changeTabRel(-1); }],
			[0, 'right', '', function() { this.changeTabRel(1); }],
			[0, 'l', '', function() { this.changeTabRel(1); }],
			[100, 'q', "Go back to the menu", this.goBack]
		);

		this.tabs[this.activeTab].addCommands(map);

		Commands.setMap(this, map);
	},

	addSearchDuelCommands: function(map) {
		this.tabs[this.activeTab].addSearchDuelCommands(map);
	},

	changeTabRel: function(dir) {
		var ind = this.activeTab;
		do {
			ind = modulo(ind + dir, this.tabs.length);
		} while (!this.tabs[ind].isTabVisible());
		this.changeTab(ind);
	},

	changeTab: function(to) {
		this.tabs[this.activeTab].hide();
		this.tabs[to].show();
		this.activeTab = to;
		this.setCommands();
	},

	ignoreLateMessage: function(ev, data) {
		return (ev === 'Add duels' || ev === 'Add watches' ||
		        ev === 'Remove duels' || ev === 'Remove watches');
	},

	handleInitMessage: function(data) {
		if (data.length <= 1) {
			// No deck, go into watch mode and stay there.
			this.canDuel = false;
			this.setWatch(true);
			return;
		}

		var deckList = $('#mm-deck');
		var selectedDeck = data[0]-0;
		for (var i = 1, ind = 0; i < data.length; i += 2, ++ind) {
			var deckName = data[i], legality = data[i+1];
			var deck = {'name': deckName, 'legality': legality};
			if (ind === selectedDeck) {
				this.setDeck(deck);
			}

			var opt = $('<option>');
			opt.text(deckName);
			opt.data('data', deck);
			deckList.append(opt);
		}
		deckList.prop('selectedIndex', selectedDeck);

		var that = this;
		deckList.change(function() {
			var deck = deckList.find(':selected').data('data');
			that.setDeck(deck);
		}).blur(function() {
			that.stopSwitchingDeck();
		});
	},

	handleMessage: function(ev, data) {
		if (!this.inited) {
			if (ev !== 'Load duel room') return false;
			this.inited = true;
			this.handleInitMessage(data);
			return true;
		}

		if (ev === 'Watch duel') {
			Communicator.send(['Unsubscribe']);
			ignoreLateMessages(this.ignoreLateMessage);
			setView(new DuelView(true, data));
			return true;
		}

		if (ev === (this.watch ? 'Add watches' : 'Add duels')) {
			var first = !this.hasFirstDuels;
			this.hasFirstDuels = true;

			var duels = [];
			for (var i = 0; i < data.length; ) {
				// Note: In watch mode, ratingData is always '', allowWatch is
				// always false, and 'note' has a value in approximately 1% of
				// the cases.
				
				var duel = {
					mode: data[i++],
					matchMode: data[i++],
					title: data[i++],
					ratingData: data[i++],
				    note: data[i++],
					pwdProtected: (data[i++] === 'true'), 
				    allowWatch: (data[i++] === 'true'),
					token: data[i++]
				};
				duel.users = convertTitleToUsers(duel.title);
				duels.push(duel);
			}

			for (var j = 0; j < this.tabs.length; ++j) {
				var tab = this.tabs[j];
				if (tab instanceof MatchTab) {
					if (first) {
						tab.addInitialDuels(duels);
					}
					else {
						duels.forEach(function(duel) {
							tab.addDuel(duel);
						});
					}
				}
			}

			return true;
		}
		if (ev === (this.watch ? 'Remove watches' : 'Remove duels')) {
			for (var i = 0; i < data.length; ) {
				var duel = {
					mode: data[i++],
					title: data[i++],
					token: data[i++]
				};
				var token = duel.token;

				for (var j = 0; j < this.tabs.length; ++j) {
					var tab = this.tabs[j];
					if (tab instanceof MatchTab)
						tab.removeDuel(token);
				}
			}
			return true;
		}
	}
});

})();
