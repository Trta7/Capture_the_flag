
class Player {
  int x;
  int y;
  int d;
  int speed;
  int nextX;
  int nextY;

  Player() {

    x = 120;
    y = height/2;
    d = 40;
    speed = 5;
  }
  void display() {

    rectMode(CENTER);
    fill(200, 0, 0);
    stroke(1);
    rect(x, y, d, d);
  }
  void move() {
    colorMode(HSB, 255);
    if (keys['a']) {  
      nextY = y;
      nextX = (x - d/2) ;
      if (hue(get(nextX, nextY)) <= 0 && saturation(get(nextX, nextY)) <= 0  && brightness(get(nextX, nextY)) <= 0) {
      } else {
        x -= speed;
      }
    }
    if (keys['d']) { 
      nextY = y;
      nextX = (x + d/2) ;
      if (hue(get(nextX, nextY)) <= 0 && saturation(get(nextX, nextY)) <= 0  && brightness(get(nextX, nextY)) <= 0) {
      } else {
        x += speed;
      }
    }
    if (keys['w']) { 
      nextX = x;
      nextY = (y - d/2) ;
      if (hue(get(nextX, nextY)) <= 0 && saturation(get(nextX, nextY)) <= 0  && brightness(get(nextX, nextY)) <= 0) {
      } else {
        y -= speed;
      }
    }
    if (keys['s']) {
      nextX = x;
      nextY = (y + d/2);
      if (hue(get(nextX, nextY)) <= 0 && saturation(get(nextX, nextY)) <= 0  && brightness(get(nextX, nextY)) <= 0) {
      } else {
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
