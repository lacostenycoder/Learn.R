$(document).ready(function(){

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

var keyCheck;

  $('.key').click(function(){
    var playKeyId = $(this).attr('id');
    playKey(playKeyId);
  });

  $('.lesson').click(function(){
    startLesson();
  })

  $( "body" ).on( "keydown", function( event ) {
    keyCheck = event.which;
    console.log(keyCheck);
    $("#"+keyLookup[keyCheck] ).toggleClass("keyhover");
    playKey(keyLookup[keyCheck]);
  });

  $( "body" ).on( "keyup", function() {
    $('.key').removeClass('keyhover');
  });

  function playKey(keyId){
    $('.player').empty();
    var fileName = keyId+'.mp3';
    var audioTag = $('<audio src=samples/' + keyId + '.mp3></audio>');
    audioTag.appendTo('.player');
    $('audio').eq(0).trigger('play');
  }

  function startLesson(){
    keyCheck=65;
    playKey(keyLookup[keyCheck]);
  }

});

