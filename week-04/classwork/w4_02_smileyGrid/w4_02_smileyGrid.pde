void setup() {
  size(600,600);
  background(255);
  rectMode(CENTER);
}

void draw(){
  background(255);  
  
  // creating multiple rows of smileys
  for(int j = 0; j<5; j += 2) {
    
    // creating multiple smileys in the row
    // i starts at zero and continues while it is less than 5
    // i increments by 2 each time
    for(int i = 0; i<5; i += 2){
      
      // conditional statement to give middle smiley
      // bulging eyes
      if(i == 2 && j == 2) {
        
        // i and j are used to space the smileys
        smiley(100 + 100 * i, 100 + 100 * j, random(5,50));
      
      } else {
      
        smiley(100 + 100 * i, 100 + 100 * j,1);
        
      }
      
      // see i in the console as it changes
      println(i);
    }
  }
  
  // this is how you would hard code the rows
  // let's use loops instead!
  //row 2
  //smiley(100,300,1);
  //smiley(300,300,1);
  //smiley(500,300,1);
  
  //row 3
  //smiley(100,500,1);
  //smiley(300,500,1);
  //smiley(500,500,1);
}

// smiley definition
void smiley(float x, float y, float eyeSize){
  
  // smiley head
  fill(255,255,0);
  ellipse(x, y, 200, 200);
  
  // smiley left eye
  fill(0);
  ellipse(x-30, y, eyeSize, eyeSize);
  
  // smiley right eye
  fill(0);
  ellipse(x+30, y, eyeSize, eyeSize);
  
  // smiley mouth
  rect(x, y + 40, 60, 10);   
}
