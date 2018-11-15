int num = 10;
float[][] posX = new float[num][num];
float[][] posY = new float[num][num];
color[] colors = new color[num];

void setup() {
  size(600, 900);
  background(255);
  for (int i = 0; i < posX.length; i++) {
    for (int j = 0; j < posX[0].length; j++) {
      posX[i][j] = random(-100,width);
      posY[i][j] = random(-100,height);
      colors[i] = color(255,255,255,random(0,10));
    }
  }
}

void draw() {
  for (int i = 0; i < posX.length; i++) {
    for (int j = 0; j < posX[0].length; j++) {
      fill(colors[i]);
      rect(posX[i][j],posY[i][j], 30, 30);
    
      float rand = random(-1,1);
      
      if(rand >= 0){
        posX[i][j] += 6;
      } else {
        posY[i][j] += 6;
      }
      
      if(posX[i][j] >= width || posY[i][j] >= height){
        posX[i][j] = random(-100,width);
        posY[i][j] = random(-100,height);    
      }
    }
  }
}
