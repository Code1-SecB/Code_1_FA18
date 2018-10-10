// Continuous Ball Challenge 1

int x;
int y;
int diam;
int radius;
float xSpeed;

void setup(){
  size(600,600);
  x = width/2;
  y = height/2;
  diam = 100;
  radius = diam/2;
  xSpeed = 6;
  background(252,203,3); 
}

void draw(){
  background(252,203,3);  
  ellipse(x,y,diam,diam); 
  x += xSpeed;
  
  if(x > width + radius){
    x = 0 - radius;
  }
  
  if(mousePressed){
    x = mouseX;
    y = mouseY;
  }
}
