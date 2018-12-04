# Final topics

Major focus will be on topics covered in the later half of the semester.

  - Basic programming math (%, +, -, *, /, etc.)
  - Conditionals
  - Loops
  - Scope
  - Booleans
  - Functions (parameters, return type)
  - Transformations (rotate, translate)
  - Processing functions: map(), dist(), random()
  - Arrays (1D, 2D)
  - Objects and classes
  - Trig (oscillation, sine, cosine)
  - Vectors (location, velocity)

Specific question types you will definitely see
 - Something involving a bouncing ball and vectors
 - Refactor of loose code into a class and generating many objects with an object array
 - Some sort of grid or coordinate-based 2D array problem

# Example Problems

## loops

this sketch uses a while loop to draw 100 lines to the screen. replace the while loop with a for loop creating the same result.

![](https://raw.githubusercontent.com/whoisbma/whoisbma.github.io/master/Code1/img/loops1.png "")

```
void setup() {
  size(600,600);
}

void draw() {
  int i = 0;
  while (i < 100) {
    line(i * 6, 0, i * 6, height);
    i++;
  }
}
```
## arrays 1
this sketch uses a 2d array of floats to store values that will be used as angles for matrix transformations. it creates the array with random angles, then draws lines at those angles in the draw loop.

change the sketch so that the angles in setup are mapped somehow to the value of i and/or j. then in the draw loop, change the value of the angle at every position in the 2d array by some amount, to make each line rotate.

<img src="https://github.com/whoisbma/Code_1_FA18/blob/master/week-06/w06_03_2dArrays3/example.gif" alt="drawing" width="500"/>

```
int gridW = 20;
int gridH = 20;

float[][] angles = new float[gridW][gridH];

void setup() {
  size(800, 800);
  stroke(255);
  for (int i = 0; i < gridW; i++) {
    for (int j = 0; j < gridH; j++) {
      angles[i][j] = random(360);
    }
  }
}

void draw() {
  background(0);

  for (int i = 0; i < gridW; i++) {
    for (int j = 0; j < gridH; j++) {
      pushMatrix();
      translate(i * width/gridW, j * height/gridH);
      rotate(radians(angles[i][j]));
      line(-width/gridW*0.5, 0, width/gridW*0.5, 0);
      popMatrix();
    }
  }
}
```

## arrays 2
this sketch uses a 2d array of booleans. it fills the array based on the value of i and j in the loop, seeing if its halfway through the loop in that dimension. if it is, it sets the value to true. in the draw loop, based on if the boolean is true or not, it sets the color of an ellipse being drawn.

add an additional 2d array that will be used to store the sizes of each of the ellipses being drawn. that is, some ellipses should be large, some should be small, etc. Map the value in the setup loops. for example, the ellipses should be large on the left and small on the right. Replace the w and h values filling the ellipse with the new values from your new ellipse size 2d array. See example image below, but feel free to make another pattern.

<img src="https://github.com/Code1-SecB/Code_1_FA18/blob/master/img/array2D.1.png" alt="drawing" width="500"/>


```
int gridW = 10;
int gridH = 10;

boolean[][] isRed = new boolean[gridW][gridH];

void setup() {
  size(800, 800);
  noStroke();
  for (int i = 0; i < gridW; i++) {
    for (int j = 0; j < gridH; j++) {
      if (i >= gridW/2 && j >= gridH/2) {
        isRed[i][j] = true;
      } else {
        isRed[i][j] = false;
      }
    }
  }
}

void draw() {
  background(0);
  for (int i = 0; i < gridW; i++) {
    for (int j = 0; j < gridH; j++) {

      if (isRed[i][j] == true) {
        fill(200, 0, 0);
      } else {
        fill(200, 200, 200);
      }
      float w = width/gridW;
      float h = height/gridH;
      float xPos = i * width/gridW + w/2;
      float yPos = j * height/gridH + h/2;

      ellipse(xPos, yPos, w, h);
    }
  }
}
```

## objects

the code below draws a rose pattern to the canvas based on the variables defined at the top of the program.

refactor this program to create a Rose class that will draw roses of various designs and in different location.

<img src="https://github.com/Code1-SecB/Code_1_FA18/blob/master/img/rose.gif" alt="drawing" width="500"/>

```
float n = 1;
float d = 9;
float a = 0;
float s = 100;
float r = s * cos(n/d * a);
float x = r * cos(a);
float y = r * sin(a);

void setup() {
  background(51);
  size(600, 600);
}

void draw() {
  float k = n / d;
  translate(width / 2, height / 2);

  float prevX = x;
  float prevY = y;

  stroke(255);
  noFill();
  strokeWeight(1);
  r = s * cos(n/d * a);
  x = r * cos(a);
  y = r * sin(a);
  line(x, y, prevX, prevY);
  a += 0.1;
  if(a == 360){
    a = 0;
  }
}
```
