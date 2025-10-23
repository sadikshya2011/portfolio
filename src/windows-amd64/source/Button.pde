class Button {
  int x, y, w, h;
  color c1, c2;
  char val;
  boolean over;

  Button(int x, int y, int w, int h, char val, color c1, color c2) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.val = val;
    this.c1 = c1;
    this.c2 = c2;
    over = false;
  }

  void display () {
    rectMode(CENTER);
    fill(over ? c2 : c1);
    rect(x, y, w, h, 4);
    fill(#B92F59);
    textSize(20);
    textAlign(CENTER, CENTER);
    text(val, x, y);
  }

  void hover(int tempX, int tempY) {
    over = (tempX > x-w/2 && tempX < x+w/2 && tempY > y-h/2 && tempY < y+h/2);
  }
}
