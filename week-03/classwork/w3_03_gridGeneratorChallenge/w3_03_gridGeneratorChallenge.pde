// Program to dynamically generate a grid 
// Canvas size, number of columns, and number of rows
// Can all be changed and the code will still work

// declaring and initializing variables
int x = 0;
int y = 0;
int numCols = 10;
int numRows = 10;

void setup() {
  size(500,500); 
  stroke(255,0,255,80);
  strokeWeight(7);
  background(255);
}

void draw() {
  // draw vertical line at coordinate x
  line(x, 0, x, height);
  
  // draw horizonal line at coordinate y
  line(0, y, width, y);
  
  // the width of 1 column is total width / number of columns
  // increment x by the width of 1 column
  x += width/numCols;
  
  // the height of 1 row is total height / number of rows
  // increment y by the height of 1 row
  y += height/numRows;
}
