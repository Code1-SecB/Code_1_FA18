# Homework
All homework is due midnight before the next class!

### Reading
Look over the following and answer the discussion questions on canvas.
- [Functions Video](https://www.youtube.com/watch?v=_gpiW5KwjUI)
- [Functions Example](https://processing.org/examples/functions.html)
- [Color Tutorial](https://processing.org/tutorials/color/)
- [2D Transformations Tutorial](https://processing.org/tutorials/transform2d/) (sections listed below)
  - Translation: Moving the Grid
  - What’s the Advantage?
  - Rotation
  - Rotating the Correct Way

### Custom function, translation, rotation
Create a composition that uses a custom function (one that you have defined) to quickly and easily generate multiple copies of the same drawing. Refer to our flower example for inspiration. Your composition should include the following:
- custom function DEFINITION
- at least 3 function CALLS with different parameters passed in
- a least 2 [rotations](https://processing.org/reference/rotate_.html)
- at least 2 [translations](https://processing.org/reference/translate_.html)
- [pushMatrix()](https://processing.org/reference/pushMatrix_.html) and    [popMatrix()](https://processing.org/reference/popMatrix_.html)
- originality (unique drawing or design)
- proper citation (if necessary)
- code should be thoroughly commented!

### Extra credit
Use transformations with and without pushMatrix and popMatrix and explain the difference in your comments.
- try using the [scale](https://processing.org/reference/scale_.html) function
- please provide a comment to let me know if you're attempting the extra credit

# Classwork
Code from class with notes can be found in the [classwork folder for this week](https://github.com/Code1-SecB/Code_1_FA18/tree/master/week-03/classwork). Additional notes below:

### Translation
- function call that takes in x and y coordinates as parameters
- moves the origin (0,0) of the processing grid to the specified coordinate
```java
// moves the origin (0,0) point of the grid over 100 and down 200
translate(100,200);
```
### Rotation
- function call that takes in  an angle as parameters
- angle should be in radians, but the radian() function call can be used to convert degrees to radians
```java
// rotates the grid clockwise by 45 degrees
rotate(radians(45));

// rotates the grid clockwise by a half circle (180 degrees or PI radians)
rotate(PI);
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
### Random
- generates a random value within a given range
- if a lower bound is not specified, it is assumed to be zero
```java
// generates a random value between 0 and 255
random(255);

// generates a random value between 100 and 255
random(100,255);
```
