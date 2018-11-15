int num = 100;
float[][] pos = new float[num][num];
color[] colors = new color[num];

void setup() {
  size(600, 900);
  background(255);
  for (int i = 0; i < pos.length; i++) {
      pos[0][i] = random(-100,width);
      pos[i][0] = random(-100,height);
      colors[i] = color(255,255,255,random(0,10));
  
  }
}

void draw() {
  for (int i = 1; i < pos.length; i++) {
    fill(colors[i]);
    rect(pos[0][i],pos[i][0], 30, 30);
  
    float rand = random(-1,1);
    
    if(rand >= 0){
      pos[0][i] += 6;
    } else {
      pos[i][0] += 6;
    }
    
    if(pos[0][i] >= width || pos[i][0] >= height){
      pos[0][i] = random(-100,width);
      pos[i][0] = random(-100,height);    
    }
  }
}
