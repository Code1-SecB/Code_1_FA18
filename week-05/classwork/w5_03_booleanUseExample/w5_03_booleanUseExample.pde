// example of how a boolean can be used as a switch
// to turn off your print statement once the draw
// function has run one time
// this is useful if you want to see the coordinate of 
// a grid or some other value, but you don't want it to
// print continuously
// this will print once and then stop printing

int cWidth = 600;
int cHeight = 600;
boolean drawZero = true;

void setup(){
  size(600, 600); 
}

void draw(){
  for(int j = 0; j < 600; j += 100) {
    
    for(int i = 0; i < 600; i += 100){
      rect(i,j,100,100);
      
      // only print (i,j) if it is the first time
      // running through the draw function
      if (drawZero) {
        println("(" + i + "," + j + ")");
      }
    }
    
  }
  // sets drawZero boolean to flase once the draw
  // function has run one time
  drawZero = false;
}
