class Flag2 {
  float x;
  float y;
  int d;
  int s;
  Flag2() {
    x = width-75;
    y = height/2;
    d = 30;
    s = 0;
  }
  void display() {
    fill(255);
    ellipse(x, y, d, d);
  }
  void touch() {
    if (p.x - p.d/2 < x + d/2 && p.x + p.d/2 > x - d/2 && y + d/2 > p.y - p.d/2  && y - d/2 < p.y + p.d/2 ) {
      x = p.x;
      y = p.y;
    }
  }
  void score() {
    fill(0);
    textSize(20);
    text("Score:"+s, 150, 25);
  }
  void gol() {
    if (x < m.x1) {
      s = s + 1;
      p.x = 120;
      p.y = height/2;
      x = width-75;
      y = height/2;
    }
  }
} 
