
class Player {
  int x;
  int y;
  int d;
  int speed;
  int nextX;
  int nextY;
  PVector Flash; 

  Player() {

    x = 120;
    y = height/2;
    d = 40;
    speed = 5;
    Flash = new PVector(x, y);
  }
  void display() {

    rectMode(CENTER);
    fill(200, 0, 0);
    stroke(1);
    rect(x, y, d, d);
    fill(0, 255, 0);
    ellipse(x+Flash.x, y+Flash.y, 10, 10);
  }
  boolean isNotBlack(int nextX, int nextY) {
    if (hue(get(nextX, nextY)) <= 0 && saturation(get(nextX, nextY)) <= 0  && brightness(get(nextX, nextY)) <= 0) {
      return false;
    } else {
      return true;
    }
  }
  void move() {
    if (keyPressed) Flash.mult(0);
    if (keys['a']) { 
      Flash.add(-30*speed, 0);
      nextY = y;
      nextX = (x - d/2);
      if (isNotBlack(nextX, nextY-d/2+5)&&isNotBlack(nextX, nextY+d/2-5)) {

        x -= speed;
      }
    }
    if (keys['d']) { 
      Flash.add(+30*speed, 0);
      nextY = y;
      nextX = (x + d/2);
      if (isNotBlack(nextX, nextY-d/2+5)&&isNotBlack(nextX, nextY+d/2-5)) {

        x += speed;
      }
    } 
    if (keys['w']) {
      Flash.add(0, -30*speed);
      nextX = x;
      nextY = (y - d/2);
      if (isNotBlack(nextX-d/2+5, nextY)&&isNotBlack(nextX+d/2-5, nextY)) {

        y -= speed;
      }
    }
    if (keys['s']) {
      Flash.add(0, +30*speed);
      nextX = x;
      nextY = (y + d/2) ;
      if (isNotBlack(nextX-d/2+5, nextY)&&isNotBlack(nextX+d/2-5, nextY)) {

        y += speed;
      }
    }
    colorMode(RGB, 255);
  }
  void wall() {
    if (x>width-20) {
      x=width-20;
    }
    if (x<20) {
      x=20;
    }
    if (y>height-20) {
      y=height-20;
    }
    if (y<20) {
      y=20;
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
