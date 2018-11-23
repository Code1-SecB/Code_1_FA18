//Solution 3 by Ricky Xie
//construct 2d arrays based on rows and columns values

int rows = 11;
int columns = 11;
float w, h;
float[][] posX = new float[rows][columns];
float[][] posY = new float[rows][columns];


void setup() {
  size(600, 600);
  w = width/rows;
  h = height/columns;
  //posX will store values of x coordinates for every column
  //posY will store values of y coordinates for every row
  //each rectangle will be equally spaced from each other
  for(int r = 0; r < posX.length; r++){
    for(int c = 0; c < posX[0].length; c++){
      posX[r][c] = c * w;
      posY[r][c] = r * h;
    }
  }
}

void draw() {
  fill(255, 255, 0);
  background(0);
  for(int r = 1; r < posX.length - 1; r++){
    for(int c = 1; c < posX[0].length - 1; c++){
      //if r or c is equal to half of the length of the rows and columns arrays (5) skip the iteration
      //if rows and columns numbers are odd then the black background will divide the drawing lengthwise and widthwise in half
      if (r == floor(posX.length/2) || c == floor(posX[0].length/2)) {
        continue;
      }
      rect(posX[r][c], posY[r][c], w, h); //draw grid
    }
  }
}
