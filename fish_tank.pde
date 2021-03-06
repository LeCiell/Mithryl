


var centerX = (103);
var centerY = (81);
var bodyLength = 114;
var bodyHeight = 74;
var bodyColor = color(212, 82, 212);
var screenWidth = 800;

var drawFish = function (centerX, centerY, colorB, bodyLength, bodyHeight, colorT) {
  noStroke();
  fill(colorB);
  var newCenterX = screenWidth / 400 * centerX;
  // body
  ellipse(newCenterX, centerY, bodyLength, bodyHeight);
  // tail
  var tailWidth = bodyLength / 4;
  var tailHeight = bodyHeight / 2;
  fill(colorT);
  triangle(newCenterX - bodyLength / 2, centerY,
    newCenterX - bodyLength / 2 - tailWidth, centerY - tailHeight,
    newCenterX - bodyLength / 2 - tailWidth, centerY + tailHeight);
  // eye
  fill(33, 33, 33);
  ellipse(newCenterX + bodyLength / 4, centerY, bodyHeight / 5, bodyHeight / 5);


};
var randomColor = function () {
  return color(random(255), random(255), random(255));
};
var randomTailColor = function (otherColor) {

  var newColor = randomColor();
  if (otherColor === newColor) {
    return randomColor();
  } else { return newColor }

};
var drawDifferentFish = function () {
  var newColor = randomColor()
  drawFish(195, 244, newColor, -30, 28, randomTailColor(newColor));
  drawFish(95, 44, color(212, 82, 212), 120, 60, color(76, 7, 82));
  drawFish(314, 250, color(207, 0, 93), 75, 46, color(0, 9, 10));
  drawFish(304, 345, color(13, 1, 13), -59, 90, color(87, 94, 94));
  drawFish(194, 300, color(222, 237, 9), 90, 45, color(179, 110, 7));
  drawFish(120, 172, color(9, 232, 240), 135, 172, color(8, 195, 242));
  drawFish(278, 164, color(214, 76, 26), 57, 57, color(13, 181, 119));
  drawFish(334, 164, color(214, 76, 26), -55, 51, color(13, 181, 119));
  drawFish(279, 23, color(89, 5, 138), 90, 45, color(230, 230, 14));
  drawFish(300, 68, color(67, 176, 12), -89, 57, color(227, 175, 18));
};
var drawScene = function () {
  background(4, 86, 217);

  drawDifferentFish();

  drawHerring();

  //baby orange fish
  drawFish(278, 221, color(214, 76, 26), -18, 23, color(13, 181, 119));
  drawFish(302, 202, color(214, 76, 26), 23, 23, color(13, 181, 119));
  drawFish(314, 116, color(214, 76, 26), 22, 23, color(13, 181, 119));
  drawFish(342, 125, color(214, 76, 26), -22, 23, color(13, 181, 119));
  drawFish(233, 198, color(214, 76, 26), 24, 23, color(13, 181, 119));
  drawFish(372, 209, color(214, 76, 26), -21, 23, color(13, 181, 119));

  //pebbles

  var pebbleHight = (30);
  var pebbleWidth = (50);
  var centerPX = (4);
  var centerPY = (390);
  var drawPebble = function (centerPX, centerPY, pebbleWidth, pebbleHight, colorP) {
    fill(colorP);
    ellipse(centerPX, centerPY, pebbleWidth, pebbleHight);
  };

  drawPebble(49, 388, 15, 12, color(7, 159, 176));
  drawPebble(46, 397, 89, 10, color(2, 70, 77));
  drawPebble(68, 390, 20, 16, color(5, 116, 128));
  drawPebble(19, 391, 43, 10, color(86, 98, 99));
  drawPebble(95, 395, 31, 10, color(6, 131, 145));
  drawPebble(377, 388, 56, 32, color(5, 120, 133));
  drawPebble(391, 395, 30, 60, color(37, 73, 77));
  drawPebble(127, 395, 32, 10, color(37, 115, 125));
  drawPebble(392, 394, 16, 11, color(85, 176, 186));
  drawPebble(172, 394, 16, 11, color(85, 176, 186));
  drawPebble(183, 394, 12, 11, color(108, 229, 240));
  drawPebble(139, 390, 18, 33, color(5, 83, 92));
  drawPebble(153, 390, 30, 24, color(74, 99, 102));
}



//bubbles

var bubbleSize = 6;
var centreBX = (250);
var centreBY = (350);
/* draw = function () {
 
  stroke(5, 242, 230);
  noFill();
  ellipse(250, 345, bubbleSize, bubbleSize);
};
*/
drawScene();
