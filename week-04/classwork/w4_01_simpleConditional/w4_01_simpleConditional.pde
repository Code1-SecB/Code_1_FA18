// code 1 FA 17
// week 4 - example 01
// bryan ma
// simple conditional
// change the background based on if the mouse is on the left or right side of the screen

int count = 0;
boolean onRightSide;

void setup() {
  size(500, 500);
}

void draw() {
  if (mouseX > width/2) {
    onRightSide = true;
  } else {
    onRightSide = false;
  }
  
  fill(0);
  if (onRightSide == true) {
    background(150, 153, 148);
    text("if mouse is on this side, \ngrey background", width/2 + 20, 200);
  } else {
    background(230, 232, 20);
    text("if mouse is on this side, \nyellow background", 20, 200);
  }
  
  line(width/2, 0, width/2, height);

  
}