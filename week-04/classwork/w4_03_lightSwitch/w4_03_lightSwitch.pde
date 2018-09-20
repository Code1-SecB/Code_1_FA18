void setup(){
  size(600,600);
  background(0);
  rectMode(CENTER);
}
void draw(){
  fill(255);
  
  // conditional statements to see if the mouse
  // is hovering over the rect in the center
  if(mouseX > width/2 - 100 && 
     mouseX < width/2 + 100 &&
     mouseY > height/2 - 100 &&
     mouseY < height/2 + 100) {
       
    // if the mouse is hovering, turn the background yellow
    background(255,255,0);   
  } else {
    
    // otherwise, keep it black
    background(0); 
    
  }
  rect(width/2, height/2, 200, 200); 
}
