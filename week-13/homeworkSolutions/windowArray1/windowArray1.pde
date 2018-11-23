int rows = 11;
int columns = 11;
float w, h;
float[][] posX = new float[rows][columns];
float[][] posY = new float[rows][columns];


void setup() {
  size(600, 600);
  w = width/rows;
  h = height/columns;
  for(int r = 0; r < posX.length; r++){
    for(int c = 0; c < posX[0].length; c++){
      posX[r][c] = c * w;
      posY[r][c] = r * h;
    }
  }
}

void draw() {
  for(int r = 0; r < posX.length; r++){
    for(int c = 0; c < posX[0].length; c++){
      if(r == 0 || r == posX.length-1 || 
         c == 0 || c == posX[0].length-1 ||
         r == posX[0].length/2 || c == posX[0].length/2)
      {
        fill(0);    
      } else {
        fill(255,255,0);     
      }
      rect(posX[r][c], posY[r][c], w, h);
    }
  }
}
