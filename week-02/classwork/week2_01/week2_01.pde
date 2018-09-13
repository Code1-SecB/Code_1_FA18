//Calling the "size" function and passing it
//x and y values for width and height
//size(600, 600);

//triangle(x1,y1,x2,y2,x3,y3);

//order of x,y pairs does not matter
//as long as x and y are in the correct order
//triangle(x3,y3,x1,y1,x2,y2);

//hard coded triangle drawing
//triangle(0,0,500,0,250,500);

//triangle drawing using width and height keywords
//triangle(0,0,width,0,width/2,height);
//the middle from left to right is width/2

//by default ellipseMode is set to CENTER 
//ellipse(width/2,height/2,100,100);
//ellipseMode(CORNER);
//ellipse(width/2,height/2,100,100);

//by default rectMode is set to CORNER
//rect(width/2,height/2,100,100);
//rectMode(CENTER);
//rect(width/2,height/2,100,100);

//arc(a,b,c,d,start,stop);
//a = x coordinate of start position
//b = y coordinate of start position
//c = how wide we want it to be
//d = how high we want it to be
//start = the angle we start filling in
//stop = the angle we stop filling in

//the arc function starts and stops in a clockwise direction
//note: our diagram on GitHub is counter-clockwise

//arc(width/2,height/2,100,100,0,PI);
//arc(width/2,height/2,100,100,PI,PI*1.5);

//half circle on the top 
//arc(width/2,height/2,100,100,PI,PI*2);
//arc(width/2,height/2,100,100,-PI,0);
//arc(width/2,height/2,100,100,PI/2,PI);
//arc(width/2,height/2,100,100,PI*1.5,PI*2);

//Parameters are the things inside the parentheses
//separated by commas, on the function call
//Function calls expect a certain number of parameters
//Sometimes there are "optional" parameters
//This is called function overloading
//arc(width/2,height/2,100,100,PI/2,PI*2,CHORD);

//mouseX and mouseY are 2 important keywords in processing
//these keywords grab the coordinates of wherever you mouse is
//ellipse(mouseX,mouseY,100,100);

//functions DO STUFF in your code -> mini instruction sets
//the function DEFINITION is the set of instructions
//the function CALL is telling the program to DO IT
//the function CALL is like a command 

//function call looks like this -> functionName();

//function definition looks like this ->
//returnType functionName(){
//  code goes here
//}

//some functions we can call in processing without defining
//they are already defined and available in the language
//ex. size(width,height) ellipse(x,y,width,height)

//other functions are called a certain way by default
//but we still have to define them
//ex. void setup(){} void draw(){}

//when you define a variable, you MUST declare dataType
int x = 0; //defining some integer variable x and setting equal to zero
int y = 0; //defining some integer variable y and setting equal to zero

//always called ONE TIME at the beginning of the program run
void setup(){
  //good place to put things you want to stay the same
  size(600, 600);
  
  //8 bit color
  //one value will give a range from 0-255
  //0 being completely dark, 255 being completely light
  //fill the background with white
  background(255); //255 = white
}

//called CONTINUOUSLY as the program runs
void draw(){  
  background(255); //comment this line out if you want to see the traile 
  //ellipse(mouseX,mouseY,100,100);
  ellipse(x,y,100,100);
  x++; //add 1 to x
  y++; //add 1 to y
}
