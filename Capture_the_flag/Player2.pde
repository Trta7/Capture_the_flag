class Enemy {
  float x;
  float y;
  int d;
  int speed;

  Enemy() {

    x = width-100;
    y = height/2;
    d = 40;
    speed = 5;
  }
  void display() {
    //x=constrain(x, 20, width-20);
    //y=constrain(y, 20, height-20);
    rectMode(CENTER);
    fill(0, 0, 255);
    rect(x, y, d, d);
  }
  void move() {
   if (keys['j']) //move left 
      x= x-speed;
    if (keys['l']) //move right
      x= x+speed;
    if (keys['i']) //move up
      y= y-speed;
    if (keys['k']) //move down
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
