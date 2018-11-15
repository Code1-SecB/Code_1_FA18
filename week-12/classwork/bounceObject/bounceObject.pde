int numBounce = 5;
ArrayList<Bouncey> bouncies = new ArrayList<Bouncey>();

void setup(){
  background(0);
  size(600,600);
  for( int i = 0; i < numBounce; i++){
    bouncies.add(new Bouncey()); 
  }
}

void draw(){
  background(0);
  
  for(Bouncey b : bouncies){
    b.checkBoundaries();
    b.checkCollision(bouncies);
    b.move();
    b.display();
  }
}
