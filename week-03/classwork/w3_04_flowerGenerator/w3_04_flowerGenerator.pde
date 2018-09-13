// Program to draw flowers that spin

// declare angle variable that will be used to sping flowers
float angle;

void setup() {
  size(500, 500);
  background(255);
  noStroke();
  
  // decrease frameRate to see code run more slowly
  // frameRate(1);
}

void draw() {
  // redraw the background each time
  // try commenting this line out and see what happens
  background(255);
  
  // function CALL for flower function
  // function CALLS can be passed unique parameters
  // we've seen this before when we draw a rect, for instance
  flower(width/2,height/2, 255, 0, 0, angle);
  flower(width/4,height/4, 255, 255, 0, angle);
  
  // increase rotation angle -> spin flower
  // a higher increment will give a faster spin
  angle += 0.05;
  
  // additional flower functions CALLS
  // flower(100,100, 0, 0, 255, angle);
  // flower(400,400, 0, 255, 255, angle);
  // flower(random(width),random(height),random(255),random(255),random(255),angle);
}

// function DEFINITION for flower function
// draws a flower based on paramters you define
// when you add parameters in your function definition
// you must declare their dataType
void flower(float posX, float posY, float r, float g, float b, float angle) {
  
  // set colors based on parameters
  fill(r,g,b,100);
  
  // transformation between pushMatrix and popMatrix
  // will be isolated and not build on each other
  // try commenting both out to see what happens
  pushMatrix();
  
  // move the grid to the new X and Y pos
  translate(posX,posY);
  
  // rotate by our spin angle
  rotate(angle);
  
  // print spin angle to see it increase
  println(angle);
  
  // flower bud
  ellipse(0,0,50,50);
  
  // 1st petal set
  ellipse(0,-50,25,60);
  ellipse(0,50,25,60);
  
  // 2nd petal set
  rotate(radians(90));
  ellipse(0,-50,25,60);
  ellipse(0,50,25,60);
  
  // 3rd petal set
  rotate(radians(45));
  ellipse(0,-50,25,60);
  ellipse(0,50,25,60);
  
  // 4th petal set
  rotate(radians(90));
  ellipse(0,-50,25,60);
  ellipse(0,50,25,60);
  
  // transformation between pushMatrix and popMatrix
  // will be isolated and not build on each other
  // try commenting both out to see what happens
  popMatrix();
}
