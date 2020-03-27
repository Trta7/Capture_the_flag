class Flag1 {
  float x;
  float y;
  int d;
  int s;
  Flag1() {
    x = 75;
    y = height/2;
    d = 30;
    s = 0;
  }
  void display() {
    fill(0);
    ellipse(x, y, d, d);
  }
  void touch() {
    if (e.x - e.d/2 < x && e.x + e.d/2 > x && y > e.y - e.d - d/2 && y < e.y + e.d - d/2) {
      x = e.x;
      y = e.y;
    }
  }
  void score() {
    fill(0);
    textSize(20);
    text("Score:"+s, width-150, 25);
  }
  void gol() {
    if (x > m.x2) {
      s = s + 1;
      e.x = width-120;
      e.y = height/2;
      x = 75;
      y = height/2;
    }
  }
} 
