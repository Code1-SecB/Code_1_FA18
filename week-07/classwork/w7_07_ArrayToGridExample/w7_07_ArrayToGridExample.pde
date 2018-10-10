final int NUM_CIRCLES = 25;

float[] x = new float[NUM_CIRCLES];
float[] y = new float[NUM_CIRCLES];

void setup() {
  size(800, 800);
  
  for (int i = 0; i < NUM_CIRCLES; i++) {
    x[i] = 100 + (i % int(sqrt(NUM_CIRCLES))) * 150;
    y[i] = 100 + (i / int(sqrt(NUM_CIRCLES))) * 150;
  }
}

void draw() {
  for (int i = 0; i < NUM_CIRCLES; i++) {
    fill(map(i, 0, NUM_CIRCLES, 0, 255));
    ellipse(x[i], y[i], 50, 50);
  }
}