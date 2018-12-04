# Code 1 Final Exam

### 1. Conditionals

add a conditional that makes every other line red.

<img src="https://github.com/Code1-SecB/Code_1_FA18/blob/master/img/final1.png" alt="drawing" width="500"/>

```
void setup(){
  size(600,600);
  strokeWeight(10);
  background(255);
}

void draw(){
  for (int i = 0; i <= 10; i ++) {
    line(0, 59 * i + 5, width, 59 * i + 5);
  }
}
```

### 2. Loops

convert the sketch below to use two 'while' loops, rather than two 'for' loops. It should look the same.

![](https://raw.githubusercontent.com/whoisbma/whoisbma.github.io/master/Code1/img/map1.png "")

```
void setup() {
  size(600, 600);
  for (int i = 0; i < width; i++) {
    for (int j = 0; j < height; j++) {
      float r = map(i, 0, width, 0, 255);
      float g = map(j, 0, height, 0, 255);
      stroke(r, g, 175);
      point(i, j);
    }
  }
}
```

### 3. Map

change the sketch so that the X movement of the mouse will cause the triangle to complete two full 360 degree rotations. this is best accomplished with map().

![](https://raw.githubusercontent.com/whoisbma/whoisbma.github.io/master/Code1/img/map3.gif "")

```
void setup() {
  size(600, 600);
  rectMode(CENTER);
  noStroke();
}

void draw() {
  background(50);
  translate(width/2, height/2);
  rotate(radians(0));
  triangle(0, -100, 50, 100, -50, 100);
}
```

### 4. Dist

currently the sketch draws random white points all over the canvas. change the values being given to x and y and add a conditional so that the white points are only drawn inside the black circle. you will have to use the dist() function.

<img src="https://github.com/Code1-SecB/Code_1_FA18/blob/master/img/random2.gif" alt="drawing" width="500"/>


```
void setup() {
  size(600, 600);
  background(50);
  fill(0);
  ellipse(width/2, height/2, 300, 300);
}

void draw() {
  float x = random(0, width);
  float y = random(0, height);
  stroke(255);
  point(x, y);
}
```

### 5. Transformations

the code below draws flowers to the canvas, but their petals are not rotated properly. add rotations where marked to spread the petals out similar to the image below.

<img src="https://github.com/Code1-SecB/Code_1_FA18/blob/master/img/final6.gif" alt="drawing" width="500"/>

```
float angle = 0;

void setup(){
  size(500,500);
  noStroke();
  smooth();
  ellipseMode(CENTER);
  background(255);
}

void draw(){
  background(255);
  flower(255,3,214,400,angle*5);
  flower(2,232,255,width/2,angle);
  flower(255,247,3,100,angle);
  angle += 1;
}

void flower(int r, int g, int b, int trans, float angle){
  pushMatrix();
  translate(trans,trans);
  rotate(radians(angle));
  fill(r,g,b,50);
  ellipse(25, 0, 50, 20);
  ellipse(-25, 0, 50, 20);

  // add rotation
  ellipse(25, 0, 50, 20);
  ellipse(-25, 0, 50, 20);

  // add rotation
  ellipse(25, 0, 50, 20);
  ellipse(-25, 0, 50, 20);

  // add rotation
  ellipse(25, 0, 50, 20);
  ellipse(-25, 0, 50, 20);
  ellipse(0,0,20,20);
  popMatrix();
}
```

### 6. Scope

<img src="https://github.com/Code1-SecB/Code_1_FA18/blob/master/img/final10.png" alt="drawing" width="500"/>

the program below is not drawing the ellipse as expected. it should be in the middle of the canvas and have a width that is half the canvas size. change where xPos, yPos, and size variables are initiliazed so that the program flows correctly.

```
float xPos = width/2;
float yPos = height/2;
float size = width/2;

void setup(){
  background(0);
  fill(0,255,255);
  size(600,600);
}

void draw(){
  ellipse(xPos,yPos,size,size);
}
```

### 7. 1D Array

this sketch uses two 1D arrays to save X and Y coordinates to an array. as the user moves the mouse, the mouseX and mouseY values are saved at the beginning of the array and the rest of the values are shifted down. ellipses are drawn based on these coordinates and their size are drawn in relation to i.

reverse the direction that values are saved to the array so that when ellipses are drawn, the ellipses closer to the mouse have a larger size and the furthest from the mouse have a smaller size. the drawing should looke the same, but with the size of the ellipses reversed.

<img src="https://github.com/Code1-SecB/Code_1_FA18/blob/master/img/final3.gif" alt="drawing" width="500"/>


```
int num = 100;
int[] x = new int[num];
int[] y = new int[num];

void setup() {
  size(600, 600);
  noStroke();
  fill(255, 102);
}

void draw() {
  background(0);
  // Values are shifted to the right
  // Shift them to the left instead
  for (int i = num-1; i > 0; i--) {
    x[i] = x[i-1];
    y[i] = y[i-1];
  }

  // Values are added to the beginning of the array
  // Add them to the end instead
  x[0] = mouseX;
  y[0] = mouseY;

  // Draw the circles
  for (int i = 0; i < num; i++) {
    ellipse(x[i], y[i], i/1.1, i/1.1);
  }
}
```

### 8. 2D Array 1

this sketch uses a 2d array of integers. looping through a set of nested loops it fills every entry of the array with the same size of 15. in the draw loop, based on the size saved to the array, it sets the size of an ellipse being drawn.

change the sketch so that the circles gradually get bigger as the array loops through the 'i' dimension. make a second 2D array to hold color information and make a color gradient along the 'i' dimension as well. you might want to map color for this. your sketch does not have to match exactly, but should have a simialr gradient in size and color.  

<img src="https://github.com/Code1-SecB/Code_1_FA18/blob/master/img/final2.png" alt="drawing" width="500"/>

```
int gridW = 15;
int gridH = 15;

int[][] sizes = new int[gridW][gridH];

void setup() {
  size(800, 800);
  noStroke();
  for (int i = 0; i < gridW; i++) {
    for (int j = 0; j < gridH; j++) {
      sizes[i][j] = 15;
    }
  }
}

void draw() {
  background(0);
  for (int i = 0; i < gridW; i++) {
    for (int j = 0; j < gridH; j++) {

      float w = width/gridW;
      float h = height/gridH;
      float xPos = i * width/gridW + w/2;
      float yPos = j * height/gridH + h/2;

      ellipse(xPos, yPos, sizes[i][j], sizes[i][j]);
    }
  }
}
```

### 9. 2D Array 2

this sketch draws a grid to the canvas using two 2D arrays. create a third 2D array that will be used to store color values for the grid. in the setup, use a conditional statement to set color values to red or white, depending on where you are in the grid.

<img src="https://github.com/Code1-SecB/Code_1_FA18/blob/master/img/final4.png" alt="drawing" width="500"/>

```
int rows = 10;
int columns = 10;
float w, h;
float[][] posX = new float[rows][columns];
float[][] posY = new float[rows][columns];


void setup() {
  size(600, 600);
  w = width/rows;
  h = height/columns;
  for(int r = 0; r < posX.length; r++){
    for(int c = 0; c < posX[0].length; c++){
      posX[r][c] = c * w;
      posY[r][c] = r * h;
    }
  }
}

void draw() {
  for(int r = 0; r < posX.length; r++){
    for(int c = 0; c < posX[0].length; c++){
      rect(posX[r][c], posY[r][c], w, h);
    }
  }
}
```
### 10. Trig 1

the program below draws three circles whose osciallation is slightly off from one another. instead of drawing the cirlces one by one, create a loop that will draw 30 circles to the canvas to create the wave pattern below. use 'i' from your loop to adjust the beginning angle of each circle and space them our over the x-axis. finally, adjust the scalar so that the wave goes from the top of the canvas to the bottom.

<img src="https://github.com/Code1-SecB/Code_1_FA18/blob/master/img/final8.gif" alt="drawing" width="500"/>


```
float angle = 0.0;
float offset;
float scalar = 40;
float speed = 0.05;

void setup() {
 size(600, 600);
 offset = height/2;
 smooth();
}

void draw() {
 background(0);

 float y1 = offset + sin(angle) * scalar;
 float y2 = offset + sin(angle + 0.4) * scalar;
 float y3 = offset + sin(angle + 0.8) * scalar;

 ellipse(10, y1, 20, 20);
 ellipse(30, y2, 20, 20);
 ellipse(50, y3, 20, 20);

 angle += speed;
}
```
### 11. Trig 2

the code below uses trig to oscillate the x position of the ellipse. add a sine function to oscillate the y position of the ellipse as well, giving it a circular movement as in the diagram below.

<img src="https://github.com/Code1-SecB/Code_1_FA18/blob/master/img/final9.gif" alt="drawing" width="500"/>

```
float angle = 0.0;
float offset;
float scalar;
float speed = 0.05;

void setup() {
  background(0);
  size(500, 500);
  offset = width/2;
  scalar = width/2 - 100;
  smooth();
}
void draw() {
  background(0);
  float x = offset + cos(angle) * scalar;
  ellipse(x, height/2, 100, 100);
  angle += speed;
}
```


### 12. Vectors

this program creates 2 vectors (v1 and v2) and uses their x and y coordinates to draw rectangles on the canvas. create two new vectors (v3 and v4). Initialize them with x and y coordinates that can be added to v1 and v2 respectively, creating the movement in the image below.

<img src="https://github.com/Code1-SecB/Code_1_FA18/blob/master/img/final7.gif" alt="drawing" width="500"/>

```
// declare new vectors here
PVector v1, v2;

void setup() {
  rectMode(CENTER);
  size(600,600);
  v1 = new PVector(50, 50);
  v2 = new PVector(width-50,50);
  // initialize new vectors here
}

void draw() {
  rect(v1.x, v1.y, 100, 100);
  rect(v2.x, v2.y, 100, 100);
  // add vectors 3 and 4 to 1 and 2
}
```

### 13. Objects and Classes

the code below draws blob circles to the canvas. commented out at the bottom is a different code that uses a Blob class to draw the circles instead. The Blob constructor takes 3 parameters (x position, y position, and diameter). Use the commented out code at the bottom and refactor the code above into a Blob class that will construct blob objects draw blobs to the canvas using a display function.

  - *for an extra credit point you can add an extra parameter that will initialize the angle variable for the blob objects. this way they can have offset size oscillation like the starter code*

<img src="https://github.com/Code1-SecB/Code_1_FA18/blob/master/img/final5.gif" alt="drawing" width="500"/>


```
float diameter;
float angle = 0;

void setup() {
  size(600, 600);
  diameter = height - 10;
  noStroke();
}

void draw() {

  fill(255, 204, 0);

  background(0);

  float d1 = 10 + (sin(angle) * diameter/2) + diameter/2;
  float d2 = 10 + (sin(angle + PI/2) * diameter/2) + diameter/2;
  float d3 = 10 + (sin(angle + PI) * diameter/2) + diameter/2;

  ellipse(0, height/2, d1, d1);
  ellipse(width/2, height/2, d2, d2);
  ellipse(width, height/2, d3, d3);

  angle += 0.02;
}

//Blob b1;
//Blob b2;

//void setup() {
//  size(600, 600);
//  noStroke();
//  b1 = new Blob(100,100,150);
//  b2 = new Blob(width/2,height/2,200);
//}

//void draw() {
//  background(0);
//  b1.display();
//  b2.display();
//}
```

14. Objects and Classes

no starter code for this problem! write a bouncey ball class and use it to create an array of 5 bouncey balls and have them move and bounce on the canvas. the bouncey balls should have a .move(), .display(), and .checkBoundaries() methods. don't worry about colllision detection for this problem.

  - *for an extra credit point you can write your bouncey class to use location and velocity vectors instead of xPos, yPos, xSpeed, ySpeed.*

<img src="https://github.com/Code1-SecB/Code_1_FA18/blob/master/img/final12.gif" alt="drawing" width="500"/>



# Extra Credit

### Noise

the sketch below uses random generate x and y values and draw a rectangle randomly to the canvas, within the canvas bounds. use noise instead so that the rect moves smoothly between random values instead of jumping all over the screen.

<img src="https://github.com/Code1-SecB/Code_1_FA18/blob/master/img/final11.gif" alt="drawing" width="500"/>


```
int size = 200;

void setup(){
  size(600,600);
  rectMode(CENTER);
  fill(0,255,0);
}

void draw(){
  background(0);
  float x = random(0 + size/2, width - size/2);
  float y = random(0 + size/2, height - size/2);
  rect(x,y,size,size);
}
```
