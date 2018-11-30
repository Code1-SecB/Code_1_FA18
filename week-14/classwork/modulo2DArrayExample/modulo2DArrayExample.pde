int rows, cols, h, w;
int posX[][];
int posY[][];

void setup(){
  size(600,600);
  rows = height/100;
  cols = width/100;
  w = width/rows;
  h = height/cols;
  posX = new int[rows][cols];
  posY = new int[rows][cols];
  for(int r = 0; r < rows; r++){
    for(int c = 0; c < cols; c++){
      posX[r][c] = w*c;
      posY[r][c] = h*r;
    } 
  }
}

void draw(){
  for(int r = 0; r < rows; r++){
    for(int c = 0; c < cols; c++){
      if(c % 2 != 0) {
        fill(255);
      } else {
        fill(255,0,0);
      } 
      rect(posX[r][c], posY[r][c],w,h);
    } 
  }   
}
