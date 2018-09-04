# Classwork

### Datatypes
- int - integer number
- float - decimal number
- String - "A line of text that must be in quotation marks"
```java
int myNumber = 5;
float myFloat = 5.5;
String myString = "Hello how are you?"
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
- color parameters can be written as G (grayscale), GA (grayscale and alpha), RGB (red, green, and blue), and RGBA (red, green, blue, and alpha)
```java
//makes the background gray with medium opacity
background(100, 100);
//makes the shape color red with low opacity
fill(255,0,0,30);
```
