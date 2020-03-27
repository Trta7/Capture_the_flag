class Enemy {
  float x;
  float y;
  int d;
  int speed;
  

  Enemy() {

    x = width-120;
    y = height/2;
    d = 40;
    speed = 5;
  }
  void display() {
   
    rectMode(CENTER);
    fill(0, 0, 200);
    rect(x, y, d, d);
  }
  void move() {
   if (keyCodes[LEFT]) //move left 
      x= x-speed;
    if (keyCodes[RIGHT]) //move right
      x= x+speed;
    if (keyCodes[UP]) //move up
      y= y-speed;
    if (keyCodes[DOWN]) //move down
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

}
