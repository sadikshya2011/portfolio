// Sadikshya Kuikel | November 11 2025 | BallBounce
ArrayList<Ball> njz = new ArrayList<Ball>();

void setup() {
  size(500, 500);
}

void draw() {
  background(255);
  //display all njz
  for (int i = 0; i < njz.size(); i++) {
    Ball b = njz.get(i);
    b.display();
    b.move();
  }
}

void mousePressed() {
  njz.add(new Ball(mouseX, mouseY));
}
