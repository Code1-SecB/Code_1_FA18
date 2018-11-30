Rose rose1 = new Rose(7,8,100);
Rose rose2 = new Rose(3,7,100);
Rose rose3 = new Rose(2,7,100);

void setup() {
  background(51);
  size(600, 600);
}

void draw() {
  rose1.display(width/2 - 200,height/2); 
  rose2.display(width/2,height/2);
  rose3.display(width/2 + 200,height/2);
}
