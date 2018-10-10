// Color Bounce Challenge

int x;
int y;
int diam;
int radius;
float xSpeed;
float ySpeed;
boolean switchBG = false;

void setup(){
  size(600,600);
  x = width/2;
  y = height/2;
  diam = 100;
  radius = diam/2;
  xSpeed = random(2,5);
  ySpeed = random(2,5);
  background(128,252,105); 
}

void draw(){
  if(switchBG){
    background(252,203,3);   
  } else {
    background(128,252,105); 
  }
  ellipse(x,y,diam,diam); 
  x += xSpeed;
  y += ySpeed;
  
  if(x > width - radius || x < 0 + radius) {
    xSpeed *= -1; 
    switchBG = !switchBG;
  }
  if(y > width - radius || y < 0 + radius) {
    ySpeed *= -1; 
    switchBG = !switchBG;
  }
}
