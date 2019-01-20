//let it snow (medicine)
//Sophie Kremer
//for some extra christmassy feelings, press 's', to pause 'p'

import ddf.minim.*;
Pill[] pills = new Pill[100];
Snow[] snow = new Snow[600];
Capsule[] capsules = new Capsule[20];

Minim minim;
AudioPlayer song;

void setup() {
 size(640,360);
 for(int i = 0; i < pills.length; i++) {
 pills[i] = new Pill(random(10,30));
 }
 for(int i = 0; i < snow.length; i++) {
 snow[i] = new Snow();
 }
 for(int i = 0; i < capsules.length; i++) {
  capsules[i] = new Capsule(); 
 }
  minim = new Minim(this);
  song = minim.loadFile("christmas feeling.mp3");
  song.pause();
}

void draw() {
 background(0);
 for(int i = 0; i < capsules.length; i++) {
   capsules[i].display();
   capsules[i].descend();
   capsules[i].bottom();
 }
 for(int i = 0; i < snow.length; i++) {
   snow[i].display();
   snow[i].descend();
   snow[i].bottom();
 }
 for(int i = 0; i < pills.length; i++) {
   pills[i].display();
   pills[i].descend();
   pills[i].bottom();
 }
}
void keyPressed() {
 if (key == 's' && !song.isPlaying()) {
   song.play();
 }
  if (key == 'p') {
     song.pause();
 }
}
 
void stop() {
 song.close();
 minim.stop();
 super.stop();
}
