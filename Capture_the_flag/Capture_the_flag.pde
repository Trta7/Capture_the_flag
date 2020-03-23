
Player p;
Enemy e;
boolean [] keys = new boolean[128];
boolean [] keyCodes = new boolean[128];
void setup() {
  size(1120, 640);
  p = new Player();
  e = new Enemy();
}
void draw() {
  background(255);
  p.move();
  p.display();
  p.wall();
  e.move();
  e.display();
  e.wall();
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
