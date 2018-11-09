class Walker {
  // variables/data associated with each Walker object
  float x;
  float y;
  float xStep;
  float yStep;
  int s;
  
  // initialization function - initializes each Walker object
  Walker(float x0, float y0, float xStep0, float yStep0){
    // option 2: pass values as parameters
    x = x0;
    y = y0;
    xStep = xStep0;
    yStep = yStep0;
    // option 1: hard coding default values
    // x = width/2;
    // y = height/2;
    s = 10;
  }
  
  void display(){
    noStroke();
    fill(0,10);
    ellipse(x,y,s,s);
  }
  
  void walk(){
    x += random(-xStep,xStep);
    y += random(-yStep, yStep);
  }
}
