// Bouncing Ball Challenge

int x;
int y;
int diam;
int radius;
int xSpeed;

void setup(){
  size(600,600);
  x = width/2;
  y = height/2;
  diam = 100;
  radius = diam/2;
  xSpeed = 5;
}

void draw(){
  background(100);
  ellipse(x,y,diam,diam); 
  x += xSpeed;
  
  if(x > width - radius || x < 0 + radius) {
    xSpeed *= -1; 
  }
}
