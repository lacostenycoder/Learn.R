$(document).ready(function(){
  // set library to look up key samples
  var keyLookup = {
    90: "c2",
    83: "c-2",
    88: "d2",
    68: "d-2",
    67: "e2",
    86: "f2",
    71: "f-2",
    66: "g2",
    72: "g-2",
    78: "a3",
    74: "a-3",
    77: "b3",
    81: "c3",
    50: "c-3",
    87: "d3",
    51: "d-3",
    69: "e3",
    82: "f3",
    53: "f-3",
    84: "g3",
    54: "g-3",
    89: "a4",
    55: "a-4",
    85: "b4",
    73: "c5"
  }

  var lessonSeq = "90, 88, 67, 86, 66, 78, 77, 81"; // this will come from database
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
