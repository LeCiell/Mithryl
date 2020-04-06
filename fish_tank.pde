
    var centerX = (103);
    var centerY = (81);
    var bodyLength = 114;
    var bodyHeight = 74;
    var bodyColor = color (212, 82, 212);
   
  var drawFish = function(centerX, centerY, colorB, bodyLength, bodyHeight){ 
    noStroke();
    fill (colorB);
    // body
    ellipse(centerX, centerY, bodyLength, bodyHeight);
    // tail
    var tailWidth = bodyLength/4;
    var tailHeight = bodyHeight/2;
    triangle(centerX-bodyLength/2, centerY,
             centerX-bodyLength/2-tailWidth, centerY-tailHeight,
             centerX-bodyLength/2-tailWidth, centerY+tailHeight);
    // eye
    fill(33, 33, 33);
    ellipse(centerX+bodyLength/4, centerY, bodyHeight/5, bodyHeight/5);
    
    var randomColor = function () {return color(Math.random()*256, Math.random()*256, Math.random()*256)}
};
background (59, 123, 128);
 drawFish(187, 244, randomColor(), -30, 28);        
 drawFish(91, 69, randomColor(), 120, 60);        
 drawFish(314, 250, randomColor()), 75, 46);        
 drawFish(304, 345, randomColor(), -59, 90);        
 drawFish(62,300, randomColor(), -80, 83);

 drawFish(194,300, randomColor(), 90, 45); 
 drawFish(80,172, randomColor(), 135, 172); 
 drawFish(278,164, randomColor(), 57, 57);
 drawFish(279,23, randomColor(), 90, 45); 
 drawFish(300,68, randomColor(), -89, 57);    


