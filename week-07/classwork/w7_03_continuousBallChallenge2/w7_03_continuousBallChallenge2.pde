// Continuous Ball Challenge 2
// This sketch is based around a square canvas
// Where xSpeed and y Speed are equivalent
// It plays off the diagonals that have a slope of 1

int x;
int y;
int diam;
int radius;
float xSpeed;
float ySpeed;

void setup(){
  size(600,600);
  x = width/2;
  y = height/2;
  diam = 100;
  radius = diam/2;
  xSpeed = 6;
  ySpeed = 6;
  background(128,252,105); 
}

void draw(){
  background(128,252,105); 
  ellipse(x,y,diam,diam); 
  x += xSpeed;
  y += ySpeed;
  
  if(x >= width + radius){
    x = height - y;
    y = 0 - radius;
  }
  if(y >= height + radius){
    y = width - x;
    x = 0 - radius;
  }
  
  if(mousePressed){
    x = mouseX;
    y = mouseY;
  }
}
