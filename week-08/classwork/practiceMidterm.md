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

![]()

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

![]()

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
