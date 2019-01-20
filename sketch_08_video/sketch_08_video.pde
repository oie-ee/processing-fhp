//sketch08
//Sophie K
//some interactive fun with the laptop camera

import processing.video.*;
Capture video;

void setup() {
  smooth(2);
  background(0);
  size(960, 640);
  
  video = new Capture(this, width, height);
  video.start();
}
void captureEvent(Capture video) {
 video.read(); 
}

void draw() {
  tint(mouseX, mouseY, random(255));  
  translate(width/2, height/2);  
  imageMode(CENTER);  
  rotate(mouseX/4);  
  image(video, 0, 0, mouseX, mouseY);
  image(video, width/2, 0, mouseX, mouseY);
  image(video, 0, height/2, mouseX, mouseY);
  image(video, width/2, height/2, mouseX, mouseY);
  
}