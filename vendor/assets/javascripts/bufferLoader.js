/**
 * Buffer Loader.js
 *
 * A small abstraction around the HTML5 buffer loader interface
 *
 */

//window.AudioContext = window.AudioContext || window.webkitAudioContext;

var BufferLoader = function(sources) {
    this.buffers = { };
    this.context = null;
    this.init();
};

BufferLoader.prototype.init = function() {
  try {
    window.AudioContext = window.AudioContext || window.webkitAudioContext;
    this.context = new AudioContext();
  }
  catch(_) {
    alert('Web Audio API is not supported in this browser');
  }
};

BufferLoader.prototype.onBufferLoadError = function(_) {
    console.error('Error loading buffer');
};

BufferLoader.prototype.onBufferLoad = function(bufferName, xhr, callback) {
    this.context.decodeAudioData(xhr.response, _.bind(function onSuccess(buffer) {
        this.buffers[bufferName] = buffer;
        if (typeof callback === 'function') {
            callback.call(this);
        }
    }, this), this.onBufferError);
};

BufferLoader.prototype.load = function(bufferName, url) {
    var request = new XMLHttpRequest();
    request.open('GET', url, true);
    request.responseType = 'arraybuffer';
    console.log(request)
    request.onload = _.bind(function() {
    this.onBufferLoad(bufferName, request);
    }, this);
    request.onerror = function() {
        console.error('BufferLoader: XHR error');
    };
    request.send();
};

BufferLoader.prototype._playBuffer = function(name, gain, time) {
    var source = this.context.createBufferSource();
    source.buffer = buffer;
    var gainNode = this.context.createGainNode();
    gainNode.gain.value = gain;
    source.connect(gainNode); /* Connect the SourceNode to the GainNode. */
    gainNode.connect(this.context.destination); /* Connect the GainNode to the DestinationNode. */
    source.connect(this.context.destination);
    source.start(time);
};

BufferLoader.prototype.play = function (name, gain, time) {

    // Default values for time and gain
    gain = typeof gain !== 'undefined' ? gain : 1;
    time = typeof time !== 'undefined' ? time : 0;

    var buffer = this.buffers[name];
    if (buffer) { this._playBuffer(name, time, gain); }
    else { throw new Error("Buffer does not exist"); }
};
