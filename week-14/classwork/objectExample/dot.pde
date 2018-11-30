class Dot {
  int x, y, d;
  
  // Constructor function - makes each instance object
  Dot(int x_, int y_) {
    x = x_;
    y = y_;
    d = 10;
  }
  
  void display() {
    fill(255,0,0);
    ellipse(x,y,d,d); 
  }
}
