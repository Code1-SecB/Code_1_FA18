float angle = 0.0;
float offset, scalar, size;
float speed = 0.1;

void setup() {
  background(0);
  size(500, 500);
  offset = width/2;
  size = 10;
  scalar = width/2 - size;
  noStroke();
}
void draw() {
  float x = offset + cos(angle) * scalar;
  float y = offset + sin(angle) * scalar;
  fill(scalar,255,255,100);
  ellipse(x, y, size, size);
  angle += speed;
  fill(scalar,scalar,scalar,100);
  scalar -= 0.5;
}
