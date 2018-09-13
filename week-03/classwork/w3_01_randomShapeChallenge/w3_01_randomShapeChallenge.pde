// Generate random circles
// Example taken from Daniel Shiffman
// "Learning Processing" textbook

// Declaring variables for RGB and alpha values
float r;
float g;
float b;
float a;

// Declaring circle diameter and x,y coordinates
float diam;
float x;
float y;

void setup(){
  size(500,500);
  background(255);
  smooth();
}

void draw(){
  noStroke();
  
  // generate random values for RGBA
  r = random(255);
  g = random(255);
  b = random(255);
  a = random(255);
  
  // generate random diameter between 0 and 100
  diam = random(100);
  
  // generate random x between 0 and width
  x = random(width);
  
  // generate random y between 0 and height
  y = random(height);
  
  // set fill color based on variables
  fill(r,g,b,a);
  
  // draw circle based on variables 
  ellipse(x,y,diam,diam);
}
