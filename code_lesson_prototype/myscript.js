var stage;
var birdImage = new Image();
var bird;
var backgroundImage = new Image();
var background;
var XPIXELS = 127;
var YPIXELS = 74;

var commandConverter = {'moveUp();': moveImageOneUnitUp,
                        'moveDown();': moveImageOneUnitDown,
                        'moveLeft();': moveImageOneUnitLeft,
                        'moveRight();': moveImageOneUnitRight};

function init() {
  stage = new createjs.Stage(document.getElementById("demoCanvas"));
  birdImage.src = 'bird.png';
  birdImage.name = 'bird';
  backgroundImage.src = 'grid.png';
  backgroundImage.name = 'background';
  backgroundImage.onload = loadGraphics;
}

function loadGraphics() {
  background = new createjs.Bitmap(backgroundImage);
  stage.addChild(background);
  bird = new createjs.Bitmap(birdImage);
  bird.x = 33;
  bird.y = 235;
  stage.addChild(bird);
  stage.update();
}

function moveImage(image, steps, direction) {
  var counter = 0;
  var i = setInterval(function(){
    if (counter > 0) {
      if      (direction === 'Right') { moveImageOneUnitRight(image); }
      else if (direction === 'Down')  { moveImageOneUnitDown(image); }
      else if (direction === 'Up')    { moveImageOneUnitUp(image); }
      else if (direction === 'Left')  { moveImageOneUnitLeft(image); }
      stage.update();
    }
    counter ++;
    if (counter > 1) {
      clearInterval(i);
    }
  }, 300);
}

function throwError() {
  $('.errors').empty();
  $('.errors').append('<p>Oops looks like something went wrong</p>');
}

function runCommands(commands) {
  var counter = 0;
  var i = setInterval(function(){
    if (counter >= 0) {
      if (commandConverter[commands[counter]]) {
        commandConverter[commands[counter]](bird);
        stage.update();
      } else {
        throwError();
        clearInterval(i);
      }
    }
    counter ++;
    if (counter >= commands.length) {
      clearInterval(i);
    }
  }, 300);
}

function moveImageOneUnitRight(image) {
  if (image.x + XPIXELS < stage.canvas.width) {
    image.x += XPIXELS;
  }
}

function moveImageOneUnitLeft(image) {
  if (image.x - XPIXELS > 0) {
    image.x -= XPIXELS;
  }
}

function moveImageOneUnitDown(image) {
  if (image.y + YPIXELS < stage.canvas.height) {
    image.y += YPIXELS;
  }
}

function moveImageOneUnitUp(image) {
  if (image.y - YPIXELS > 0) {
    image.y -= YPIXELS;
  }
}



$(document).ready(function() {
  init();
  $('button').click(function(){
    var commands = $('textarea').val().split("\n");
    runCommands(commands);
  });
});
