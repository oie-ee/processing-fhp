// Beatles' songs word count
// Sophie K
// a visualisation of the words used in Beatles' songs and how often they were used.
// a larger circle and font means the word was used more often. they also seem to 
// appear more often than the less used words. press any key to restart.

String csv[];
String myData[][];
PFont font;

void setup() {
   size(1200, 800);
   background(0);
   csv = loadStrings("Beatles songs word count.csv");
   myData = new String[csv.length][2];
   for(int i = 0; i < csv.length; i++){
     myData[i] = csv[i].split(";");
   }
}

void draw() {
  frameRate(25);
  for(int i = 0; i < myData.length; i++){
    float dia = float(myData[i][1]);
    float dia2 = map(dia, 5, 2262, 10, 100);
    float posX = random(width);
    float posY = random (height);   
    if(mouseX >= posX-dia2/2 && mouseX <= posX+dia/2 &&
       mouseY >= posY-dia2/2 && mouseY <= posY+dia/2){ 
    noStroke();
    fill(random(100, 255), 0, random(100, 255), map(dia2, 10, 100, 40, 150));
    ellipse(posX, posY, dia2, dia2);
    font = createFont("MinionPro-Semibold", 12+0.09*dia2);
    fill(0);
    textFont(font);
    text(myData[i][0], posX, posY);
    }
    //if(keyPressed){
      //background(0);
    //}
  } 
}  