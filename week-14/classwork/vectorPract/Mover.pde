class Mover {
  PVector location;
  PVector velocity;
  PVector acceleration;
  int size;
  
  Mover() {
    location = new PVector(width/2,height/2);
    velocity = new PVector(0,0);
    acceleration = new PVector(0.3,0.5);
    size = 50;
  }
  
  void display() {
    fill(0,255,255);
    ellipse(location.x,location.y, size, size); 
  }  
  
  void move() {
    location.add(velocity);
    velocity.add(acceleration);
    println("Vx: " + velocity.x);
    println("Vy: " + velocity.y);
  }
  
  void checkEdges() {
    if(location.x > width - size/2){
      location.x = width - size/2;
      velocity.x *= -1;
      acceleration.x *= -1;
    }
    if(location.x < 0 + size/2){
      location.x = 0 + size/2;
      velocity.x *= -1;
      acceleration.x *= -1;
    }
    if(location.y > height - size/2){
      location.y = height - size/2;
      velocity.y *= -1; 
      acceleration.y *= -1;
    }
    if(location.y < 0 + size/2){
      location.y = 0 + size/2;
      velocity.y *= -1; 
      acceleration.y *= -1;
    }   
  }
}
