
Player p;
Enemy e;
Map m;
Flag1 f1;
Flag2 f2;
boolean [] keys = new boolean[128];
boolean [] keyCodes = new boolean[128];
void setup() {
  size(1120, 640);
  p = new Player();
  e = new Enemy();
  m = new Map();
  f1 = new Flag1();
  f2 = new Flag2();
}
void draw() {
  background(255);
  m.display();
  p.move();
  p.display();
  p.wall();
  e.move();
  e.display();
  e.wall();
  f1.display();
  f1.touch();
  f1.score();
  f1.gol();
  f2.display();
  f2.touch();
  f2.score();
  f2.gol();
  f1.end();
  f2.end();
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
