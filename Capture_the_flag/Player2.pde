class Enemy {
  int x;
  int y;
  int d;
  int speed;
  int nextX;
  int nextY;
  PVector Flash; 
  int timer;
  int respawn;


  Enemy() {

    x = width-120;
    y = height/2;
    d = 40;
    speed = 5;
    Flash = new PVector(x, y);
    timer = 0;
    respawn = 0;
  }
  void display() {

    rectMode(CENTER);
    fill(0, 0, 200);
    stroke(1);
    rect(x, y, d, d);
    fill(0, 255, 0);
    ellipse(x+Flash.x, y+Flash.y, 10, 10);
    text("Flash:"+timer, width-50, height-50);

    //ellipse(nextX+d/2-5,nextY,10,10);
  }
  boolean isNotBlack(int nextX, int nextY) {
    if (hue(get(nextX, nextY)) <= 0 && saturation(get(nextX, nextY)) <= 0  && brightness(get(nextX, nextY)) <= 0) {
      return false;
    } else {
      return true;
    }
  }
  void move() {
    if (key == CODED) {
      if (keyPressed) { 
        Flash.mult(0);
      }
    }
    if (keyPressed) {
      Flash.mult(0);
    }
    if (keyCodes[LEFT]) { 
      Flash.add(-30*speed, 0);
      nextY = y;
      nextX = (x - d/2);
      if (isNotBlack(nextX, nextY-d/2+5)&&isNotBlack(nextX, nextY+d/2-5)) {

        x -= speed;
      }
    }

    if (keyCodes[RIGHT]) { 
      Flash.add(+30*speed, 0);
      nextY = y;
      nextX = (x + d/2);
      if (isNotBlack(nextX, nextY-d/2+5)&&isNotBlack(nextX, nextY+d/2-5)) {

        x += speed;
      }
    } 

    if (keyCodes[UP]) {
      Flash.add(0, -30*speed);
      nextX = x;
      nextY = (y - d/2);
      if (isNotBlack(nextX-d/2+5, nextY)&&isNotBlack(nextX+d/2-5, nextY)) {

        y -= speed;
      }
    }

    if (keyCodes[DOWN]) {
      Flash.add(0, +30*speed);
      nextX = x;
      nextY = (y + d/2) ;
      if (isNotBlack(nextX-d/2+5, nextY)&&isNotBlack(nextX+d/2-5, nextY)) {

        y += speed;
      }
    }
    if (timer <0.1) { 
      if (key == 'm') {
        if (hue(get(x+int(Flash.x), y+int(Flash.y))) >= 0 && saturation(get(x+int(Flash.x), y+int(Flash.y))) >=0  && brightness(get(x+int(Flash.x), y+int(Flash.y)))>=1) {
          if (x - d/2 < f1.x + f1.d/2 && x + d/2 > f1.x - f1.d/2 && f1.y + f1.d/2 > y - d/2  && f1.y - f1.d/2 < y + d/2 ) {
            f1.x = x+int(Flash.x);
            f1.y = y+int(Flash.y);
          }
          x = x+int(Flash.x);
          y = y+int(Flash.y);
          timer =500;
        }
      }
    } else {
      timer = timer - 1;
    }
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
    if (x<width/2) {
      if (p.x - p.d/2 < x + d/2 && p.x + p.d/2 > x - d/2 && y + d/2 > p.y - p.d/2  && y - d/2 < p.y + p.d/2 ) {
        x = 3*width/4;
        y = height;
        f1.x = 75;
        f1.y = height/2;
        speed=0;
        respawn=100;
      }
    }
  }
  void waiting() {
    if (respawn<1) {
      speed=5;
    } else {
      text(respawn, 3*width/4, height-50);
      speed=0;
      respawn = respawn-1;
    }
  }
}
