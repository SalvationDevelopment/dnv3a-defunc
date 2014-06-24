
;(function() {
"use strict";

window.LoginView = View.extend({
	id: 'loginview',
	loaded: false,
	first: null,
	activeAutoLogin: null,
	userLoggingIn: null,

	init: function(first) {
		this._super();
		this.first = first;
	},

	open: function() {
		// Set up a default UI state. We do nothing to the username field,
		// it might be remembered by the browser.
		this.setStatus(true, 0, '');
		this.setPasswordState(true);
		var f = this.ui.find('form')[0];
		f.remember.checked = false;
		f.pwd.value = '';

		// Try to log in automatically if the login screen is loaded from the
		// start. If this fails, give the username field focus right after the
		// view has been shown.
		if (!(this.first && this.autoLogin())) {
			var uinput = this.ui.find('input[name=username]')[0];
			setTimeout(function() {
				uinput.focus();
				uinput.selectionStart = uinput.value.length;
			});
		}

		if (!window.localStorage)
			this.ui.find('input[name=remember]').hide();

		if (this.first) {
			// Set up the communicator, and initiate the auto-login if needed.
			Communicator.setup(function(loaded) {
				if (loaded) {
					Debug.interceptSentMessages();
					if (this.activeAutoLogin) {
						var user = this.activeAutoLogin.user;
						var token = this.activeAutoLogin.token;
						this.logIn(user, token);
					}
					this.loaded = true;
				}
				else {
					if (this.activeAutoLogin)
						this.setPasswordState(true);
					this.setStatus(false, 2, "Flash could not load.");
				}
			}.bind(this));
		}
	},

	loadUI: function() {
		var f = this.ui.find('form');
		var that = this;
		f.submit(function() {
			that.loginPressed(this);
			return false;
		});
	},

	rememberLogin: function(user, token) {
		var info = token + '|' + user;
		try {
			localStorage.rememberedLogin = info;
		}
		catch(e) {}
	},

	autoLogin: function() {
		if (!window.localStorage) return false;
		var info = localStorage.rememberedLogin;
		if (!info) return false;
		var pos = info.indexOf('|');
		if (pos === -1) return false;

		var user = info.substr(pos+1), token = info.substr(0, pos);
		this.activeAutoLogin = {user: user, token: token};

		var f = this.ui.find('form')[0];
		f.remember.checked = true;
		f.username.value = user;
		f.pwd.value = "******";
		this.setPasswordState(false);

		return true;
	},

	setPasswordState: function(enabled) {
		var pwd = this.ui.find('input[name=pwd]');
		pwd.attr('disabled', !enabled);
	},

	removeAutoLogin: function() {
		try {
			localStorage.removeItem('rememberedLogin');
		}
		catch(e) {}
	},

	resetAutoLogin: function() {
		var f = this.ui.find('form')[0];
		if (this.activeAutoLogin) {
			this.activeAutoLogin = null;
			this.setPasswordState(true);
			f.remember.checked = false;
			f.username.value = '';
			f.pwd.value = '';
			f.username.focus();
		}
		else if ($(f.remember).is(':focus')) {
			f.pwd.focus();
		}
	},

	setStatus: function(active, st, text) {
		var submit = this.ui.find('input[type=submit]');
		var loading = $('#loadingstatus');
		submit.attr('disabled', !active);
		loading.children('span').text(text);

		var ind = loading.children('img');
		if (st === 1)
			ind.attr('src', "img/loading.gif");
		if (st === 2)
			ind.attr('src', "img/error.png");

		if (st === 0)
			loading.hide();
		else
			loading.slideDown("slow");
	},

	loginPressed: function(f) {
		if (!this.loaded) return;

		var user = f.username.value;
		var pass = f.pwd.value;
		var remember = f.remember.checked;

		// Silently fail on empty usernames and passwords.
		if (user === '' || pass === '') return;

		var token = hex_md5(pass); // Yup.

		if (remember)
			this.rememberLogin(user, token);

		this.logIn(user, token);
	},

	handleError: function(err) {
		if (err === 'password') {
			if (this.activeAutoLogin)
				this.setStatus(true, 2, "Couldn't log in.");
			else
				this.setStatus(true, 2, "Wrong password.");
			this.removeAutoLogin();
		}
		else if (err === 'close') {
			this.setStatus(true, 2, "Invalid username.");
			this.removeAutoLogin();
		}
		else if (err === 'already') {
			this.setStatus(true, 2, "Already logged in elsewhere.");
		}
		else if (err === 'banned') {
			this.setStatus(true, 2, "You are banned.");
		}
		else if (err === 'limit') {
			this.setStatus(true, 2, "The server is over capacity.");
		}
		else {
			this.setStatus(true, 2, "Socket error (" + err + ").");
		}

		this.resetAutoLogin();
	},

	handleMessage: function(ev, data) {
		if (ev === 'Connected' && data.length >= 1) {
			var admin = parseInt(data[0], 10);
			this.loginSuccess(admin);
		}
		else {
			Communicator.closeConnection();
			if (ev === 'Already logged in') {
				this.handleError('already');
			}
			else if (ev === 'Banned') {
				this.handleError('banned');
			}
			else if (ev === 'Over limit') {
				this.handleError('limit');
			}
			else {
				// We probably have an incorrect password, or the protocol
				// version we're using is too old. Assume the former.
				this.handleError('password');
			}
		}
		return true;
	},

	logIn: function(user, token) {
		this.setStatus(false, 1, "Logging in...");
		this.userLoggingIn = user;
		Communicator.openConnection(function() {
			Communicator.send(['Connect15', user, token, randHex32()]);
		});
	},

	loginSuccess: function(admin) {
		setupLoggedInState(this.userLoggingIn, admin);
		setView(new MenuView());
	}
});

})();
