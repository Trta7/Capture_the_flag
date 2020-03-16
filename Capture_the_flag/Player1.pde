
class Player {
  float x;
  float y;
  int d;
  int speed;

  Player() {

    x = 50;
    y = height/2;
    d = 40;
    speed = 5;
  }
  void display() {
    x=constrain(x, 20, width-20);
    y=constrain(y, 20, height-20);
    rectMode(CENTER);
    fill(255, 0, 0);
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

}
