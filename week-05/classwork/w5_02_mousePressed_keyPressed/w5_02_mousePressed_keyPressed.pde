void setup(){
  size(600,600); 
}

void draw(){
  // if the mouse is pressed the background will be cyan
  // otherwise it will be black
  if(mousePressed){
    background(0,255,255);  
  } else {
    background(0);
  }
  
  
  // if the r key is pressed the fill will be red
  // otherwise it will be white
  if(keyPressed && key == 'r'){
    fill(255,0,0);  
  } else {
    fill(255); 
  }
  
  ellipse(width/2,height/2,100,100);
}
