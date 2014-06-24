
;(function() {
"use strict";

window.myUserName = null;
window.amAdmin = null;

window.setupLoggedInState = function(uname, admin) {
	myUserName = uname;
	amAdmin = admin;
	Sidebar.show();
	ChatManager.setupGlobalChat();
	OnlineList.open(true);
	Commands.show();
};

window.destroyLoggedInState = function() {
	Commands.hide();
	OnlineList.close();
	ChatManager.removeAllChats();
	Sidebar.hide();
};

window.doLogout = function() {
	destroyLoggedInState();
	Communicator.closeConnection();
	setView(new LoginView());
};

function preload() {
	var imgs = [
		"img/",
		"loading.gif", "error.png", "minimize.png", "unminimize.png",
		"nowatch.png", "key-nowatch.png", "key.png",
		[
			"duel/",
			"border.png", "rank.png", "star.png",
			[
				"frames/",
				"back.jpg", "effect.jpg", "fusion.jpg", "normal.jpg",
				"ritual.jpg", "spell.jpg", "synchro.jpg", "trap.jpg", "xyz.jpg"
			],
			[
				"attr/",
				"dark.png", "divine.png", "earth.png", "fire.png",
				"light.png", "water.png", "wind.png"
			],
			[
				"st-icons/",
				"continuous.png", "counter.png", "equip.png", "field.png",
				"quickplay.png", "ritual.png"
			]
		]
	];

	function rec(dir, ar) {
		dir += ar[0];
		for (var i = 1; i < ar.length; ++i) {
			var a = ar[i];
			if (typeof a === "string")
				new Image().src = dir + a;
			else
				rec(dir, a);
		}
	}
	rec("", imgs);
}

$(function() {
	Sidebar.init();
	Commands.init();
	Debug.init();
	preload();
	setView(new LoginView(true));

	var hasInner = !!window.innerHeight;

	// Keep the view maximized with a constant aspect ratio.
	$(window).resize(function() {
		if (!hasInner) {
			// Polyfill inner{Height,Width}. We can't easily get the sizes
			// including scrollbars, so we cheat and use the ones without
			// scollbars (on page load, it's probably the same).
			window.innerHeight = $(window).height();
			window.innerWidth = $(window).width();
		}

		var HWRAT = 9/16;
		var h = innerHeight, w = innerWidth;
		var rat = h/w, nh = h, nw = w;
		if (rat > HWRAT) nh = w * HWRAT;
		else nw = h / HWRAT;
		$('#fullscreen').css({
			width: nw,
			height: nh,
			left: (w - nw)/2,
			top: (h - nh)/2
		});
	}).resize();
});

})();
