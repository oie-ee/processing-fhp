class Snow{
float x;
float y;
float diameter;
float ySpeed;


Snow() {
 x = random(width); 
 y= -100;
 diameter = random(1, 6);
 ySpeed = random(0.5,1.7);
}

void display() {
 noStroke();
 fill(255);  
 ellipse(x, y, diameter, diameter);
 stroke(0);
 strokeWeight(0.3);
 line(x-diameter/2, y, x+diameter/2, y);
}

void descend() {
 y = y + ySpeed;
 x = x + random(-2.5,2.5);
}

void bottom() {
  if(y >= height+diameter/2) {
    y = 0;  
  }
}
}
