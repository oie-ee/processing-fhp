//colour pong
//Sophie Kremer
//controls are UP and DOWN. the ball changes its colour to the colour of the rectangle
//it hits on the right side.

float leftX = 20;
float leftY = 60;
float ballX = 400;
float ballY = 300;
float ballVX = -4;
float ballVY = 0;
int runde = 0;
int farbe;

//Blöcke rechte Seite
int red = #ED5564;
int yellow = #FFCE54;
int green = #A0D568;
int blue = #4FC1E8;
int violet = #AC92EB;
int heightRight = 120;
int widthRight = 30;

//Farbe Hintergrund
int watermelon = #FE7F9C;

void setup(){
  size(800, 600);
  rectMode(CENTER);
}

void draw(){
  background(watermelon);
  noStroke();
  //rechte Seite:
  fill (red);
  rect(790, 60, widthRight, heightRight);
  fill (yellow);
  rect(790, 180, widthRight, heightRight);
  fill (green);
  rect(790, 300, widthRight, heightRight);
  fill (blue);
  rect(790, 420, widthRight, heightRight);
  fill (violet);
  rect(790, 540, widthRight, heightRight);
  //hier beginnt die Action
  fill(255);
  rect(leftX, leftY, 20, 100);
  ball(farbe);
  //Hoch und Runterbewegung mit Stop
  if(keyPressed){
    if(keyCode == DOWN){
    if (leftY < 550){
      leftY = leftY + 5;
      } }
    if(keyCode == UP){
    if(leftY > 50){
      leftY = leftY - 5;
      } 
    } 
  }
  //ball bewegt sich
  ballX = ballX + ballVX;
  ballY = ballY + ballVY;
  //ball trifft auf schläger oder nicht (reset)
  if(ballX < 35){
    if(ballY < (leftY + 55) && ballY > (leftY - 55)){
      ballVX = (-ballVX) + 1;
      ballVY = ballVY - (leftY - ballY)*0.1;
      runde = runde + 1;
    }else{
      ballX = 400;
      ballY = 300;
      ballVX = -4;
      ballVY = 0;
      runde = 0;
    }
  }
  //ball prallt oben oder unten ab
  if(ballY > 590 || ballY < 10){
    ballVY = - ballVY;
  }
  //ball prallt rechts ab
  if(ballX > 760){
    ballVX = - ballVX;
  }
  fill(255);
  text("Runde: " + runde, 700, 20); 
  
   //ball soll farbe ändern
  if(ballX == 400 && ballY == 300){
    farbe = 255;
  }
  if(ballX >= 760 && ballY < 120){
    farbe = red;
  }
  if(ballX >= 760 && (ballY > 120) && (ballY < 240)){
    farbe = yellow;
  }
  if(ballX >= 760 && (ballY > 240) && (ballY < 360)){
    farbe = green;
  }
  if(ballX >= 760 && (ballY > 360) && (ballY < 480)){
    farbe = blue;
  }
  if(ballX >= 760 && ballY > 480){
    farbe = violet;
  }
}

void ball(int farbe){
  fill(farbe);
  ellipse(ballX, ballY, 25, 25);
}