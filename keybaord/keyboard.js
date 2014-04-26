$(document).ready(function(){

var keyCheck;

  $('.key').click(function(){
    var playKeyId = $(this).attr('id');
    playKey(playKeyId);
  });

  function playKey(keyId){
    $('.player').empty();
    var fileName = keyId+'.mp3';
    var audioTag = $('<audio src=samples/' + keyId + '.mp3></audio>');
    //var audioId = 'p'+keyId;
    audioTag.appendTo('.player');
    $('audio').eq(0).trigger('play');

  }

});


// var sounds = {
//    88 : 'alarm'; // key 'x'

// };
//   onkeydown function(e) {
//     var soundId = sounds[e.keyCode];
//     if (soundId) document.getElementById(soundId).play();
//     else console.log("key not mapped : code is", e.keyCode);
// }

// })


