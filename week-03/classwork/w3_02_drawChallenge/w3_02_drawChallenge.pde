// Program to draw to the screen in different colors
// Color changes dynamically based on mouse position

// declare variable for brush thickness
int brushSize = 50;

void setup(){
  size(500,500);
  
  // black background
  background(0);
  
  // use brushSize to set stroke weight
  strokeWeight(brushSize);
}

void draw(){
  // change R value based on mouseX coordinate
  int r = mouseX;
  
  // change G value based on mouseX coordinate
  int g = mouseY;
  
  // keep B value constant at 255
  int b = 255;
  
  // set stroke color based on RGB variables
  stroke(r, g, b);
  
  // draw line between where the mouse was and where it is now
  // (previous coordinates and current coordinates)
  line(pmouseX,pmouseY, mouseX, mouseY);
}
