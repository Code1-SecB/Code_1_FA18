Ball b = new Ball();
int boxSize = 300;


void setup(){
  size(600, 600, P3D);
}

void draw(){
  //spotLight(255, 0, 255, width/2, height/2, 400, 0, 0, -1, PI/4, 5);
  background(0);
  
  // draw box container
  stroke(255);
  translate(width/2,height/2);
  rotateY(-20);
  noFill();
  box(boxSize);
  
  // move ball
  b.move();
  b.checkBoundaries(boxSize);
  b.display();
  
 
  
  
}
