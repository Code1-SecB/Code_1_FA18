# Reading
Read over the processing [2D Arrays Tutorial](https://processing.org/tutorials/2darray/) and answer the questions posted in the discussion for the week on canvas.

# Homework
All homework is due midnight before the next class!

Make an attempt at both of the challenges below and submit as 2 separate files
- code should be thoroughly commented to show your understanding of each program (this can be a best guess)
- add comments as notes as you work solve to explain your thinking and problem solving
- any borrowed code MUST be properly cited!

**Challenge 1**

this program creates 2 arrays that are used to save x, and y coordinates for each point in a grid of 30 columns and 30 rows. the program then uses the column and row information to set the fill at each point and uses the 
x and y coordinates to draw an ellipse at the appropriate spot.
  - extend the program to make "b" value of the fill color relate to the position of the mouse. 
  - try to give the ellipses slight random movement
  
<img src="https://github.com/Code1-SecB/Code_1_FA18/blob/master/img/array2D.gif" alt="drawing" width="500"/>

```
int COLS_NUM = 30;
int ROWS_NUM = 30;

float[][] posx = new float[COLS_NUM][ROWS_NUM];
float[][] posy = new float[COLS_NUM][ROWS_NUM];

void setup() {
  size(600, 600);

  float xStepAmount = (width-200)/(posx.length - 1);
  float yStepAmount = (height-200)/(posx[0].length - 1);

  for (int i = 0; i < posx.length; i++) {
    for (int j = 0; j < posx[0].length; j++) {
      posx[i][j] = 100 + i * xStepAmount;
      posy[i][j] = 100 + j * yStepAmount;
    }
  }

  strokeWeight(5);
  stroke(255);
}

void draw() {
  background(5);

  for (int i = 0; i < posx.length; i++) {
    for (int j = 0; j < posx[0].length; j++) {
      float r = map(i,0,posx.length,0,255);
      float g = map(i,0,posx.length,0,255);
      stroke(r,g,b);
      point(posx[i][j], posy[i][j]);
    }
  }
}
```

**Challenge 2**

this array creates two arrays of floats but with no size, and with no effect in the draw loop. fix the sketch so that the arrays have some size and values, and are then used to draw something to the screen in the draw loop. finally, add behavior that changes the value of each float in the loop every frame. try to add more arrays (for colors, angles, etc) if there is behavior that you want to change that doesn't involve positions.

![](https://raw.githubusercontent.com/whoisbma/whoisbma.github.io/master/Code1/img/arrays2.gif "")

```
float[] xPositions;
float[] yPositions;

void setup() {
  size(600, 600);
  background(100);
  for (int i = 0; i < xPositions.length; i++) {
    xPositions[i] = 0;
    yPositions[i] = 0;
  }
}

void draw() {

}

```
