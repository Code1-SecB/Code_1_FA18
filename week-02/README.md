# Classwork

### Canvas
- width - keyword to access the canvas width
- height - keyword to access the canvas height
```java
//draws an ellipse in the middle of the canvas that is 1/4 of the width and height
ellipse(width/2,height/2,width/4,height/4);
```
### Datatypes
- int - integer number
- float - decimal number
- String - "A line of text that must be in quotation marks"
```java
//when you set up a new variable you must declare its dataType
int myNumber = 5;
float myFloat = 5.5;
String myString = "Hello how are you?";
```

### Mouse
- mouseX - grabs the X coordinate of mouse position as you hover over the canvas
- mouseY - grabs the Y coordinate of mouse position as you hover over the canvas
```java
//continously grab the mouse x and y coordinates and draw a circle at that point
void draw(){
  ellipse(mouseX, mouseY, 100, 100);
}
```
- pmouseX - grabs the previous X coordinate of mouse position 
- pmouseY - grabs the previous X coordinate of mouse position
```java
//we didn't go over this in class but you can try it in your homework
void draw(){
  line(pmouseX, pmouseY, mouseX, mouseY);
}
```

### Color
- background() - changes the color of the background
- fill() - changes the color of the shape you are drawing
- stroke() - changes the color of the outline
```java
//color parameters can be written as G (grayscale), GA (grayscale and alpha)
//RGB (red, green, and blue), and RGBA (red, green, blue, and alpha)
//makes the background gray with medium opacity
background(100, 100);
//makes the shape color red with low opacity
fill(255,0,0,30);
```
### Functions
- defining a function - writing a set of instructions for your code to do something
```java
void setup(){
  //processing automatically calls this function once, at the beginning of the program
  //tells the setup function what to do when it is called
}
void draw(){
  //processing automatically calls this function continuously as the code runs
  //tells the draw function what to do each time it is called
}
```
- calling a function - commanding the program to run through that set of instructions
```java
//the values that go into the parentheses are called "parameters"

//calls the size function, which sets the canvas size to the width and height parameters
size(600,600);

//calls the rect function, which draws a rectangle for you
//based on the x, y, width, and height parameters
rect(0,0,100,100);

//these functions are built into processing - they are defined somewhere "behind the scenes"
```
### Math
```java
x++; //add 1 to x
x += 3; //add 3 to x (shorthand)
x = x + 3; //add 3 to x (longer form)
//can be used with -, *, / operators (subtract,multiply,divide)
```
