int num = 50;
int[] x = new int[num];

void setup() { 
  size(600, 600);
  noStroke();
  fill(255, 102);
}

void draw() {
  background(0);
  
  for (int i = num-1; i > 0; i--) {
    x[i] = x[i-1];
  }
  
  x[0] = mouseX;
  
  for (int i = 0; i < num; i++) {
    ellipse(x[i], width/2, i/2.0, i/2.0);
  }
}
