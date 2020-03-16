
Player p;
boolean [] keys = new boolean[128];
void setup(){
  size(1120,640);
  p = new Player();
}
void draw(){
  background(255);
  p.move();
  p.display();
  
}
void keyPressed(){
  keys[key] = true;
  }
 
void keyReleased(){
    keys[key] = false;
  }
