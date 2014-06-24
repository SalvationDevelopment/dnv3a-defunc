var EXPORTED_SYMBOLS = ["SocketCom"];

const Cc = Components.classes; 
const Ci = Components.interfaces; 
const Cu = Components.utils; 
const NS_BINDING_ABORTED = 0x804b0002;
// const NS_BASE_STREAM_CLOSED = 0x80470002;

function SocketCom(callback) {
	var ThreadManager = Cc["@mozilla.org/thread-manager;1"].getService();
	Cu.import("resource://gre/modules/NetUtil.jsm");

	var readData = '';
	var input = null, output = null, closed = false;
	var reader = {
		onInputStreamReady: function(input) {
			var avail, ind;
			try {
				input.available();
				while (avail = input.available()) {
					readData += NetUtil.readInputStreamToString(input, avail);
				}
				while ((ind = readData.indexOf('\0')) !== -1) {
					callback('read', readData.substr(0, ind));
					readData = readData.substr(ind+1);
				}
				input.asyncWait(reader, 0, 0, ThreadManager.mainThread);
			}
			catch(e) {
				if (!closed) callback('close', e.name);
				closed = true;
			}
		}
	};
	var SocketTransportService = Cc["@mozilla.org/network/socket-transport-service;1"]
	                             .getService(Ci.nsISocketTransportService);

	var socket = SocketTransportService.createTransport(null, 0, "duelingnetwork.com", 1234, null);
	input = socket.openInputStream(0, 0, 0).QueryInterface(Ci.nsIAsyncInputStream);
	output = socket.openOutputStream(Ci.nsITransport.OPEN_BLOCKING, 0, 0);
	input.asyncWait(reader, 0, 0, ThreadManager.mainThread);

	this.close = function() {
		closed = true;
		socket.close(NS_BINDING_ABORTED);
	};
	this.send = function(data) {
		if (!output) return false;
		output.write(data, data.length);
		// flush?
		return true;
	};
}
