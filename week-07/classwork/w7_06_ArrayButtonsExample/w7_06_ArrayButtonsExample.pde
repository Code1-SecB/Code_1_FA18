final int NUM = 6;
final int W = 50;
final int H = 25;

float[] x = new float[NUM];
float[] y = new float[NUM];
boolean[] state = new boolean[NUM];

void setup() {
  size(800, 800);
  for (int i = 0; i < NUM; i++) {
    x[i] = 100 + i * 100;
    y[i] = height/2;
    state[i] = false;
  }
}

void draw() {
  background(255);
  for (int i = 0; i < NUM; i++) {
    if (state[i] == true) {
      fill(255, 0, 0);
    } else {
      fill(200);
    }
    rect(x[i], y[i], W, H);
  }
}

void mousePressed() {
  for (int i = 0; i < NUM; i++) {
    if (mouseX > x[i] && mouseX < x[i] + W &&
      mouseY > y[i] && mouseY < y[i] + H) {
      state[i] = !state[i];
    }
  }
}