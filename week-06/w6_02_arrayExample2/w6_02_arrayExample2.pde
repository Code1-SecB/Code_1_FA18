//int myInt;
//int[] myIntArray = {0, 100, 99, -10, 5};
//boolean[] myBoolArray = {true, false, true};
//String[] myStringArray = {"hi", "there", "guy"};
//float[] myFloatArray = {1.1, 0.9, 10000.099999, 29123};

float[] ellipseXArray = {100, 200, 300, 400, 500};

void setup() {
  size(600, 600);
}

void draw() {
  background(150);
  for (int i = 0; i < ellipseXArray.length; i++) {
    ellipse(ellipseXArray[i], height/2, 50, 50);
  }
}