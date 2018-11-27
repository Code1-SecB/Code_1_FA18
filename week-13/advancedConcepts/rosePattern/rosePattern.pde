// This sketch draws from Daniel Shiffman's Tutorial
// Coding Challenge #55: Mathematical Rose Patterns
// https://www.youtube.com/watch?v=f5QBExMNB1I&t=1s

float n = 1;
float d = 9;
float a = 0;
float r = 200 * cos(n/d * a);
float x = r * cos(a);
float y = r * sin(a);

void setup() {
  background(51);
  size(400, 400);
}

void draw() {
  float k = n / d;
  translate(width / 2, height / 2);
  
  float prevX = x;
  float prevY = y;
  
  stroke(255);
  noFill();
  strokeWeight(1);
  r = 200 * cos(n/d * a);
  x = r * cos(a);
  y = r * sin(a);
  line(x, y, prevX, prevY);
  a += 0.1;
}
