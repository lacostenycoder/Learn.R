/* The following key codes should be implemented as they are standard on most browesers and will give us a full 2 octaves.
see the png file in images.

 48-57   48-57   48-57   48-57   48-57   0 to 9
 65-90   65-90   65-90   65-90   65-90   A to Z

*/
$(document).ready(function(){
  // set library to look up key samples
  var keyLookup = {
    65: "c2",
    87: "c-2",
    83: "d2",
    69: "d-2",
    68: "e2",
    70: "f2",
    84: "f-2",
    71: "g2",
    89: "g-2",
    72: "a3",
    85: "a-3",
    74: "b3",
    75: "c3",
    79: "c-3",
    76: "d3",
    80: "d-3",
   186: "e3",
   222: "f3"
  }

  var lessonSeq = "65, 83, 68, 70, 71, 72, 74, 75"; // this will come from database
  var lessonText = "Here is a C major scale. Can you play it?"
  var userInput = ""; //initialize empty strings for functions
  var keyCheck;
  var keyToPlay;
  var gameWon = false;

  // set event listeners for mouse and key presses
  $('.key').click(function(){
    var playKeyId = $(this).attr('id');
    playKey(playKeyId);
  });

  $('#lesson').click(function(){
    startLesson();
  })

  $( "body" ).on( "keydown", function( event ) {
    keyCheck = event.which;
    keyToPlay = keyLookup[keyCheck];
    $("#"+keyToPlay ).toggleClass("keyhover");
    playKey(keyToPlay);
    userInput += (keyCheck + ", ").toString();
    console.log(userInput);
  });

  $( "body" ).on( "keyup", function() {
    $('.key').removeClass('keyhover');
    if(!gameWon){
    checkAnswer(userInput);
    } else {
    userInput = "";
    gameWon = false;
    }
  });

  function playLesson(keyCheck){
    $("#"+keyLookup[keyCheck] ).toggleClass("keyhover");
    playKey(keyLookup[keyCheck]);
    $('.key').removeClass('keyhover');
  }

  function playKey(keyId){
    $('.player').empty();
    var fileName = keyId+'.mp3';
    var audioTag = $('<audio src=samples/' + keyId + '.mp3></audio>');
    audioTag.appendTo('.player');
    $('audio').eq(0).trigger('play');
  }

  function startLesson(){
    $('.lesson-player').empty(); // clear for no dupes.
    $('.lesson-player').append(lessonText);
    playSequence(lessonSeq);
  }

  function playSequence(seq){
    var notes = seq.split(', ');
    var max = notes.length;
    var counter = 0;
    var i = setInterval(function(){
      if (counter >= 0) {
        $('.key').removeClass('keyhover');
        var note = notes[counter];
         $("#"+keyLookup[note] ).addClass("keyhover");
        playKey(keyLookup[note]);
      }
      counter ++;
      if (counter > max) {
        clearInterval(i);
      }
    }, 500);
  }

  function checkAnswer(userInput){
    if (userInput.indexOf(lessonSeq) > -1) {
      gameWon = true;
      alert('You won!');
    }
  }

});
