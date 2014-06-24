
;(function() {
"use strict";

if (!window.console) window.console = {};
if (!console.assert) {
	console.assert = function(condition, msg) {
		if (!condition) {
			msg = "Assertion failure" + (msg ? ": " + msg : ".");
			var err = new Error(msg);
			var stack = err.stack || err.stacktrace || err.message;
			console.error(msg + "\n" + stack);
			throw err;
		}
	};
}
if (!console.assertNotReached) {
	console.assertNotReached = function(msg) {
		console.assert(0, msg);
	};
}


window.randTo = function(to) {
	return Math.floor(Math.random() * 16);
};

window.randHex32 = function() {
	var ret = '';
	for (var i = 0; i < 32; ++i) {
		ret += randTo(16).toString(16);
	}
	return ret;
};

window.hideUnicode = function(text, avail) {
	// Trim right-most spaces; they will be used for encoding.
	var orig = text, olen = orig.length;
	text = /^(.*?) *$/.exec(text)[1];

	// Encode spanish n as ~n.
	text = text.replace(/\xf1/g, '~n');
	text = text.replace(/\xd1/g, '~N');

	if (text === '')
		return orig;
	avail += olen - text.length;

	// Make space for the two ending spaces.
	avail -= 2;

	// Find the largest power-of-two p such that p-1 <= avail, and let
	// maxEnc be its logarithm. Cap p to 64, because that seems like a
	// reasonable upper bound on the number of spaces.
	var maxEnc = 0;
	var p = 1;
	while (p*2-1 <= avail && maxEnc < 6) {
		++maxEnc;
		p *= 2;
	}

	var bits = [];
	function pushbits(ar) {
		if (maxEnc < ar.length) {
			maxEnc = 0;
			return;
		}
		maxEnc -= ar.length;
		bits = bits.concat(ar);
	}

	var ret = "";
	for (var i = 0; i < text.length; ++i) {
		var c = text.charAt(i), cc = c.charCodeAt(0);

		// Note some characters as 'normal'.
		if (c === 'a' || c === 'A') { pushbits([0]); }
		else if (c === 'o' || c === 'O') { pushbits([0]); }

		// Do nothing for other ASCII characters.
		else if (cc >= 32 && cc < 127) {}

		// Further encode others.
		else if (cc === 229) { c = 'a'; pushbits([1,0]); }
		else if (cc === 228) { c = 'a'; pushbits([1,1]); }
		else if (cc === 197) { c = 'A'; pushbits([1,0]); }
		else if (cc === 196) { c = 'A'; pushbits([1,1]); }
		else if (cc === 246) { c = 'o'; pushbits([1]); }
		else if (cc === 214) { c = 'O'; pushbits([1]); }

		// If everything else fails, output a question mark.
		else { c = '?'; }

		ret += c;
	}

	// Unary-code the coded bits with spaces at the end.
	var nsp = 0, bit = 1;
	for (var i = 0; i < bits.length; ++i) {
		if (bits[i]) nsp |= bit;
		bit <<= 1;
	}
	for (var i = 0; i < nsp; ++i) ret += ' ';

	// Add two more spaces to avoid false positives.
	if (nsp !== 0) ret += '  ';

	return ret;
};

window.unhideUnicode = function(text) {
	text = text.replace(/~n/g, '\xf1');
	text = text.replace(/~N/g, '\xd1');

	var ws = / *$/.exec(text)[0].length, cbit = 1;

	if (ws < 2)
		return text;
	ws -= 2;

	function bit() {
		var r = ws & cbit;
		cbit <<= 1;
		return (r ? 1 : 0);
	}

	var shortMap = {
		'a': {
			'0': 229,
			'1': 228
		},
		'A': {
			'0': 197,
			'1': 196
		},
		'o': 246,
		'O': 214
	};

	var t = text.substr(0, text.length - ws - 2), ret = "";
	for (var i = 0; i < t.length; ++i) {
		var c = t.charAt(i), m = shortMap[c];
		if (m && bit()) {
			while (typeof m !== 'number')
				m = m[bit()];
			ret += String.fromCharCode(m);
		}
		else
			ret += c;
	}

	return ret;
};

// Calculate a%b, returning something in [0, b) even if a is negative.
window.modulo = function(a, b) {
	var res = a%b;
	return (res >= 0 ? res : res + b);
};

window.plural = function(n, noun, sing, plural) {
	return n + " " + noun + (n === 1 ? sing : plural);
};

Object.clone = function(obj) {
	var copy = Object.create(Object.getPrototypeOf(obj));
	for (var a in obj) {
		if (Object.prototype.hasOwnProperty.call(obj, a))
			copy[a] = obj[a];
	}
	return copy;
};

// Function.prototype.bind polyfill, taken from MDN.
if (!Function.prototype.bind) {
	Function.prototype.bind = function (oThis) {
		if (typeof this !== "function") // closest thing possible to the ECMAScript 5 internal IsCallable function
			throw new TypeError("Function.prototype.bind - what is trying to be fBound is not callable");

		var aArgs = Array.prototype.slice.call(arguments, 1), 
			fToBind = this, 
			fNOP = function () {},
			fBound = function () {
				return fToBind.apply(this instanceof fNOP ? this : oThis || window, aArgs.concat(Array.prototype.slice.call(arguments)));    
			};

		fNOP.prototype = this.prototype;
		fBound.prototype = new fNOP();
		return fBound;
	};
}

window.Listenable = Class.extend({
	cbMap: null,
	cbInd: 0,

	init: function() {
		this.cbMap = {};
	},

	listen: function(callback) {
		var handler = 'cb' + (this.cbInd++);
		this.cbMap[handler] = callback;
		return handler;
	},

	unlisten: function(handler) {
		delete this.cbMap[handler];
	},

	dispatch: function() {
		for (var handler in this.cbMap) {
			var cb = this.cbMap[handler];
			cb.apply(cb, arguments);
		}
	},

	getSingleDispatcher: function(handler) {
		return this.cbMap[handler];
	}
});

})();
