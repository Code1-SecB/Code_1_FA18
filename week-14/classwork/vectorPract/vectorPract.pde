Mover mover1;

void setup(){
  size(600,600); 
  mover1 = new Mover();
}

void draw(){
  background(0);
  mover1.move();
  mover1.checkEdges();
  mover1.display(); 
}
