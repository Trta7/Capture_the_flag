class Block{
 int x1;
 int y1;
 int a1;
 int b1;
 int y2;
 int x3;
 int y3;
 int x4;
 int x5;
 int y5;
 int x6;
 int y7;
  Block(){
    x1=width/2;
    y1=150;
    a1=50;
    b1=175;
    y2=height-150;
    x3=width/2-200;
    y3=height/2;
    x4=width/2+200;
    x5=175;
    y5=height/4;
    x6=width-175;
    y7=3*height/4;
  }
  void display(){
    fill(0);
    stroke(0);
    rect(x1,y1,a1,b1);
    rect(x1,y2,a1,b1);
    rect(x3,y3,a1,b1);
    rect(x4,y3,a1,b1);
    rect(x5,y5,b1,a1);
    rect(x6,y5,b1,a1);
    rect(x5,y7,b1,a1);
    rect(x6,y7,b1,a1);
  }
}
