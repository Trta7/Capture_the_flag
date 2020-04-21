
Player p;
Enemy e;
Map m;
Flag1 f1;
Flag2 f2;
Block b;
boolean [] keys = new boolean[128];
boolean [] keyCodes = new boolean[128];
//PImage vlajka;
void setup() {
  size(1120, 640);
  p = new Player();
  e = new Enemy();
  m = new Map();
  f1 = new Flag1();
  f2 = new Flag2();
  b = new Block();
  //vlajka = loadImage("vlajka.png");
  
}
void draw() {
  background(255);
  m.display();
  b.display();
  p.move();
  p.display();
  p.wall();
  p.collision();
  e.move();
  e.display();
  e.wall();
  e.collision();
  f1.display();
  f1.touch();
  f1.score();
  f1.gol();
  f2.display();
  f2.touch();
  f2.score();
  f2.gol();
  
  if (f1.s>4) {
    background(255);
    fill(0, 0, 255);
    textAlign(CENTER, BOTTOM);
    textSize(200); 
    text("Blue Win", width/2, height/2);
    textAlign(CENTER, TOP);
    textSize(50);
    text("Press ESC", width/2, height/2);
  }
  if (f2.s>4) {
    background(255);
    fill(255, 0, 0);
    textAlign(CENTER, BOTTOM);
    textSize(200); 
    text("Red Win", width/2, height/2);
    textAlign(CENTER, TOP);
    textSize(50);
    text("Press ESC", width/2, height/2);
  }
  
}
void keyPressed() {
  if (key == CODED) {
    keyCodes[keyCode] = true;
  } else {
    keys[key] = true;
  }
} 

void keyReleased() {
  if (key == CODED) {
    keyCodes[keyCode] = false;
  } else {
    keys[key] = false;
  }
} 
