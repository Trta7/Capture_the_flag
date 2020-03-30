
class Player {
  float x;
  float y;
  int d;
  int speed;

  Player() {

    x = 120;
    y = height/2;
    d = 40;
    speed = 5;
  }
  void display() {

    rectMode(CENTER);
    fill(200, 0, 0);
    rect(x, y, d, d);
  }
  void move() {
    if (keys['a']) //move left 
      x= x-speed;
    if (keys['d']) //move right
      x= x+speed;
    if (keys['w']) //move up
      y= y-speed;
    if (keys['s']) //move down
      y= y+speed;
  }
  void wall() {
    if (x>width-20) {
      x=width-20.1;
    }
    if (x<20) {
      x=20.1;
    }
    if (y>height-20) {
      y=height-20.1;
    }
    if (y<20) {
      y=20.1;
    }
  }
  void collision() {
    if (x>width/2) {
      if (e.x - e.d/2 < x + d/2 && e.x + e.d/2 > x - d/2 && y + d/2 > e.y - e.d/2  && y - d/2 < e.y + e.d/2 ) {
        x = 120;
        y = height/2;
        f2.x = width-75;
        f2.y = height/2;
      }
    }
  }
}
