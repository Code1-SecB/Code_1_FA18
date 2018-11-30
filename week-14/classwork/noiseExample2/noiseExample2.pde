float t = 0.0;

void setup(){
  size(600,600); 
}

void draw(){
  background(0);
  float x = map(noise(t),0,1,0,width);
  ellipse(x,height/2,100,100); 
  t += 0.01;
}
