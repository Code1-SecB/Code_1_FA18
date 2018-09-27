// Grow and Shrink Challenge
// uses dist function - see processing reference
// https://processing.org/reference/dist_.html
// this example is taken from Daniel Shiffman's textbook
// Learning Processing: A Beginner's Guide

int x;
int y;
int diam;
int radius;

void setup() {
  size(600, 600);
  smooth();
  x = width/2;
  y = height/2;
  diam = width;
  radius = diam/2;
}

void draw(){
  background(100);
  float d = dist(mouseX, mouseY, x, y);
  if(d < radius) {
    diam ++;
    fill(0);
  } else {
    fill(255);
    diam --;
  }
  ellipse(x, y, diam, diam);
  
}
