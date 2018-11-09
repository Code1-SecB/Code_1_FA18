int num = 100;
float[] xPositions = new float[num];
float[] yPositions = new float[num];
color[] colors = new color[num];

void setup() {
  size(600, 600);
  background(0);
  noStroke();
  for (int i = 0; i < xPositions.length; i++) {
    xPositions[i] = random(-100,width);
    yPositions[i] = random(-100,height);
    colors[i] = color(255,255,255,random(0,10));
  }
}

void draw() {
  for (int i = 0; i < xPositions.length; i++) {
    fill(colors[i]);
    rect(xPositions[i],yPositions[i], 30, 30);
    
    float rand = random(-1,1);
    
    if(rand >= 0){
      xPositions[i] += 6;
    } else {
      yPositions[i] += 6;
    }
    
    //xPositions[i] += random(-6,6);
    //yPositions[i] += random(-6,6);
    
    if(xPositions[i] >= width || yPositions[i] >= height){
      xPositions[i] = random(-100,width);
      yPositions[i] = random(-100,height);    
    }
  }
}
