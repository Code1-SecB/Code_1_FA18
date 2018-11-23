float x[] = new float[100];
float angle;
float rate;
float amplitude;

void setup() {
  size(700, 700);
  noStroke();

  angle = 0;
  amplitude = 200;
  rate = 0.3;
}

void draw() {
  background(255);
  noStroke();
  angle += rate;
  for (int i = 0; i < x.length; i++) {
    x[i] = width/2 + sin((angle + i) * 0.1) * amplitude;
    fill(map(i, 0, x.length, 0, 230));
    float siz = map(i, 0, x.length, 10, 70);
    float yPos = map(i, 0, x.length, 0 + siz, height - siz);
    ellipse(x[i], yPos, siz, siz);
  }
}
