# Reading
Read over the processing [2D Arrays Tutorial](https://processing.org/tutorials/2darray/) and answer the questions posted in the discussion for the week on canvas.

# Homework
**Challenge 1**

this program creates 2 arrays that are used to save x, and y coordinates for each point in a grid of 30 columns and 30 rows. the program then uses the column that the

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
