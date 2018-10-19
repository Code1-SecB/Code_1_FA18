**conditionals1**

add a conditional that makes the ellipse grow only until it touches the other circle, then makes it shrink until reaching 0, then growing again, back and forth.

<img src="https://github.com/Code1-SecB/Code_1_FA18/blob/master/img/array1.png" alt="drawing" width="500"/>

```
float d = 100;
float incr = 5;

void setup() {
  size(600, 600);
}

void draw() {
  background(150);

  // ellipse 1
  ellipse(width/1.5, height/1.5, 150, 150);

  // ellipse 2
  ellipse(width/2.5, height/2.5, d, d);

  d += incr;  

}

```
**conditionals2**

this sketch is made of four rectangles dividing the canvas into a checkerboard pattern.add conditionals that will change the fill color of each of the black rectangles to red when the mouse is hovering over them.  

<img src="https://github.com/Code1-SecB/Code_1_FA18/blob/master/img/array1.png" alt="drawing" width="500"/>

```
void setup() {
  size(600, 600);
  noStroke();
}

void draw() {

  fill(0);
  rect(0, 0, width/2, height/2);
  rect(width/2, height/2, width/2, height/2);

  fill(255);
  rect(0, height/2, width/2, height/2);
  rect(width/2, 0, width/2, height/2);

}
```
**map**

this sketch uses only the setup function to draw points at every pixel to the screen in a gradient in the x and y dimensions. the color should be smoothly blended in all directions to look like the target image, but the current mapping result seems to be off (its mostly magenta). fix it to be an even gradient across the width and height of the canvas.

<img src="https://github.com/Code1-SecB/Code_1_FA18/blob/master/img/array1.png" alt="drawing" width="500"/>

void setup() {
  size(600, 600);
  for (int i = 0; i < width; i++) {
    for (int j = 0; j < height; j++) {
      float r = map(i, 0, 255, 0, width);
      float b = map(j, 0, 255, 0, height);
      stroke(r, 0, b);
      point(i, j);
    }
  }
}

**loops**

add a nested for loop so the program draws a 10x10 grid of rectangles, rather than the single row it currently draws.

<img src="https://github.com/Code1-SecB/Code_1_FA18/blob/master/img/array1.png" alt="drawing" width="500"/>

```
void setup() {
  size(600, 600);
}

void draw() {
  for(int i = 0; i < 600; i+= 60){
    rect(i,0,60,60);
  }
}
```

**arrays**

this sketch uses a single array of floats to store values used in a drawing function. change the sketch so that it instantiates an array of 100 rectangles instead. you will need to change the way the values are given to the array. map the values in the array so that when drawn, the rectangles will be evenly spaced moving across the screen from the left to the right.

<img src="https://github.com/Code1-SecB/Code_1_FA18/blob/master/img/array1.png" alt="drawing" width="500"/>

```
float[] pos = { 100, 200, 300, 400, 500 };

void setup() {
  size(600, 600);
}

void draw() {
  background(240);
  for (int i = 0; i < pos.length; i++) {
    rect(pos[i], height/2, 50, 50);
  }
}
```