class Pill{
float x;
float y;
float diameter;
float ySpeed;
float r = random(255);
float g = random(0);
float b = random(255);
float t = 255;

Pill() {
 x = random(width); 
 y = -150;
 diameter = random(10, 30);
}
Pill(float tempD) {
  x = random(width);
  y = -150;
  diameter = tempD;
  ySpeed = random(0.5,1.7);
}

void display() {
 stroke(0);
 strokeWeight(1);
 fill(r, g, b, t); 
 ellipse(x, y, diameter, diameter);
 line(x-diameter/2, y, x+diameter/2, y);
}

void descend() {
 y = y + ySpeed;
 x = x + random(-1,1);
}

void bottom() {
  if(y >= height+diameter/2) {
    y = 0;  
  }
}
}