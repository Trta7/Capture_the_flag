class Enemy {
  int x;
  int y;
  int d;
  int speed;
  int nextX;
  int nextY;


  Enemy() {

    x = width-120;
    y = height/2;
    d = 40;
    speed = 5;
  }
  void display() {

    rectMode(CENTER);
    fill(0, 0, 200);
    stroke(1);
    rect(x, y, d, d);
    fill(0,255,0);
    ellipse(nextX-d/2+5,nextY,10,10);
    ellipse(nextX+d/2-5,nextY,10,10);
  }
  boolean isNotBlack(int nextX, int nextY) {
    if (hue(get(nextX, nextY)) <= 0 && saturation(get(nextX, nextY)) <= 0  && brightness(get(nextX, nextY)) <= 0) {
      return false;
    } else {
      return true;
    }
  }
  void move() {
    if (keyCodes[LEFT]) {  
      nextY = y;
      nextX = (x - d/2);
      if (isNotBlack(nextX,nextY-d/2+1)&&isNotBlack(nextX,nextY+d/2-1)) {
     
        x -= speed;
      }
    }

    if (keyCodes[RIGHT]) { 
      nextY = y;
      nextX = (x + d/2);
      if (isNotBlack(nextX,nextY-d/2+1)&&isNotBlack(nextX,nextY+d/2-1)) {
     
        x += speed;
      }
    } 

    if (keyCodes[UP]) { 
      nextX = x;
      nextY = (y - d/2);
      if (isNotBlack(nextX-d/2+5,nextY)&&isNotBlack(nextX+d/2-5,nextY)) {
      
        y -= speed;
      }
    }

    if (keyCodes[DOWN]) {
      nextX = x;
      nextY = (y + d/2) ;
      if (isNotBlack(nextX-d/2+5,nextY)&&isNotBlack(nextX+d/2-5,nextY)) {
     
        y += speed;
      }
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
        x = width-120;
        y = height/2;
        f1.x = 75;
        f1.y = height/2;
      }
    }
  }
} 
