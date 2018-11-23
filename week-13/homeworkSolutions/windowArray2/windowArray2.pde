int rows = 11;
int columns = 11;
float w, h;
float[][] posX = new float[rows][columns];
float[][] posY = new float[rows][columns];
color[][] colors = new color[rows][columns];

void setup() {
  size(600, 600);
  w = width/rows;
  h = height/columns;
  for(int r = 0; r < posX.length; r++){
    for(int c = 0; c < posX[0].length; c++){
      posX[r][c] = c * w;
      posY[r][c] = r * h;
      colors[r][c] = color(255,243,3);

      // try commenting the lines below out one at a time
      colors[0][c] = color(0);
      colors[posX.length-1][c] = color(0);
      colors[posX.length/2][c] = color(0);
      colors[r][0] = color(0);
      colors[r][posX.length-1] = color(0);
      colors[r][posX.length/2] = color(0);
    }
  }
}

void draw() {

  for(int r = 0; r < posX.length; r++){ //rows
    for(int c = 0; c < posX[0].length; c++){//columns
       fill(colors[r][c]);
       rect(posX[r][c], posY[r][c], w ,h );
    }
  }
}
