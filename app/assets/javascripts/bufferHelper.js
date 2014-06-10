
function buildBank(sounds) {
  // Fix up prefixing
   window.AudioContext = window.AudioContext || window.webkitAudioContext;
  //context = new AudioContext();

  var soundArray = [];
  for(i=0; i<sounds.length; i++){
    soundArray.push(sounds[i].buffer);
  }

  bufferLoader = new BufferLoader(
    context,
    soundArray,
    finishedLoading
    );

  bufferLoader.load();
}

function finishedLoading(bufferList) {
  for(i=0; i<bufferList; i++){
    soundArr[i].buffer = context.createBufferSource();
    soundArr[i].buffer = bufferList[i];
    soundArr[i].connect(context.destination);
    soundArr[i].sound = i;
  }
}

function playSound(buffer) {
  var source = context.createBufferSource(); // creates a sound source
  source.buffer = buffer;                    // tell the source which sound to play
  source.connect(context.destination);       // connect the source to the context's destination (the speakers)
  source.buffer.gain = 1;
  source.start(0);
}


function fadeSound(buffer) {
  var source = context.createBufferSource();
  source.buffer = buffer;
  source.connect(context.destination);
  for(i=99999;i>0;i--){
  source.buffer.gain = source.buffer.gain -.00001;
  }
}

