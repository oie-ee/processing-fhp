class Capsule{
  float x;
  float y;
  float ySpeed;
  float h;
  float w;
  
  Capsule() {
   x = random(width);
   y = -150;
   h = random(10,20);
   w = random(5,15);
   ySpeed = random(0.5,1.7);
  }
  
 void display() {
   fill(150, 0, 255);
   stroke(1);
   arc(x, y, h, 30, -PI, 0);
   rectMode(CENTER);
   noStroke();
   rect(x, y, h, w);
   fill(0, 0, 255);
   rect(x, y+w, h, w);
   stroke(1);
   arc(x, y+w, h, 30, 0, +PI);
   stroke(0);
 }
 void descend() {
   y = y + ySpeed;
   x = x + random(-1,1);
}

  void bottom() {
  if(y >= height+50) {
    y = 0;  
  }
  }
}