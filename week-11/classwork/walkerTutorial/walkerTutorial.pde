int numWalkers = 100;
ArrayList<Walker> walkers = new ArrayList<Walker>();

void setup(){
  background(255);
  size(600,600);
  
  for(int i =0; i<numWalkers; i++){
    walkers.add(new Walker(random(0,width),
                           random(0,height),
                           random(10,20),
                           random(10,20)));  
  }
}

void draw(){
  for(Walker w : walkers){
    w.display();
    // w.s = int(random(5,50));
    w.walk();
  }
}
