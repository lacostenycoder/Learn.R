//window.onload = initAudio;
//var context;
var keyBank = function(bank){
  var newArr = [];
  var arr = [
   "c2",
   "c-2",
   "d2",
   "d-2",
   "e2",
   "f2",
   "f-2",
   "g2",
   "g-2",
   "a3",
   "a-3",
   "b3",
   "c3",
   "c-3",
   "d3",
   "d-3",
   "e3",
   "f3",
   "f-3",
   "g3",
   "g-3",
   "a4",
   "a-4",
   "b4",
   "c5"
  ]
  var filename;
  var path;
  for(i=0; i < arr.length; i++) {
    filename = arr[i]
    path = "../assets/" + bank + "/" + filename + ".mp3";
    //keyPlayer(filename, path );
    newArr.push(path);
    console.log(newArr[i]);
  }
  bufferBuilder(newArr);
}

function bufferBuilder(bankArr) {
  //bankArr = keyBank(bankArr);
  // Fix up prefixing
  bufferLoader = new BufferLoader(
    context, bankArr,
    finishedLoading
    );

  bufferLoader.load();
}

function finishedLoading(bufferList) {
  // Create two sources and play them both together.
  sound01 = context.createBufferSource();

  sound01.buffer = bufferLoader.bufferList[0];

  sound01.connect(context.destination);

}


