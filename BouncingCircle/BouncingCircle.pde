EllipseIcon Ellipse1;
float xpos, ypos;

int timeout = 3; // to slow the mouse down a little


void setup() {
  size(800, 800);
  noStroke();
  Ellipse1 = new EllipseIcon();
}

void draw() {
  background(255);

  if (Ellipse1.stopped == false) {
    Ellipse1.moveEllipse();
  }
  Ellipse1.checkBounce();
  Ellipse1.drawEllipse();

  timeout--;
}

void mousePressed() {
  if ( mouseX < xpos+200 && mouseX > xpos-200 && mouseY > ypos-200 && mouseY < ypos+200) {
    println("yei");
  }
}

void mouseReleased() {
  if ( mouseX > xpos+200 || mouseX < xpos-200 || mouseY < ypos-200 || mouseY > ypos+200) {
    println("nay");
  }
}

