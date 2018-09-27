// Checkerboard Challenge

void setup(){
  size(600, 600);
  noStroke();
}

void draw(){
  background(255);
  for(int Y = 0; Y < height; Y += 50 ){  
      for(int X = 0; X < width; X+= 50) { 
        
        if(X + Y % 100 == 0 && X != 0|| 
          (X + Y + 50) % 100 == 0 )
        {
          fill(255); 
        } else { 
          fill(0);
        }
        
        if(mouseX > X &&
           mouseX < X + 50 &&
           mouseY > Y &&      
           mouseY < Y + 50) {
          fill(0,255,255);  
        }
        
        rect(X, Y, 50, 50); 
     }
  }
}
