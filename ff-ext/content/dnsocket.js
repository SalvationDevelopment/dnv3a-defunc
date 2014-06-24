(function() {
"use strict";

const Cc = Components.classes; 
const Ci = Components.interfaces; 
const Cu = Components.utils; 
const Cr = Components.results; 

function dateToFlashFormat(d) {
	// Something like "Fri Sep 9 23:11 GMT+0200 2011".
	var dateStr = d.toDateString(); // "Fri Sep 9 2011"
	var timeStrParts = d.toTimeString().split(' '); // ["23:11:40", "GMT+0200", "(CEST)"]
	var ret = dateStr.substr(0, dateStr.lastIndexOf(' ')) + ' ';
	ret += timeStrParts[0].slice(0, -3) + ' ';
	ret += timeStrParts[1] + ' ';
	ret += d.getFullYear();
	return ret;
}

function stringToArray(str) {
	var ar = [], cur = '';
	if (str === '') return ar;
	var i = 0;
	while (i < str.length) {
		var ch = str[i++];
		if (ch === '\\') {
			if (i === str.length) return []; // silent error
			cur += str[i++];
		}
		else if (ch === ',') {
			ar.push(cur);
			cur = '';
		}
		else {
			cur += ch;
		}
	}
	ar.push(cur);
	return ar;
}

function arrayToString(ar) {
	var len = ar.length, escArray = [];
	if (typeof len !== 'number') throw 'Not an array.';
	for (var i = 0; i < len; ++i) {
		var s = ar[i];
		if (typeof s !== 'string') throw 'Not a string array';
		escArray.push(s.replace(/\\/g, '\\\\').replace(/,/g, '\\,'));
	}
	return escArray.join(',');
}

var ext = {
	init: function() {
		var appcontent = document.getElementById('appcontent');
		if (appcontent)
			appcontent.addEventListener('DOMContentLoaded', ext.onPageLoad, true);
	},

	onPageLoad: function(ev) {
		var doc = ev.originalTarget;
		if (doc instanceof HTMLDocument &&
			doc.location.href === "http://simonsoftware.se/dn/" || doc.location.protocol === 'file:') {
			var win = doc.defaultView;
			if (!win.frameElement) {
				ext.injectObj(win, doc);
			}
		}
	},

	injectObj: function(win, doc) {
		Cu.import("resource://dnsocket/socketcom.js");
		function openSocket(readCb, errorCb) {
			if (typeof readCb !== 'function' || typeof errorCb !== 'function') throw "No.";
			var ret = {};
			ret.con = new SocketCom(function(st, data) {
				if (st === 'read') {
					readCb(stringToArray(data));
				}
				else {
					errorCb(data);
				}
			});

			ret.close = function() {
				if (ret.con) ret.con.close();
				ret.con = null;
			};
			ret.send = function(ar) {
				if (ret.con) ret.con.send(arrayToString(ar) + '\0');
			}

			doc.addEventListener('unload', function() {
				ret.close();
			}, false);

			ret.__exposedProps__ = {
				close: "r",
				send: "r",
			};
			return ret;
		}

		function reqStateChange(req, callback) {
			return function() {
				if (req.readyState !== 4) return;
				if (req.status !== 200) {
					callback('http');
					return;
				}
				var data = stringToArray(req.responseText);
				if (data[0] === 'Logged in') {
					callback(null, data[1], data[2], data[3] === 'true');
				}
				else if (data[0] === 'Not confirmed') {
					callback('unconfirmed');
				}
				else if (data[0] === 'Error') {
					callback('error');
				}
				else {
					callback('invalid');
				}
			};
		}

		function autologin(callback) {
			var req = new XMLHttpRequest();
			req.open('POST', "http://www.duelingnetwork.com:8080/Dueling_Network/logged_in.do", true);
			req.channel.loadFlags |= Ci.nsIRequest.LOAD_BYPASS_CACHE;
			req.withCredentials = true;
			req.onreadystatechange = reqStateChange(req, callback);
			var fdata = new FormData();
			fdata.append('date', dateToFlashFormat(new Date()));
			req.send(fdata);
		}

		function login(username, password, remember, callback) {
			var req = new XMLHttpRequest();
			req.open('POST', "http://www.duelingnetwork.com:8080/Dueling_Network/login.do", true);
			req.channel.loadFlags |= Ci.nsIRequest.LOAD_BYPASS_CACHE;
			req.withCredentials = true;
			req.onreadystatechange = reqStateChange(req, callback);
			var fdata = new FormData();
			fdata.append('remember_me', remember ? 'true' : 'false');
			fdata.append('username', username);
			fdata.append('password', password);
			fdata.append('date', dateToFlashFormat(new Date()));
			req.send(fdata);
		}

		win.wrappedJSObject.DuelingNetworkCommunicator = {
			openSocket: openSocket,
			login: login,
			autologin: autologin,
			__exposedProps__: {
				openSocket: "r",
				autologin: "r",
				login: "r"
			}
		};
	},
};

window.addEventListener('load', function() { ext.init(); }, false);
})();
