class Map {
  int x1;
  int y;
  int a;
  int b;
  int x2;
  int x3;
  int c;
  int x4;

  Map() {
    x1 = 25;
    y = height/2;
    a = 50;
    b = height;
    x2 = width-25;
    x3 = 305;
    c = 510;
    x4 = width-305;
  }
  void display() {
    fill(52);
    rect(x1, y, a, b);
    rect(x2, y, a, b);
    fill(255, 0, 0);
    rect(x3, y, c, b);
    fill(0, 0, 255);
    rect(x4, y, c, b);
  }
} 
