class Ball {
  int x, y, w, h, speed;

  Ball(int x, int y) {
    this.x = x;
    this.y = y;
    w = 50;
    h = 50;
    speed = int(random(1, 5));
  }

  void display() {
    stroke(#FFF0F6);
    fill(#FFF0F6);
    ellipse(x, y, w, h);
  }

  void move() {
    // keep the object on the screen
    x = x + speed;
    if(x > width - w/2) {
      speed = speed * -1;
    } else if (x < w/2) {
      speed = speed * -1;
    }
  }
}
