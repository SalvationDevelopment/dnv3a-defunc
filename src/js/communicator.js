
;(function() {
"use strict";
var Communicator = {};

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
		var s = ar[i].toString();
		if (typeof s !== 'string') throw 'Not a string array';
		escArray.push(s.replace(/\\/g, '\\\\').replace(/,/g, '\\,'));
	}
	return escArray.join(',');
}


Communicator.setup = function(ready) {
	Communicator.setup = function() {
		throw "Communicator.setup() should only be called once!";
	};
	Communicator._initialize = function() {
		var swf = document.getElementById('swf_communicator');
		var resp = null, statusHandler = null;
		delete Communicator._initialize;
		Communicator.open = function(respCb, statusCb) {
			resp = respCb;
			statusHandler = statusCb;
			swf.open();
		};
		Communicator.send = function(ar) {
			swf.sendMessage(arrayToString(ar));
		};
		Communicator.close = function() {
			swf.close();
		};
		Communicator._response = function(data) {
			data = data
				.replace(/%5c/g, '\\')
				.replace(/%26/g, '&')
				.replace(/%25/g, '%');
			resp(stringToArray(data));
		};
		Communicator._responseStatus = function(st) {
			statusHandler(st);
		};
		if (ready) {
			ready(true);
			ready = null;
		}
	};

	function flashLoaded(e) {
		if (!e.success && ready) {
			ready(false);
			ready = null;
		}
	}

	var flashId = 'swf_communicator';
	var flashvars = {};
	var params = {allowscriptaccess: 'always'};
	var attributes = {};
	var el = document.createElement('div');
	el.style.position = 'absolute';
	el.style.left = '-200px';
	el.style.top = '-200px';
	el.id = flashId;
	document.body.appendChild(el);
	swfobject.embedSWF("communicator.swf", flashId, '0', '0', '10.0.0', false, flashvars, params, attributes, flashLoaded);

	// Treat flash as not loading after five seconds.
	setTimeout(function() {
		if (ready) {
			ready(false);
			ready = null;
			var el = document.getElementById(flashId);
			if (el && el.parentNode) {
				el.parentNode.removeChild(el);
			}
		}
	}, 5000);
};

window.Communicator = Communicator;
})();
