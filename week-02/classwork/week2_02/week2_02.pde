//define global variables
//global means they are not inside of a function definition

//int x = 0; integer is a whole number
//int y = 0;
float x = 0; //float is a decimal value
float y = 0;
String name = "Hello, how is everyone?";

void setup(){
  //color functions can be passed different parameters
  
  //G, GA, RGB, RGBA
  background(255); //white
  
  size(600,600);
  println("THIS RUNS ONE TIME AT THE BEGINNING");
}

void draw(){
  //fill(0,255,0,30);
  noFill(); //set shape color to none
  
  stroke(0,0,255); //change outline color to blue
  //noStroke();
  
  //draw ellipses in a diagonal line, from top left corner
  ellipse(x,y,100,100);
  
  stroke(255,0,0); //change outline color to red
  
  //draw ellipses in a diagonal line, from top right corner
  ellipse(width-x,y,100,100);
  
  //x++; shorthand - adds 1 each time
  //y++;
  
  x += 20; //adds 20 each time 
  y += 20;
  
  //println("THIS RUNS CONTINUOUSLY");
}
