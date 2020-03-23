
Player p;
Enemy e;
boolean [] keys = new boolean[128];
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
  keys[key] = true;
}

void keyReleased() {
  keys[key] = false;
}
