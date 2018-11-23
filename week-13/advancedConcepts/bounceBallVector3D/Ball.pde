class Ball {
  PVector velocity, location;
  int size;

  Ball() {
    location = new PVector(0,0,0);
    velocity = new PVector(2,3,4);
    size = 20;
  }
  
  void display() {
    fill(255);
    translate(location.x,location.y,location.z);
    sphere(size); 
  }
  
  void move(){
    location.add(velocity);  
  }
  
  void checkBoundaries(int boxSize) {
    if(location.x > boxSize/2 - size/2 || location.x < -boxSize/2 + size/2){
      velocity.x *= -1; 
    }
    if(location.y > boxSize/2 - size/2 || location.y < -boxSize/2 + size/2){
      velocity.y *= -1; 
    } 
    if(location.z > boxSize/2 - size/2 || location.z < -boxSize/2 + size/2){
      velocity.z *= -1; 
    }
  }
}
