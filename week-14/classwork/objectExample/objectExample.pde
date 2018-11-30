Dot d1 = new Dot(400,500); 
Dot d2;

void setup(){
  size(600,600); 
  d2 = new Dot(width/2,height/2);
}

void draw(){
  background(255);
  d1.display();
  d1.x = mouseX;
  d1.y = mouseY;
  d2.display(); 
}
