//Global level
int s;

void setup(){
  // Level 2
  size(600,600);
  s = width/100; 
}

void draw(){
  // Level 2
  ellipse(width/2,height/2,s,s);
  int incr = determineIncr(1);
  s += incr;
}

int determineIncr(int n){
  // Level 2
  int incr = n + 10;
  return incr;
}
