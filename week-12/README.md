# Reading
Look over the processing [Trigonometry Primer](https://processing.org/tutorials/trig/) and answer the questions posted in the discussion for the week on canvas.

# Homework
All homework is due midnight before the next class!
- code should be thoroughly commented to show your thought process and problem solving
- any borrowed code MUST be properly cited!

**Challenge 1**

this sketch draws a grid to the canvas using two 2D arrays. modify the code to draw the window pattern shown below.

<img src="https://github.com/Code1-SecB/Code_1_FA18/blob/master/img/array2D.png" alt="drawing" width="500"/>

```
int rows = 11;
int columns = 11;
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

**Challenge 2**

this sketch draws an ellipse that moves in a circle using cosine and sine. modify the sketch so that the ellipse begins to spiral in as it moves in a circle.
- *hint: you only have to add one line of code*

<img src="https://github.com/Code1-SecB/Code_1_FA18/blob/master/img/spiral.gif" alt="drawing" width="500"/>

```
float angle = 0.0;
float offset, scalar, size;
float speed = 0.1;

void setup() {
  background(0);
  size(500, 500);
  offset = width/2;
  size = 10;
  scalar = width/2 - size;
  noStroke();
}
void draw() {
  float x = offset + cos(angle) * scalar;
  float y = offset + sin(angle) * scalar;
  fill(scalar,255,255,100);
  ellipse(x, y, size, size);
  angle += speed;
  fill(scalar,scalar,scalar,100);
}
```

**Challenge 3**

this sketch uses an array to draw ellipses to the canvas. their x coordinates are assigned by the of oscillating sin from -1 to 1 as the angle increases. change the code so that the x coords of the ellispe have a greater range of oscillation.  
- *hint: you only have to change one line of code*

<img src="https://github.com/Code1-SecB/Code_1_FA18/blob/master/img/oscillate1.gif" alt="drawing" width="500"/>

```
float x[] = new float[100];
float angle;
float rate;
float amplitude;

void setup() {
  size(700, 700);
  noStroke();

  angle = 0;
  amplitude = 200;
  rate = 0.3;
}

void draw() {
  background(255);
  noStroke();
  angle += rate;
  for (int i = 0; i < x.length; i++) {
    x[i] = width/2 + sin((angle + i) * 0.1);
    fill(map(i, 0, x.length, 0, 230));
    float siz = map(i, 0, x.length, 10, 70);
    float yPos = map(i, 0, x.length, 0 + siz, height - siz);
    ellipse(x[i], yPos, siz, siz);
  }
}
```
