// Declating variables 
float xPos1, yPos1, xSpeed1, ySpeed1;
float xPos2, yPos2, xSpeed2, ySpeed2;
int sizeB1, sizeB2;

// Setting up a fill color variable
// The color() function converts a regular integer
// Or set of integers into a color
color fillColor = color(255);

void setup(){
  size(600,600);
  // Initializing the variables for Ball 1
  xPos1 = width/2;
  yPos1 = height/2;
  xSpeed1 = 5;
  ySpeed1 = 10;
  sizeB1 = 100;
  
  // Initializing the variables for Ball 2
  xPos2 = width/4;
  yPos2 = height/4;
  xSpeed2 = 10;
  ySpeed2 = 5;
  sizeB2 = 80;
  
  fill(fillColor);
}

void draw(){
  background(0);
  
  // Ball 1
  ellipse(xPos1,yPos1,sizeB1,sizeB1);
  
  // Check x boundaries and update the speed
  xSpeed1 = checkBoundaryX(xPos1, xSpeed1, sizeB1);
  xPos1 += xSpeed1;
  
  // Check y boundaries and update the speed
  ySpeed1 = checkBoundaryY(yPos1, ySpeed1, sizeB1);
  yPos1 += ySpeed1;
  
  // Ball 2
  ellipse(xPos2,yPos2,sizeB2,sizeB2);
  
  // Check x boundaries and update the speed
  xSpeed2 = checkBoundaryX(xPos2, xSpeed2, sizeB2);
  xPos2 += xSpeed2;
  
  // Check y boundaries and update the speed
  ySpeed2 = checkBoundaryY(yPos2, ySpeed2, sizeB2);
  yPos2 += ySpeed2;
  
  
  // Calculate the distance between the center of each ball and save to a variable
  float dist = checkDistance(xPos1, yPos1, xPos2, yPos2);
  
  // map(value, lowerRange1, upperRange1, lowerRange2, upperRange2)
  
  // Use map to generate a fill color that is related to the distance between balls
  fillColor = color(map(dist, 0, width, 255, 0));
  fill(fillColor);
  
  // Create a variable for the radius of Ball 1 plus the radius of Ball 2
  int collisionBound = sizeB1/2 + sizeB2/2;
  
  // If the distance between the centers is less
  // than the radius of Ball 1 + radius of Ball 2
  // switch all the directions
  if(dist < collisionBound){
    xSpeed1 *= -1;
    ySpeed1 *= -1;
    xSpeed2 *= -1;
    ySpeed2 *= -1;
  }
}

// This custom function takes in the xPos, xSpeed and size of any ball
// And will reverse its xSpeed if the xPos is out of bounds
// After it reverses the xSpeed, it returns it
float checkBoundaryX(float pos, float speed, int size){
  if(pos >= width - size/2 || pos <= 0 + size/2 ){
    speed *= -1;  
  }
  return speed;
}

float checkBoundaryY(float pos, float speed, int size){
  if(pos >= height - size/2 || pos <= 0 + size/2 ){
    speed *= -1;  
  }
  return speed;
}


// This custom function takes in the x and y 
// coordinates of each two balls and calculates
// the distance between their center points
float checkDistance(float x1, float y1, float x2, float y2){
  float distance = dist(x1,y1,x2,y2);
  return distance;  
}
