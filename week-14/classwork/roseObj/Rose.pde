class Rose {
  // N and D control petal numbers
  float n, d;
  // Angle, overall size, and radius as the circle is drawn
  float a, s, r; 
  // X and Y coordinates used to draw the lines that connect the circle
  float x, y;
  
  Rose(float n_, float d_, float s_) {
    n = n_;
    d = d_;
    a = 0;
    s = s_;
    r = s * cos(n/d * a);
    x = r * cos(a);
    y = r * sin(a);  
  }
  
  void display(int roseX, int roseY) {
    pushMatrix();
    
    translate(roseX, roseY);

    float prevX = x;
    float prevY = y;

    stroke(255);
    noFill();
    strokeWeight(1);
  
    r = s * cos(n/d * a);
    x = r * cos(a);
    y = r * sin(a);
  
    line(x, y, prevX, prevY);
  
    a += 0.1;
    popMatrix();
  }
}
