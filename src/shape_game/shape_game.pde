// Sadikshya Kuikel | 8/28/2025 | Computer Timeline |

void setup() {
  size(900, 400);
  background(128);
}

void draw() {
  background(#FFEDF9);
  drawRef();
  drawHistEvent(130, 170, "Punched Cards 1804", true, "Data storage on a punched card that can be read by a machine; ");
  drawHistEvent(230, 270, "Title 02", false, "detail");
  drawHistEvent(330, 170, "Title 03", true, "detail");
  drawHistEvent(430, 270, "Title 04", false, "detail");
  drawHistEvent(530, 170, "Title 05", true, "detail");
  drawHistEvent(630, 270, "Title 06", false, "detail");
  drawHistEvent(730, 170, "Title 07", true, "detail");
  drawHistEvent(830, 270, "Title 08", false, "detail");
}

void drawRef() {
  textAlign(CENTER);
  textSize(38);
  fill(#C68298);
  text("Historic Computer Systems", 450, 60);
  textSize(24);
  text("By: Sadikshya Kuikel", 450, 85);

  //Render timeline
  line(50, 225, 850, 225);
  line(50, 235, 50, 215);
  line(850, 235, 850, 215);

  //Text Markers
  textSize(14);
  text("1880", 50, 205);
  text("1995", 850, 205);
}

void drawHistEvent(int x, int y, String title, boolean top, String detail) {
  if (top == true) {
    line(x, y, x+20, y+50);
  } else {
    line(x, y, x+20, y-50);
  }
  rectMode(CENTER);
  fill(#FFF7FA);
  rect(x, y, 80, 30, 6);
  fill(#763D4F);
  text(title, x, y+5);

  if (mouseX>x-40 && mouseX<x+40 && mouseY<x+40 && mouseY>y-40) {
    text(detail, width/2, 325);
  }
}
