ArrayList<Ball> balls = new ArrayList<Ball>();
int numBalls = 50;


void setup(){
  size(600, 600);
  for(int i = 0; i < numBalls; i++){
    balls.add(new Ball()); 
  }
}

void draw(){
  //spotLight(255, 0, 255, width/2, height/2, 400, 0, 0, -1, PI/4, 5);
  background(0);
  
  for(Ball b : balls){
    b.move();
    b.checkBoundaries();
    b.display(); 
  }  
}
