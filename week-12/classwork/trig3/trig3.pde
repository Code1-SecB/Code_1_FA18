float angle = 0.0;
float offset;
float scalar;
float speed = 0.05;

void setup() {
  background(0);
  size(500, 500);
  offset = width/2;
  scalar = width/2 - 100;
  smooth();
}
void draw() {
  background(0);
  float x = offset + cos(angle) * scalar;
  float y = offset + sin(angle) * scalar;
  ellipse(x, y, 100, 100);
  angle += speed;
}
