**conditionals 1**

add a conditional that makes the ellipse grow only until the diameter reaches the width of the canvas, then makes it shrink until reaching 0, then growing again, back and forth.

![](https://raw.githubusercontent.com/whoisbma/whoisbma.github.io/master/Code1/img/conditionals1.gif "")

```
float d = 100;
float incr = 5;

void setup() {
  size(600, 600);
}

void draw() {
  background(150);
  ellipse(width/2, height/2, d, d);

  d += incr;  

}

```

**conditionals 2**

this sketch has the rectangle change colors whenever the mouse button is pressed. change the sketch so that the rectangle only changes colors when the mouse is pressed inside the rectangle.

<img src="https://github.com/Code1-SecB/Code_1_FA18/blob/master/img/cond2.gif" alt="drawing" width="500"/>

```
void setup() {
  size(600, 600);
  rectMode(CENTER);
  background(150);
}

void draw() {
  if (mousePressed)
  {
    background(255);
  } else {
    background(150);
  }

  rect(width/2, height/2, 200, 200);
}
```
**boolean 1**

In this sketch the background changes to white when the mouse is pressed, but then is stuck there. Use a boolean to change the code so that each time you click the mouse, the background color switches between grey and white.

<img src="https://github.com/Code1-SecB/Code_1_FA18/blob/master/img/bool1.gif" alt="drawing" width="500"/>

```
void setup() {
  size(600, 600);
  background(150);
}

void draw(){

}

void mousePressed() {
   background(255);
}
```

**random1**

currently the sketch draws random white points all over the canvas. change the range used in the two instances of the random function so that the white points are only drawn inside the black rectangle.

![](https://raw.githubusercontent.com/whoisbma/whoisbma.github.io/master/Code1/img/random1.gif "")

```
void setup() {
  size(600, 600);
  background(50);
  rectMode(CENTER);
  fill(0);
  rect(width/2, height/2, 400, 200);
}

void draw() {
  float x = random(0, width);
  float y = random(0, height);
  stroke(255);
  point(x, y);
}
```

**loops1**

add a nested for loop so the program draws a 9x9 grid of ellipses, rather than the single row it currently draws.

![](https://raw.githubusercontent.com/whoisbma/whoisbma.github.io/master/Code1/img/loops2.png "")

```
void setup() {
  size(600, 600);
}

void draw() {
  for (int i = 1; i < 10; i++) {
      ellipse(i * 60, 60, 50, 50);
  }
}
```

**arrays1**

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
transform1

currently, the small flower rotates around the larger flower. adjust the matrix  so that the small and the large flower rotate independently.

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
  flower(255,3,214,2,angle*5);
  flower(2,232,255,4,angle);
  angle += 0.5;
}

void flower(int r, int g, int b, int trans, float angle){
  translate(width/trans, height/trans);
  rotate(radians(angle));
  fill(r,g,b,50);
  ellipse(25, 0, 50, 20);
  ellipse(-25, 0, 50, 20);
  rotate(radians(90));
  ellipse(25, 0, 50, 20);
  ellipse(-25, 0, 50, 20);
  rotate(radians(45));
  ellipse(25, 0, 50, 20);
  ellipse(-25, 0, 50, 20);
  rotate(radians(90));
  ellipse(25, 0, 50, 20);
  ellipse(-25, 0, 50, 20);
  ellipse(0,0,20,20);
}
```
